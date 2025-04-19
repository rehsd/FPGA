// SPDX-License-Identifier: GPL-2.0
/*
 * ADAPTED FROM Digilent FPGA HDMI driver. Copyright (C) 2020 Digilent, Inc. Author : Cosmin Tanislav <demonsingur@gmail.com>
 */

 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_probe_helper.h>
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/device.h>
 #include <linux/of_device.h>
 
 #include <drm/drm_edid.h>
 #include <linux/i2c.h> 

 struct rehsd_hdmi2 {
	 struct drm_encoder encoder;
	 struct drm_connector connector;
	 struct drm_device *drm_dev;
 
	 struct device *dev;
 
	 struct clk *clk;
	 bool clk_enabled;
 
	 struct i2c_adapter *i2c_bus;
	 u32 fmax;
	 u32 hmax;
	 u32 vmax;
	 u32 hpref;
	 u32 vpref;
 };
 
 #define connector_to_hdmi2(c) container_of(c, struct rehsd_hdmi2, connector)
 #define encoder_to_hdmi2(e) container_of(e, struct rehsd_hdmi2, encoder)

 /*
static int rehsd_hdmi_get_modes(struct drm_connector *connector) {
    struct rehsd_hdmi *hdmi = connector_to_hdmi(connector);
    struct drm_display_mode *mode;
    int count = 0;

    dev_info(hdmi->dev, "Using hardcoded 720p mode\n");

    // Allocate and define the mode manually
    mode = drm_mode_create(connector->dev);
    if (!mode)
        return -ENOMEM;

    // Set the mode parameters for 1280x720@60Hz
    mode->clock = 74250;    // Pixel clock in kHz (74.25 MHz)
    mode->hdisplay = 1280;  // Horizontal resolution
    mode->hsync_start = 1390; // Start of horizontal sync
    mode->hsync_end = 1430;   // End of horizontal sync
    mode->htotal = 1650;      // Total horizontal pixels (including blanking)
    mode->vdisplay = 720;     // Vertical resolution
    mode->vsync_start = 725;  // Start of vertical sync
    mode->vsync_end = 730;    // End of vertical sync
    mode->vtotal = 750;       // Total vertical lines (including blanking)
    mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED; // Mark as driver-provided and preferred

    // Add the mode to the connector's probed modes list
    drm_mode_probed_add(connector, mode);
    drm_connector_update_edid_property(connector, NULL); // Clear EDID since no I2C support

    // Return the number of modes added
    count = 1; // One hardcoded mode
    return count;
}
*/


 static int rehsd_hdmi2_get_modes(struct drm_connector *connector)
 {
	 struct rehsd_hdmi2 *hdmi2 = connector_to_hdmi2(connector);
	 struct edid *edid;
	 int count = 0;
 
	 if (hdmi2->i2c_bus) {
		 edid = drm_get_edid(connector, hdmi2->i2c_bus);
		 if (!edid) {
			 dev_err(hdmi2->dev, "failed to get edid data\n");
			 return 0;
		 }
 
		 drm_connector_update_edid_property(connector, edid);
		 count = drm_add_edid_modes(connector, edid);
		 kfree(edid);
	 } else {
		 count = drm_add_modes_noedid(connector, hdmi2->hmax, hdmi2->vmax);
		 drm_set_preferred_mode(connector, hdmi2->hpref, hdmi2->vpref);
	 }
 
	 return 0;
 }

 static int rehsd_hdmi2_mode_valid(struct drm_connector *connector,
		 struct drm_display_mode *mode)
 {
	 struct rehsd_hdmi2 *hdmi2 = connector_to_hdmi2(connector);
 
		 if (!mode)
			 goto mode_bad;
 
		 if (mode->flags & (DRM_MODE_FLAG_INTERLACE | DRM_MODE_FLAG_DBLCLK
							 | DRM_MODE_FLAG_3D_MASK))
			 goto mode_bad;
 
		 if (mode->clock > hdmi2->fmax
						 || mode->hdisplay > hdmi2->hmax
						 || mode->vdisplay > hdmi2->vmax)
			 goto mode_bad;
 
		 return MODE_OK;
 
	 mode_bad:
		 return MODE_BAD;
 }
 
 static
 struct drm_encoder *rehsd_hdmi2_best_encoder(struct drm_connector *connector)
	 {
			 struct rehsd_hdmi2 *hdmi2 = connector_to_hdmi2(connector);
			 return &hdmi2->encoder;
		 }
		 
