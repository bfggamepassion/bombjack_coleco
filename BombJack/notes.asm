;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Apr 28 19:17:57 2023
;--------------------------------------------------------
	.module notes
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _inter_sound_nmi
	.globl _tmp_global
	.globl _nSfxDelay
	.globl _pSfxList
	.globl _nPlayDelay_save
	.globl _nPlayDelay
	.globl _pPlayListForLoop
	.globl _pPlayList
	.globl _sfxEnCours
	.globl _loopMusic
	.globl _intern_cpt
	.globl _intern_hz
	.globl _G_count
	.globl _G_TickCount
	.globl _tableNote
	.globl _stopmusic
	.globl _sound_nmi
	.globl _startmusic
	.globl _startsfxPrio
	.globl _startsfx
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_G_TickCount::
	.ds 2
_G_count::
	.ds 2
_intern_hz::
	.ds 1
_intern_cpt::
	.ds 1
_loopMusic::
	.ds 1
_sfxEnCours::
	.ds 1
_pPlayList::
	.ds 2
_pPlayListForLoop::
	.ds 2
_nPlayDelay::
	.ds 1
_nPlayDelay_save::
	.ds 1
_pSfxList::
	.ds 2
_nSfxDelay::
	.ds 1
_tmp_global::
	.ds 1
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;notes.c:9: unsigned int G_TickCount = 0;
	ld	iy,#_G_TickCount
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:11: unsigned int G_count = 0;
	ld	iy,#_G_count
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:19: volatile unsigned char *pPlayList=NULL;		// audio playlist
	ld	iy,#_pPlayList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:20: volatile unsigned char *pPlayListForLoop=NULL;		// audio playlist
	ld	iy,#_pPlayListForLoop
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:21: unsigned char nPlayDelay=0;
	ld	iy,#_nPlayDelay
	ld	0 (iy),#0x00
;notes.c:22: unsigned char nPlayDelay_save=0;
	ld	iy,#_nPlayDelay_save
	ld	0 (iy),#0x00
;notes.c:25: volatile unsigned char *pSfxList=NULL;		// sfx audio playlist
	ld	iy,#_pSfxList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:26: unsigned char nSfxDelay=1;
	ld	iy,#_nSfxDelay
	ld	0 (iy),#0x01
;notes.c:28: unsigned char tmp_global=0;
	ld	iy,#_tmp_global
	ld	0 (iy),#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;notes.c:44: void stopmusic() {
;	---------------------------------
; Function stopmusic
; ---------------------------------
_stopmusic_start::
_stopmusic:
;notes.c:45: pPlayList=NULL;
	ld	iy,#_pPlayList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:46: pPlayListForLoop=NULL;
	ld	iy,#_pPlayListForLoop
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:47: pSfxList=NULL;
	ld	iy,#_pSfxList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:48: direct_sound(0x9F);
	ld	a,#0x9F
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:49: direct_sound(0xBF);
	ld	a,#0xBF
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:50: direct_sound(0xDF);
	ld	a,#0xDF
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
	ret
_stopmusic_end::
_tableNote:
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03F9
	.dw #0x03C0
	.dw #0x038A
	.dw #0x0358
	.dw #0x0328
	.dw #0x02FA
	.dw #0x02CF
	.dw #0x02A7
	.dw #0x0281
	.dw #0x025D
	.dw #0x023B
	.dw #0x021B
	.dw #0x01FD
	.dw #0x01E0
	.dw #0x01C5
	.dw #0x01AC
	.dw #0x0194
	.dw #0x017D
	.dw #0x0168
	.dw #0x0154
	.dw #0x0141
	.dw #0x012F
	.dw #0x011E
	.dw #0x010E
	.dw #0x00FF
	.dw #0x00F0
	.dw #0x00E3
	.dw #0x00D6
	.dw #0x00CA
	.dw #0x00BF
	.dw #0x00B4
	.dw #0x00AA
	.dw #0x00A1
	.dw #0x0098
	.dw #0x008F
	.dw #0x0087
	.dw #0x0080
	.dw #0x0078
	.dw #0x0072
	.dw #0x006B
	.dw #0x0065
	.dw #0x0060
	.dw #0x005A
	.dw #0x0055
	.dw #0x0051
	.dw #0x004C
	.dw #0x0048
	.dw #0x0044
	.dw #0x0040
	.dw #0x003C
	.dw #0x0039
	.dw #0x0036
	.dw #0x0033
	.dw #0x0030
	.dw #0x002D
	.dw #0x002B
	.dw #0x0029
	.dw #0x0026
	.dw #0x0024
	.dw #0x0022
	.dw #0x0020
	.dw #0x001E
	.dw #0x001D
