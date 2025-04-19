// SPDX-License-Identifier: GPL-2.0
/*
 * rehsdboard ASoC sound card support
 * Original code: xlnx_pl_snd_card.c
 * Adapted from https://gist.github.com/yuhei1horibe/ef86308cdc4dce4007789c3d32c767cc
*
 * This sound card driver is specific to rehsd's board
 * Both I2S transmitter and I2S receiver device tree nodes
 * have to have phandle to WM8960 ("audio-codec" field)
 *
 * This program is free software; you can redistribute it and/or modify it
 * under  the terms of the GNU General  Public License as published by the
 * Free Software Foundation;  either version 2 of the License, or (at your
 * option) any later version.
 */

#include <linux/clk.h>
#include <linux/idr.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>

#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/codecs/wm8960.h"
#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/xilinx/xlnx_snd_common.h"

//#include <linux/i2c.h>
//#include <linux/regmap.h>
//#include <linux/platform_device.h>
//#include <linux/of_platform.h>

#define I2S_CLOCK_RATIO 384
#define XLNX_MAX_PL_SND_DEV 5

/* R25 - Power 1 */
#define WM8960_PWR1         0x0C  // Power Management 1 Register
#define WM8960_VMID_MASK    0x180
#define WM8960_VREF         0x40

/* R26 - Power 2 */
#define WM8960_PWR2         0x0E  // Power Management 2 Register
#define WM8960_PWR2_LOUT1   0x40
#define WM8960_PWR2_ROUT1   0x20
#define WM8960_PWR2_OUT3    0x02

//#define WM8960_AUDIO_INTERFACE    0x07
#define WM8960_I2S_FMT_24BIT      0x02  // 24-bit word length
#define WM8960_I2S_FMT_16BIT 	  0x00	// 16-bit word length



static DEFINE_IDA(xlnx_snd_card_dev);

enum {
	I2S_AUDIO = 0,
	HDMI_AUDIO,
	SDI_AUDIO,
	SPDIF_AUDIO,
	DP_AUDIO,
	XLNX_MAX_IFACE,
};

static const char *xlnx_snd_card_name[XLNX_MAX_IFACE] = {
	[I2S_AUDIO]	= "xlnx-i2s-snd-card",
	[HDMI_AUDIO]	= "xlnx-hdmi-snd-card",
	[SDI_AUDIO]	= "xlnx-sdi-snd-card",
	[SPDIF_AUDIO]	= "xlnx-spdif-snd-card",
	[DP_AUDIO]	= "xlnx-dp-snd-card",
};

static const char *dev_compat[][XLNX_MAX_IFACE] = {
	[XLNX_PLAYBACK] = {
		"xlnx,i2s-transmitter-1.0",
		"xlnx,v-hdmi-tx-ss-3.1",
		"xlnx,v-uhdsdi-audio-2.0",
		"xlnx,spdif-2.0",
		"xlnx,v-dp-txss-3.0"
	},

	[XLNX_CAPTURE] = {
		"xlnx,i2s-receiver-1.0",
		"xlnx,v-hdmi-rx-ss-3.1",
		"xlnx,v-uhdsdi-audio-2.0",
		"xlnx,spdif-2.0",
		"xlnx,v-dp-rxss-3.0",
	},
};

static const struct snd_soc_dapm_widget rehsd_snd_widgets[] = {
    SND_SOC_DAPM_DAC("Left DAC", "Playback", SND_SOC_NOPM, 0, 0),
    SND_SOC_DAPM_DAC("Right DAC", "Playback", SND_SOC_NOPM, 0, 0),
    SND_SOC_DAPM_OUTPUT("Headphone"),
    SND_SOC_DAPM_OUTPUT("Speaker"),
    SND_SOC_DAPM_ADC("Left ADC", "Capture", SND_SOC_NOPM, 0, 0),
    SND_SOC_DAPM_ADC("Right ADC", "Capture", SND_SOC_NOPM, 0, 0),
    SND_SOC_DAPM_INPUT("Mic"),
    //SND_SOC_DAPM_MICBIAS("Mic Bias", SND_SOC_NOPM, 0, 0),
    SND_SOC_DAPM_INPUT("Left Input"),
    SND_SOC_DAPM_INPUT("Right Input"),
};


