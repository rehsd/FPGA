// SPDX-License-Identifier: GPL-2.0
/*
 * Xilinx ASoC sound card support
 *
 * Copyright (C) 2018 Xilinx, Inc.
 */

//started with https://www.pixela.co.jp/products/pickup/dev/petalinux/data/zybo-pl-snd-card-driver_v0.1.zip
//was using SSM2602
//'zybo' --> 'rehsd'

#include <linux/clk.h>
#include <linux/idr.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>

#include <sound/soc-card.h>
#include <sound/simple_card_utils.h>

//#include "../codecs/wm8960.h"
#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/codecs/wm8960.h"

//#include "../xilinx/xlnx_snd_common.h"
#include "/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/sound/soc/xilinx/xlnx_snd_common.h"

#define I2S_CLOCK_RATIO 384
#define XLNX_MAX_PL_SND_DEV 6

#define WM8960_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
		SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_S32_LE)

static DEFINE_IDA(rehsd_snd_card_dev);

enum {
	I2S_AUDIO = 0,
	XLNX_MAX_IFACE,
};

static const char *rehsd_snd_card_name[XLNX_MAX_IFACE] = {
	//[I2S_AUDIO]	= "rehsd-pl-snd-card",
	[I2S_AUDIO]	= "rehsd-snd",
};

enum {
    DIR_PLAYBACK = 0,
    DIR_CAPTURE = 1,
    DIR_MAXPATH = 2
};

static const char *dev_compat[][XLNX_MAX_IFACE] = {
	[XLNX_PLAYBACK] = {
		"xlnx,i2s-transmitter-1.0",
	},

	[XLNX_CAPTURE] = {
		"xlnx,i2s-receiver-1.0",
	},
};

static int rehsd_i2s_card_hw_params(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *params)
{
	int ret, clk_div;
	u32 ch, data_width, sample_rate;
	struct pl_card_data *prv;

	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(rtd, 0);
	struct snd_soc_dai *codec_dai = asoc_rtd_to_codec(rtd, 0);

	dev_info(NULL, "uly : rehsd_i2s_card_hw_params \n");

	ch = params_channels(params);
	data_width = params_width(params);
	sample_rate = params_rate(params);

	/* only 2 channels supported */
	if (ch != 2)
		return -EINVAL;

	prv = snd_soc_card_get_drvdata(rtd->card);
    dev_info(NULL, "uly :rehsd_snd_card_hw_params :data_width=%d \n",data_width);
    dev_info(NULL, "uly :rehsd_snd_card_hw_params :sample_rate=%d \n",sample_rate);

#if 1

    unsigned int fmt = SND_SOC_DAIFMT_CBS_CFS | SND_SOC_DAIFMT_I2S;
    ret = snd_soc_dai_set_fmt(codec_dai, fmt);
    //ret = snd_soc_dai_set_sysclk(codec_dai, SSM2602_SYSCLK, 12288000,SND_SOC_CLOCK_IN);
    ret = snd_soc_dai_set_sysclk(codec_dai, WM8960_SYSCLK_MCLK, 24000000,SND_SOC_CLOCK_IN);
    /* Set the codec system clock */

    if (ret) {
        return ret;
    }

    // This is for CPU DAI
    /* only 2 channels supported */
    if (ch != 2)
        return -EINVAL;

    prv->mclk_val = clk_get_rate(prv->mclk);
    dev_info(NULL, "uly :rehsd_snd_card_hw_params :prv->mclk_val=%d \n",prv->mclk_val);
    clk_div = DIV_ROUND_UP(clk_get_rate(prv->mclk), 2 * ch * 32 * sample_rate);
    prv->mclk_ratio = DIV_ROUND_UP(clk_get_rate(prv->mclk), sample_rate);

#else
	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		switch (sample_rate) {
		case 5512:
		case 8000:
		case 11025:
		case 16000:
		case 22050:
		case 32000:
		case 44100:
		case 48000:
		case 64000:
		case 88200:
		case 96000:
			prv->mclk_ratio = 384;
			break;
		default:
			return -EINVAL;
		}
	} else {
		switch (sample_rate) {
		case 32000:
		case 44100:
		case 48000:
		case 88200:
		case 96000:
			prv->mclk_ratio = 384;
			break;
		case 64000:
		case 176400:
		case 192000:
			prv->mclk_ratio = 192;
			break;
		default:
			return -EINVAL;
		}
	}

	prv->mclk_val = prv->mclk_ratio * sample_rate;
	clk_div = DIV_ROUND_UP(prv->mclk_ratio, 2 * ch * data_width);
#endif
	ret = snd_soc_dai_set_clkdiv(cpu_dai, 0, clk_div);
	if (ret)
		return ret;

	return clk_set_rate(prv->mclk, prv->mclk_val);
}

