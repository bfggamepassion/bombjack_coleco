;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Apr 28 19:17:57 2023
;--------------------------------------------------------
	.module levels
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _level16_b
	.globl _level15_b
	.globl _level14_b
	.globl _level13_b
	.globl _level12_b
	.globl _level11_b
	.globl _level10_b
	.globl _level9_b
	.globl _level8_b
	.globl _level7_b
	.globl _level6_b
	.globl _level5_b
	.globl _level4_b
	.globl _level3_b
	.globl _level2_b
	.globl _level1_b
	.globl _level16_p
	.globl _level15_p
	.globl _level14_p
	.globl _level13_p
	.globl _level12_p
	.globl _level11_p
	.globl _level10_p
	.globl _level9_p
	.globl _level8_p
	.globl _level7_p
	.globl _level6_p
	.globl _level5_p
	.globl _level4_p
	.globl _level3_p
	.globl _level2_p
	.globl _level1_p
	.globl _levels_b
	.globl _levels_p
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
_levels_p:
	.dw _level1_p
	.dw _level2_p
	.dw _level3_p
	.dw _level4_p
	.dw _level5_p
	.dw _level6_p
	.dw _level7_p
	.dw _level8_p
	.dw _level9_p
	.dw _level11_p
	.dw _level10_p
	.dw _level12_p
	.dw _level13_p
	.dw _level14_p
	.dw _level15_p
	.dw _level16_p
_levels_b:
	.dw _level1_b
	.dw _level2_b
	.dw _level3_b
	.dw _level4_b
	.dw _level5_b
	.dw _level6_b
	.dw _level7_b
	.dw _level8_b
	.dw _level9_b
	.dw _level10_b
	.dw _level11_b
	.dw _level12_b
	.dw _level13_b
	.dw _level14_b
	.dw _level15_b
	.dw _level16_b
_level1_p:
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xFF	; 255
_level2_p:
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
_level3_p:
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0xFF	; 255
_level4_p:
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xFF	; 255
_level5_p:
	.db #0xFF	; 255
_level6_p:
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xFF	; 255
_level7_p:
	.db #0x0D	; 13
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
_level8_p:
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x14	; 20
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xFF	; 255
_level9_p:
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x0B	; 11
	.db #0x0D	; 13
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x0E	; 14
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x11	; 17
	.db #0x0D	; 13
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x14	; 20
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0D	; 13
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0D	; 13
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFF	; 255
_level10_p:
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xFF	; 255
_level11_p:
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0B	; 11
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x12	; 18
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x0B	; 11
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x12	; 18
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
_level12_p:
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xFF	; 255
_level13_p:
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x14	; 20
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x1A	; 26
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x1A	; 26
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0xFF	; 255
_level14_p:
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x19	; 25
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x0D	; 13
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0B	; 11
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x13	; 19
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0xFF	; 255
_level15_p:
	.db #0x0B	; 11
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xFF	; 255
_level16_p:
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x13	; 19
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
_level1_b:
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x1B	; 27
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x0C	; 12
	.db #0x1B	; 27
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x0C	; 12
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x12	; 18
	.db #0x18	; 24
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0x0C	; 12
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x01	; 1
	.db #0xFF	; 255
_level2_b:
	.db #0x12	; 18
	.db #0x0D	; 13
	.db #0x15	; 21
	.db #0x0D	; 13
	.db #0x18	; 24
	.db #0x0D	; 13
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x1B	; 27
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x01	; 1
	.db #0x0C	; 12
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x09	; 9
	.db #0x0D	; 13
	.db #0x0C	; 12
	.db #0x0D	; 13
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x18	; 24
	.db #0x12	; 18
	.db #0xFF	; 255
_level3_b:
	.db #0x0D	; 13
	.db #0x0E	; 14
	.db #0x0D	; 13
	.db #0x0B	; 11
	.db #0x0D	; 13
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x0B	; 11
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x15	; 21
	.db #0x11	; 17
	.db #0x18	; 24
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x01	; 1
	.db #0x0D	; 13
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0x0C	; 12
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0xFF	; 255
_level4_b:
	.db #0x12	; 18
	.db #0x0F	; 15
	.db #0x16	; 22
	.db #0x0F	; 15
	.db #0x1A	; 26
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x17	; 23
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x09	; 9
	.db #0x0B	; 11
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x17	; 23
	.db #0x02	; 2
	.db #0x1B	; 27
	.db #0x02	; 2
	.db #0x0B	; 11
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x07	; 7
	.db #0x15	; 21
	.db #0x0B	; 11
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0xFF	; 255
_level5_b:
	.db #0x0C	; 12
	.db #0x09	; 9
	.db #0x0C	; 12
	.db #0x06	; 6
	.db #0x0C	; 12
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x13	; 19
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x0D	; 13
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x13	; 19
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x0C	; 12
	.db #0x0D	; 13
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x10	; 16
	.db #0x17	; 23
	.db #0x0D	; 13
	.db #0x17	; 23
	.db #0x09	; 9
	.db #0x17	; 23
	.db #0x06	; 6
	.db #0x17	; 23
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x0D	; 13
	.db #0xFF	; 255