static const struct snd_soc_dapm_route rehsd_snd_routes[] = {
    /* Output Routes */
    { "Headphone", NULL, "HP_L" },
    { "Headphone", NULL, "HP_R" },
    { "Speaker", NULL, "SPK_LP" },
    { "Speaker", NULL, "SPK_LN" },

    /* Input Routes */
    { "Mic Bias", NULL, "MICBIAS" },
    { "Mic", NULL, "Mic Bias" },
    { "Left Input", NULL, "LINPUT1" },
    { "Right Input", NULL, "RINPUT1" },

    /* Capture Routes */
    { "Capture", NULL, "Left ADC" },
    { "Capture", NULL, "Right ADC" },

    /* Playback Routes */
    { "Left DAC", NULL, "Playback" },
    { "Right DAC", NULL, "Playback" },

    /* Boost Mixer Routes */
    { "Left Input Boost Mixer LINPUT1 Volume", NULL, "LINPUT1" },
    { "Right Input Boost Mixer RINPUT1 Volume", NULL, "RINPUT1" },
    { "Left Input Boost Mixer LINPUT2 Volume", NULL, "LINPUT2" },
    { "Right Input Boost Mixer RINPUT2 Volume", NULL, "RINPUT2" },
    { "Left Input Boost Mixer LINPUT3 Volume", NULL, "LINPUT3" },
    { "Right Input Boost Mixer RINPUT3 Volume", NULL, "RINPUT3" },

    /* Output Mixer Routes */
    { "Left Output Mixer Boost Bypass Switch", NULL, "Left Output Mixer Boost Bypass Volume" },
    { "Right Output Mixer Boost Bypass Switch", NULL, "Right Output Mixer Boost Bypass Volume" },
    { "Left Output Mixer LINPUT3 Switch", NULL, "Left Output Mixer LINPUT3 Volume" },
    { "Right Output Mixer RINPUT3 Switch", NULL, "Right Output Mixer RINPUT3 Volume" },
    { "Left Output Mixer PCM Playback Switch", NULL, "PCM Playback" },
    { "Right Output Mixer PCM Playback Switch", NULL, "PCM Playback" },

    /* Mono Output Mixer Routes */
    { "Mono Output Mixer Left Switch", NULL, "Left Output Mixer" },
    { "Mono Output Mixer Right Switch", NULL, "Right Output Mixer" },
};



static int xlnx_i2s_card_hw_params(struct snd_pcm_substream *substream,
                   struct snd_pcm_hw_params *params)
{
    int ret, clk_div;
    u32 ch, data_width, sample_rate;
    struct pl_card_data *prv;

    unsigned int fmt, pll_rate;

    struct snd_soc_pcm_runtime *rtd = substream->private_data;
    struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(rtd, 0);
    struct snd_soc_dai *codec_dai = asoc_rtd_to_codec(rtd, 0);

    ch = params_channels(params);
    data_width = params_width(params);
    sample_rate = params_rate(params);
    dev_info(rtd->dev, "rehsd: ch:%d, data_width:%d, sample_rate:%d\n",ch,data_width,sample_rate);
    
    /* only 2 channels supported */
    if (ch != 2)
	    return -EINVAL;
		
    prv = snd_soc_card_get_drvdata(rtd->card);

    // This is for CODEC DAI. Set DAI format. WM8960 will be a slave.
    // SND_SOC_DAIFMT_I2S       : Set the DAI format to I2S
    // SND_SOC_DAIFMT_CBS_CFS   : Set the codec to be a slave for both bit clock (BCLK) & frame clock (LRCLK)
    fmt = SND_SOC_DAIFMT_CBS_CFS | SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF;    //Slave, I2S, no clock inversion
    // snd_soc_dai_set_fmt calls snd_soc_component_write (for WM8960_IFACE1) which resets the register (no read... just write new value)
    ret = snd_soc_dai_set_fmt(codec_dai, fmt);
    if (ret) {
        dev_err(rtd->dev, "Failed to set fmt\n");
        return ret;
    }
    else
    {
      dev_info(rtd->dev, "fmt set to SND_SOC_DAIFMT_CBS_CFS | SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF\n");
    }
    