static const struct snd_soc_ops rehsd_i2s_card_ops = {
	.hw_params = rehsd_i2s_card_hw_params,
};

SND_SOC_DAILINK_DEFS(xlnx_i2s_capture,
		     DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_capture")),
		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
		     DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));

SND_SOC_DAILINK_DEFS(xlnx_i2s_playback,
		     DAILINK_COMP_ARRAY(COMP_CPU("xlnx_i2s_playback")),
		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "wm8960-hifi")),
		     DAILINK_COMP_ARRAY(COMP_PLATFORM(NULL)));

static struct snd_soc_dai_link rehsd_snd_dai[][XLNX_MAX_PATHS] = {
	[I2S_AUDIO] = {
		{
			.name = "xilinx-i2s_playback",
			SND_SOC_DAILINK_REG(xlnx_i2s_playback),
			.ops = &rehsd_i2s_card_ops,
		},
		{
			.name = "xilinx-i2s_capture",
			SND_SOC_DAILINK_REG(xlnx_i2s_capture),
			.ops = &rehsd_i2s_card_ops,
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

static int rehsd_snd_probe(struct platform_device *pdev)
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


    dev_info(NULL, "uly :rehsd_snd_probe()\n");

    max_links = DIR_MAXPATH;
    start_count = DIR_PLAYBACK;

	card = devm_kzalloc(&pdev->dev, sizeof(struct snd_soc_card),
			    GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->dev = &pdev->dev;

	card->dai_link = devm_kzalloc(card->dev,
				      sizeof(*dai) * max_links,
				      GFP_KERNEL);
	if (!card->dai_link)
		return -ENOMEM;

	prv = devm_kzalloc(card->dev,
			   sizeof(struct pl_card_data),
			   GFP_KERNEL);
	if (!prv)
		return -ENOMEM;

	card->num_links = 0;
	for (i = start_count; i < (start_count + max_links); i++) {
		struct device_node *pnode = of_parse_phandle(node[i],
							     "xlnx,snd-pcm", 0);
		if (!pnode) {
			dev_err(card->dev, "platform node not found\n");
			of_node_put(pnode);
			return -ENODEV;
		}

		///CODEC
		struct device_node *pcodec = of_parse_phandle(node[i],
		                        "audio-codec", 0);

		dev_info(NULL, "uly :rehsd_snd_probe(), codec=%p\n", pcodec);
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
				///codec
    		    of_node_put(pcodec);
				return -ENODEV;
			}

			prv->mclk = devm_clk_get(&iface_pdev->dev, "aud_mclk");
			if (IS_ERR(prv->mclk))
				return PTR_ERR(prv->mclk);
		}
		of_node_put(pnode);
		///codec
	    of_node_put(pcodec);

		if (max_links == 2)
			dai = &card->dai_link[i];
		else
			dai = &card->dai_link[0];

		audio_interface = find_link(node[i], i);
		switch (audio_interface) {
		case I2S_AUDIO:
			*dai = rehsd_snd_dai[I2S_AUDIO][i];
			dai->platforms->of_node = pnode;
			dai->cpus->of_node = node[i];
			dai->codecs->of_node = pcodec;
            ///codec
			card->num_links++;
			snd_soc_card_set_drvdata(card, prv);
			dev_dbg(card->dev, "%s registered [I2S Audio]\n",
				card->dai_link[i].name);
			break;
		default:
			dev_err(card->dev, "Invalid audio interface\n");
			return -ENODEV;
		}
	}

	if (card->num_links) {
		/*
		 *  Example : i2s card name = xlnx-i2s-snd-card-0
		 *  length = number of chars in "xlnx-i2s-snd-card"
		 *	    + 1 ('-'), + 1 (card instance num)
		 *	    + 1 ('\0')
		 */
		sz = strlen(rehsd_snd_card_name[audio_interface]) + 3;
		buf = devm_kzalloc(card->dev, sz, GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		prv->xlnx_snd_dev_id = ida_simple_get(&rehsd_snd_card_dev, 0,
						      XLNX_MAX_PL_SND_DEV,
						      GFP_KERNEL);
		if (prv->xlnx_snd_dev_id < 0)
			return prv->xlnx_snd_dev_id;

		snprintf(buf, sz, "%s-%d", rehsd_snd_card_name[audio_interface],
			 prv->xlnx_snd_dev_id);
		card->name = buf;

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
		.name = "xlnx_snd_card",
	},
	.probe = rehsd_snd_probe,
	.remove = rehsd_snd_remove,
};

module_platform_driver(rehsd_snd_driver);

MODULE_DESCRIPTION("rehsd FPGA sound card driver");
MODULE_AUTHOR("rehsd");   //adapted from pixela.co.jp
MODULE_LICENSE("GPL v2");
