// SPDX-License-Identifier: GPL-2.0
/*
 * rehsdboard ASoC sound card support
 *
 * @author Yuhei Horibe
 * Original code: xlnx_pl_snd_card.c
 * Reference: zed_adau1761.c
 *
 * This sound card driver is specific to rehsdboard
 * Both I2S transmitter and I2S receiver device tree nodes
 * have to have phandle to ADAU1761 ("audio-codec" field)
 *
 * This program is free software; you can redistribute it and/or modify it
 * under  the terms of the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the License, or (at your
 * option) any later version.
 */
 
 //Adapted from https://gist.github.com/yuhei1horibe/ef86308cdc4dce4007789c3d32c767cc

#include <linux/clk.h>
#include <linux/idr.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>

#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/codecs/wm8960.h"
#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/xilinx/xlnx_snd_common.h"

#define I2S_CLOCK_RATIO 384
#define XLNX_MAX_PL_SND_DEV 5

static DEFINE_IDA(rehsd_snd_card_dev);

static const struct snd_soc_dapm_widget rehsd_snd_widgets[] = {
    SND_SOC_DAPM_SPK("Line Out", NULL),
    SND_SOC_DAPM_HP("Headphone Out", NULL),
    SND_SOC_DAPM_MIC("Mic In", NULL),
    SND_SOC_DAPM_MIC("Line In", NULL),
};

static const struct snd_soc_dapm_route rehsd_snd_routes[] = {
    { "Line Out", NULL, "LOUT" },
    { "Line Out", NULL, "ROUT" },
    { "Headphone Out", NULL, "LHP" },
    { "Headphone Out", NULL, "RHP" },
    { "Mic In", NULL, "MICBIAS" },
    { "LINN", NULL, "Mic In" },
    { "RINN", NULL, "Mic In" },
    { "LAUX", NULL, "Line In" },
    { "RAUX", NULL, "Line In" },
};

static const char *rehsd_snd_card_name = "rehsd-snd";

static const char *dev_compat[XLNX_MAX_PATHS] = {
    "xlnx,i2s-transmitter-1.0",
    "xlnx,i2s-receiver-1.0",
};

static int rehsd_snd_card_hw_params(struct snd_pcm_substream *substream,
                   struct snd_pcm_hw_params *params)
{
    int ret, clk_div;
    u32 ch, data_width, sample_rate;
    unsigned int pll_rate;
    struct pl_card_data *prv;

    unsigned int fmt;

    struct snd_soc_pcm_runtime *rtd = substream->private_data;
    struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(rtd, 0);
    struct snd_soc_dai *codec_dai = asoc_rtd_to_codec(rtd, 0);

    ch = params_channels(params);
    data_width = params_width(params);
    sample_rate = params_rate(params);

    prv = snd_soc_card_get_drvdata(rtd->card);

    // This is for CODEC DAI
    // Set DAI format
    // WM8960 will be the master
    fmt = SND_SOC_DAIFMT_CBM_CFM | SND_SOC_DAIFMT_I2S;    //master
    //fmt = SND_SOC_DAIFMT_CBS_CFS | SND_SOC_DAIFMT_I2S;  //slave
    ret = snd_soc_dai_set_fmt(codec_dai, fmt);
    if (ret) {
        return ret;
    }
    
    switch (sample_rate) {
    case 48000:
    case 8000:
    case 12000:
    case 16000:
    case 24000:
    case 32000:
    case 96000:
        pll_rate = 48000 * 1024;
        break;
    case 44100:
    case 7350:
    case 11025:
    case 14700:
    case 22050:
    case 29400:
    case 88200:
        pll_rate = 44100 * 1024;
        break;
    default:
        return -EINVAL;
    }
    
    unsigned int mclk_rate = 24000000;
    
    /* Set the PLL */
    ret = snd_soc_dai_set_pll(codec_dai, WM8960_SYSCLK_MCLK, 0, mclk_rate, pll_rate);
    if (ret < 0) {
        dev_err(rtd->dev, "Failed to set PLL: %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "PLL set to %d\n", pll_rate);
    }

    /* Set the system clock to use PLL */
    ret = snd_soc_dai_set_sysclk(codec_dai, WM8960_SYSCLK_PLL, pll_rate, SND_SOC_CLOCK_IN);
    if (ret < 0) {
        dev_err(rtd->dev, "Failed to set SYSCLK: %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "SYSCLK set to %d\n", pll_rate);
    }

    // This is for CPU DAI
    /* only 2 channels supported */
    if (ch != 2)
        return -EINVAL;

    clk_div = DIV_ROUND_UP(mclk_rate, 2 * ch * data_width * sample_rate);
    ret = snd_soc_dai_set_clkdiv(cpu_dai, 0, clk_div);
    if (ret) {
      dev_err(rtd->dev, "Failed to set clkdiv: %d\n", ret);
      return ret;
    }

    dev_info(rtd->dev, "rehsd_snd_card_hw_params() return success\n");
    return 0;
}

static const struct snd_soc_ops rehsd_snd_card_ops = {
    .hw_params = rehsd_snd_card_hw_params,
};

SND_SOC_DAILINK_DEFS(xlnx_i2s_capture,
             DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_capture")),
             //DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "adau-hifi")),
             DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
             DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));

SND_SOC_DAILINK_DEFS(xlnx_i2s_playback,
             DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_playback")),
             //DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "adau-hifi")),
             DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
             DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));

static struct snd_soc_dai_link rehsd_snd_dai[XLNX_MAX_PATHS] = {
    {
        .name = "xilinx-i2s_playback",
        .stream_name = "xilinx-i2s",
        SND_SOC_DAILINK_REG(xlnx_i2s_playback),
        .ops = &rehsd_snd_card_ops,
    },
    {
        .name = "xilinx-i2s_capture",
        .stream_name = "xilinx-i2s",
        SND_SOC_DAILINK_REG(xlnx_i2s_capture),
        .ops = &rehsd_snd_card_ops,
    },
};