    /*
    // Set the audio interface format word length
    // snd_soc_component_update_bits modifies a register (reads, modifies select bits, writes)
    // default for this register is 16bit
    // ret = snd_soc_component_update_bits(codec_dai->component, WM8960_IFACE1, 0x03 << 3, WM8960_I2S_FMT_24BIT);		//Audio Data Word Length: 24-bit *DEFAULT
    ret = snd_soc_component_update_bits(codec_dai->component, WM8960_IFACE1, 0x03 << 3, WM8960_I2S_FMT_16BIT);			//Audio Data Word Length: 16-bit data
    if (ret < 0) {
        dev_err(rtd->dev, "rehsd: Failed to set WM8960 audio interface format: %d\n", ret);
        return ret;
    } else {
        dev_info(rtd->dev, "rehsd: WM8960 audio interface format set to I2S 24-bit\n");
    }
    */



    //configure the PLL    
    pll_rate = 48000 * 1024;    			//49152000
    unsigned int mclk_rate = 12288000;

    /*
    dev_info(rtd->dev, "rehsd: Going to set PLL1 to %d\n", pll_rate);
    //params: pointer to dai, pll id, clock source, freq in from source, pll out freq
    ret = snd_soc_dai_set_pll(codec_dai, WM8960_PLL1, 0, 24000000, 12288000*2);
    if (ret < 0) {
        dev_err(rtd->dev, "rehsd: Failed to set PLL1: %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "rehsd: PLL1 set to %d\n", pll_rate);
    }
	*/


    //params: pointer to dai, clock source (PLL1), freq in from source, direction relative from the codec
    //clock source options: WM8960_SYSCLK_MCLK (2), WM8960_SYSCLK_PLL (1), WM8960_SYSCLK_AUTO (0)
	//define SND_SOC_CLOCK_IN = 0, SND_SOC_CLOCK_OUT = 1
    //ret = snd_soc_dai_set_sysclk(codec_dai, WM8960_SYSCLK_PLL, 12288000*2, SND_SOC_CLOCK_IN);
    ret = snd_soc_dai_set_sysclk(codec_dai, WM8960_SYSCLK_AUTO, 24000000, SND_SOC_CLOCK_IN);
    if (ret < 0) {
        dev_err(rtd->dev, "rehsd: Failed to set codec SYSCLK: %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "rehsd: codec SYSCLK set to AUTO at %d\n", pll_rate);
    }



    dev_info(rtd->dev, "Going to set cpu SYSCLK to %d using AUTO\n", pll_rate);
    //params: pointer to dai, clock source, freq in from source, direction relative from the codec
    //clock source options:
    ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk_rate, SND_SOC_CLOCK_OUT);
    if (ret < 0) {
        dev_err(rtd->dev, "rehsd: Failed to set cpu_dai SYSCLK: %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "rehsd: SYSCLK set cpu_dai to %d\n", pll_rate);
    }
    


    // CLOCK DIVIDERS -- 16-bit I2S data out & 16-bit LRCLK
    // BCLK at 1.536 MHz = 48,000 * 2 * 16 (stereo, 16-bit LRCLK set in Vivado on I2S transmitter/receiver).
    // LRCLK at 48 kHz
    prv->mclk_ratio = 256;	//was 256
    prv->mclk_val = prv->mclk_ratio * sample_rate;
    clk_div = 4;		//4
    ret = snd_soc_dai_set_clkdiv(cpu_dai, 0, clk_div);
    if (ret)
    {
        dev_err(rtd->dev, "rehsd: Failed snd_soc_dai_set_clkdiv(): %d\n", ret);
        return ret;
    }
    else
    {
        dev_info(rtd->dev, "rehsd: snd_soc_dai_set_clkdiv() success\n");
    }

    ret = clk_set_rate(prv->mclk, prv->mclk_val);
    if (ret)
    {
        dev_err(rtd->dev, "rehsd: Failed clk_set_rate(): %d\n", ret);
        return ret;
    }
    else
    {
    	dev_info(rtd->dev, "rehsd: clk_set_rate() success\n");
    }


    /*
    // CLOCK DIVIDERS -- 24-bit I2S data out & 32-bit LRCLK
    // BCLK at 3.072 MHz = 48,000 * 2 * 32 (stereo, 32-bit lrclock set in Vivado on I2S transmitter/receiver).
    // LRCLK at 48 kHz
    prv->mclk_ratio = 256;
    prv->mclk_val = prv->mclk_ratio * sample_rate;
    clk_div = 2;
    ret = snd_soc_dai_set_clkdiv(cpu_dai, 0, clk_div);
    if (ret)
    {
        dev_err(rtd->dev, "Failed snd_soc_dai_set_clkdiv(): %d\n", ret);
	return ret;
    }
    else
    {
        dev_info(rtd->dev, "snd_soc_dai_set_clkdiv() success\n");
    }


    ret = clk_set_rate(prv->mclk, prv->mclk_val);
    if (ret)
    {
        dev_err(rtd->dev, "Failed clk_set_rate(): %d\n", ret);
        return ret;
    }
    else
    {
        return 0;
    }
    */


	dev_info(rtd->dev, "rehsd: xlnx_i2s_card_hw_params() success\n");
	return 0;
}

static const struct snd_soc_ops xlnx_i2s_card_ops = {
    .hw_params = xlnx_i2s_card_hw_params,
};

SND_SOC_DAILINK_DEFS(xlnx_i2s_capture,
             DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_capture")),
             DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
             DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));
             //DAILINK_COMP_ARRAY(COMP_PLATFORM("xlnx-audio-formatter")));    //rehsd!!!

