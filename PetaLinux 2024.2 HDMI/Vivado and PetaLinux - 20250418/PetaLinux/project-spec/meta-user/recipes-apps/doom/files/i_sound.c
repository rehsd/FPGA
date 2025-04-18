//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:  none
//

#include <stdio.h>
#include <stdlib.h>

#ifdef ORIGCODE
#include "SDL_mixer.h"
#endif

#include "config.h"
#include "doomfeatures.h"
#include "doomtype.h"

#ifdef ORIGCODE
#include "gusconf.h"
#endif
#include "i_sound.h"
#include "i_video.h"
#include "m_argv.h"
#include "m_config.h"

#include <unistd.h>    // for access, X_OK
#include <string.h>    // for strcat

#include "sounds.h"

FILE* sndserver = NULL;


// Sound sample rate to use for digital output (Hz)

int snd_samplerate = 44100;

// Maximum number of bytes to dedicate to allocated sound effects.
// (Default: 64MB)

int snd_cachesize = 64 * 1024 * 1024;

// Config variable that controls the sound buffer size.
// We default to 28ms (1000 / 35fps = 1 buffer per tic).

int snd_maxslicetime_ms = 28;

// External command to invoke to play back music.

char *snd_musiccmd = "";

// Low-level sound and music modules we are using

static sound_module_t *sound_module;
static music_module_t *music_module;

int snd_musicdevice = SNDDEVICE_SB;
int snd_sfxdevice = SNDDEVICE_SB;

// Sound modules

extern void I_InitTimidityConfig(void);
extern sound_module_t sound_sdl_module;
extern sound_module_t sound_pcsound_module;
extern music_module_t music_sdl_module;
extern music_module_t music_opl_module;

// For OPL module:

extern int opl_io_port;

// For native music module:

extern char *timidity_cfg_path;

// DOS-specific options: These are unused but should be maintained
// so that the config file can be shared between chocolate
// doom and doom.exe

#if ORIGCODE
static int snd_sbport = 0;
static int snd_sbirq = 0;
static int snd_sbdma = 0;
static int snd_mport = 0;
#endif

// Compiled-in sound modules:

static sound_module_t *sound_modules[] = 
{
#ifdef FEATURE_SOUND
    &sound_sdl_module,
    &sound_pcsound_module,
#endif
    NULL,
};

// Compiled-in music modules:

static music_module_t *music_modules[] =
{
#ifdef FEATURE_SOUND
    &music_sdl_module,
    &music_opl_module,
#endif
    NULL,
};

// Check if a sound device is in the given list of devices

static boolean SndDeviceInList(snddevice_t device, snddevice_t *list,
                               int len)
{
    int i;

    for (i=0; i<len; ++i)
    {
        if (device == list[i])
        {
            return true;
        }
    }

    return false;
}

// Find and initialize a sound_module_t appropriate for the setting
// in snd_sfxdevice.

static void InitSfxModule(boolean use_sfx_prefix)
{
    int i;

    sound_module = NULL;

    for (i=0; sound_modules[i] != NULL; ++i)
    {
        // Is the sfx device in the list of devices supported by
        // this module?

        if (SndDeviceInList(snd_sfxdevice, 
                            sound_modules[i]->sound_devices,
                            sound_modules[i]->num_sound_devices))
        {
            // Initialize the module

            if (sound_modules[i]->Init(use_sfx_prefix))
            {
                sound_module = sound_modules[i];
                return;
            }
        }
    }
}

// Initialize music according to snd_musicdevice.

static void InitMusicModule(void)
{
    int i;

    music_module = NULL;

    for (i=0; music_modules[i] != NULL; ++i)
    {
        // Is the music device in the list of devices supported
        // by this module?

        if (SndDeviceInList(snd_musicdevice, 
                            music_modules[i]->sound_devices,
                            music_modules[i]->num_sound_devices))
        {
            // Initialize the module

            if (music_modules[i]->Init())
            {
                music_module = music_modules[i];
                return;
            }
        }
    }
}

//
// Initializes sound stuff, including volume
// Sets channels, SFX and music volume,
//  allocates channel buffer, sets S_sfx lookup.
//



void I_InitSound(boolean use_sfx_prefix)
{  
	//rehsd - trimmed this function down for simplicity in my build
    boolean nosound, nosfx, nomusic;

    char* sndserver_filename = "./sndserver ";

    char buffer[256];
    printf("**************** I_InitSound for SNDSERV ***********\n");

    sprintf(buffer, "%s > /dev/null 2>&1", sndserver_filename);

	// Print the buffer command before using popen
	printf("Starting sndserver with command: %s\n", buffer);

	sndserver = popen(buffer, "w");

	printf("waiting for sndserver to load...  ");
	fflush(stdout);
	usleep(5000000);		//give it time to start
	printf("continuing...\n");

	if (!sndserver)
	{
		fprintf(stderr, "Could not start sound server [%s]\n", buffer);
		return;
	}
	else
	{
		printf("sound module ready\n");
	}

	return;
}


void I_ShutdownSound(void)
{
    if (sound_module != NULL)
    {
        sound_module->Shutdown();
    }

    if (music_module != NULL)
    {
        music_module->Shutdown();
    }
}

int I_GetSfxLumpNum(sfxinfo_t *sfxinfo)
{
    if (sound_module != NULL) 
    {
        return sound_module->GetSfxLumpNum(sfxinfo);
    }
    else
    {
        return 0;
    }
}