static
struct drm_connector_helper_funcs rehsd_hdmi2_connector_helper_funcs = {
		.get_modes = rehsd_hdmi2_get_modes,
		.mode_valid	= rehsd_hdmi2_mode_valid,
		.best_encoder = rehsd_hdmi2_best_encoder,
	};
 
 
 static
 enum drm_connector_status rehsd_hdmi2_detect(struct drm_connector *connector,
				 bool force)
	 {
			 struct rehsd_hdmi2 *hdmi2 = connector_to_hdmi2(connector);
		 
			 if (!hdmi2->i2c_bus) {
				dev_info(hdmi2->dev, "No I2C bus, assuming connector is connected\n");
				return connector_status_connected;
			}			
		 
			return drm_probe_ddc(hdmi2->i2c_bus)
					? connector_status_connected
					: connector_status_disconnected;
		 }
		 
static void rehsd_hdmi2_connector_destroy(struct drm_connector *connector)
	 {
		drm_connector_unregister(connector);
		drm_connector_cleanup(connector);
	}
		 
static const struct drm_connector_funcs rehsd_hdmi2_connector_funcs = {
		.detect = rehsd_hdmi2_detect,
		.fill_modes = drm_helper_probe_single_connector_modes,
		.destroy = rehsd_hdmi2_connector_destroy,
		.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
		.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
		.reset			= drm_atomic_helper_connector_reset,
	};
 
 static int rehsd_hdmi2_create_connector(struct rehsd_hdmi2 *hdmi2)
	 {
			 struct drm_connector *connector = &hdmi2->connector;
			 struct drm_encoder *encoder = &hdmi2->encoder;
			 int ret;
		 
				 connector->polled = DRM_CONNECTOR_POLL_CONNECT
						 | DRM_CONNECTOR_POLL_DISCONNECT;
		 
				 ret = drm_connector_init(hdmi2->drm_dev, connector,
								 &rehsd_hdmi2_connector_funcs,
								 DRM_MODE_CONNECTOR_HDMIA);
			 if (ret) {
					 dev_err(hdmi2->dev, "failed to initialize connector\n");
					 return ret;
				 }
			 drm_connector_helper_add(connector,
							 &rehsd_hdmi2_connector_helper_funcs);
		 
				 drm_connector_register(connector);
			 drm_connector_attach_encoder(connector, encoder);
		 
				 return 0;
		 }
		 