SND_SOC_DAILINK_DEFS(xlnx_i2s_playback,
             DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_playback")),
             DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
             DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));
             //DAILINK_COMP_ARRAY(COMP_PLATFORM("xlnx-audio-formatter")));    //rehsd!!!

static struct snd_soc_dai_link xlnx_snd_dai[][XLNX_MAX_PATHS] = {
    [I2S_AUDIO] = {
        {
            .name = "xilinx-i2s_playback",
            .stream_name = "xilinx-i2s",
            SND_SOC_DAILINK_REG(xlnx_i2s_playback),
            .ops = &xlnx_i2s_card_ops,
        },
        {
            .name = "xilinx-i2s_capture",
            .stream_name = "xilinx-i2s",
            SND_SOC_DAILINK_REG(xlnx_i2s_capture),
            .ops = &xlnx_i2s_card_ops,
        },
    },
};

static int find_link(struct device_node *node, int direction)
{
	int ret;
	u32 i, size;
	const char **link_names = dev_compat[direction];

	size = ARRAY_SIZE(dev_compat[direction]);

	for (i = 0; i < size; i++) {
		ret = of_device_is_compatible(node, link_names[i]);
		if (ret)
			return i;
	}
	return -ENODEV;
}

static int xlnx_snd_probe(struct platform_device *pdev)
{
    u32 i, max_links = 0, start_count = 0;
    size_t sz;
    char *buf;
    int ret, audio_interface;
    struct snd_soc_dai_link *dai;
    struct pl_card_data *prv;
    struct platform_device *iface_pdev;
    struct snd_soc_card *card;
    struct device_node **node = pdev->dev.platform_data;

    if (!node)
        return -ENODEV;

    if (node[XLNX_PLAYBACK] && node[XLNX_CAPTURE]) {
        max_links = 2;
        start_count = XLNX_PLAYBACK;
    } else if (node[XLNX_PLAYBACK]) {
        max_links = 1;
        start_count = XLNX_PLAYBACK;
    } else if (node[XLNX_CAPTURE]) {
        max_links = 1;
        start_count = XLNX_CAPTURE;
    }

    card = devm_kzalloc(&pdev->dev, sizeof(struct snd_soc_card), GFP_KERNEL);
    if (!card)
        return -ENOMEM;

    card->dev = &pdev->dev;
    card->dai_link = devm_kzalloc(card->dev, sizeof(*dai) * max_links, GFP_KERNEL);
    if (!card->dai_link)
        return -ENOMEM;

    prv = devm_kzalloc(card->dev, sizeof(struct pl_card_data), GFP_KERNEL);
    if (!prv)
        return -ENOMEM;

    card->num_links = 0;
    for (i = start_count; i < (start_count + max_links); i++) {
        struct device_node *pnode = of_parse_phandle(node[i], "xlnx,snd-pcm", 0);
        struct device_node *pcodec = of_parse_phandle(node[i], "audio-codec", 0);
        if (!pnode) {
            dev_err(card->dev, "platform node not found\n");
            of_node_put(pnode);
            return -ENODEV;
        }

        if (!pcodec) {
            dev_err(card->dev, "Audio CODEC node not found\n");
            of_node_put(pnode);
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

        if (max_links == 2)
            dai = &card->dai_link[i];
        else
            dai = &card->dai_link[0];

        audio_interface = find_link(node[i], i);
        switch (audio_interface) {
        case I2S_AUDIO:
            *dai = xlnx_snd_dai[I2S_AUDIO][i];
            dai->platforms->of_node = pnode;
            dai->codecs->of_node = pcodec;
            dai->cpus->of_node = node[i];
            card->num_links++;
            snd_soc_card_set_drvdata(card, prv);
            dev_dbg(card->dev, "%s registered\n", card->dai_link[i].name);
            break;
        default:
            dev_err(card->dev, "Invalid audio interface\n");
            return -ENODEV;
        }

        of_node_put(pnode);  // Release the reference to the pnode
    }

    if (card->num_links) {
        sz = strlen(xlnx_snd_card_name[audio_interface]) + 3;
        buf = devm_kzalloc(card->dev, sz, GFP_KERNEL);
        if (!buf)
            return -ENOMEM;

        prv->xlnx_snd_dev_id = ida_simple_get(&xlnx_snd_card_dev, 0, XLNX_MAX_PL_SND_DEV, GFP_KERNEL);
        if (prv->xlnx_snd_dev_id < 0)
            return prv->xlnx_snd_dev_id;

        snprintf(buf, sz, "%s-%d", xlnx_snd_card_name[audio_interface], prv->xlnx_snd_dev_id);
        card->name = buf;

        // Widgets and routes
        // This is not needed, as the wm8960.c CODEC driver sets up widgets and routes
        //card->dapm_widgets = rehsd_snd_widgets;
        //card->num_dapm_widgets = ARRAY_SIZE(rehsd_snd_widgets);
        //card->dapm_routes = rehsd_snd_routes;
        //card->num_dapm_routes = ARRAY_SIZE(rehsd_snd_routes);
        //card->fully_routed = true;

        ret = devm_snd_soc_register_card(card->dev, card);
        if (ret) {
            dev_err(card->dev, "%s registration failed\n", card->name);
            ida_simple_remove(&xlnx_snd_card_dev, prv->xlnx_snd_dev_id);
            return ret;
        }

        dev_set_drvdata(card->dev, prv);
        dev_info(card->dev, "%s registered\n", card->name);
    }

    return 0;
}

static int xlnx_snd_remove(struct platform_device *pdev)
{
    struct pl_card_data *pdata = dev_get_drvdata(&pdev->dev);

    ida_simple_remove(&xlnx_snd_card_dev, pdata->xlnx_snd_dev_id);
    return 0;
}

static struct platform_driver xlnx_snd_driver = {
    .driver = {
        .name = "xlnx_snd_card", // It has to be this name
    },
    .probe = xlnx_snd_probe,
    .remove = xlnx_snd_remove,
};

module_platform_driver(xlnx_snd_driver);

MODULE_DESCRIPTION("rehsdboard sound card driver");
MODULE_AUTHOR("rehsd");
MODULE_LICENSE("GPL v2");