void I_UpdateSound(void)
{
    if (sound_module != NULL)
    {
        sound_module->Update();
    }

    if (music_module != NULL && music_module->Poll != NULL)
    {
        music_module->Poll();
    }
}

static void CheckVolumeSeparation(int *vol, int *sep)
{
    if (*sep < 0)
    {
        *sep = 0;
    }
    else if (*sep > 254)
    {
        *sep = 254;
    }

    if (*vol < 0)
    {
        *vol = 0;
    }
    else if (*vol > 127)
    {
        *vol = 127;
    }
}

void I_UpdateSoundParams(int channel, int vol, int sep)
{
    if (sound_module != NULL)
    {
        CheckVolumeSeparation(&vol, &sep);
        sound_module->UpdateSoundParams(channel, vol, sep);
    }
}

int lookupSoundValueFromName(const char *name) {
    for (int i = 0; S_sfx[i].name != NULL; i++) {
        if (strcmp(S_sfx[i].name, name) == 0) {
            return i;
        }
    }
    return 0;	//no sound
}

int I_StartSound(sfxinfo_t *sfxinfo, int channel, int vol, int sep)
{
	//fprintf(sndserver, "p%2.2x%2.2x%2.2x%2.2x\n", 0x01, 0x0a, 0x0f, 0x1c);

    // up to 6-character name
    //char*	name;

	int soundId = lookupSoundValueFromName(sfxinfo->name);
	if(soundId>0)
	{
		fprintf(sndserver, "p%2.2x%2.2x%2.2x%2.2x\n", soundId, 0x0a, 0x0f, 0x1c);
	    fflush(sndserver);
	}

	return 0;

	/*
    if (sound_module != NULL)
    {
        CheckVolumeSeparation(&vol, &sep);
        return sound_module->StartSound(sfxinfo, channel, vol, sep);
    }
    else
    {
        return 0;
    }
    */
}

void I_StopSound(int channel)
{
    if (sound_module != NULL)
    {
        sound_module->StopSound(channel);
    }
}

boolean I_SoundIsPlaying(int channel)
{
    if (sound_module != NULL)
    {
        return sound_module->SoundIsPlaying(channel);
    }
    else
    {
        return false;
    }
}

void I_PrecacheSounds(sfxinfo_t *sounds, int num_sounds)
{
    if (sound_module != NULL && sound_module->CacheSounds != NULL)
    {
	sound_module->CacheSounds(sounds, num_sounds);
    }
}

void I_InitMusic(void)
{
}

void I_ShutdownMusic(void)
{

}

void I_SetMusicVolume(int volume)
{
    if (music_module != NULL)
    {
        music_module->SetMusicVolume(volume);
    }
}

void I_PauseSong(void)
{
    if (music_module != NULL)
    {
        music_module->PauseMusic();
    }
}

void I_ResumeSong(void)
{
    if (music_module != NULL)
    {
        music_module->ResumeMusic();
    }
}

void *I_RegisterSong(void *data, int len)
{
    if (music_module != NULL)
    {
        return music_module->RegisterSong(data, len);
    }
    else
    {
        return NULL;
    }
}

void I_UnRegisterSong(void *handle)
{
    if (music_module != NULL)
    {
        music_module->UnRegisterSong(handle);
    }
}

void I_PlaySong(void *handle, boolean looping)
{
    if (music_module != NULL)
    {
        music_module->PlaySong(handle, looping);
    }
}

void I_StopSong(void)
{
    if (music_module != NULL)
    {
        music_module->StopSong();
    }
}

boolean I_MusicIsPlaying(void)
{
    if (music_module != NULL)
    {
        return music_module->MusicIsPlaying();
    }
    else
    {
        return false;
    }
}

void I_BindSoundVariables(void)
{
#ifdef ORIGCODE
    extern int use_libsamplerate;
    extern float libsamplerate_scale;

    M_BindVariable("snd_musicdevice",   &snd_musicdevice);
    M_BindVariable("snd_sfxdevice",     &snd_sfxdevice);
    M_BindVariable("snd_sbport",        &snd_sbport);
    M_BindVariable("snd_sbirq",         &snd_sbirq);
    M_BindVariable("snd_sbdma",         &snd_sbdma);
    M_BindVariable("snd_mport",         &snd_mport);
    M_BindVariable("snd_maxslicetime_ms", &snd_maxslicetime_ms);
    M_BindVariable("snd_musiccmd",      &snd_musiccmd);
    M_BindVariable("snd_samplerate",    &snd_samplerate);
    M_BindVariable("snd_cachesize",     &snd_cachesize);
    M_BindVariable("opl_io_port",       &opl_io_port);

    M_BindVariable("timidity_cfg_path", &timidity_cfg_path);
    M_BindVariable("gus_patch_path",    &gus_patch_path);
    M_BindVariable("gus_ram_kb",        &gus_ram_kb);

#ifdef FEATURE_SOUND
    M_BindVariable("use_libsamplerate",   &use_libsamplerate);
    M_BindVariable("libsamplerate_scale", &libsamplerate_scale);
#endif

    // Before SDL_mixer version 1.2.11, MIDI music caused the game
    // to crash when it looped.  If this is an old SDL_mixer version,
    // disable MIDI.

#ifdef __MACOSX__
    {
        const SDL_version *v = Mix_Linked_Version();

        if (SDL_VERSIONNUM(v->major, v->minor, v->patch)
          < SDL_VERSIONNUM(1, 2, 11))
        {
            snd_musicdevice = SNDDEVICE_NONE;
        }
    }
#endif
#endif
}