static int find_link(struct device_node *node, int direction)
{
    int ret;

    ret = of_device_is_compatible(node, dev_compat[direction]);
    if (ret) {
        return ret;
    }
    return -ENODEV;
}

static int rehsd_snd_probe(struct platform_device *pdev)
{
    u32 i;
    size_t sz;
    char *buf;
    int ret;
    struct snd_soc_dai_link *dai;
    struct pl_card_data *prv;
    struct platform_device *iface_pdev;

    struct snd_soc_card *card;
    struct device_node **node = pdev->dev.platform_data;

    if (!node)
        return -ENODEV;

    card = devm_kzalloc(&pdev->dev, sizeof(struct snd_soc_card),
                GFP_KERNEL);
    if (!card)
        return -ENOMEM;

    card->dev = &pdev->dev;

    card->dai_link = devm_kzalloc(card->dev,
                      sizeof(*dai) * XLNX_MAX_PATHS,
                      GFP_KERNEL);
    if (!card->dai_link)
        return -ENOMEM;

    prv = devm_kzalloc(card->dev,
               sizeof(struct pl_card_data),
               GFP_KERNEL);
    if (!prv)
        return -ENOMEM;

    card->num_links = 0;
    for (i = XLNX_PLAYBACK; i < XLNX_MAX_PATHS; i++) {
        struct device_node *pnode = of_parse_phandle(node[i],
                                 "xlnx,snd-pcm", 0);
        // This is for CODEC (ADAU1761)
        // New field is added to device tree
        struct device_node *pcodec = of_parse_phandle(node[i],
                                 "audio-codec", 0);
        if (!pnode) {
            dev_err(card->dev, "platform node not found\n");
            of_node_put(pnode);
            return -ENODEV;
        }

        if (!pcodec) {
            dev_err(card->dev, "Audio CODEC node not found\n");
            of_node_put(pnode);
            of_node_put(pcodec);
            return -ENODEV;
        }

        /*
         * Check for either playback or capture is enough, as
         * same clock is used for both.
         */
        if (i == XLNX_PLAYBACK) {
            iface_pdev = of_find_device_by_node(pnode);
            if (!iface_pdev) {
                of_node_put(pnode);
                of_node_put(pcodec);
                return -ENODEV;
            }

            prv->mclk = devm_clk_get(&iface_pdev->dev, "aud_mclk");
            if (IS_ERR(prv->mclk))
                return PTR_ERR(prv->mclk);

        }
        of_node_put(pnode);
        of_node_put(pcodec);

        dai = &card->dai_link[i];
        if (find_link(node[i], i) > 0) {
            *dai = rehsd_snd_dai[i];
            dai->platforms->of_node = pnode;
            dai->codecs->of_node = pcodec;
            dai->cpus->of_node = node[i];
            card->num_links++;
            snd_soc_card_set_drvdata(card, prv);
            dev_dbg(card->dev, "%s registered\n",
                card->dai_link[i].name);
        } else {
            dev_err(card->dev, "Invalid audio interface\n");
            return -ENODEV;
        }
    }

    if (card->num_links) {
        /*
         *  Example : rehsd-pl-snd-card-0
         *  length = number of chars in "rehsd-pl-snd-card"
         *      + 1 ('-'), + 1 (card instance num)
         *      + 1 ('\0')
         */
        sz = strlen(rehsd_snd_card_name) + 3;
        buf = devm_kzalloc(card->dev, sz, GFP_KERNEL);
        if (!buf)
            return -ENOMEM;

        prv->xlnx_snd_dev_id = ida_simple_get(&rehsd_snd_card_dev, 0,
                              XLNX_MAX_PL_SND_DEV,
                              GFP_KERNEL);
        if (prv->xlnx_snd_dev_id < 0)
            return prv->xlnx_snd_dev_id;

        snprintf(buf, sz, "%s-%d", rehsd_snd_card_name,
             prv->xlnx_snd_dev_id);
        card->name = buf;

        // Widgets and routes
        //card->dapm_widgets = rehsd_snd_widgets;
        //card->num_dapm_widgets = ARRAY_SIZE(rehsd_snd_widgets);
        //card->dapm_routes = rehsd_snd_routes;
        //card->num_dapm_routes = ARRAY_SIZE(rehsd_snd_routes);
        //card->fully_routed = true;

        ret = devm_snd_soc_register_card(card->dev, card);
        if (ret) {
            dev_err(card->dev, "%s registration failed\n",
                card->name);
            ida_simple_remove(&rehsd_snd_card_dev,
                      prv->xlnx_snd_dev_id);
            return ret;
        }

        dev_set_drvdata(card->dev, prv);
        dev_info(card->dev, "%s registered\n", card->name);
    }

    return 0;
}

static int rehsd_snd_remove(struct platform_device *pdev)
{
    struct pl_card_data *pdata = dev_get_drvdata(&pdev->dev);

    ida_simple_remove(&rehsd_snd_card_dev, pdata->xlnx_snd_dev_id);
    return 0;
}

static struct platform_driver rehsd_snd_driver = {
    .driver = {
        .name = "xlnx_snd_card", // It has to be this name
    },
    .probe = rehsd_snd_probe,
    .remove = rehsd_snd_remove,
};

module_platform_driver(rehsd_snd_driver);

MODULE_DESCRIPTION("rehsdboard specific sound card driver");
MODULE_AUTHOR("rehsd");
MODULE_LICENSE("GPL v2");
