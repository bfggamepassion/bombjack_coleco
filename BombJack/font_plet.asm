;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Apr 28 19:17:56 2023
;--------------------------------------------------------
	.module font_plet
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FONT_COLORRLE
	.globl _FONT_PATTERNRLE
	.globl _FONT_NAMERLE
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_FONT_NAMERLE:
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
_FONT_PATTERNRLE:
	.db #0x1A	; 26
	.db #0x00	; 0
	.db #0xAB	; 171
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x1C	; 28
	.db #0x38	; 56
	.db #0x02	; 2
	.db #0x38	; 56
	.db #0x00	; 0
	.db #0x70	; 112	p
	.db #0x70	; 112	p
	.db #0x00	; 0
	.db #0x36	; 54
	.db #0x00	; 0
	.db #0xD8	; 216
	.db #0x10	; 16
	.db #0x66	; 102	f
	.db #0xFF	; 255
	.db #0xC0	; 192
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3E	; 62
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x06	; 6
	.db #0x7C	; 124
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x81	; 129
	.db #0xB9	; 185
	.db #0x40	; 64
	.db #0xA5	; 165
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0xFF	; 255
	.db #0x3C	; 60
	.db #0x66	; 102	f
	.db #0x3C	; 60
	.db #0x01	; 1
	.db #0x38	; 56
	.db #0x67	; 103	g
	.db #0x66	; 102	f
	.db #0x3F	; 63
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x38	; 56
	.db #0x1A	; 26
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x30	; 48
	.db #0x01	; 1
	.db #0x36	; 54
	.db #0x30	; 48
	.db #0x30	; 48
	.db #0x38	; 56
	.db #0x1C	; 28
	.db #0x0E	; 14
	.db #0x70	; 112	p
	.db #0x10	; 16
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0B	; 11
	.db #0x70	; 112	p
	.db #0x08	; 8
	.db #0x4A	; 74	J
	.db #0x00	; 0
	.db #0x2C	; 44
	.db #0xE0	; 224
	.db #0x07	; 7
	.db #0x34	; 52
	.db #0x52	; 82	R
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x2F	; 47
	.db #0x10	; 16
	.db #0x7C	; 124
	.db #0x02	; 2
	.db #0x2A	; 42
	.db #0x5B	; 91
	.db #0x19	; 25
	.db #0x5A	; 90	Z
	.db #0x00	; 0
	.db #0x6A	; 106	j
	.db #0x7E	; 126
	.db #0x51	; 81	Q
	.db #0x6B	; 107	k
	.db #0x39	; 57
	.db #0x03	; 3
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0x40	; 64
	.db #0x32	; 50
	.db #0x36	; 54
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x7C	; 124
	.db #0xE6	; 230
	.db #0xEE	; 238
	.db #0x09	; 9
	.db #0xF6	; 246
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x7C	; 124
	.db #0x13	; 19
	.db #0x78	; 120	x
	.db #0x28	; 40
	.db #0x50	; 80	P
	.db #0xFE	; 254
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xCE	; 206
	.db #0x1C	; 28
	.db #0x70	; 112	p
	.db #0x78	; 120	x
	.db #0x07	; 7
	.db #0x7E	; 126
	.db #0x06	; 6
	.db #0x1C	; 28
	.db #0x70	; 112	p
	.db #0xC6	; 198
	.db #0x17	; 23
	.db #0x1C	; 28
	.db #0x3C	; 60
	.db #0x7C	; 124
	.db #0x40	; 64
	.db #0xDC	; 220
	.db #0x07	; 7
	.db #0x1C	; 28
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xE0	; 224
	.db #0xFC	; 252
	.db #0x2A	; 42
	.db #0x06	; 6
	.db #0xE6	; 230
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0x70	; 112	p
	.db #0xE6	; 230
	.db #0x17	; 23
	.db #0xFE	; 254
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x89	; 137
	.db #0x19	; 25
	.db #0xF8	; 248
	.db #0xF8	; 248
	.db #0x0F	; 15
	.db #0xEE	; 238
	.db #0x74	; 116	t
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x47	; 71	G
	.db #0x7E	; 126
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0x97	; 151
	.db #0xD2	; 210
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xA4	; 164
	.db #0x64	; 100	d
	.db #0xA0	; 160
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x60	; 96
	.db #0x1D	; 29
	.db #0x30	; 48
	.db #0x18	; 24
	.db #0x0E	; 14
	.db #0x75	; 117	u
	.db #0x70	; 112	p
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0x0C	; 12
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x0C	; 12
	.db #0x18	; 24
	.db #0xE5	; 229
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x6E	; 110	n
	.db #0x20	; 32
	.db #0x6E	; 110	n
	.db #0x0C	; 12
	.db #0x0D	; 13
	.db #0x18	; 24
	.db #0x3C	; 60
	.db #0x42	; 66	B
	.db #0x99	; 153
	.db #0x04	; 4
	.db #0xA1	; 161
	.db #0xA1	; 161
	.db #0x99	; 153
	.db #0x42	; 66	B
	.db #0x3C	; 60
	.db #0x33	; 51
	.db #0x7C	; 124
	.db #0x10	; 16
	.db #0x6C	; 108	l
	.db #0xC6	; 198
	.db #0xDE	; 222
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0xCC	; 204
	.db #0x96	; 150
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0x48	; 72	H
	.db #0x3A	; 58
	.db #0x4F	; 79	O
	.db #0xC0	; 192
	.db #0x67	; 103	g
	.db #0x0F	; 15
	.db #0x5C	; 92
	.db #0xEC	; 236
	.db #0xA0	; 160
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x1C	; 28
	.db #0xC0	; 192
	.db #0xF8	; 248
	.db #0xC0	; 192
	.db #0x97	; 151
	.db #0xFE	; 254
	.db #0x19	; 25
	.db #0xF0	; 240
	.db #0xFC	; 252
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x97	; 151
	.db #0x87	; 135
	.db #0x18	; 24
	.db #0x16	; 22
	.db #0x1F	; 31
	.db #0xE6	; 230
	.db #0xE6	; 230
	.db #0x06	; 6
	.db #0x4D	; 77	M
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x38	; 56
	.db #0x96	; 150
	.db #0xBF	; 191
	.db #0x06	; 6
	.db #0xA5	; 165
	.db #0x84	; 132
	.db #0x17	; 23
	.db #0xE4	; 228
	.db #0xEC	; 236
	.db #0x9C	; 156
	.db #0xFC	; 252
	.db #0x2C	; 44
	.db #0xEE	; 238
	.db #0xEE	; 238
	.db #0xE7	; 231
	.db #0x00	; 0
	.db #0xE6	; 230
	.db #0x17	; 23
	.db #0xC6	; 198
	.db #0x66	; 102	f
	.db #0x45	; 69	E
	.db #0x28	; 40
	.db #0x62	; 98	b
	.db #0x2F	; 47
	.db #0xEE	; 238
	.db #0xEE	; 238
	.db #0x07	; 7
	.db #0xB6	; 182
	.db #0x5F	; 95
	.db #0x27	; 39
	.db #0xAC	; 172
	.db #0xCD	; 205
	.db #0x06	; 6
	.db #0x51	; 81	Q
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0xEE	; 238
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0x77	; 119	w
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x47	; 71	G
	.db #0x37	; 55
	.db #0x5F	; 95
	.db #0x7C	; 124
	.db #0x0E	; 14
	.db #0x5C	; 92
	.db #0x77	; 119	w
	.db #0x35	; 53
	.db #0x59	; 89	Y
	.db #0x38	; 56
	.db #0xE7	; 231
	.db #0x67	; 103	g
	.db #0xE6	; 230
	.db #0x71	; 113	q
	.db #0x47	; 71	G
	.db #0x07	; 7
	.db #0x7C	; 124
	.db #0x7C	; 124
	.db #0xA6	; 166
	.db #0x0F	; 15
	.db #0x30	; 48
	.db #0x47	; 71	G
	.db #0xC6	; 198
	.db #0x07	; 7
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0xDA	; 218
	.db #0x57	; 87	W
	.db #0x4C	; 76	L
	.db #0xE0	; 224
	.db #0x27	; 39
	.db #0x7E	; 126
	.db #0x1C	; 28
	.db #0x38	; 56
	.db #0x70	; 112	p
	.db #0xE3	; 227
	.db #0x27	; 39
	.db #0x3C	; 60
	.db #0x30	; 48
	.db #0xAF	; 175
	.db #0x00	; 0
	.db #0xD7	; 215
	.db #0x8E	; 142
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0xB7	; 183
	.db #0x0F	; 15
	.db #0x55	; 85	U
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
_FONT_COLORRLE:
	.db #0x18	; 24
	.db #0x41	; 65	A
	.db #0x00	; 0
	.db #0x61	; 97	a
	.db #0x7F	; 127
	.db #0x41	; 65	A
	.db #0xFF	; 255
	.db #0xAD	; 173
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.area _CABS