;notes.c:53: void inter_sound_nmi(void)
;	---------------------------------
; Function inter_sound_nmi
; ---------------------------------
_inter_sound_nmi_start::
_inter_sound_nmi:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;notes.c:60: unsigned char channel,channel_convert_play=0;
	ld	-2 (ix),#0x00
;notes.c:61: unsigned char channel_convert_volume=0;
	ld	-3 (ix),#0x00
;notes.c:65: if (NULL != pPlayList) {
	ld	iy,#_pPlayList
	ld	a,0 (iy)
	or	a,1 (iy)
	jp	Z,00116$
;notes.c:66: while (nPlayDelay==*(pPlayList))
00112$:
	ld	hl,(_pPlayList)
	ld	e,(hl)
	ld	a,(#_nPlayDelay + 0)
	sub	a,e
	jp	NZ,00114$
;notes.c:68: nDat=*pPlayList;
	ld	hl,(_pPlayList)
	ld	l,(hl)
;notes.c:70: pPlayList++;
	ld	iy,#_pPlayList
	inc	0 (iy)
	jr	NZ,00144$
	inc	1 (iy)
00144$:
;notes.c:71: nDat=*pPlayList;
	ld	hl,(_pPlayList)
	ld	e, (hl)
;notes.c:72: action = (nDat&192)>>6;
	ld	a,e
	and	a,#0xC0
	ld	d,a
	srl	d
	srl	d
	srl	d
	srl	d
	srl	d
	srl	d
;notes.c:73: channel = (nDat&48)>>4;
	ld	a,e
	and	a,#0x30
	ld	c,a
	srl	c
	srl	c
	srl	c
	srl	c
;notes.c:74: volume = (nDat&15);
	ld	a,e
	and	a,#0x0F
	ld	-1 (ix),a
;notes.c:76: switch(channel)
	ld	a,#0x02
	sub	a,c
	jr	C,00104$
	push	de
	ld	e,c
	ld	d,#0x00
	ld	hl,#00145$
	add	hl,de
	add	hl,de
;notes.c:78: case 0:
	pop	de
	jp	(hl)
00145$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;notes.c:79: channel_convert_play=0;
	ld	-2 (ix),#0x00
;notes.c:80: channel_convert_volume=1;
	ld	-3 (ix),#0x01
;notes.c:81: break;
	jr	00104$
;notes.c:82: case 1:
00102$:
;notes.c:83: channel_convert_play=2;
	ld	-2 (ix),#0x02
;notes.c:84: channel_convert_volume=3;
	ld	-3 (ix),#0x03
;notes.c:85: break;
	jr	00104$
;notes.c:86: case 2:
00103$:
;notes.c:87: channel_convert_play=4;
	ld	-2 (ix),#0x04
;notes.c:88: channel_convert_volume=5;
	ld	-3 (ix),#0x05
;notes.c:90: }
00104$:
;notes.c:92: switch(action)
	ld	a,#0x02
	sub	a,d
	jp	C,00111$
	push	de
	ld	e,d
	ld	d,#0x00
	ld	hl,#00146$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00146$:
	jp	00105$
	jp	00106$
	jp	00107$
;notes.c:94: case 0: // Jouer une note
00105$:
;notes.c:95: pPlayList++;
	ld	iy,#_pPlayList
	inc	0 (iy)
	jr	NZ,00147$
	inc	1 (iy)
00147$:
;notes.c:96: note = (tableNote[*pPlayList]);
	ld	hl,(_pPlayList)
	ld	a,(hl)
	add	a,a
	add	a,#<(_tableNote)
	ld	l, a
	ld	a, #>(_tableNote)
	adc	a, #0x00
	ld	h, a
	ld	a,(hl)
	inc	hl
	ld	d, (hl)
	ld	e, a
;notes.c:98: direct_sound(128|(channel_convert_volume<<4)|volume);
	ld	a,-3 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	or	a,-1 (ix)
	ld	l,a
	push	de
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
	pop	de
;notes.c:99: direct_sound(128|(channel_convert_play<<4)|(note&15));
	ld	a,-2 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	ld	l,a
	ld	a,e
	and	a,#0x0F
	ld	c,a
	ld	b,#0x00
	ld	h,#0x00
	ld	a,l
	or	a,c
	ld	l,a
	ld	a,h
	or	a,b
	push	de
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:100: direct_sound(note>>4);
	pop	hl
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:102: break;
	jr	00111$
;notes.c:103: case 1: // Changement de volume
00106$:
;notes.c:106: direct_sound(128|(channel_convert_volume<<4)|volume);
	ld	a,-3 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	or	a,-1 (ix)
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:107: break;
	jr	00111$
;notes.c:108: case 2: // End
00107$:
;notes.c:109: if (loopMusic==LOOP_OFF) {pPlayList=NULL;stopmusic();}
	xor	a,a
	ld	hl,#_loopMusic + 0
	or	a,(hl)
	jr	NZ,00109$
	ld	iy,#_pPlayList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
	call	_stopmusic
	jp	00130$
00109$:
;notes.c:110: else {pPlayList=pPlayListForLoop;nPlayDelay=nPlayDelay_save;}
	ld	a,(#_pPlayListForLoop + 0)
	ld	(#_pPlayList + 0),a
	ld	a,(#_pPlayListForLoop + 1)
	ld	(#_pPlayList + 1),a
	ld	a,(#_nPlayDelay_save + 0)
	ld	(#_nPlayDelay + 0),a
;notes.c:111: return;
	jp	00130$
;notes.c:114: }
00111$:
;notes.c:116: pPlayList++;
	ld	iy,#_pPlayList
	inc	0 (iy)
	jp	NZ,00112$
	inc	1 (iy)
	jp	00112$
00114$:
;notes.c:118: nPlayDelay++;
	ld	iy,#_nPlayDelay
	inc	0 (iy)
00116$:
;notes.c:122: if (NULL != pSfxList) {
	ld	iy,#_pSfxList
	ld	a,0 (iy)
	or	a,1 (iy)
	jp	Z,00130$
;notes.c:123: while (nSfxDelay==*(pSfxList))
00125$:
	ld	hl,(_pSfxList)
	ld	c,(hl)
	ld	a,(#_nSfxDelay + 0)
	sub	a,c
	jp	NZ,00127$
;notes.c:125: nDat=*pSfxList;
;notes.c:127: pSfxList++;
	ld	iy,#_pSfxList
	inc	0 (iy)
	jr	NZ,00153$
	inc	1 (iy)
00153$:
;notes.c:128: nDat=*pSfxList;
	ld	hl,(_pSfxList)
	ld	e, (hl)
;notes.c:129: action = (nDat&192)>>6;
	ld	a,e
	and	a,#0xC0
	ld	d,a
	srl	d
	srl	d
	srl	d
	srl	d
	srl	d
	srl	d
;notes.c:130: channel = (nDat&48)>>4;
	ld	a,e
	and	a,#0x30
	ld	c,a
	srl	c
	srl	c
	srl	c
	srl	c
;notes.c:131: volume = (nDat&15);
	ld	a,e
	and	a,#0x0F
	ld	-1 (ix),a
;notes.c:133: switch(channel)
	ld	a,#0x02
	sub	a,c
	jr	C,00120$
	push	de
	ld	e,c
	ld	d,#0x00
	ld	hl,#00154$
	add	hl,de
	add	hl,de
;notes.c:135: case 0:
	pop	de
	jp	(hl)
00154$:
	jr	00117$
	jr	00118$
	jr	00119$
00117$:
;notes.c:136: channel_convert_play=0;
	ld	-2 (ix),#0x00
;notes.c:137: channel_convert_volume=1;
	ld	-3 (ix),#0x01
;notes.c:138: break;
	jr	00120$
;notes.c:139: case 1:
00118$:
;notes.c:140: channel_convert_play=2;
	ld	-2 (ix),#0x02
;notes.c:141: channel_convert_volume=3;
	ld	-3 (ix),#0x03
;notes.c:142: break;
	jr	00120$
;notes.c:143: case 2:
00119$:
;notes.c:144: channel_convert_play=4;
	ld	-2 (ix),#0x04
;notes.c:145: channel_convert_volume=5;
	ld	-3 (ix),#0x05
;notes.c:147: }
00120$:
;notes.c:149: switch(action)
	ld	a,#0x02
	sub	a,d
	jp	C,00124$
	push	de
	ld	e,d
	ld	d,#0x00
	ld	hl,#00155$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00155$:
	jp	00121$
	jp	00122$
	jp	00123$
;notes.c:151: case 0: // Jouer une note
00121$:
;notes.c:152: pSfxList++;
	ld	iy,#_pSfxList
	inc	0 (iy)
	jr	NZ,00156$
	inc	1 (iy)
00156$:
;notes.c:153: note = (tableNote[*pSfxList]);
	ld	hl,(_pSfxList)
	ld	a,(hl)
	add	a,a
	add	a,#<(_tableNote)
	ld	l, a
	ld	a, #>(_tableNote)
	adc	a, #0x00
	ld	h, a
	ld	a,(hl)
	inc	hl
	ld	d, (hl)
	ld	e, a
;notes.c:155: direct_sound(128|(channel_convert_volume<<4)|volume);
	ld	a,-3 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	or	a,-1 (ix)
	ld	l,a
	push	de
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
	pop	de
;notes.c:156: direct_sound(128|(channel_convert_play<<4)|(note&15));
	ld	a,-2 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	ld	l,a
	ld	a,e
	and	a,#0x0F
	ld	c,a
	ld	b,#0x00
	ld	h,#0x00
	ld	a,l
	or	a,c
	ld	l,a
	ld	a,h
	or	a,b
	push	de
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:157: direct_sound(note>>4);
	pop	hl
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:159: break;
	jr	00124$
;notes.c:160: case 1: // Changement de volume
00122$:
;notes.c:163: direct_sound(128|(channel_convert_volume<<4)|volume);
	ld	a,-3 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,#0x80
	or	a,-1 (ix)
	push	af
	inc	sp
	call	_direct_sound
	inc	sp
;notes.c:164: break;
	jr	00124$
;notes.c:165: case 2: // End
00123$:
;notes.c:166: pSfxList=NULL;
	ld	iy,#_pSfxList
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;notes.c:167: sfxEnCours = NON;
	ld	hl,#_sfxEnCours + 0
	ld	(hl), #0x01
;notes.c:168: return;
	jr	00130$
;notes.c:171: }
00124$:
;notes.c:173: pSfxList++;
	ld	iy,#_pSfxList
	inc	0 (iy)
	jp	NZ,00125$
	inc	1 (iy)
	jp	00125$
00127$:
;notes.c:175: nSfxDelay++;
	ld	iy,#_nSfxDelay
	inc	0 (iy)
00130$:
	ld	sp,ix
	pop	ix
	ret
_inter_sound_nmi_end::
;notes.c:220: void sound_nmi()
;	---------------------------------
; Function sound_nmi
; ---------------------------------
_sound_nmi_start::
_sound_nmi:
;notes.c:222: intern_cpt++;
	ld	iy,#_intern_cpt
	inc	0 (iy)
;notes.c:223: inter_sound_nmi();
	call	_inter_sound_nmi
;notes.c:224: if ((intern_hz==50) && ((intern_cpt&3)==0)) inter_sound_nmi();
	ld	a,(#_intern_hz + 0)
	sub	a,#0x32
	jr	Z,00109$
	ret
00109$:
	ld	a,(#_intern_cpt + 0)
	and	a,#0x03
	jr	Z,00111$
	ret
00111$:
	call	_inter_sound_nmi
	ret
_sound_nmi_end::
;notes.c:229: void startmusic(unsigned char *pDat,unsigned char start,unsigned char loop,unsigned char hz) {
;	---------------------------------
; Function startmusic
; ---------------------------------
_startmusic_start::
_startmusic:
	push	ix
	ld	ix,#0
	add	ix,sp
;notes.c:231: intern_hz = hz;
	ld	a,8 (ix)
	ld	(#_intern_hz + 0),a
;notes.c:232: intern_cpt = 0;
	ld	hl,#_intern_cpt + 0
	ld	(hl), #0x00
;notes.c:233: loopMusic = loop;
	ld	a,7 (ix)
	ld	(#_loopMusic + 0),a
;notes.c:234: if (NULL != pPlayList) {
	ld	iy,#_pPlayList
	ld	a,0 (iy)
	or	a,1 (iy)
	jr	Z,00102$
;notes.c:235: stopmusic();
	call	_stopmusic
00102$:
;notes.c:241: nPlayDelay = start;
	ld	c,6 (ix)
	ld	hl,#_nPlayDelay + 0
	ld	(hl), c
;notes.c:242: nPlayDelay_save = start;
	ld	hl,#_nPlayDelay_save + 0
	ld	(hl), c
;notes.c:243: pPlayList=pDat;
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	iy,#_pPlayList
	ld	0 (iy),c
	ld	1 (iy),b
;notes.c:244: pPlayListForLoop=pDat;
	ld	iy,#_pPlayListForLoop
	ld	0 (iy),c
	ld	1 (iy),b
	pop	ix
	ret
_startmusic_end::
;notes.c:253: void startsfxPrio(unsigned char *pDat, unsigned char start) {
;	---------------------------------
; Function startsfxPrio
; ---------------------------------
_startsfxPrio_start::
_startsfxPrio:
	push	ix
	ld	ix,#0
	add	ix,sp
;notes.c:255: if (NULL != pSfxList) {
	ld	iy,#_pSfxList
	ld	a,0 (iy)
	or	a,1 (iy)
	jr	Z,00102$
;notes.c:256: pSfxList=NULL;
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
00102$:
;notes.c:259: nSfxDelay=start;
	ld	a,6 (ix)
	ld	(#_nSfxDelay + 0),a
;notes.c:260: pSfxList=pDat;
	ld	a,4 (ix)
	ld	iy,#_pSfxList
	ld	0 (iy),a
	ld	a,5 (ix)
	ld	1 (iy),a
;notes.c:261: sfxEnCours = OUI;
	ld	hl,#_sfxEnCours + 0
	ld	(hl), #0x01
	pop	ix
	ret
_startsfxPrio_end::
;notes.c:264: void startsfx(unsigned char *pDat, unsigned char start) {
;	---------------------------------
; Function startsfx
; ---------------------------------
_startsfx_start::
_startsfx:
	push	ix
	ld	ix,#0
	add	ix,sp
;notes.c:266: if (sfxEnCours==OUI) return;
	ld	a,(#_sfxEnCours + 0)
	sub	a,#0x01
	jr	Z,00105$
	jr	00102$
	jr	00105$
00102$:
;notes.c:267: sfxEnCours = NON;
	ld	hl,#_sfxEnCours + 0
	ld	(hl), #0x01
;notes.c:268: if (NULL != pSfxList) {
	ld	iy,#_pSfxList
	ld	a,0 (iy)
	or	a,1 (iy)
	jr	Z,00104$
;notes.c:269: pSfxList=NULL;
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
00104$:
;notes.c:272: nSfxDelay=start;
	ld	a,6 (ix)
	ld	(#_nSfxDelay + 0),a
;notes.c:273: pSfxList=pDat;
	ld	a,4 (ix)
	ld	iy,#_pSfxList
	ld	0 (iy),a
	ld	a,5 (ix)
	ld	1 (iy),a
00105$:
	pop	ix
	ret
_startsfx_end::
	.area _CODE
	.area _CABS
