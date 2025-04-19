#
# This file is the doom recipe.
#

SUMMARY = "Simple doom application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
DEPENDS += "libsdl"

SRC_URI = "file://doom1.wad \
	file://doom1b.wad \
	file://default.cfg \
	file://am_map.c \
	file://am_map.h \
	file://config.h \
	file://deh_main.h \
	file://deh_misc.h \
	file://deh_str.h \
	file://d_englsh.h \
	file://d_event.c \
	file://d_event.h \
	file://d_items.c \
	file://d_items.h \
	file://d_iwad.c \
	file://d_iwad.h \
	file://d_loop.c \
	file://d_loop.h \
	file://d_main.c \
	file://d_main.h \
	file://d_mode.c \
	file://d_mode.h \
	file://d_net.c \
	file://doomdata.h \
	file://doomdef.c \
	file://doomdef.h \
	file://doomfeatures.h \
	file://doom.h \
	file://doomkeys.h \
	file://doomstat.c \
	file://doomstat.h \
	file://doomtype.h \
	file://d_player.h \
	file://dstrings.c \
	file://dstrings.h \
	file://d_textur.h \
	file://d_think.h \
	file://d_ticcmd.h \
	file://dummy.c \
	file://f_finale.c \
	file://f_finale.h \
	file://f_wipe.c \
	file://f_wipe.h \
	file://g_game.c \
	file://g_game.h \
	file://gusconf.c \
	file://gusconf.h \
	file://hu_lib.c \
	file://hu_lib.h \
	file://hu_stuff.c \
	file://hu_stuff.h \
	file://i_cdmus.c \
	file://i_cdmus.h \
	file://icon.c \
	file://i_endoom.c \
	file://i_endoom.h \
	file://i_input_sdl.c \
	file://i_input_tty.c \
	file://i_joystick.c \
	file://i_joystick.h \
	file://i_main.c \
	file://info.c \
	file://info.h \
	file://i_oplmusic.c \
	file://i_pcsound.c \
	file://i_scale.c \
	file://i_scale.h \
	file://i_sdlmusic.c \
	file://i_sdlsound.c \
	file://i_sound.c \
	file://i_sound_dummy.c \
	file://i_sound.h \
	file://i_swap.h \
	file://i_system.c \
	file://i_system.h \
	file://i_timer.c \
	file://i_timer.h \
	file://i_video.c \
	file://i_video_fbdev.c \
	file://i_video.h \
	file://m_argv.c \
	file://m_argv.h \
	file://m_bbox.c \
	file://m_bbox.h \
	file://m_cheat.c \
	file://m_cheat.h \
	file://m_config.c \
	file://m_config.h \
	file://m_controls.c \
	file://m_controls.h \
	file://memio.c \
	file://memio.h \
	file://m_fixed.c \
	file://m_fixed.h \
	file://m_menu.c \
	file://m_menu.h \
	file://m_misc.c \
	file://m_misc.h \
	file://m_random.c \
	file://m_random.h \
	file://net_client.h \
	file://net_dedicated.h \
	file://net_defs.h \
	file://net_gui.h \
	file://net_io.h \
	file://net_loop.h \
	file://net_packet.h \
	file://net_query.h \
	file://net_sdl.h \
	file://net_server.h \
	file://p_ceilng.c \
	file://p_doors.c \
	file://p_enemy.c \
	file://p_floor.c \
	file://p_inter.c \
	file://p_inter.h \
	file://p_lights.c \
	file://p_local.h \
	file://p_map.c \
	file://p_maputl.c \
	file://p_mobj.c \
	file://p_mobj.h \
	file://p_plats.c \
	file://p_pspr.c \
	file://p_pspr.h \
	file://p_saveg.c \
	file://p_saveg.h \
	file://p_setup.c \
	file://p_setup.h \
	file://p_sight.c \
	file://p_spec.c \
	file://p_spec.h \
	file://p_switch.c \
	file://p_telept.c \
	file://p_tick.c \
	file://p_tick.h \
	file://p_user.c \
	file://r_bsp.c \
	file://r_bsp.h \
	file://r_data.c \
	file://r_data.h \
	file://r_defs.h \
	file://r_draw.c \
	file://r_draw.h \
	file://r_local.h \
	file://r_main.c \
	file://r_main.h \
	file://r_plane.c \
	file://r_plane.h \
	file://r_segs.c \
	file://r_segs.h \
	file://r_sky.c \
	file://r_sky.h \
	file://r_state.h \
	file://r_things.c \
	file://r_things.h \
	file://sha1.c \
	file://sha1.h \
	file://sounds.c \
	file://sounds.h \
	file://s_sound.c \
	file://s_sound.h \
	file://statdump.c \
	file://statdump.h \
	file://st_lib.c \
	file://st_lib.h \
	file://st_stuff.c \
	file://st_stuff.h \
	file://stubs.c \
	file://tables.c \
	file://tables.h \
	file://v_patch.h \
	file://v_video.c \
	file://v_video.h \
	file://w_checksum.c \
	file://w_checksum.h \
	file://w_file.c \
	file://w_file.h \
	file://w_file_stdc.c \
	file://w_file_stdc_unbuffered.c \
	file://wi_stuff.c \
	file://wi_stuff.h \
	file://w_main.c \
	file://w_main.h \
	file://w_merge.h \
	file://w_wad.c \
	file://w_wad.h \
	file://z_zone.c \
	file://z_zone.h \
		file://Makefile \
		  "

FILES_${PN} = "/usr/bin/doom1.wad \
		/usr/bin/doom1b.wad \
		/usr/bin/default.cfg \
	          "
S = "${WORKDIR}"

do_compile() {
    export CROSS_COMPILE=arm-linux-gnueabihf-
    export PATH=$PATH:/usr/bin
    echo "CROSS_COMPILE: $CROSS_COMPILE"
    #which ${CROSS_COMPILE}gcc
    #echo "PATH: $PATH"
    #ls -l $(which ${CROSS_COMPILE}gcc)
    ${CROSS_COMPILE}gcc --version
    export CFLAGS="-I${PETA_DIR}/sysroot/usr/include/SDL -DSNDSERV"
    export LDFLAGS="-L${PETA_DIR}/sysroot/usr/lib"
    oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 fbdoom ${D}${bindir}
	     install -D -m 0644 ${WORKDIR}/doom1.wad ${D}${bindir}/doom1.wad
	     install -D -m 0644 ${WORKDIR}/doom1b.wad ${D}${bindir}/doom1b.wad 
	     install -D -m 0644 ${WORKDIR}/default.cfg ${D}${bindir}/default.cfg 
}
