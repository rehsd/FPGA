#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <linux/pm.h>
#include <linux/platform_device.h>
#include <sound/core.h>
#include <sound/pcm.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>
#include <sound/soc-dapm.h>
#include <sound/initval.h>
#include <linux/slab.h>

#define AUDIO_NAME "CS4344"

#ifdef CS4344_DEBUG
#define dbg(format, arg...) \
    printk(KERN_DEBUG AUDIO_NAME ": " format "\n" , ## arg)
#else
#define dbg(format, arg...) do {} while (0)
#endif
#define err(format, arg...) \
    printk(KERN_ERR AUDIO_NAME ": " format "\n" , ## arg)
#define info(format, arg...) \
    printk(KERN_INFO AUDIO_NAME ": " format "\n" , ## arg)
#define warn(format, arg...) \
    printk(KERN_WARNING AUDIO_NAME ": " format "\n" , ## arg)

/* There are no software controls for DAC so they need to be faked */

#define CS4344_DUMMY_CTRL     0x00    /* DAC Channel Dummy Control */

static unsigned int cs4344_read_reg(struct snd_soc_component *component, unsigned int reg)
{
    return 0;
}

static int cs4344_write_reg(struct snd_soc_component *component, unsigned int reg, unsigned int value) 
{
    return 0;
}

static int cs4344_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
    return 0;
}

static int cs4344_mute(struct snd_soc_dai *dai, int stream, int mute)
{
    return 0;
}

static int cs4344_set_dai_fmt(struct snd_soc_dai *codec_dai,
        unsigned int fmt)
{
    return 0;
}

static int cs4344_set_dai_sysclk(struct snd_soc_dai *codec_dai,
        int clk_id, unsigned int freq, int dir)
{
    return 0;
}

#define CS4344_RATES (SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_11025 |\
        SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_22050 | SNDRV_PCM_RATE_44100 | \
        SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_88200 | SNDRV_PCM_RATE_96000)

#define CS4344_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
    SNDRV_PCM_FMTBIT_S24_LE)

static struct snd_soc_dai_ops cs4344_dai_ops = {
    .hw_params = cs4344_pcm_hw_params,
    .set_fmt = cs4344_set_dai_fmt,
    .set_sysclk = cs4344_set_dai_sysclk,
    .mute_stream = cs4344_mute,
};

static struct snd_soc_dai_driver cs4344_dai = {
    .name = "CS4344",
    .playback = {
        .stream_name = "Playback",
        .channels_min = 1,
        .channels_max = 2,
        .rates = CS4344_RATES,
        .formats = CS4344_FORMATS,
    },
    .ops = &cs4344_dai_ops,
};

static const struct snd_soc_dapm_widget cs4344_dapm_widgets[] = {
    /* Add your DAPM widgets here */
};

static const struct snd_soc_dapm_route cs4344_dapm_routes[] = {
    /* Add your DAPM routes here */
};

static const struct snd_soc_component_driver soc_codec_dev_cs4344 = {
    .read = cs4344_read_reg,
    .write = cs4344_write_reg,
    .dapm_widgets = cs4344_dapm_widgets,
    .num_dapm_widgets = ARRAY_SIZE(cs4344_dapm_widgets),
    .dapm_routes = cs4344_dapm_routes,
    .num_dapm_routes = ARRAY_SIZE(cs4344_dapm_routes),
};

static int cs4344_probe(struct platform_device *pdev)
{
    return snd_soc_register_component(&pdev->dev, &soc_codec_dev_cs4344, &cs4344_dai, 1);
}

static int cs4344_remove(struct platform_device *pdev)
{
    snd_soc_unregister_component(&pdev->dev);
    return 0;
}

static struct platform_driver cs4344_platform_driver = {
    .driver = {
        .name = "cs4344",
    },
    .probe = cs4344_probe,
    .remove = cs4344_remove,
};

module_platform_driver(cs4344_platform_driver);

MODULE_DESCRIPTION("ASoC CS4344 driver");
MODULE_AUTHOR("Mark F. Brown");
MODULE_LICENSE("GPL");

