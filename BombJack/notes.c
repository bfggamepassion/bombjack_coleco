#include <coleco.h>
#include <getput1.h>
#include "notes.h"


#define NULL 0

extern const void direct_sound(byte sound);
unsigned int G_TickCount = 0;

unsigned int G_count = 0;

unsigned char intern_hz;
unsigned char intern_cpt;

unsigned char loopMusic;
unsigned char sfxEnCours;

volatile unsigned char *pPlayList=NULL;		// audio playlist
volatile unsigned char *pPlayListForLoop=NULL;		// audio playlist
unsigned char nPlayDelay=0;
unsigned char nPlayDelay_save=0;


volatile unsigned char *pSfxList=NULL;		// sfx audio playlist
unsigned char nSfxDelay=1;

unsigned char tmp_global=0;

const unsigned int tableNote[]=
{

    1017,1017,1017,1017,1017,1017,1017,1017,1017,1017,1017,1017, /*Octave 0*/
    1017,1017,1017,1017,1017,1017,1017,1017,1017,1017,1017,1017, /* Octave 1 */
    1017,1017,1017,1017,1017,1017,1017,1017,1017,1017, 960, 906,/* Octave 2*/
    856,808,762,719,679,641,605,571,539,509,480,453, /*Octave 3*/
    428,404,381,360,340,321,303,286,270,255,240,227, /*Octave 4*/
    214,202,191,180,170,161,152,143,135,128,120,114, /*Octave 5*/
    107,101, 96, 90, 85, 81, 76, 72, 68, 64, 60, 57,  /*Octave 6*/
    54,51, 48, 45, 43, 41, 38, 36, 34, 32, 30, 29  /*Octave 7*/
};

// stops sfx too
void stopmusic() {
	pPlayList=NULL;
	pPlayListForLoop=NULL;
	pSfxList=NULL;
	direct_sound(0x9F);
	direct_sound(0xBF);
	direct_sound(0xDF);
}

void inter_sound_nmi(void)
{
	unsigned char nDat;
	unsigned char volume;

	unsigned int note;

	unsigned char channel,channel_convert_play=0;
	unsigned char channel_convert_volume=0;
	unsigned char action;

	/* Gestion de la musique */
	if (NULL != pPlayList) {
    		while (nPlayDelay==*(pPlayList))
			{
				nDat=*pPlayList;

				pPlayList++;
				nDat=*pPlayList;
                action = (nDat&192)>>6;
				channel = (nDat&48)>>4;
				volume = (nDat&15);

                switch(channel)
                {
                        case 0:
                             channel_convert_play=0;
                             channel_convert_volume=1;
                         break;
                         case 1:
                              channel_convert_play=2;
                              channel_convert_volume=3;
                         break;
                         case 2:
                              channel_convert_play=4;
                              channel_convert_volume=5;
                         break;
                }

                switch(action)
                {
                    case 0: // Jouer une note
						pPlayList++;
                        note = (tableNote[*pPlayList]);

                        direct_sound(128|(channel_convert_volume<<4)|volume);
                        direct_sound(128|(channel_convert_play<<4)|(note&15));
                        direct_sound(note>>4);

                    break;
                    case 1: // Changement de volume

                        //center_string(15,"VOLUME");
                        direct_sound(128|(channel_convert_volume<<4)|volume);
                    break;
                    case 2: // End
                        if (loopMusic==LOOP_OFF) {pPlayList=NULL;stopmusic();}
                        else {pPlayList=pPlayListForLoop;nPlayDelay=nPlayDelay_save;}
                        return;
                    break;

                }

				pPlayList++;
			}
			nPlayDelay++;
		}

	/* Gestion des bruitages */
	if (NULL != pSfxList) {
    		while (nSfxDelay==*(pSfxList))
			{
				nDat=*pSfxList;

				pSfxList++;
				nDat=*pSfxList;
                action = (nDat&192)>>6;
				channel = (nDat&48)>>4;
				volume = (nDat&15);

                switch(channel)
                {
                        case 0:
                             channel_convert_play=0;
                             channel_convert_volume=1;
                         break;
                         case 1:
                              channel_convert_play=2;
                              channel_convert_volume=3;
                         break;
                         case 2:
                              channel_convert_play=4;
                              channel_convert_volume=5;
                         break;
                }

                switch(action)
                {
                    case 0: // Jouer une note
						pSfxList++;
                        note = (tableNote[*pSfxList]);

                        direct_sound(128|(channel_convert_volume<<4)|volume);
                        direct_sound(128|(channel_convert_play<<4)|(note&15));
                        direct_sound(note>>4);

                    break;
                    case 1: // Changement de volume

                        //center_string(15,"VOLUME");
                        direct_sound(128|(channel_convert_volume<<4)|volume);
                    break;
                    case 2: // End
						pSfxList=NULL;
						sfxEnCours = NON;
                        return;
                    break;

                }

				pSfxList++;
			}
			nSfxDelay++;
		}		
}
/*
	if (NULL != pSfxList)
  {
		nSfxDelay++;
		if (nSfxDelay == *(pSfxList))
    {
			while (nSfxDelay==*(pSfxList))
			{
				nDat=*(++pSfxList);
				if (0 == nDat) {
					pSfxList=NULL;
					sfxEnCours = NON;
					break;
				}
				switch (nDat&0x90) {
					case 0x80:		// load sample
						channel = (nDat & 96)>>5;
						nextvalue = (*(++pSfxList));
						note = (nextvalue & 63) << 4 | (nDat&15);
						notep1 = note & 255;
						notep2 = note >> 8;
						sound_set(channel<<1, notep1);
						sound_set((channel<<1)+1, notep2);
						break;
					case 0x90:		// load volume
						channel = (nDat & 96)>>5;
						volume = 15-(nDat & 15) ;
						sound_set(8+channel, volume);
						break;
					default:		// don't know what this is, should abort
						pSfxList=NULL;
						sfxEnCours=NON;
						break;
				}
				// point to next frame count
				 pSfxList++;
			}
		}
	}

}*/

void sound_nmi()
{
    intern_cpt++;
    inter_sound_nmi();
    if ((intern_hz==50) && ((intern_cpt&3)==0)) inter_sound_nmi();
}



void startmusic(unsigned char *pDat,unsigned char start,unsigned char loop,unsigned char hz) {
	// order here is important
	intern_hz = hz;
	intern_cpt = 0;
	loopMusic = loop;
	if (NULL != pPlayList) {
		stopmusic();
	}


	//if ((*pDat)>0) nPlayDelay=(*pDat)-1; else nPlayDelay=0;
	//center_string(20,str(nPlayDelay));
	nPlayDelay = start;
	nPlayDelay_save = start;
	pPlayList=pDat;
	pPlayListForLoop=pDat;

    /*direct_sound(0x90);
	direct_sound(0xB0);
	direct_sound(0xD0);*/


}

void startsfxPrio(unsigned char *pDat, unsigned char start) {
	// order here is important
	if (NULL != pSfxList) {
		pSfxList=NULL;
	}

	nSfxDelay=start;
	pSfxList=pDat;
	sfxEnCours = OUI;
}

void startsfx(unsigned char *pDat, unsigned char start) {
	// order here is important
	if (sfxEnCours==OUI) return;
	sfxEnCours = NON;
	if (NULL != pSfxList) {
		pSfxList=NULL;
	}

	nSfxDelay=start;
	pSfxList=pDat;
}