_level6_b:
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0B	; 11
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x03	; 3
	.db #0x14	; 20
	.db #0x1B	; 27
	.db #0x14	; 20
	.db #0x1B	; 27
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x0E	; 14
	.db #0x1B	; 27
	.db #0x0B	; 11
	.db #0x1B	; 27
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x0D	; 13
	.db #0x10	; 16
	.db #0x0A	; 10
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x01	; 1
	.db #0xFF	; 255
_level7_b:
	.db #0x0B	; 11
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x0B	; 11
	.db #0x02	; 2
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x0D	; 13
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x1B	; 27
	.db #0x0D	; 13
	.db #0x1B	; 27
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x0D	; 13
	.db #0x13	; 19
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x16	; 22
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x08	; 8
	.db #0x0B	; 11
	.db #0x0D	; 13
	.db #0x0B	; 11
	.db #0x11	; 17
	.db #0x0B	; 11
	.db #0x15	; 21
	.db #0xFF	; 255
_level8_b:
	.db #0x09	; 9
	.db #0x0C	; 12
	.db #0x06	; 6
	.db #0x0C	; 12
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0x0C	; 12
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x0C	; 12
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x07	; 7
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x0F	; 15
	.db #0x1B	; 27
	.db #0x0C	; 12
	.db #0x18	; 24
	.db #0x0C	; 12
	.db #0x15	; 21
	.db #0x0C	; 12
	.db #0xFF	; 255
_level9_b:
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x0F	; 15
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1B	; 27
	.db #0x05	; 5
	.db #0x18	; 24
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x05	; 5
	.db #0x1B	; 27
	.db #0x0F	; 15
	.db #0x1B	; 27
	.db #0x12	; 18
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0xFF	; 255
_level10_b:
	.db #0x0E	; 14
	.db #0x14	; 20
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x05	; 5
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x0D	; 13
	.db #0x1B	; 27
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0D	; 13
	.db #0x03	; 3
	.db #0x11	; 17
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x05	; 5
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x0D	; 13
	.db #0x14	; 20
	.db #0x11	; 17
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0D	; 13
	.db #0xFF	; 255
_level11_b:
	.db #0x18	; 24
	.db #0x0C	; 12
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x13	; 19
	.db #0x1B	; 27
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x1B	; 27
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x05	; 5
	.db #0x14	; 20
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x0A	; 10
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0xFF	; 255
_level12_b:
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x13	; 19
	.db #0x19	; 25
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x04	; 4
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0A	; 10
	.db #0x03	; 3
	.db #0x0D	; 13
	.db #0x05	; 5
	.db #0x13	; 19
	.db #0x05	; 5
	.db #0x10	; 16
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0B	; 11
	.db #0x04	; 4
	.db #0x1B	; 27
	.db #0x0D	; 13
	.db #0x1B	; 27
	.db #0x0A	; 10
	.db #0x1B	; 27
	.db #0x07	; 7
	.db #0xFF	; 255
_level13_b:
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x0F	; 15
	.db #0x13	; 19
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0A	; 10
	.db #0x1B	; 27
	.db #0x0E	; 14
	.db #0x1B	; 27
	.db #0x0B	; 11
	.db #0x1B	; 27
	.db #0x08	; 8
	.db #0x1A	; 26
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x0A	; 10
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0B	; 11
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0x0B	; 11
	.db #0x12	; 18
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x0B	; 11
	.db #0x0C	; 12
	.db #0x16	; 22
	.db #0x0A	; 10
	.db #0x16	; 22
	.db #0x07	; 7
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0xFF	; 255
_level14_b:
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x15	; 21
	.db #0x11	; 17
	.db #0x18	; 24
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x0C	; 12
	.db #0x1B	; 27
	.db #0x09	; 9
	.db #0x1B	; 27
	.db #0x06	; 6
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x07	; 7
	.db #0x17	; 23
	.db #0x0B	; 11
	.db #0x17	; 23
	.db #0x08	; 8
	.db #0x17	; 23
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x0E	; 14
	.db #0x07	; 7
	.db #0x11	; 17
	.db #0x0A	; 10
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0B	; 11
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0xFF	; 255
_level15_b:
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0B	; 11
	.db #0x09	; 9
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x0B	; 11
	.db #0x06	; 6
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x0B	; 11
	.db #0x15	; 21
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x0B	; 11
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x0B	; 11
	.db #0x06	; 6
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x0B	; 11
	.db #0x18	; 24
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0x11	; 17
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0xFF	; 255
_level16_b:
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x15	; 21
	.db #0x11	; 17
	.db #0x18	; 24
	.db #0x15	; 21
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x1A	; 26
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x03	; 3
	.db #0x14	; 20
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x1A	; 26
	.db #0x0D	; 13
	.db #0x17	; 23
	.db #0x0D	; 13
	.db #0x14	; 20
	.db #0x0D	; 13
	.db #0x09	; 9
	.db #0x0D	; 13
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x03	; 3
	.db #0x0D	; 13
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x0C	; 12
	.db #0x11	; 17
	.db #0xFF	; 255
	.area _CABS