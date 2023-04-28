;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Apr 28 19:17:56 2023
;--------------------------------------------------------
	.module sprites
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPATTERNRLE
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
_SPATTERNRLE:
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x3F	; 63
	.db #0x39	; 57
	.db #0x1B	; 27
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x60	; 96
	.db #0x6E	; 110	n
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0xC8	; 200
	.db #0xF8	; 248
	.db #0x38	; 56
	.db #0xB0	; 176
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x0C	; 12
	.db #0xEC	; 236
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x27	; 39
	.db #0x3F	; 63
	.db #0x39	; 57
	.db #0x19	; 25
	.db #0x6A	; 106	j
	.db #0x60	; 96
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xC8	; 200
	.db #0xF8	; 248
	.db #0x38	; 56
	.db #0x30	; 48
	.db #0xAC	; 172
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x0F	; 15
	.db #0x9F	; 159
	.db #0xFF	; 255
	.db #0xF9	; 249
	.db #0x79	; 121	y
	.db #0x3A	; 58
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x2B	; 43
	.db #0x0F	; 15
	.db #0x70	; 112	p
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0xF0	; 240
	.db #0x30	; 48
	.db #0x20	; 32
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA0	; 160
	.db #0x06	; 6
	.db #0x66	; 102	f
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0C	; 12
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x60	; 96
	.db #0x66	; 102	f
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0x60	; 96
	.db #0x30	; 48
	.db #0xF0	; 240
	.db #0xF9	; 249
	.db #0xFF	; 255
	.db #0x9F	; 159
	.db #0x9E	; 158
	.db #0x5C	; 92
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0xF0	; 240
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x30	; 48
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xE8	; 232
	.db #0xD0	; 208
	.db #0x50	; 80	P
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0xE8	; 232
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x30	; 48
	.db #0x30	; 48
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xE8	; 232
	.db #0xD0	; 208
	.db #0x50	; 80	P
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x06	; 6
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x82	; 130
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xE8	; 232
	.db #0xD0	; 208
	.db #0x50	; 80	P
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x54	; 84	T
	.db #0x04	; 4
	.db #0xE0	; 224
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x17	; 23
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x4A	; 74	J
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x78	; 120	x
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x82	; 130
	.db #0xF0	; 240
	.db #0x1C	; 28
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0xE6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x70	; 112	p
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x17	; 23
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x78	; 120	x
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x82	; 130
	.db #0xF0	; 240
	.db #0x02	; 2
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x70	; 112	p
	.db #0x30	; 48
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x17	; 23
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x60	; 96
	.db #0x6A	; 106	j
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x78	; 120	x
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x82	; 130
	.db #0xF0	; 240
	.db #0x26	; 38
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x30	; 48
	.db #0x00	; 0
	.db #0x70	; 112	p
	.db #0xF8	; 248
	.db #0xE4	; 228
	.db #0xE8	; 232
	.db #0xE0	; 224
	.db #0x20	; 32
	.db #0x30	; 48
	.db #0x90	; 144
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x6C	; 108	l
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x3C	; 60
	.db #0x0E	; 14
	.db #0x1F	; 31
	.db #0x27	; 39
	.db #0x17	; 23
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x33	; 51
	.db #0x36	; 54
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xE0	; 224
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xC4	; 196
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x0C	; 12
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x70	; 112	p
	.db #0x70	; 112	p
	.db #0x39	; 57
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0xC0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xE0	; 224
	.db #0x60	; 96
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x38	; 56
	.db #0x00	; 0
	.db #0x6F	; 111	o
	.db #0xFC	; 252
	.db #0xD8	; 216
	.db #0x40	; 64
	.db #0x46	; 70	F
	.db #0x26	; 38
	.db #0x15	; 21
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0xEC	; 236
	.db #0x7E	; 126
	.db #0x36	; 54
	.db #0x04	; 4
	.db #0xC4	; 196
	.db #0xC8	; 200
	.db #0x50	; 80	P
	.db #0xE0	; 224
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x1F	; 31
	.db #0x2F	; 47
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xF8	; 248
	.db #0x78	; 120	x
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0xC0	; 192
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x60	; 96
	.db #0x09	; 9
	.db #0xA0	; 160
	.db #0xF8	; 248
	.db #0xF4	; 244
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x1F	; 31
	.db #0x1E	; 30
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x30	; 48
	.db #0x70	; 112	p
	.db #0x70	; 112	p
	.db #0x3C	; 60
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xB8	; 184
	.db #0xB0	; 176
	.db #0xE0	; 224
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0E	; 14
	.db #0x0C	; 12
	.db #0x1C	; 28
	.db #0x18	; 24
	.db #0x38	; 56
	.db #0x10	; 16
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xB8	; 184
	.db #0xB0	; 176
	.db #0xE0	; 224
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0C	; 12
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x1E	; 30
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xB8	; 184
	.db #0xB0	; 176
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x0D	; 13
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1C	; 28
	.db #0x0E	; 14
	.db #0x86	; 134
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x0D	; 13
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x3C	; 60
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x0D	; 13
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0x70	; 112	p
	.db #0x30	; 48
	.db #0x38	; 56
	.db #0x18	; 24
	.db #0x1C	; 28
	.db #0x08	; 8
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x5C	; 92
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xE0	; 224
	.db #0x4F	; 79	O
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x1C	; 28
	.db #0xDC	; 220
	.db #0xC8	; 200
	.db #0x6C	; 108	l
	.db #0xD0	; 208
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x38	; 56
	.db #0x3B	; 59
	.db #0x13	; 19
	.db #0x36	; 54
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x60	; 96
	.db #0xC8	; 200
	.db #0x80	; 128
	.db #0x20	; 32
	.db #0x3A	; 58
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0xF2	; 242
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x3D	; 61
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x30	; 48
	.db #0x78	; 120	x
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x30	; 48
	.db #0x18	; 24
	.db #0x0D	; 13
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x30	; 48
	.db #0x60	; 96
	.db #0xE0	; 224
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x10	; 16
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x60	; 96
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x38	; 56
	.db #0x5C	; 92
	.db #0xF8	; 248
	.db #0x80	; 128
	.db #0x30	; 48
	.db #0xF8	; 248
	.db #0xFE	; 254
	.db #0xBC	; 188
	.db #0x18	; 24
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1C	; 28
	.db #0x3A	; 58
	.db #0x1F	; 31
	.db #0x01	; 1
	.db #0x0C	; 12
	.db #0x1F	; 31
	.db #0x7F	; 127
	.db #0x3D	; 61
	.db #0x18	; 24
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0x06	; 6
	.db #0xF0	; 240
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xA0	; 160
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0xF8	; 248
	.db #0xC0	; 192
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x78	; 120	x
	.db #0x38	; 56
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xA8	; 168
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0x78	; 120	x
	.db #0xF8	; 248
	.db #0xC0	; 192
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x35	; 53
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x30	; 48
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0x60	; 96
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x20	; 32
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x88	; 136
	.db #0xC8	; 200
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xE0	; 224
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x1E	; 30
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x07	; 7
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0xFE	; 254
	.db #0x32	; 50
	.db #0x80	; 128
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xE0	; 224
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x60	; 96
	.db #0x7F	; 127
	.db #0x4C	; 76	L
	.db #0x01	; 1
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x30	; 48
	.db #0x78	; 120	x
	.db #0xD8	; 216
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0xE0	; 224
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x98	; 152
	.db #0x9F	; 159
	.db #0xA7	; 167
	.db #0xC3	; 195
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x7F	; 127
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xB0	; 176
	.db #0x7F	; 127
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x9D	; 157
	.db #0x9E	; 158
	.db #0xA7	; 167
	.db #0xC3	; 195
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x7E	; 126
	.db #0xFF	; 255
	.db #0xE4	; 228
	.db #0x9B	; 155
	.db #0xE7	; 231
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x02	; 2
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x9B	; 155
	.db #0x9C	; 156
	.db #0xA7	; 167
	.db #0xC3	; 195
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xE5	; 229
	.db #0x9B	; 155
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0xFB	; 251
	.db #0x07	; 7
	.db #0x82	; 130
	.db #0x06	; 6
	.db #0x82	; 130
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xFE	; 254
	.db #0x27	; 39
	.db #0x1B	; 27
	.db #0x0D	; 13
	.db #0xFE	; 254
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0x83	; 131
	.db #0xC0	; 192
	.db #0x82	; 130
	.db #0x80	; 128
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0x19	; 25
	.db #0xF9	; 249
	.db #0xE5	; 229
	.db #0xC3	; 195
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x7E	; 126
	.db #0xFF	; 255
	.db #0x27	; 39
	.db #0xD9	; 217
	.db #0xE7	; 231
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0x83	; 131
	.db #0xC0	; 192
	.db #0x82	; 130
	.db #0x40	; 64
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xB9	; 185
	.db #0x79	; 121	y
	.db #0xE5	; 229
	.db #0xC3	; 195
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0xA7	; 167
	.db #0xD9	; 217
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xDF	; 223
	.db #0xE0	; 224
	.db #0x82	; 130
	.db #0x60	; 96
	.db #0x82	; 130
	.db #0x20	; 32
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x80	; 128
	.db #0xE0	; 224
	.db #0xFF	; 255
	.db #0xD9	; 217
	.db #0x39	; 57
	.db #0xE5	; 229
	.db #0xC3	; 195
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x2B	; 43
	.db #0x29	; 41
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x7E	; 126
	.db #0xF1	; 241
	.db #0xEF	; 239
	.db #0x20	; 32
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0x83	; 131
	.db #0xF0	; 240
	.db #0x1B	; 27
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x2B	; 43
	.db #0x29	; 41
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x7E	; 126
	.db #0xF1	; 241
	.db #0xEF	; 239
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0x1F	; 31
	.db #0x3F	; 63
	.db #0x3D	; 61
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0x83	; 131
	.db #0xF0	; 240
	.db #0x1B	; 27
	.db #0xE0	; 224
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE0	; 224
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0xFD	; 253
	.db #0xF9	; 249
	.db #0xF1	; 241
	.db #0xF1	; 241
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x77	; 119	w
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x3E	; 62
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x40	; 64
	.db #0x06	; 6
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0xFD	; 253
	.db #0xF9	; 249
	.db #0xF1	; 241
	.db #0xF1	; 241
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x77	; 119	w
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xE0	; 224
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7B	; 123
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x40	; 64
	.db #0x2F	; 47
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x0F	; 15
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x48	; 72	H
	.db #0x90	; 144
	.db #0xA7	; 167
	.db #0xA9	; 169
	.db #0xB9	; 185
	.db #0xBF	; 191
	.db #0xBB	; 187
	.db #0xBC	; 188
	.db #0x9F	; 159
	.db #0x4F	; 79	O
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x08	; 8
	.db #0xE4	; 228
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0xE5	; 229
	.db #0x95	; 149
	.db #0x9D	; 157
	.db #0xFD	; 253
	.db #0xDD	; 221
	.db #0x3D	; 61
	.db #0xF9	; 249
	.db #0xF2	; 242
	.db #0xE4	; 228
	.db #0x08	; 8
	.db #0xF0	; 240
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x27	; 39
	.db #0x4F	; 79	O
	.db #0x5F	; 95
	.db #0x0F	; 15
	.db #0x83	; 131
	.db #0xEF	; 239
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x7B	; 123
	.db #0x0B	; 11
	.db #0x03	; 3
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x27	; 39
	.db #0x4F	; 79	O
	.db #0x5F	; 95
	.db #0xC0	; 192
	.db #0x83	; 131
	.db #0xEF	; 239
	.db #0x0B	; 11
	.db #0xE0	; 224
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x7C	; 124
	.db #0x83	; 131
	.db #0x7D	; 125
	.db #0x0B	; 11
	.db #0x7C	; 124
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x27	; 39
	.db #0x4F	; 79	O
	.db #0x5F	; 95
	.db #0x1E	; 30
	.db #0x83	; 131
	.db #0xBE	; 190
	.db #0x0B	; 11
	.db #0x3E	; 62
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x06	; 6
	.db #0x83	; 131
	.db #0xF7	; 247
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x03	; 3
	.db #0x1B	; 27
	.db #0x3B	; 59
	.db #0x78	; 120	x
	.db #0x7F	; 127
	.db #0x82	; 130
	.db #0xFF	; 255
	.db #0x1C	; 28
	.db #0xF8	; 248
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0x7B	; 123
	.db #0x7B	; 123
	.db #0x38	; 56
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0xC0	; 192
	.db #0xD8	; 216
	.db #0xC4	; 196
	.db #0x12	; 18
	.db #0xFA	; 250
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0xFF	; 255
	.db #0x1F	; 31
	.db #0xDF	; 223
	.db #0xDF	; 223
	.db #0xDE	; 222
	.db #0xDE	; 222
	.db #0x1C	; 28
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x07	; 7
	.db #0x1F	; 31
	.db #0x3F	; 63
	.db #0x78	; 120	x
	.db #0x7B	; 123
	.db #0x82	; 130
	.db #0xFB	; 251
	.db #0x1F	; 31
	.db #0xF8	; 248
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x18	; 24
	.db #0x03	; 3
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xC4	; 196
	.db #0x12	; 18
	.db #0xDA	; 218
	.db #0xDD	; 221
	.db #0xDD	; 221
	.db #0xDF	; 223
	.db #0x1F	; 31
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xFC	; 252
	.db #0x18	; 24
	.db #0xC0	; 192
	.db #0x03	; 3
	.db #0x18	; 24
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF8	; 248
	.db #0x82	; 130
	.db #0xFB	; 251
	.db #0x0C	; 12
	.db #0x7B	; 123
	.db #0x78	; 120	x
	.db #0x3F	; 63
	.db #0x1F	; 31
	.db #0x03	; 3
	.db #0xC0	; 192
	.db #0x18	; 24
	.db #0xC4	; 196
	.db #0xF2	; 242
	.db #0xFA	; 250
	.db #0xFD	; 253
	.db #0xFD	; 253
	.db #0x1F	; 31
	.db #0x82	; 130
	.db #0xDF	; 223
	.db #0x24	; 36
	.db #0xDE	; 222
	.db #0x1E	; 30
	.db #0xFC	; 252
	.db #0xF8	; 248
	.db #0xC0	; 192
	.db #0x07	; 7
	.db #0x1F	; 31
	.db #0x3F	; 63
	.db #0x6F	; 111	o
	.db #0x58	; 88	X
	.db #0xA8	; 168
	.db #0xD9	; 217
	.db #0xA9	; 169
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x49	; 73	I
	.db #0x49	; 73	I
	.db #0x2F	; 47
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xF4	; 244
	.db #0xF2	; 242
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0xFB	; 251
	.db #0xD6	; 214
	.db #0xEA	; 234
	.db #0xF4	; 244
	.db #0xF8	; 248
	.db #0xE0	; 224
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x37	; 55
	.db #0x3F	; 63
	.db #0xD1	; 209
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x4B	; 75	K
	.db #0x31	; 49
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x13	; 19
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xDE	; 222
	.db #0x8C	; 140
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x37	; 55
	.db #0x3F	; 63
	.db #0xD1	; 209
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x7A	; 122	z
	.db #0x31	; 49
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x13	; 19
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x5E	; 94
	.db #0x8C	; 140
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x37	; 55
	.db #0x3F	; 63
	.db #0xD1	; 209
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x80	; 128
	.db #0xFF	; 255
	.db #0x7B	; 123
	.db #0x31	; 49
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0xE0	; 224
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x13	; 19
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0xD2	; 210
	.db #0x8C	; 140
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x1B	; 27
	.db #0x03	; 3
	.db #0x0B	; 11
	.db #0x3D	; 61
	.db #0x4E	; 78	N
	.db #0x77	; 119	w
	.db #0xFB	; 251
	.db #0xFC	; 252
	.db #0xEB	; 235
	.db #0xCB	; 203
	.db #0xF0	; 240
	.db #0x4F	; 79	O
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x3E	; 62
	.db #0xBE	; 190
	.db #0xCC	; 204
	.db #0xF4	; 244
	.db #0xF8	; 248
	.db #0x78	; 120	x
	.db #0xB0	; 176
	.db #0xD0	; 208
	.db #0xE0	; 224
	.db #0x20	; 32
	.db #0xF8	; 248
	.db #0x1D	; 29
	.db #0xE7	; 231
	.db #0xC2	; 194
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x2B	; 43
	.db #0x02	; 2
	.db #0x0F	; 15
	.db #0x3F	; 63
	.db #0x47	; 71	G
	.db #0x73	; 115	s
	.db #0x98	; 152
	.db #0xBC	; 188
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0xF0	; 240
	.db #0x4F	; 79	O
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x2E	; 46
	.db #0xF2	; 242
	.db #0xFC	; 252
	.db #0x7C	; 124
	.db #0x98	; 152
	.db #0xE8	; 232
	.db #0xF0	; 240
	.db #0x70	; 112	p
	.db #0xA0	; 160
	.db #0x20	; 32
	.db #0xFA	; 250
	.db #0x1F	; 31
	.db #0xE5	; 229
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x90	; 144
	.db #0x7C	; 124
	.db #0x7D	; 125
	.db #0x33	; 51
	.db #0x2F	; 47
	.db #0x1F	; 31
	.db #0x1E	; 30
	.db #0x0D	; 13
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x1F	; 31
	.db #0xB8	; 184
	.db #0xE7	; 231
	.db #0x43	; 67	C
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x1B	; 27
	.db #0xC0	; 192
	.db #0xD0	; 208
	.db #0xBC	; 188
	.db #0x72	; 114	r
	.db #0xEE	; 238
	.db #0xDF	; 223
	.db #0x3F	; 63
	.db #0xD7	; 215
	.db #0xD3	; 211
	.db #0x0F	; 15
	.db #0xF2	; 242
	.db #0xFC	; 252
	.db #0xC0	; 192
	.db #0xF0	; 240
	.db #0x74	; 116	t
	.db #0x4F	; 79	O
	.db #0x3F	; 63
	.db #0x3E	; 62
	.db #0x19	; 25
	.db #0x17	; 23
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x5F	; 95
	.db #0xF8	; 248
	.db #0xA7	; 167
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x40	; 64
	.db #0xF0	; 240
	.db #0xFC	; 252
	.db #0xE2	; 226
	.db #0xCE	; 206
	.db #0x19	; 25
	.db #0x3D	; 61
	.db #0xDF	; 223
	.db #0xDF	; 223
	.db #0x0F	; 15
	.db #0xF2	; 242
	.db #0xFC	; 252
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x8C	; 140
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x24	; 36
	.db #0x48	; 72	H
	.db #0x50	; 80	P
	.db #0xAC	; 172
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x9E	; 158
	.db #0x00	; 0
	.db #0xFF	; 255
	.area _CABS