static void rehsd_hdmi2_atomic_mode_set(struct drm_encoder *encoder,
				struct drm_crtc_state *crtc_state,
				struct drm_connector_state *connector_state)
 {
	 struct rehsd_hdmi2 *hdmi2 = encoder_to_hdmi2(encoder);
	 struct drm_display_mode *m = &crtc_state->adjusted_mode;
 
	 clk_set_rate(hdmi2->clk, m->clock * 1000);
 }
 
 static void rehsd_hdmi2_enable(struct drm_encoder *encoder)
	 {
		return;
		/*
		struct rehsd_hdmi *hdmi = encoder_to_hdmi(encoder);
		
		if (hdmi->clk_enabled)
			return;
		
		clk_prepare_enable(hdmi->clk);
		hdmi->clk_enabled = true;
		*/
 }
 
 static void rehsd_hdmi2_disable(struct drm_encoder *encoder)
 {
	return;
	/*
	 struct rehsd_hdmi *hdmi = encoder_to_hdmi(encoder);
 
	 if (!hdmi->clk_enabled)
		 return;
 
		 clk_disable_unprepare(hdmi->clk);
	 hdmi->clk_enabled = false;
	 */
 }
 
 static const struct drm_encoder_helper_funcs rehsd_hdmi2_encoder_helper_funcs = {
		 .atomic_mode_set = rehsd_hdmi2_atomic_mode_set,
	 .enable = rehsd_hdmi2_enable,
	 .disable = rehsd_hdmi2_disable,
 };
 
 static const struct drm_encoder_funcs rehsd_hdmi2_encoder_funcs = {
	 .destroy = drm_encoder_cleanup,
 };
 
 static int rehsd_hdmi2_create_encoder(struct rehsd_hdmi2 *hdmi2)
 {
	 struct drm_encoder *encoder = &hdmi2->encoder;
	 int ret;
 
	 encoder->possible_crtcs = 1; // Restrict to CRTC 1

	 ret = drm_encoder_init(hdmi2->drm_dev, encoder,
					 &rehsd_hdmi2_encoder_funcs,
					 DRM_MODE_ENCODER_TMDS, NULL);
	 if (ret) {
			 dev_err(hdmi2->dev, "failed to initialize encoder\n");
			 return ret;
		 }
	 drm_encoder_helper_add(encoder, &rehsd_hdmi2_encoder_helper_funcs);
 
		 return 0;
 }
 
 static int rehsd_hdmi2_bind(struct device *dev, struct device *master,
					  void *data)
	 {
			 struct rehsd_hdmi2 *hdmi2 = dev_get_drvdata(dev);
			 int ret;
		 
			hdmi2->drm_dev = data;
	
			ret = rehsd_hdmi2_create_encoder(hdmi2);
			 if (ret) {
					 dev_err(dev, "failed to create encoder: %d\n", ret);
					 goto encoder_create_fail;
				 }
		 
			 
				 ret = rehsd_hdmi2_create_connector(hdmi2);
			 if (ret) {
					 dev_err(dev, "failed to create connector: %d\n", ret);
					 goto hdmi2_create_fail;
				 }
		 
	 return 0;
 
 hdmi2_create_fail:
	 drm_encoder_cleanup(&hdmi2->encoder);
 encoder_create_fail:
	 return ret;
 }
 
 static void rehsd_hdmi2_unbind(struct device *dev, struct device *master,
		 void *data)
 {
	 struct rehsd_hdmi2 *hdmi2 = dev_get_drvdata(dev);
 
	 rehsd_hdmi2_disable(&hdmi2->encoder);
 }
 
 static const struct component_ops rehsd_hdmi2_component_ops = {
	 .bind	= rehsd_hdmi2_bind,
	 .unbind	= rehsd_hdmi2_unbind,
 };
 
 #define rehsd_ENC_MAX_FREQ 150000
 #define rehsd_ENC_MAX_H 1280
 #define rehsd_ENC_MAX_V 720
 #define rehsd_ENC_PREF_H 1280
 #define rehsd_ENC_PREF_V 720
 static int rehsd_hdmi2_parse_dt(struct rehsd_hdmi2 *hdmi2)
 {
	 struct device *dev = hdmi2->dev;
	 struct device_node *node = dev->of_node;
	 struct device_node *i2c_node;
	 //int ret;
 
	 /*
	 hdmi->clk = devm_clk_get(dev, "clk");
	 if (IS_ERR(hdmi->clk)) {
			 ret = PTR_ERR(hdmi->clk);
			 dev_err(dev, "failed to get hdmi clock: %d\n", ret);
			 return ret;
		 }


	 i2c_node = of_parse_phandle(node, "rehsd,edid-i2c", 0);
	 if (i2c_node) {
			 hdmi->i2c_bus = of_get_i2c_adapter_by_node(i2c_node);
			 of_node_put(i2c_node);
	 
				 if (!hdmi->i2c_bus) {
						 ret = -EPROBE_DEFER;
						 dev_err(dev, "failed to get edid i2c adapter: %d\n", ret);
						 return ret;
					 }
		 } else {
				 dev_info(dev, "failed to find edid i2c property\n");
			 }
 
		 ret = of_property_read_u32(node, "rehsd,fmax", &hdmi->fmax);
	 if (ret < 0)
			 hdmi->fmax = rehsd_ENC_MAX_FREQ;
 
		 ret = of_property_read_u32(node, "rehsd,hmax", &hdmi->hmax);
	 if (ret < 0)
			 hdmi->hmax = rehsd_ENC_MAX_H;
 
		 ret = of_property_read_u32(node, "rehsd,vmax", &hdmi->vmax);
	 if (ret < 0)
			 hdmi->vmax = rehsd_ENC_MAX_V;
 
		 ret = of_property_read_u32(node, "rehsd,hpref", &hdmi->hpref);
	 if (ret < 0)
			 hdmi->hpref = rehsd_ENC_PREF_H;
 
		 ret = of_property_read_u32(node, "rehsd,vpref", &hdmi->vpref);
	 if (ret < 0)
		 hdmi->vpref = rehsd_ENC_PREF_V;
 
		 */

	hdmi2->fmax = rehsd_ENC_MAX_FREQ;
	hdmi2->hmax = rehsd_ENC_MAX_H;
	hdmi2->vmax = rehsd_ENC_MAX_V;
	hdmi2->hpref = rehsd_ENC_PREF_H;
	hdmi2->vpref = rehsd_ENC_PREF_V;
	 return 0;
 }
 
 static int rehsd_hdmi2_probe(struct platform_device *pdev)
 {
	 struct device *dev = &pdev->dev;
	 struct rehsd_hdmi2 *hdmi2;
	 int ret;
 
	 hdmi2 = devm_kzalloc(dev, sizeof(*hdmi2), GFP_KERNEL);
	 if (!hdmi2) {
		 ret = -ENOMEM;
		 dev_err(dev, "failed to allocate: %d\n", ret);
		 return ret;
	 }
 
	 hdmi2->dev = dev;
 
	 ret = rehsd_hdmi2_parse_dt(hdmi2);
	 if (ret) {
		 dev_err(dev, "failed to parse device tree: %d\n", ret);
		 return ret;
	 }
 
	 platform_set_drvdata(pdev, hdmi2);
 
		 ret = component_add(dev, &rehsd_hdmi2_component_ops);
	 if (ret < 0) {
		 dev_err(dev, "fail to add component: %d\n", ret);
		 return ret;
	 }
 
	 return 0;
 }
 
 static int rehsd_hdmi2_remove(struct platform_device *pdev)
 {
	 struct rehsd_hdmi2 *hdmi2 = platform_get_drvdata(pdev);
 
	 component_del(&pdev->dev, &rehsd_hdmi2_component_ops);
	 if (hdmi2->i2c_bus)
		 i2c_put_adapter(hdmi2->i2c_bus);
	 return 0;
 }
 
 static const struct of_device_id rehsd_hdmi2_of_match[] = {
		 { .compatible = "rehsd,hdmi2"},
		 { }
	 };
 MODULE_DEVICE_TABLE(of, rehsd_hdmi2_of_match);
 
 static struct platform_driver rehsd_hdmi2_driver = {
		 .probe = rehsd_hdmi2_probe,
		 .remove = rehsd_hdmi2_remove,
		 .driver = {
				 .name = "rehsd-hdmi2",
				 .of_match_table = rehsd_hdmi2_of_match,
			 },
 };
 
 module_platform_driver(rehsd_hdmi2_driver);
 
 //Adapted from:
 //MODULE_AUTHOR("Cosmin Tanislav <demonsingur@gmail.com>");
 MODULE_AUTHOR("rehsd");
 MODULE_DESCRIPTION("rehsd FPGA HDMI driver");
 MODULE_LICENSE("GPL v2");
 
 
