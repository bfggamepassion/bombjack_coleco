;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Apr 28 19:17:57 2023
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nmi
	.globl _main
	.globl _chooseDiff
	.globl _recap
	.globl _doAnimationDeath
	.globl _showSprites
	.globl _showFond
	.globl _show_bomb_tileset
	.globl _init
	.globl _reinit
	.globl _controlPlayer
	.globl _checkBombCollision
	.globl _init_allumeBombe
	.globl _drawLevel
	.globl _animateBomb
	.globl _createBomb
	.globl _buffer2screen
	.globl _LoadPatternAndshowAScreenPLE
	.globl _get_char_protected
	.globl _generateEnnemy
	.globl _moveEnnemy
	.globl _checkSpriteCollision
	.globl _intern_checkNextMoveEnnemy
	.globl _intern_moveEnnemy
	.globl _bonusToEnnemy
	.globl _ennemyToBonus
	.globl _destroyAllEnnemy
	.globl _destroyEnnemy
	.globl _createEnnemy
	.globl _initEnnemy
	.globl _getFreeSprite
	.globl _initSprites
	.globl _checkPlayerCharCollision
	.globl _isCollision
	.globl _donneDirectionHasard
	.globl _isCarObstacle
	.globl _setObstacle
	.globl _initObstacle
	.globl _returnPointCollision
	.globl _player_tombe
	.globl _difficulty
	.globl _cd
	.globl _odd
	.globl _nmi_renderBomb
	.globl _nmiCol_Global
	.globl _collision_gauche
	.globl _collision_droite
	.globl _collision_tete
	.globl _collision_pied
	.globl _action
	.globl _keyPressTimer
	.globl _timerAnimation2
	.globl _timerAnimation3
	.globl _timerAnimation
	.globl _timerInterne
	.globl _timer
	.globl _maxcy
	.globl _maxc
	.globl _lvlgfx
	.globl _oddTimer
	.globl _oddNmi
	.globl _nbLevelPasse
	.globl _currentLevel
	.globl _workflow
	.globl _ennemy_generator_y
	.globl _ennemy_generator_x
	.globl _ticks
	.globl _ennemy
	.globl _cpt
	.globl _ennBonus
	.globl _bonusEnCours
	.globl _nbEnnemyLevel
	.globl _nbBombLevel
	.globl _bombeAllumeeNiveau
	.globl _bomb
	.globl _nb_source
	.globl _p_source
	.globl _player
	.globl _dummy
	.globl _control
	.globl _color_logo
	.globl _perfect
	.globl _gameHz
	.globl _cheat
	.globl _pointCollision
	.globl _bombGfx
	.globl _tileset_color
	.globl _tileset_pattern
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_cheat::
	.ds 1
_gameHz::
	.ds 1
_perfect::
	.ds 1
_color_logo::
	.ds 1
_control::
	.ds 1
_dummy::
	.ds 1
_player::
	.ds 16
_p_source::
	.ds 1
_nb_source::
	.ds 1
_bomb::
	.ds 90
_bombeAllumeeNiveau::
	.ds 1
_nbBombLevel::
	.ds 1
_nbEnnemyLevel::
	.ds 1
_bonusEnCours::
	.ds 1
_ennBonus::
	.ds 2
_cpt::
	.ds 1
_ennemy::
	.ds 120
_ticks::
	.ds 2
_ennemy_generator_x::
	.ds 1
_ennemy_generator_y::
	.ds 1
_workflow::
	.ds 1
_currentLevel::
	.ds 1
_nbLevelPasse::
	.ds 1
_oddNmi::
	.ds 1
_oddTimer::
	.ds 1
_lvlgfx::
	.ds 1
_maxc::
	.ds 1
_maxcy::
	.ds 1
_timer::
	.ds 1
_timerInterne::
	.ds 1
_timerAnimation::
	.ds 1
_timerAnimation3::
	.ds 1
_timerAnimation2::
	.ds 1
_keyPressTimer::
	.ds 1
_action::
	.ds 1
_collision_pied::
	.ds 1
_collision_tete::
	.ds 1
_collision_droite::
	.ds 1
_collision_gauche::
	.ds 1
_nmiCol_Global::
	.ds 1
_nmi_renderBomb::
	.ds 1
_odd::
	.ds 1
_cd::
	.ds 96
_difficulty::
	.ds 1
_player_tombe::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:358: byte returnPointCollision(char direction)
;	---------------------------------
; Function returnPointCollision
; ---------------------------------
_returnPointCollision_start::
_returnPointCollision:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:360: return pointCollision[1+direction];
	ld	a,4 (ix)
	inc	a
	add	a,#<(_pointCollision)
	ld	c,a
	ld	a,#>(_pointCollision)
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	ld	l,a
	pop	ix
	ret
_returnPointCollision_end::
_tileset_pattern:
	.db #0x00	; 0
	.db #0xFE	; 254
	.db #0xFD	; 253
	.db #0xFC	; 252
	.db #0x8F	; 143
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0x18	; 24
	.db #0xE3	; 227
	.db #0xC7	; 199
	.db #0xBF	; 191
	.db #0x04	; 4
	.db #0xF9	; 249
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0xCF	; 207
	.db #0xDF	; 223
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x3F	; 63
	.db #0x8F	; 143
	.db #0xEE	; 238
	.db #0xE6	; 230
	.db #0xC6	; 198
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x0F	; 15
	.db #0xFC	; 252
	.db #0xF9	; 249
	.db #0xE3	; 227
	.db #0xA1	; 161
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0x7E	; 126
	.db #0x5E	; 94
	.db #0x7D	; 125
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0xA0	; 160
	.db #0x0C	; 12
	.db #0x42	; 66	B
	.db #0x7E	; 126
	.db #0x00	; 0
	.db #0x30	; 48
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x7F	; 127
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x88	; 136
	.db #0x01	; 1
	.db #0xFE	; 254
	.db #0xFA	; 250
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xFE	; 254
	.db #0xBF	; 191
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF0	; 240
_tileset_color:
	.db #0x12	; 18
	.db #0x51	; 81	Q
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x36	; 54
	.db #0x8F	; 143
	.db #0x8F	; 143
	.db #0x07	; 7
	.db #0xE7	; 231
	.db #0x09	; 9
	.db #0x81	; 129
	.db #0xA3	; 163
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xF1	; 241
	.db #0x00	; 0
	.db #0xA1	; 161
	.db #0xE7	; 231
	.db #0x00	; 0
	.db #0xF6	; 246
	.db #0x0F	; 15
	.db #0xFC	; 252
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xC0	; 192
_bombGfx:
	.db #0xF4	; 244
	.db #0xF5	; 245
	.db #0xF6	; 246
	.db #0xF7	; 247
_bombL1C244P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL1C245P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL1C244P2:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL1C245P2:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL1C244P3:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL1C245P3:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL2C244P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL2C245P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL2C244P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL2C245P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL2C244P3:
	.db #0x41	; 65	A
	.db #0x41	; 65	A
	.db #0x41	; 65	A
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL2C245P3:
	.db #0x41	; 65	A
	.db #0x41	; 65	A
	.db #0x41	; 65	A
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL3C244P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL3C245P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL3C244P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL3C245P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL3C244P3:
	.db #0xB1	; 177
	.db #0xB1	; 177
	.db #0xB1	; 177
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL3C245P3:
	.db #0xB1	; 177
	.db #0xB1	; 177
	.db #0xB1	; 177
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL4C244P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL4C245P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL4C244P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL4C245P2:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL4C244P3:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL4C245P3:
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL5C244P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL5C245P1:
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x51	; 81	Q
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL5C244P2:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL5C245P2:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_bombL5C244P3:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x8F	; 143
	.db #0x8F	; 143
_bombL5C245P3:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
_red_font:
	.db #0x61	; 97	a
	.db #0x61	; 97	a
	.db #0x81	; 129
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x81	; 129
	.db #0x61	; 97	a
	.db #0x61	; 97	a
_yellow_font:
	.db #0xA1	; 161
	.db #0xB1	; 177
	.db #0xE1	; 225
	.db #0xF1	; 241
	.db #0xE1	; 225
	.db #0xB1	; 177
	.db #0xA1	; 161
	.db #0xA1	; 161
_pointCollision:
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
;main.c:363: void initObstacle(void)
;	---------------------------------
; Function initObstacle
; ---------------------------------
_initObstacle_start::
_initObstacle:
;main.c:367: for (i=0; i<96; i++)
	ld	c,#0x00
00101$:
	ld	a,c
	sub	a,#0x60
	ret	NC
;main.c:368: *(cd+i)=0;
	ld	a,#<(_cd)
	add	a,c
	ld	e,a
	ld	a,#>(_cd)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x00
	ld	(de),a
;main.c:367: for (i=0; i<96; i++)
	inc	c
	jr	00101$
_initObstacle_end::
;main.c:371: void setObstacle(byte x,byte y)
;	---------------------------------
; Function setObstacle
; ---------------------------------
_setObstacle_start::
_setObstacle:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:376: nocar = (y<<5)+x;
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	c,4 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	b, h
;main.c:377: octet = nocar>>3;
	ld	c, l
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;main.c:378: bit = nocar - (octet <<3);
	ld	a,c
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	b,a
	ld	a,l
	sub	a,b
	ld	b,a
;main.c:379: *(cd+octet) = *(cd+octet) | (128>>bit);
	ld	a,#<(_cd)
	add	a,c
	ld	c,a
	ld	a,#>(_cd)
	adc	a,#0x00
	ld	e, a
	ld	l, c
	ld	h, a
	ld	l,(hl)
	ld	a,b
	inc	a
	push	af
	ld	b,#0x80
	pop	af
	jr	00105$
00104$:
	srl	b
00105$:
	dec	a
	jr	NZ,00104$
	ld	a,l
	or	a,b
	ld	l,c
	ld	h,e
	ld	(hl),a
	pop	ix
	ret
_setObstacle_end::
;main.c:383: byte isCarObstacle(byte x,byte y)
;	---------------------------------
; Function isCarObstacle
; ---------------------------------
_isCarObstacle_start::
_isCarObstacle:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:387: nocar = (y<<5)+x;
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	c,4 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	b, h
;main.c:388: octet = nocar>>3;
	ld	c, l
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;main.c:389: bit =  nocar - (octet <<3);
	ld	a,c
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	b,a
	ld	a,l
	sub	a,b
	ld	b,a
;main.c:390: return ((*(cd+octet)) & (128>>bit));
	ld	a,#<(_cd)
	add	a,c
	ld	l, a
	ld	a, #>(_cd)
	adc	a, #0x00
	ld	h, a
	ld	l,(hl)
	ld	a,b
	inc	a
	push	af
	ld	b,#0x80
	pop	af
	jr	00105$
00104$:
	srl	b
00105$:
	dec	a
	jr	NZ,00104$
	ld	a,l
	and	a,b
	ld	l,a
	pop	ix
	ret
_isCarObstacle_end::
;main.c:394: char donneDirectionHasard(void)
;	---------------------------------
; Function donneDirectionHasard
; ---------------------------------
_donneDirectionHasard_start::
_donneDirectionHasard:
;main.c:396: if (rnd_byte(0,1)==0) return -1;
	ld	hl,#0x0100
	push	hl
	call	_rnd_byte
	pop	af
	xor	a,a
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;main.c:397: else return 1;
	ld	l,#0x01
	ret
_donneDirectionHasard_end::
;main.c:400: byte isCollision(byte x1,byte y1,byte h1,byte l1,byte x2,byte y2,byte h2,byte l2)
;	---------------------------------
; Function isCollision
; ---------------------------------
_isCollision_start::
_isCollision:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:402: if(y1 > y2+h2) return S_FALSE;
	ld	c,9 (ix)
	ld	b,#0x00
	ld	l,10 (ix)
	ld	h,#0x00
	add	hl,bc
	ex	de,hl
	ld	l,5 (ix)
	ld	h,#0x00
	ld	a,e
	sub	a,l
	ld	a,d
	sbc	a,h
	jp	PO,00115$
	xor	a,#0x80
00115$:
	jp	P,00102$
	ld	l,#0x00
	jr	00109$
00102$:
;main.c:403: if(y1+h1 < y2) return S_FALSE;
	ld	e,6 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a, l
	ld	d, h
	sub	a,c
	ld	a,d
	sbc	a,b
	jp	PO,00116$
	xor	a,#0x80
00116$:
	jp	P,00104$
	ld	l,#0x00
	jr	00109$
00104$:
;main.c:404: if(x1 > x2+l2) return S_FALSE;
	ld	c,8 (ix)
	ld	b,#0x00
	ld	l,11 (ix)
	ld	h,#0x00
	add	hl,bc
	ex	de,hl
	ld	l,4 (ix)
	ld	h,#0x00
	ld	a,e
	sub	a,l
	ld	a,d
	sbc	a,h
	jp	PO,00117$
	xor	a,#0x80
00117$:
	jp	P,00106$
	ld	l,#0x00
	jr	00109$
00106$:
;main.c:405: if(x1+l1 < x2) return S_FALSE;
	ld	e,7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a, l
	ld	d, h
	sub	a,c
	ld	a,d
	sbc	a,b
	jp	PO,00118$
	xor	a,#0x80
00118$:
	jp	P,00108$
	ld	l,#0x00
	jr	00109$
00108$:
;main.c:407: return S_TRUE;
	ld	l,#0x01
00109$:
	pop	ix
	ret
_isCollision_end::
;main.c:410: void checkPlayerCharCollision(void)
;	---------------------------------
; Function checkPlayerCharCollision
; ---------------------------------
_checkPlayerCharCollision_start::
_checkPlayerCharCollision:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;main.c:415: player_pixel_x = player.posx >> 4;
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	-1 (ix),l
;main.c:416: player_pixel_y = player.posy >> 4;
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	-2 (ix),l
;main.c:418: if (player.vel<=0)  // Va peut-être corrige mon fucking bug de téléportation
	ld	hl,#_player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x00
	sub	a,l
	ld	a,#0x00
	sbc	a,h
	jp	PO,00141$
	xor	a,#0x80
00141$:
	jp	M,00107$
;main.c:423: (player_pixel_y+16)>>3
	ld	a, -2 (ix)
	ld	h, #0x00
	add	a,#0x10
	ld	e,a
	ld	a,h
	adc	a,#0x00
	ld	h, a
	ld	l, e
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	e,l
;main.c:422: (player_pixel_x+2)>>3,
	ld	a,-1 (ix)
	ld	-4 (ix),a
	ld	-3 (ix),#0x00
	ld	a,-4 (ix)
	add	a,#0x02
	ld	d,a
	ld	a,-3 (ix)
	adc	a,#0x00
	ld	h, a
	ld	l, d
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	push	de
	ld	a,e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00101$
;main.c:428: (player_pixel_x+13)>>3,
	ld	a,-4 (ix)
	add	a,#0x0D
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	d, a
	ld	h, a
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	push	de
	ld	a,e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00101$
;main.c:434: (player_pixel_x+7)>>3,
	ld	a,-4 (ix)
	add	a,#0x07
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	d, a
	ld	h, a
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	push	de
	ld	a,e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	Z,00102$
00101$:
;main.c:440: collision_pied = (player_pixel_y+16)>>3;
	ld	hl,#_collision_pied + 0
	ld	(hl), e
	jr	00108$
00102$:
;main.c:441: else collision_pied = 0;
	ld	hl,#_collision_pied + 0
	ld	(hl), #0x00
	jr	00108$
00107$:
;main.c:443: else collision_pied = 0;
	ld	hl,#_collision_pied + 0
	ld	(hl), #0x00
00108$:
;main.c:448: (player_pixel_y+2)>>3
	ld	e,-2 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	-4 (ix),l
;main.c:447: (player_pixel_x)>>3,
	ld	a,-1 (ix)
	srl	a
	srl	a
	srl	a
	ld	-5 (ix),a
	push	de
	ld	h,-4 (ix)
	ld	l,-5 (ix)
	push	hl
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00109$
;main.c:454: (player_pixel_y+8)>>3
	ld	hl,#0x0008
	add	hl,de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;main.c:453: (player_pixel_x)>>3,
	push	de
	ld	a,l
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00109$
;main.c:460: (player_pixel_y+13)>>3
	ld	hl,#0x000D
	add	hl,de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;main.c:459: (player_pixel_x)>>3,
	push	de
	ld	a,l
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	Z,00110$
00109$:
;main.c:464: collision_gauche = (player_pixel_x)>>3;
	ld	a,-5 (ix)
	ld	(#_collision_gauche + 0),a
	jr	00111$
00110$:
;main.c:465: else collision_gauche = 0;
	ld	hl,#_collision_gauche + 0
	ld	(hl), #0x00
00111$:
;main.c:469: (player_pixel_x+15)>>3,
	ld	a,-1 (ix)
	ld	-7 (ix),a
	ld	-6 (ix),#0x00
	ld	a,-7 (ix)
	add	a,#0x0F
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	-5 (ix),l
	push	de
	ld	h,-4 (ix)
	ld	l,-5 (ix)
	push	hl
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00114$
;main.c:476: (player_pixel_y+8)>>3
	ld	hl,#0x0008
	add	hl,de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;main.c:475: (player_pixel_x+15)>>3,
	push	de
	ld	a,l
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	de
	xor	a,a
	or	a,l
	jr	NZ,00114$
;main.c:482: (player_pixel_y+13)>>3
	ld	hl,#0x000D
	add	hl,de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;main.c:481: (player_pixel_x+15)>>3,
	ld	a,l
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_isCarObstacle
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00115$
00114$:
;main.c:486: collision_droite = (player_pixel_x+15)>>3;
	ld	a,-5 (ix)
	ld	(#_collision_droite + 0),a
	jr	00116$
00115$:
;main.c:487: else collision_droite = 0;
	ld	hl,#_collision_droite + 0
	ld	(hl), #0x00
00116$:
;main.c:489: if ( (collision_pied==0) && (player.etat==ENLAIR) ) // On teste uniquement quand on à bien décollé du sol !
	xor	a,a
	ld	hl,#_collision_pied + 0
	or	a,(hl)
	jr	NZ,00124$
	ld	a,(#0x000a + _player)
	sub	a,#0x01
	jr	NZ,00124$
;main.c:495: )!=0
	ld	c,-2 (ix)
	srl	c
	srl	c
	srl	c
;main.c:493: (player_pixel_x+2)>>3,
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	inc	hl
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	push	bc
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	bc
	xor	a,a
	or	a,l
	jr	NZ,00119$
;main.c:499: (player_pixel_x+13)>>3,
	ld	a,-7 (ix)
	add	a,#0x0D
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	push	bc
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCarObstacle
	pop	af
	pop	bc
	xor	a,a
	or	a,l
	jr	Z,00120$
00119$:
;main.c:504: collision_tete = (player_pixel_y)>>3;
	ld	hl,#_collision_tete + 0
	ld	(hl), c
	jr	00127$
00120$:
;main.c:505: else collision_tete = 0;
	ld	hl,#_collision_tete + 0
	ld	(hl), #0x00
	jr	00127$
00124$:
;main.c:510: collision_tete=0;
	ld	hl,#_collision_tete + 0
	ld	(hl), #0x00
00127$:
	ld	sp,ix
	pop	ix
	ret
_checkPlayerCharCollision_end::
;main.c:514: void initSprites(void)
;	---------------------------------
; Function initSprites
; ---------------------------------
_initSprites_start::
_initSprites:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;main.c:517: for (i=0; i<32; i++)
	ld	-1 (ix),#0x00
00101$:
	ld	a,-1 (ix)
	sub	a,#0x20
	jp	PO,00110$
	xor	a,#0x80
00110$:
	jp	P,00105$
;main.c:519: sprites[i].x = 0;
	ld	a,-1 (ix)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d, a
	ld	c, e
	ld	b, a
	inc	bc
	ld	a,#0x00
	ld	(bc),a
;main.c:520: sprites[i].y = INACTIF;
	ld	a,#0xCC
	ld	(de),a
;main.c:521: sprites[i].pattern = 0;
	ld	c,e
	ld	b,d
	inc	bc
	inc	bc
	ld	a,#0x00
	ld	(bc),a
;main.c:522: sprites[i].colour = 0;
	ld	hl,#0x0003
	add	hl,de
	ld	(hl),#0x00
;main.c:517: for (i=0; i<32; i++)
	inc	-1 (ix)
	jr	00101$
00105$:
	ld	sp,ix
	pop	ix
	ret
_initSprites_end::
;main.c:526: char getFreeSprite(void)
;	---------------------------------
; Function getFreeSprite
; ---------------------------------
_getFreeSprite_start::
_getFreeSprite:
;main.c:530: for (i=16; i<32; i++)
	ld	bc,#0x1010
00103$:
;main.c:532: if (sprites[i].y==INACTIF)
	ld	a,b
	cp	a,#0x20
	jr	NC,00106$
	add	a,a
	add	a,a
	ld	l, a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jr	NZ,00105$
;main.c:533: return i;
	ld	l,c
	ret
00105$:
;main.c:530: for (i=16; i<32; i++)
	inc	b
	ld	c,b
	jr	00103$
00106$:
;main.c:546: return -1;
	ld	l,#0xFF
	ret
_getFreeSprite_end::
;main.c:552: void initEnnemy(void)
;	---------------------------------
; Function initEnnemy
; ---------------------------------
_initEnnemy_start::
_initEnnemy:
;main.c:555: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00101$:
	ld	a,c
	sub	a,#0x08
	jp	PO,00110$
	xor	a,#0x80
00110$:
	ret	P
;main.c:557: ennemy[i].type = INACTIF;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,#0xCC
	ld	(de),a
;main.c:558: ennemy[i].type_sauvegarde = INACTIF;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,#0xCC
	ld	(de),a
;main.c:559: ennemy[i].nmiCol = 0;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x000B
	add	hl,de
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;main.c:555: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jr	00101$
_initEnnemy_end::
;main.c:564: void createEnnemy(byte x,byte y,byte t,byte ts,byte r1,byte r2,byte r3,byte r5,char r6)
;	---------------------------------
; Function createEnnemy
; ---------------------------------
_createEnnemy_start::
_createEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;main.c:576: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00155$:
	ld	a,c
	sub	a,#0x08
	jp	NC,00159$
;main.c:579: this_ennemy = &ennemy[i];
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	-2 (ix), e
	ld	-1 (ix), a
;main.c:582: if ((*myEnnemy_type)==INACTIF)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a,#0xCC
	jp	NZ,00157$
;main.c:584: spr = getFreeSprite();
	push	bc
	call	_getFreeSprite
	pop	bc
	ld	c,l
;main.c:585: if (spr!=-1)
	ld	a,c
	inc	a
	jp	Z,00146$
;main.c:588: myEnnemy_basePattern = &this_ennemy->basePattern;
	ld	a,-2 (ix)
	add	a,#0x0E
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-3 (ix),a
;main.c:589: myEnnemy_direction_x = &this_ennemy->direction_x;
	ld	a,-2 (ix)
	add	a,#0x0C
	ld	-8 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-7 (ix),a
;main.c:590: myEnnemy_direction_y = &this_ennemy->direction_y;
	ld	a,-2 (ix)
	add	a,#0x0D
	ld	-10 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-9 (ix),a
;main.c:591: myEnnemy_r5 = &this_ennemy->r5;
	ld	a,-2 (ix)
	add	a,#0x06
	ld	-6 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-5 (ix),a
;main.c:594: (*myEnnemy_type) = t;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,6 (ix)
	ld	(hl),a
;main.c:595: ennemy[i].type_sauvegarde = ts;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,7 (ix)
	ld	(de),a
;main.c:596: ennemy[i].sprno = spr;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,c
	ld	(de),a
;main.c:597: ennemy[i].r1 = r1;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	ld	a,8 (ix)
	ld	(de),a
;main.c:598: ennemy[i].r2 = r2;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,9 (ix)
	ld	(de),a
;main.c:599: ennemy[i].r3 = r3;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,10 (ix)
	ld	(de),a
;main.c:600: (*myEnnemy_r5) = r5;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,11 (ix)
	ld	(hl),a
;main.c:601: ennemy[i].r6 = r6;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ex	de,hl
	ld	a,12 (ix)
	ld	(de),a
;main.c:603: sprites[spr].x = x;
	ld	a,c
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	c,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	b, a
	ld	e, c
	ld	d, a
	inc	de
	ld	a,4 (ix)
	ld	(de),a
;main.c:604: sprites[spr].y = y;
	ld	a,5 (ix)
	ld	(bc),a
;main.c:605: sprites[spr].colour = 15;
	ld	hl,#0x0003
	add	hl,bc
	ex	de,hl
	ld	a,#0x0F
	ld	(de),a
;main.c:607: if ((*myEnnemy_type)==E_VULTURE)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	ld	a,6 (ix)
	sub	a,#0x01
	jr	NZ,00143$
;main.c:609: sprites[spr].pattern = SPATTERN36;
	inc	bc
	inc	bc
	ld	a,#0x90
	ld	(bc),a
;main.c:610: (*myEnnemy_r5) = 50;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x32
;main.c:611: (*myEnnemy_direction_x) = 1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
;main.c:612: (*myEnnemy_direction_y) = 0;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x00
;main.c:613: if (x<128) (*myEnnemy_basePattern) = SPATTERN39;
	ld	a,4 (ix)
	sub	a,#0x80
	jr	NC,00102$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x9C
	jp	00146$
00102$:
;main.c:614: else (*myEnnemy_basePattern) = SPATTERN36;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x90
	jp	00146$
00143$:
;main.c:616: else if ((*myEnnemy_type)==E_UFO)
	ld	a,e
	sub	a,#0x03
	jr	NZ,00140$
;main.c:618: if (x<128) (*myEnnemy_direction_x) = 1;
	ld	a,4 (ix)
	sub	a,#0x80
	jr	NC,00105$
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
	jr	00106$
00105$:
;main.c:619: else (*myEnnemy_direction_x) = -1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0xFF
00106$:
;main.c:620: (*myEnnemy_direction_y) = 1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;main.c:621: (*myEnnemy_basePattern) = SPATTERN54;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xD8
	jp	00146$
00140$:
;main.c:623: else if ((*myEnnemy_type)==E_SPHERE)
	ld	a,e
	sub	a,#0x05
	jr	NZ,00137$
;main.c:625: if (x<128) (*myEnnemy_direction_x) = 1;
	ld	a,4 (ix)
	sub	a,#0x80
	jr	NC,00108$
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
	jr	00109$
00108$:
;main.c:626: else (*myEnnemy_direction_x) = -1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0xFF
00109$:
;main.c:627: (*myEnnemy_r5) = 50;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x32
;main.c:628: (*myEnnemy_direction_y) = rnd_byte(0,2)-1;
	ld	hl,#0x0200
	push	hl
	call	_rnd_byte
	pop	af
	ld	a,l
	dec	a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),a
;main.c:629: (*myEnnemy_basePattern) = SPATTERN47;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xBC
	jp	00146$
00137$:
;main.c:631: else if ((*myEnnemy_type)==E_ORB)
	ld	a,e
	sub	a,#0x04
	jr	NZ,00134$
;main.c:633: if (y<96) (*myEnnemy_direction_y) = 1;
	ld	a,5 (ix)
	sub	a,#0x60
	jr	NC,00111$
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jr	00112$
00111$:
;main.c:634: else (*myEnnemy_direction_y) = -1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0xFF
00112$:
;main.c:635: (*myEnnemy_r5) = 50;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x32
;main.c:636: (*myEnnemy_direction_x) = rnd_byte(0,2)-1;
	ld	hl,#0x0200
	push	hl
	call	_rnd_byte
	pop	af
	ld	a,l
	dec	a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),a
;main.c:637: (*myEnnemy_basePattern) = SPATTERN50;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xC8
	jp	00146$
00134$:
;main.c:639: else if ((*myEnnemy_type)==E_CLUB)
	ld	a,e
	sub	a,#0x02
	jr	NZ,00131$
;main.c:641: (*myEnnemy_r5) = 1;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x01
;main.c:642: if (y<96) (*myEnnemy_direction_y) = 1;
	ld	a,5 (ix)
	sub	a,#0x60
	jr	NC,00114$
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jr	00115$
00114$:
;main.c:643: else (*myEnnemy_direction_y) = -1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0xFF
00115$:
;main.c:644: if (x<128) (*myEnnemy_direction_x) = 1;
	ld	a,4 (ix)
	sub	a,#0x80
	ld	a,#0x00
	rla
	ld	d,a
	or	a,a
	jr	Z,00117$
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
	jr	00118$
00117$:
;main.c:645: else (*myEnnemy_direction_x) = -1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0xFF
00118$:
;main.c:646: if (x<128) (*myEnnemy_basePattern) = SPATTERN57;
	xor	a,a
	or	a,d
	jr	Z,00120$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xE4
	jp	00146$
00120$:
;main.c:647: else (*myEnnemy_basePattern) = SPATTERN59;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xEC
	jr	00146$
00131$:
;main.c:649: else if ((*myEnnemy_type)==E_MOMIE)
	xor	a,a
	or	a,e
	jr	NZ,00128$
;main.c:651: (*myEnnemy_r5) = 1;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x01
;main.c:652: (*myEnnemy_direction_y) = 1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;main.c:653: (*myEnnemy_basePattern) = SPATTERN44;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xB0
	jr	00146$
00128$:
;main.c:655: else if ((*myEnnemy_type)==E_BONUS)
	ld	a,e
	sub	a,#0x06
	jr	NZ,00125$
;main.c:657: (*myEnnemy_direction_y) = 1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;main.c:658: (*myEnnemy_direction_x) = 1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
;main.c:659: (*myEnnemy_basePattern) = SPATTERN53;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xD4
;main.c:660: bonusEnCours = 1;
	ld	hl,#_bonusEnCours + 0
	ld	(hl), #0x01
;main.c:661: ennBonus=0;
	ld	iy,#_ennBonus
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
	jr	00146$
00125$:
;main.c:663: else if ((*myEnnemy_type)==E_SCORE)
	ld	a,e
	sub	a,#0x07
	jr	NZ,00146$
;main.c:665: (*myEnnemy_direction_x) = 0;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
;main.c:666: (*myEnnemy_direction_y) = 0;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x00
;main.c:668: (*myEnnemy_basePattern) = SPATTERN46;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xB8
;main.c:669: (*myEnnemy_r5) = 250;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0xFA
00146$:
;main.c:674: nbEnnemyLevel=0;
	ld	hl,#_nbEnnemyLevel + 0
	ld	(hl), #0x00
;main.c:675: for (j=0;j<MAXENNEMY;j++)
	ld	b,#0x00
	ld	c,#0x00
00151$:
	ld	a,b
	sub	a,#0x08
	jr	NC,00159$
;main.c:677: if (ennemy[j].type!=INACTIF) nbEnnemyLevel++;
	ld	a,#<(_ennemy)
	add	a,c
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jr	Z,00153$
	ld	iy,#_nbEnnemyLevel
	inc	0 (iy)
00153$:
;main.c:675: for (j=0;j<MAXENNEMY;j++)
	ld	a,c
	add	a,#0x0F
	ld	c,a
	inc	b
	jr	00151$
;main.c:679: return;
	jr	00159$
00157$:
;main.c:576: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jp	00155$
00159$:
	ld	sp,ix
	pop	ix
	ret
_createEnnemy_end::
;main.c:684: void destroyEnnemy(byte id)
;	---------------------------------
; Function destroyEnnemy
; ---------------------------------
_destroyEnnemy_start::
_destroyEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:690: if (ennemy[id].type==E_BONUS)
	ld	a,4 (ix)
	ld	e,a
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	ld	c, a
	add	a,#<(_ennemy)
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0x06
	jr	NZ,00102$
;main.c:692: bonusEnCours = 0;
	ld	hl,#_bonusEnCours + 0
	ld	(hl), #0x00
;main.c:693: ennBonus=350;
	ld	iy,#_ennBonus
	ld	0 (iy),#0x5E
	ld	1 (iy),#0x01
00102$:
;main.c:697: ennemy[id].type = INACTIF;
	ld	a,#<(_ennemy)
	add	a,c
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,#0xCC
	ld	(de),a
;main.c:698: ennemy[id].type_sauvegarde = INACTIF;
	ld	a,#<(_ennemy)
	add	a,c
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,#0xCC
	ld	(de),a
;main.c:699: sprites[ennemy[id].sprno].y = INACTIF;
	ld	a,#<(_ennemy)
	add	a,c
	ld	c,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	b,a
	inc	bc
	inc	bc
	ld	a,(bc)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	c,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	b,a
	ld	a,#0xCC
	ld	(bc),a
;main.c:701: nbEnnemyLevel=0;
	ld	hl,#_nbEnnemyLevel + 0
	ld	(hl), #0x00
;main.c:702: for (i=0;i<MAXENNEMY;i++)
	ld	bc,#0x0000
00105$:
	ld	a,c
	sub	a,#0x08
	jr	NC,00109$
;main.c:704: if (ennemy[i].type!=INACTIF) nbEnnemyLevel++;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jr	Z,00107$
	ld	iy,#_nbEnnemyLevel
	inc	0 (iy)
00107$:
;main.c:702: for (i=0;i<MAXENNEMY;i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jr	00105$
00109$:
	pop	ix
	ret
_destroyEnnemy_end::
;main.c:709: void destroyAllEnnemy(void)
;	---------------------------------
; Function destroyAllEnnemy
; ---------------------------------
_destroyAllEnnemy_start::
_destroyAllEnnemy:
;main.c:713: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00103$:
	ld	a,c
	sub	a,#0x08
	ret	NC
;main.c:715: if (ennemy[i].type!=INACTIF)
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jr	Z,00105$
;main.c:717: destroyEnnemy(i);
	push	bc
	ld	a,c
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
	pop	bc
00105$:
;main.c:713: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jr	00103$
_destroyAllEnnemy_end::
;main.c:725: void ennemyToBonus(void)
;	---------------------------------
; Function ennemyToBonus
; ---------------------------------
_ennemyToBonus_start::
_ennemyToBonus:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;main.c:731: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00103$:
	ld	a,c
	sub	a,#0x08
	jp	NC,00106$
;main.c:733: if (ennemy[i].type!=INACTIF)
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jp	Z,00105$
;main.c:735: xs = sprites[ennemy[i].sprno].x;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,(de)
	ld	-1 (ix),a
;main.c:736: ys = sprites[ennemy[i].sprno].y;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	-2 (ix),a
;main.c:737: ts = ennemy[i].type;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	-3 (ix),a
;main.c:738: r1 = ennemy[i].r1;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-4 (ix),a
;main.c:739: r2 = ennemy[i].r2;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-5 (ix),a
;main.c:740: r3 = ennemy[i].r3;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-6 (ix),a
;main.c:741: r5 = ennemy[i].r5;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x0006
	add	hl,de
	ld	a,(hl)
	ld	-7 (ix),a
;main.c:742: r6 = ennemy[i].r6;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	e,a
;main.c:744: destroyEnnemy(i);
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
	pop	de
	ld	a,e
	push	af
	inc	sp
	ld	h,-7 (ix)
	ld	l,-6 (ix)
	push	hl
	ld	h,-5 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	d, -3 (ix)
	ld	e,#0x07
	push	de
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	pop	bc
00105$:
;main.c:731: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jp	00103$
00106$:
;main.c:749: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:750: stopmusic();
	call	_stopmusic
;main.c:751: startmusic(tune_bonus,0,LOOP_OFF,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_tune_bonus
	push	hl
	call	_startmusic
	ld	sp,ix
	pop	ix
	ret
_ennemyToBonus_end::
;main.c:757: void bonusToEnnemy(void)
;	---------------------------------
; Function bonusToEnnemy
; ---------------------------------
_bonusToEnnemy_start::
_bonusToEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;main.c:762: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:763: stopmusic();
	call	_stopmusic
;main.c:764: startmusic(tune_ingame,0,LOOP_ON,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0100
	push	hl
	ld	hl,#_tune_ingame
	push	hl
	call	_startmusic
	pop	af
	pop	af
	inc	sp
;main.c:766: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00103$:
	ld	a,c
	sub	a,#0x08
	jp	PO,00113$
	xor	a,#0x80
00113$:
	jp	P,00107$
;main.c:768: if (ennemy[i].type==E_SCORE)
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0x07
	jp	NZ,00105$
;main.c:770: xs = sprites[ennemy[i].sprno].x;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,(de)
	ld	-1 (ix),a
;main.c:771: ys = sprites[ennemy[i].sprno].y;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	-2 (ix),a
;main.c:772: ts = ennemy[i].type_sauvegarde;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,(de)
	ld	-3 (ix),a
;main.c:773: r1 = ennemy[i].r1;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-4 (ix),a
;main.c:774: r2 = ennemy[i].r2;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-5 (ix),a
;main.c:775: r3 = ennemy[i].r3;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	-6 (ix),a
;main.c:776: r5 = ennemy[i].r5;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x0006
	add	hl,de
	ld	a,(hl)
	ld	-7 (ix),a
;main.c:777: r6 = ennemy[i].r6;
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	e,a
;main.c:778: destroyEnnemy(i);
	push	bc
	push	de
	ld	a,c
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
	pop	de
	ld	a,e
	push	af
	inc	sp
	ld	h,-7 (ix)
	ld	l,-6 (ix)
	push	hl
	ld	h,-5 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	h,-3 (ix)
	ld	l,-3 (ix)
	push	hl
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	pop	bc
00105$:
;main.c:766: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jp	00103$
00107$:
	ld	sp,ix
	pop	ix
	ret
_bonusToEnnemy_end::
;main.c:784: void intern_moveEnnemy(byte i)
;	---------------------------------
; Function intern_moveEnnemy
; ---------------------------------
_intern_moveEnnemy_start::
_intern_moveEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-31
	add	hl,sp
	ld	sp,hl
;main.c:787: s_ennemy *this_ennemy = &ennemy[i];
	ld	a,4 (ix)
	ld	e,a
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	ld	c, a
	add	a,#<(_ennemy)
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	h, a
	ld	l, e
;main.c:788: byte *myEnnemy_type = &this_ennemy->type;
	ld	-2 (ix),l
	ld	-1 (ix),h
;main.c:789: byte *myEnnemy_r1 = &this_ennemy->r1;
	ld	a,l
	add	a,#0x03
	ld	b,a
	ld	a,h
	adc	a,#0x00
	ld	d,a
;main.c:790: byte *myEnnemy_r2 = &this_ennemy->r2;
	ld	a,l
	add	a,#0x04
	ld	-4 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-3 (ix),a
;main.c:791: byte *myEnnemy_r3 = &this_ennemy->r3;
	ld	a,l
	add	a,#0x05
	ld	-6 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-5 (ix),a
;main.c:792: byte *myEnnemy_r5 = &this_ennemy->r5;
	ld	a,l
	add	a,#0x06
	ld	-8 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-7 (ix),a
;main.c:794: byte *myEnnemy_sprno = &this_ennemy->sprno;
	ld	a,l
	add	a,#0x02
	ld	-10 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-9 (ix),a
;main.c:797: byte *myEnnemy_c = &this_ennemy->c;
	ld	a,l
	add	a,#0x0A
	ld	-12 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-11 (ix),a
;main.c:799: byte *myEnnemy_basePattern = &this_ennemy->basePattern;
	ld	a,l
	add	a,#0x0E
	ld	-14 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-13 (ix),a
;main.c:801: char *myEnnemy_direction_x = &this_ennemy->direction_x;
	ld	a,l
	add	a,#0x0C
	ld	-16 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-15 (ix),a
;main.c:802: char *myEnnemy_direction_y = &this_ennemy->direction_y;
	ld	a,l
	add	a,#0x0D
	ld	-18 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-17 (ix),a
;main.c:804: sprite_t *this_sprite = &sprites[(*myEnnemy_sprno)];
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	-20 (ix),a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	-19 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
;main.c:805: byte *mySprite_x = &this_sprite->x;
	ld	a,l
	add	a,#0x01
	ld	-22 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-21 (ix),a
;main.c:806: byte *mySprite_y = &this_sprite->y;
	ld	-24 (ix),l
	ld	-23 (ix),h
;main.c:807: byte *mySprite_pattern = &this_sprite->pattern;
	ld	a,l
	add	a,#0x02
	ld	-26 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-25 (ix),a
;main.c:808: byte *mySprite_colour = &this_sprite->colour;
	ld	a,l
	add	a,#0x03
	ld	-28 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-27 (ix),a
;main.c:813: playerSprite_x = sprites[PLAYER_CORPS].x;
	ld	a,(#0x0001 + _sprites)
	ld	-29 (ix),a
;main.c:814: playerSprite_y = sprites[PLAYER_CORPS].y;
	ld	a,(#_sprites)
	ld	-30 (ix),a
;main.c:816: if ((timerInterne&7)==0) timerAnimation3+=4;
	ld	a,(#_timerInterne + 0)
	and	a,#0x07
	ld	e,a
	or	a,a
	jr	NZ,00102$
	ld	iy,#_timerAnimation3
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
00102$:
;main.c:817: if (timerAnimation3==12) timerAnimation3=0;
	ld	iy,#_timerAnimation3
	ld	a,0 (iy)
	sub	a,#0x0C
	jr	NZ,00104$
	ld	0 (iy),#0x00
00104$:
;main.c:818: if ((timerInterne&7)==0) timerAnimation2+=4;
	xor	a,a
	or	a,e
	jr	NZ,00106$
	ld	iy,#_timerAnimation2
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
00106$:
;main.c:819: if (timerAnimation2==8) timerAnimation2=0;
	ld	iy,#_timerAnimation2
	ld	a,0 (iy)
	sub	a,#0x08
	jr	NZ,00108$
	ld	0 (iy),#0x00
00108$:
;main.c:820: timerInterne++;
	ld	iy,#_timerInterne
	inc	0 (iy)
;main.c:823: if (ennemy[i].c==0)
	ld	a,#<(_ennemy)
	add	a,c
	ld	c,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	e,a
	ld	a,c
	add	a,#0x0A
	ld	c,a
	ld	a,e
	adc	a,#0x00
	ld	h, a
	ld	l, c
	ld	a,(hl)
	or	a,a
	jr	NZ,00112$
;main.c:825: (*mySprite_x)+=(*myEnnemy_direction_x);
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	c,(hl)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	e,(hl)
	ld	a,c
	add	a,e
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	(hl),a
;main.c:826: (*mySprite_y)+=(*myEnnemy_direction_y);
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	c,(hl)
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,(hl)
	ld	-31 (ix),a
	ld	a,c
	add	a,-31 (ix)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	(hl),a
;main.c:828: if ((*myEnnemy_type)==E_BONUS)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a,#0x06
	jr	NZ,00112$
;main.c:830: (*mySprite_x)+=(*myEnnemy_direction_x);
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a, (hl)
	add	a,e
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	(hl),a
;main.c:831: (*mySprite_y)+=(*myEnnemy_direction_y);
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	a, (hl)
	add	a,-31 (ix)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	(hl),a
00112$:
;main.c:835: if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--; // Variable commune à tout les ennemy
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	l,(hl)
	xor	a,a
	or	a,l
	jr	Z,00114$
	ld	a,l
	dec	a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),a
00114$:
;main.c:838: if ((*myEnnemy_type)==E_VULTURE)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	ld	a,c
	sub	a,#0x01
	jp	NZ,00190$
;main.c:843: if ((*myEnnemy_c)==1)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00116$
;main.c:845: (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
00116$:
;main.c:849: if ((*myEnnemy_r5)==0)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	or	a,a
	jp	NZ,00191$
;main.c:851: (*myEnnemy_r5) = 50;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x32
;main.c:854: if  ((*myEnnemy_direction_x)!=0)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	or	a,a
	jr	Z,00124$
;main.c:857: (*myEnnemy_direction_x) = 0;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x00
;main.c:858: if ((*mySprite_y)>playerSprite_y) (*myEnnemy_direction_y) = -1;
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	a,-30 (ix)
	sub	a,(hl)
	jr	NC,00118$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0xFF
	jp	00191$
00118$:
;main.c:859: else (*myEnnemy_direction_y) = 1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x01
	jp	00191$
00124$:
;main.c:863: (*myEnnemy_direction_y) = 0;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x00
;main.c:865: if ((*mySprite_x)>playerSprite_x)
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,-29 (ix)
	sub	a,(hl)
	jr	NC,00121$
;main.c:867: (*myEnnemy_direction_x) = -1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0xFF
;main.c:868: (*myEnnemy_basePattern) = SPATTERN36;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0x90
	jp	00191$
00121$:
;main.c:872: (*myEnnemy_direction_x) = 1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x01
;main.c:873: (*myEnnemy_basePattern) = SPATTERN39;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0x9C
	jp	00191$
00190$:
;main.c:878: else if (((*myEnnemy_type)==E_UFO) || ((*myEnnemy_type)==E_BONUS))
	ld	a,c
	cp	a,#0x03
	jr	Z,00185$
	sub	a,#0x06
	jr	NZ,00186$
00185$:
;main.c:881: if ((*myEnnemy_c)==1)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jp	NZ,00191$
;main.c:883: (*myEnnemy_direction_x) = donneDirectionHasard();
	call	_donneDirectionHasard
	ld	e,l
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),e
;main.c:884: (*myEnnemy_direction_y) = donneDirectionHasard();
	call	_donneDirectionHasard
	ld	e,l
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
	jp	00191$
00186$:
;main.c:887: else if ((*myEnnemy_type)==E_SPHERE)
	ld	a,c
	sub	a,#0x05
	jr	NZ,00183$
;main.c:892: if ((*myEnnemy_c)==1)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00131$
;main.c:894: (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
00131$:
;main.c:898: if ((*myEnnemy_r5)==0)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	or	a,a
	jp	NZ,00191$
;main.c:900: (*myEnnemy_r5) = 20;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x14
;main.c:901: (*myEnnemy_direction_y) = donneDirectionHasard();
	call	_donneDirectionHasard
	ld	e,l
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
;main.c:902: if ((*mySprite_x)>playerSprite_x) (*myEnnemy_direction_x)=-1;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,-29 (ix)
	sub	a,(hl)
	jr	NC,00133$
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0xFF
	jp	00191$
00133$:
;main.c:903: else (*myEnnemy_direction_x)=1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x01
	jp	00191$
00183$:
;main.c:906: else if ((*myEnnemy_type)==E_ORB)
	ld	a,c
	sub	a,#0x04
	jp	NZ,00180$
;main.c:911: if ((*myEnnemy_c)==1)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00138$
;main.c:913: (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
00138$:
;main.c:917: if ((*myEnnemy_r5)==0)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	or	a,a
	jp	NZ,00191$
;main.c:919: (*myEnnemy_r5) = 20;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x14
;main.c:920: (*myEnnemy_direction_x) = donneDirectionHasard();
	call	_donneDirectionHasard
	ld	e,l
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),e
;main.c:921: if ((*myEnnemy_c)==0)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	or	a,a
	jr	NZ,00146$
;main.c:923: if ((*mySprite_y)>playerSprite_y)  (*myEnnemy_direction_y)=-1;
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	a,-30 (ix)
	sub	a,(hl)
	jr	NC,00140$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0xFF
	jp	00191$
00140$:
;main.c:924: else (*myEnnemy_direction_y)=1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x01
	jp	00191$
00146$:
;main.c:928: if ((*myEnnemy_direction_y)==-1) (*myEnnemy_direction_y)=1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a, (hl)
	inc	a
	jr	NZ,00143$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x01
	jp	00191$
00143$:
;main.c:929: else (*myEnnemy_direction_y)=-1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0xFF
	jp	00191$
00180$:
;main.c:935: else if ((*myEnnemy_type)==E_CLUB)
	ld	a,c
	sub	a,#0x02
	jp	NZ,00177$
;main.c:940: if ((*myEnnemy_c)==1)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00151$
;main.c:942: (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
00151$:
;main.c:946: if ((*myEnnemy_r5)==0)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	or	a,a
	jp	NZ,00191$
;main.c:948: (*myEnnemy_r5) = 1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
;main.c:951: if  ((*myEnnemy_direction_x)!=0)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	or	a,a
	jr	Z,00159$
;main.c:954: (*myEnnemy_direction_x) = 0;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x00
;main.c:955: if ((*mySprite_y)>playerSprite_y) (*myEnnemy_direction_y) = -1;
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	a,-30 (ix)
	sub	a,(hl)
	jr	NC,00153$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0xFF
	jp	00191$
00153$:
;main.c:956: else (*myEnnemy_direction_y) = 1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x01
	jp	00191$
00159$:
;main.c:960: (*myEnnemy_direction_y) = 0;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x00
;main.c:962: if ((*mySprite_x)>playerSprite_x)
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,-29 (ix)
	sub	a,(hl)
	jr	NC,00156$
;main.c:964: (*myEnnemy_direction_x) = -1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0xFF
;main.c:965: (*myEnnemy_basePattern) = SPATTERN57;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0xE4
	jp	00191$
00156$:
;main.c:969: (*myEnnemy_direction_x) = 1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x01
;main.c:970: (*myEnnemy_basePattern) = SPATTERN59;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0xEC
	jp	00191$
00177$:
;main.c:977: else if ((*myEnnemy_type)==E_MOMIE)
	xor	a,a
	or	a,c
	jp	NZ,00191$
;main.c:980: (*myEnnemy_r1) = (*mySprite_x)+8;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a, (hl)
	add	a,#0x08
	ld	l,b
	ld	h,d
	ld	(hl),a
;main.c:981: (*myEnnemy_r2) = (*mySprite_y)+16;
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	a, (hl)
	add	a,#0x10
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
;main.c:985: if ((*myEnnemy_r3)==1)
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00170$
;main.c:987: (*myEnnemy_direction_y) = 0;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x00
;main.c:988: if (((*myEnnemy_direction_x)==0) || ((*myEnnemy_r5)==0))
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	or	a,a
	jr	Z,00166$
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	or	a,a
	jr	NZ,00171$
00166$:
;main.c:991: (*myEnnemy_direction_x) = donneDirectionHasard();
	call	_donneDirectionHasard
	ld	c,l
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),c
;main.c:992: if ((*myEnnemy_direction_x) == -1) (*myEnnemy_basePattern) = SPATTERN42;
	ld	a,c
	inc	a
	jr	NZ,00164$
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0xA8
	jr	00165$
00164$:
;main.c:993: else (*myEnnemy_basePattern) = SPATTERN44;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),#0xB0
00165$:
;main.c:994: (*myEnnemy_r5) = rnd_byte(20,50); // Déplace toi de 20 à 50 pixels dans cette direction
	ld	hl,#0x3214
	push	hl
	call	_rnd_byte
	pop	af
	ld	c,l
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	jr	00171$
00170$:
;main.c:999: (*myEnnemy_direction_y) = 1;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),#0x01
;main.c:1000: (*myEnnemy_direction_x) = 0;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),#0x00
;main.c:1001: (*myEnnemy_r5) = 0;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
00171$:
;main.c:1004: if ((*mySprite_y)>167)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	l,(hl)
	ld	a,#0xA7
	sub	a,l
	jr	NC,00191$
;main.c:1006: (*myEnnemy_r3) = rnd_byte(1,5);
	ld	hl,#0x0501
	push	hl
	call	_rnd_byte
	pop	af
	ld	c,l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
;main.c:1007: createEnnemy((*mySprite_x),(*mySprite_y),(*myEnnemy_r3),(*myEnnemy_r3),0,0,0,/*0,*/0,0);
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	e,(hl)
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	b,(hl)
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	d, c
	push	de
	push	bc
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
;main.c:1008: destroyEnnemy(i);
	ld	a,4 (ix)
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
00191$:
;main.c:1015: if (((*myEnnemy_type)==E_BONUS) || ((*myEnnemy_type)==E_SCORE))
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	ld	a,c
	cp	a,#0x06
	jr	Z,00198$
	sub	a,#0x07
	jr	NZ,00199$
00198$:
;main.c:1017: (*mySprite_pattern) = (*myEnnemy_basePattern);
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	(hl),a
;main.c:1018: (*mySprite_colour)++;
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	b, (hl)
	inc	b
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	(hl),b
;main.c:1019: if ((*mySprite_colour)>15) (*mySprite_colour)=2;
	ld	a,#0x0F
	sub	a,b
	jr	NC,00202$
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	(hl),#0x02
	jr	00202$
00199$:
;main.c:1023: if (((*myEnnemy_type)!=E_CLUB) && ((*myEnnemy_type)!=E_MOMIE)) (*mySprite_pattern) = (*myEnnemy_basePattern)+timerAnimation3;
	ld	a,c
	sub	a,#0x02
	jr	Z,00195$
	xor	a,a
	or	a,c
	jr	Z,00195$
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a, (hl)
	ld	hl, #_timerAnimation3
	add	a,(hl)
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	(hl),a
	jr	00202$
00195$:
;main.c:1024: else (*mySprite_pattern) = (*myEnnemy_basePattern)+timerAnimation2;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a, (hl)
	ld	hl, #_timerAnimation2
	add	a,(hl)
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	(hl),a
00202$:
	ld	sp,ix
	pop	ix
	ret
_intern_moveEnnemy_end::
;main.c:1031: void intern_checkNextMoveEnnemy(byte i)
;	---------------------------------
; Function intern_checkNextMoveEnnemy
; ---------------------------------
_intern_checkNextMoveEnnemy_start::
_intern_checkNextMoveEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;main.c:1033: s_ennemy *this_ennemy = &ennemy[i];
	ld	a,4 (ix)
	ld	e,a
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	ld	c, a
	add	a,#<(_ennemy)
	ld	l, a
	ld	a, #>(_ennemy)
	adc	a, #0x00
	ld	h, a
;main.c:1035: byte *myEnnemy_sprno = &this_ennemy->sprno;
	ld	a,l
	add	a,#0x02
	ld	-2 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-1 (ix),a
;main.c:1036: byte *myEnnemy_cx = &this_ennemy->cx;
	ld	a,l
	add	a,#0x08
	ld	-4 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-3 (ix),a
;main.c:1037: byte *myEnnemy_cy = &this_ennemy->cy;
	ld	a,l
	add	a,#0x09
	ld	-6 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-5 (ix),a
;main.c:1038: byte *myEnnemy_nmiCol = &this_ennemy->nmiCol;
	ld	a,l
	add	a,#0x0B
	ld	-8 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-7 (ix),a
;main.c:1039: char myEnnemy_direction_x = ennemy[i].direction_x;
	ld	a,#<(_ennemy)
	add	a,c
	ld	d,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	b,a
	ld	a,d
	add	a,#0x0C
	ld	d,a
	ld	a,b
	adc	a,#0x00
	ld	h, a
	ld	l, d
	ld	a,(hl)
	ld	-9 (ix),a
;main.c:1040: char myEnnemy_direction_y = ennemy[i].direction_y;
	ld	a,#<(_ennemy)
	add	a,c
	ld	c,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	e,a
	ld	a,c
	add	a,#0x0D
	ld	c,a
	ld	a,e
	adc	a,#0x00
	ld	h, a
	ld	l, c
	ld	a,(hl)
	ld	-10 (ix),a
;main.c:1042: sprite_t *this_sprite = &sprites[(*myEnnemy_sprno)];
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	l, a
	ld	a, #>(_sprites)
	adc	a, #0x00
;main.c:1043: byte *mySprite_x = &this_sprite->x;
	ld	h, a
	ld	e, l
	ld	d, a
	inc	de
;main.c:1044: byte *mySprite_y = &this_sprite->y;
	ld	c,l
	ld	b,h
;main.c:1046: (*myEnnemy_cx) = ((*mySprite_x)+returnPointCollision(myEnnemy_direction_x))>>3;
	ld	a,(de)
	ld	e, a
	ld	d,#0x00
	push	bc
	push	de
	ld	a,-9 (ix)
	push	af
	inc	sp
	call	_returnPointCollision
	inc	sp
	pop	de
	pop	bc
	ld	h,#0x00
	add	hl,de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a,l
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
;main.c:1047: (*myEnnemy_cy) = ((*mySprite_y)+returnPointCollision(myEnnemy_direction_y))>>3;
	ld	a,(bc)
	ld	c, a
	ld	b,#0x00
	push	bc
	ld	a,-10 (ix)
	push	af
	inc	sp
	call	_returnPointCollision
	inc	sp
	pop	bc
	ld	h,#0x00
	add	hl,bc
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a,l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),a
;main.c:1048: (*myEnnemy_nmiCol) = 1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
	ld	sp,ix
	pop	ix
	ret
_intern_checkNextMoveEnnemy_end::
;main.c:1052: void checkSpriteCollision(byte e)
;	---------------------------------
; Function checkSpriteCollision
; ---------------------------------
_checkSpriteCollision_start::
_checkSpriteCollision:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;main.c:1056: if ((vdp_status&32)==0) return;
	ld	a,(#_vdp_status + 0)
	and	a,#0x20
	jp	Z,00115$
	jr	00102$
	jp	00115$
00102$:
;main.c:1058: t = ennemy[e].type;
	ld	a,4 (ix)
	ld	e,a
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	add	a,a
	add	a,e
	ld	c, a
	add	a,#<(_ennemy)
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
;main.c:1059: if (t!=INACTIF)
	ld	-1 (ix), a
	sub	a,#0xCC
	jp	Z,00115$
;main.c:1061: spr = ennemy[e].sprno;
	ld	a,#<(_ennemy)
	add	a,c
	ld	c,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	e,a
	ld	a,c
	add	a,#0x02
	ld	c,a
	ld	a,e
	adc	a,#0x00
	ld	h, a
	ld	l, c
	ld	c, (hl)
;main.c:1063: r = isCollision(sprites[PLAYER_CORPS].x+2,sprites[PLAYER_CORPS].y+2,14,14,sprites[spr].x+4,sprites[spr].y+4,12,12);
	sla	c
	sla	c
	ld	a,#<(_sprites)
	add	a,c
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	e, a
	inc	e
	inc	e
	inc	e
	inc	e
	ld	a,#<(_sprites)
	add	a,c
	ld	c,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	inc	c
	jr	NZ,00126$
	inc	d
00126$:
	ld	l,c
	ld	h,d
	ld	c, (hl)
	inc	c
	inc	c
	inc	c
	inc	c
	ld	hl,#_sprites
	ld	d, (hl)
	inc	d
	inc	d
	ld	hl,#0x0001 + _sprites
	ld	b, (hl)
	inc	b
	inc	b
	ld	hl,#0x0C0C
	push	hl
	ld	a,e
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0x0E0E
	push	hl
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_isCollision
	pop	af
	pop	af
	pop	af
	pop	af
;main.c:1064: if (r==S_TRUE)
	ld	a,l
	sub	a,#0x01
	jr	NZ,00115$
;main.c:1066: if (t==E_BONUS)
	ld	a,-1 (ix)
;main.c:1068: startsfxPrio(sfx_catch,0);
	sub	a,#0x06
	jr	NZ,00109$
	push	af
	inc	sp
	ld	hl,#_sfx_catch
	push	hl
	call	_startsfxPrio
	pop	af
	inc	sp
;main.c:1069: destroyEnnemy(e);
	ld	a,4 (ix)
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
;main.c:1070: ennemyToBonus();
	call	_ennemyToBonus
	jr	00115$
00109$:
;main.c:1072: else if (t==E_SCORE)
	ld	a,-1 (ix)
;main.c:1074: startsfxPrio(sfx_catch,0);
	sub	a,#0x07
	jr	NZ,00106$
	push	af
	inc	sp
	ld	hl,#_sfx_catch
	push	hl
	call	_startsfxPrio
	pop	af
	inc	sp
;main.c:1075: destroyEnnemy(e);
	ld	a,4 (ix)
	push	af
	inc	sp
	call	_destroyEnnemy
	inc	sp
;main.c:1076: player.score+=5;
	ld	hl,#0x000d + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	add	a,#0x05
	ld	c,a
	ld	a,h
	adc	a,#0x00
	ld	b,a
	ld	hl,#0x000d + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00115$
00106$:
;main.c:1080: if (cheat!=1) workflow = WORKFLOW_LOOSE_LIFE;
	ld	a,(#_cheat + 0)
	sub	a,#0x01
	jr	Z,00115$
	ld	hl,#_workflow + 0
	ld	(hl), #0x05
00115$:
	ld	sp,ix
	pop	ix
	ret
_checkSpriteCollision_end::
;main.c:1090: void moveEnnemy(void)
;	---------------------------------
; Function moveEnnemy
; ---------------------------------
_moveEnnemy_start::
_moveEnnemy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-15
	add	hl,sp
	ld	sp,hl
;main.c:1104: for (i=0; i<MAXENNEMY; i++)
	ld	bc,#0x0000
00119$:
	ld	a,c
	sub	a,#0x08
	jr	NC,00122$
;main.c:1106: checkSpriteCollision(i);
	push	bc
	ld	a,c
	push	af
	inc	sp
	call	_checkSpriteCollision
	inc	sp
	pop	bc
;main.c:1107: if (ennemy[i].type!=INACTIF)
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	sub	a,#0xCC
	jr	Z,00121$
;main.c:1110: if ((timer&1)==0)
	ld	a,(#_timer + 0)
	and	a,#0x01
	jr	NZ,00102$
;main.c:1112: intern_checkNextMoveEnnemy(i);
	push	bc
	ld	a,c
	push	af
	inc	sp
	call	_intern_checkNextMoveEnnemy
	inc	sp
	pop	bc
;main.c:1113: nmiCol_Global=1;
	ld	hl,#_nmiCol_Global + 0
	ld	(hl), #0x01
	jr	00121$
00102$:
;main.c:1115: else intern_moveEnnemy(i); /* Bouge l'ennemy */
	push	bc
	ld	a,c
	push	af
	inc	sp
	call	_intern_moveEnnemy
	inc	sp
	pop	bc
00121$:
;main.c:1104: for (i=0; i<MAXENNEMY; i++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	c
	jr	00119$
00122$:
;main.c:1119: if (nmiCol_Global==1)
	ld	a,(#_nmiCol_Global + 0)
	sub	a,#0x01
	jp	NZ,00127$
;main.c:1121: for (k=0; k<MAXENNEMY; k++)
	ld	-1 (ix),#0x00
	ld	b,#0x00
00123$:
	ld	a,-1 (ix)
	sub	a,#0x08
	jp	NC,00126$
;main.c:1123: myEnnemy = &ennemy[k];
	ld	a,#<(_ennemy)
	add	a,b
	ld	e,a
	ld	a,#>(_ennemy)
	adc	a,#0x00
	ld	-3 (ix), e
	ld	-2 (ix), a
;main.c:1124: myEnnemy_type = &myEnnemy->type;
	ld	a,-3 (ix)
	ld	-5 (ix),a
	ld	a,-2 (ix)
	ld	-4 (ix),a
;main.c:1125: myEnnemy_nmiCol = &myEnnemy->nmiCol;
	ld	a,-3 (ix)
	add	a,#0x0B
	ld	-7 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-6 (ix),a
;main.c:1127: if ( ((*myEnnemy_type)!=INACTIF) && ((*myEnnemy_nmiCol)==1) )
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a, (hl)
	sub	a,#0xCC
	jp	Z,00125$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a, (hl)
	sub	a,#0x01
	jp	NZ,00125$
;main.c:1129: myEnnemy_c = &myEnnemy->c;
	ld	a,-3 (ix)
	add	a,#0x0A
	ld	-9 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-8 (ix),a
;main.c:1130: myEnnemy_cx = &myEnnemy->cx;
	ld	a,-3 (ix)
	add	a,#0x08
	ld	c,a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	d,a
;main.c:1131: myEnnemy_cy = &myEnnemy->cy;
	ld	a,-3 (ix)
	add	a,#0x09
	ld	-11 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-10 (ix),a
;main.c:1133: if (isCarObstacle((*myEnnemy_cx),(*myEnnemy_cy))!=0) (*myEnnemy_c) = 1;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	e,(hl)
	ld	l,c
	ld	h,d
	ld	c,(hl)
	push	bc
	ld	b, e
	push	bc
	call	_isCarObstacle
	pop	af
	pop	bc
	xor	a,a
	or	a,l
	jr	Z,00107$
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0x01
	jr	00108$
00107$:
;main.c:1134: else (*myEnnemy_c) = 0;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0x00
00108$:
;main.c:1137: if ((*myEnnemy_type)==E_MOMIE)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	or	a,a
	jr	NZ,00113$
;main.c:1139: myEnnemy_r1 = &myEnnemy->r1;
	ld	a,-3 (ix)
	add	a,#0x03
	ld	c,a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	d,a
;main.c:1140: myEnnemy_r2 = &myEnnemy->r2;
	ld	a,-3 (ix)
	add	a,#0x04
	ld	-13 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-12 (ix),a
;main.c:1141: myEnnemy_r3 = &myEnnemy->r3;
	ld	a,-3 (ix)
	add	a,#0x05
	ld	-15 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-14 (ix),a
;main.c:1143: if (isCarObstacle((*myEnnemy_r1)>>3,(*myEnnemy_r2)>>3)!=0) (*myEnnemy_r3) = 1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	e, (hl)
	srl	e
	srl	e
	srl	e
	ld	l,c
	ld	h,d
	ld	c, (hl)
	srl	c
	srl	c
	srl	c
	push	bc
	ld	b, e
	push	bc
	call	_isCarObstacle
	pop	af
	pop	bc
	xor	a,a
	or	a,l
	jr	Z,00110$
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x01
	jr	00113$
00110$:
;main.c:1144: else (*myEnnemy_r3) = 0;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x00
00113$:
;main.c:1148: (*myEnnemy_nmiCol)=0;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0x00
00125$:
;main.c:1121: for (k=0; k<MAXENNEMY; k++)
	ld	a,b
	add	a,#0x0F
	ld	b,a
	inc	-1 (ix)
	jp	00123$
00126$:
;main.c:1151: nmiCol_Global=0;
	ld	hl,#_nmiCol_Global + 0
	ld	(hl), #0x00
00127$:
	ld	sp,ix
	pop	ix
	ret
_moveEnnemy_end::
;main.c:1155: void generateEnnemy(void)
;	---------------------------------
; Function generateEnnemy
; ---------------------------------
_generateEnnemy_start::
_generateEnnemy:
;main.c:1160: if (ennBonus>0)
	ld	a,#0x00
	ld	iy,#_ennBonus
	sub	a,0 (iy)
	ld	a,#0x00
	sbc	a,1 (iy)
	jp	PO,00130$
	xor	a,#0x80
00130$:
	jp	P,00104$
;main.c:1162: ennBonus--;
	ld	hl,(_ennBonus)
	dec	hl
	ld	(_ennBonus),hl
;main.c:1163: if (ennBonus==1)    /* A la fin du temps, les bonus redeviennent des ennemys */
	ld	iy,#_ennBonus
	ld	a,0 (iy)
	sub	a,#0x01
	ret	NZ
	ld	a,1 (iy)
	or	a,a
	jr	Z,00132$
	ret
00132$:
;main.c:1165: bonusToEnnemy();
	call	_bonusToEnnemy
;main.c:1166: bonusEnCours=0;
	ld	hl,#_bonusEnCours + 0
	ld	(hl), #0x00
;main.c:1167: ennBonus=0;
	ld	iy,#_ennBonus
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;main.c:1169: return;
	ret
00104$:
;main.c:1173: maxEnn = difficulty;
	ld	hl,#_difficulty + 0
	ld	c,(hl)
;main.c:1176: if ((nbEnnemyLevel<maxEnn) && (timer==32))
	ld	a,(#_nbEnnemyLevel + 0)
	sub	a,c
	jr	NC,00109$
	ld	a,(#_timer + 0)
	sub	a,#0x20
	jr	NZ,00109$
;main.c:1179: if ((player.posx>>4)>=128)
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	sub	a,#0x80
	ld	a,h
	sbc	a,#0x00
	jr	C,00106$
;main.c:1181: createEnnemy(48,8,E_MOMIE,E_MOMIE,0,0,0,0,0);
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x08
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	pop	bc
	jr	00109$
00106$:
;main.c:1185: createEnnemy(192,8,E_MOMIE,E_MOMIE,0,0,0,0,0);
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x08
	push	hl
	ld	a,#0xC0
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	pop	bc
00109$:
;main.c:1190: if ((nbEnnemyLevel==maxEnn) && (timer==30))
	ld	a,(#_nbEnnemyLevel + 0)
	sub	a,c
	jr	Z,00137$
	ret
00137$:
	ld	a,(#_timer + 0)
	sub	a,#0x1E
	jr	Z,00139$
	ret
00139$:
;main.c:1192: cEnn = rnd_byte(0,100);
	ld	hl,#0x6400
	push	hl
	call	_rnd_byte
	pop	af
;main.c:1194: if (cEnn>50)
	ld	a,#0x32
	sub	a,l
	ret	NC
;main.c:1198: if ((player.posx>>4)>=160) createEnnemy(48,8,cEnn,cEnn,0,0,0,0,0);
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	sub	a,#0xA0
	ld	a,h
	sbc	a,#0x00
	jr	C,00112$
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x06
	push	hl
	ld	hl,#0x0608
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	ret
00112$:
;main.c:1200: createEnnemy(192,8,cEnn,cEnn,0,0,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x06
	push	hl
	ld	hl,#0x0608
	push	hl
	ld	a,#0xC0
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
	ret
_generateEnnemy_end::
;main.c:1210: byte get_char_protected(byte x,byte y)
;	---------------------------------
; Function get_char_protected
; ---------------------------------
_get_char_protected_start::
_get_char_protected:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:1212: if (x>31) return 92;
	ld	a,#0x1F
	sub	a,4 (ix)
	jr	NC,00102$
	ld	l,#0x5C
	jr	00105$
00102$:
;main.c:1213: if (y>23) return 92;
	ld	a,#0x17
	sub	a,5 (ix)
	jr	NC,00104$
	ld	l,#0x5C
	jr	00105$
00104$:
;main.c:1214: return (byte)get_char(x,y);
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	call	_get_char
	pop	af
00105$:
	pop	ix
	ret
_get_char_protected_end::
;main.c:1223: void LoadPatternAndshowAScreenPLE(char* p,char *c,char *n)
;	---------------------------------
; Function LoadPatternAndshowAScreenPLE
; ---------------------------------
_LoadPatternAndshowAScreenPLE_start::
_LoadPatternAndshowAScreenPLE:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:1225: cls();
	call	_cls
;main.c:1226: pletter(n,chrtab);
	ld	c,8 (ix)
	ld	b,9 (ix)
	ld	hl,#0x1800
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1227: pletter(n,buffer);
	ld	c,8 (ix)
	ld	b,9 (ix)
	ld	hl,#0x1C00
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1228: pletter(p,chrgen);
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	hl,#0x0000
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1229: pletter(c,coltab);
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	hl,#0x2000
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1230: pletter(c,coltab+2048);
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	hl,#0x2800
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1231: pletter(c,coltab+4096);
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	hl,#0x3000
	push	hl
	push	bc
	call	_pletter
	pop	af
	pop	af
;main.c:1232: duplicate_pattern();
	call	_duplicate_pattern
	pop	ix
	ret
_LoadPatternAndshowAScreenPLE_end::
;main.c:1241: void buffer2screen(byte x,byte y)
;	---------------------------------
; Function buffer2screen
; ---------------------------------
_buffer2screen_start::
_buffer2screen:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;main.c:1246: for (i=0; i<2; i++)
	ld	-5 (ix),#0x00
00101$:
	ld	a,-5 (ix)
	sub	a,#0x02
	jp	NC,00105$
;main.c:1248: get_vram(buffer+((y+i)<<5)+x,c,2);
	ld	hl,#0x0005
	add	hl,sp
	ld	-7 (ix),l
	ld	-6 (ix),h
	ld	l,5 (ix)
	ld	h,#0x00
	ld	c,-5 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x1C00
	add	hl,bc
	ex	de,hl
	ld	a,4 (ix)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
	ld	a,e
	add	a,-9 (ix)
	ld	e,a
	ld	a,d
	adc	a,-8 (ix)
	ld	d,a
	push	bc
	ld	hl,#0x0002
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	push	de
	call	_get_vram
	pop	af
	pop	af
	pop	af
	pop	bc
;main.c:1249: put_vram(chrtab+((y+i)<<5)+x,c,2);
	ld	hl,#0x0005
	add	hl,sp
	ex	de,hl
	ld	hl,#0x1800
	add	hl,bc
	ld	a, l
	ld	b, h
	add	a,-9 (ix)
	ld	c,a
	ld	a,b
	adc	a,-8 (ix)
	ld	b,a
	ld	hl,#0x0002
	push	hl
	push	de
	push	bc
	call	_put_vram
	pop	af
	pop	af
	pop	af
;main.c:1246: for (i=0; i<2; i++)
	inc	-5 (ix)
	jp	00101$
00105$:
	ld	sp,ix
	pop	ix
	ret
_buffer2screen_end::
;main.c:1253: void createBomb(byte i,byte x,byte y,byte a)
;	---------------------------------
; Function createBomb
; ---------------------------------
_createBomb_start::
_createBomb:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:1255: bomb[i].x = x;
	ld	a,4 (ix)
	ld	e,a
	add	a,a
	add	a,e
	ld	c, a
	add	a,#<(_bomb)
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	ld	a,5 (ix)
	ld	(de),a
;main.c:1256: bomb[i].y = y;
	ld	a,#<(_bomb)
	add	a,c
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,6 (ix)
	ld	(de),a
;main.c:1257: bomb[i].allume = a;
	ld	a,#<(_bomb)
	add	a,c
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	inc	bc
	inc	bc
	ld	a,7 (ix)
	ld	(bc),a
	pop	ix
	ret
_createBomb_end::
;main.c:1263: void animateBomb()
;	---------------------------------
; Function animateBomb
; ---------------------------------
_animateBomb_start::
_animateBomb:
;main.c:1267: if (bombeAllumeeNiveau==1)
	ld	iy,#_bombeAllumeeNiveau
	ld	a,0 (iy)
	sub	a,#0x01
	jr	NZ,00108$
;main.c:1271: bombeAllumeeNiveau=2;
	ld	0 (iy),#0x02
;main.c:1272: for (k=0; k<MAXBOMB; k++)
	ld	bc,#0x0000
00103$:
	ld	a,c
	sub	a,#0x1E
	jr	NC,00108$
;main.c:1274: if (bomb[k].allume==BOMB_ALLUME)
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	sub	a,#0x02
	jr	NZ,00105$
;main.c:1276: sprites[SPRITE_ETINCELLE].x = ((bomb[k].x)<<3)-1;
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	rlca
	rlca
	rlca
	and	a,#0xF8
	dec	a
	ld	(#0x0025 + _sprites),a
;main.c:1277: sprites[SPRITE_ETINCELLE].y = ((bomb[k].y)<<3)-2;
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,(de)
	rlca
	rlca
	rlca
	and	a,#0xF8
	add	a,#0xFE
	ld	(#0x0024 + _sprites),a
;main.c:1278: break;
	jr	00108$
00105$:
;main.c:1272: for (k=0; k<MAXBOMB; k++)
	inc	b
	inc	b
	inc	b
	inc	c
	jr	00103$
00108$:
;main.c:1284: if (bombeAllumeeNiveau==0) sprites[SPRITE_ETINCELLE].y = INVISIBLE;
	xor	a,a
	ld	hl,#_bombeAllumeeNiveau + 0
	or	a,(hl)
	jr	NZ,00110$
	ld	hl,#0x0024 + _sprites
	ld	(hl),#0xCB
00110$:
;main.c:1287: if (sprites[SPRITE_ETINCELLE].colour<15) sprites[SPRITE_ETINCELLE].colour++;
	ld	hl,#0x0027 + _sprites
	ld	l,(hl)
	ld	a,l
	cp	a,#0x0F
	jr	NC,00112$
	inc	a
	ld	(#0x0027 + _sprites),a
	ret
00112$:
;main.c:1288: else sprites[SPRITE_ETINCELLE].colour=0;
	ld	hl,#0x0027 + _sprites
	ld	(hl),#0x00
	ret
_animateBomb_end::
;main.c:1294: void drawLevel(byte level)
;	---------------------------------
; Function drawLevel
; ---------------------------------
_drawLevel_start::
_drawLevel:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;main.c:1303: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:1306: nbBombLevel = 0;
	ld	hl,#_nbBombLevel + 0
	ld	(hl), #0x00
;main.c:1307: nbEnnemyLevel = 0;
	ld	hl,#_nbEnnemyLevel + 0
	ld	(hl), #0x00
;main.c:1308: bonusEnCours = 0;
	ld	hl,#_bonusEnCours + 0
	ld	(hl), #0x00
;main.c:1309: ennBonus=0;
	ld	iy,#_ennBonus
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;main.c:1311: l = level;
	ld	c,4 (ix)
;main.c:1314: screen_off();
	push	bc
	call	_screen_off
	call	_disable_nmi
	pop	bc
;main.c:1318: for (i=0; i<MAXBOMB; i++)
	ld	b,#0x00
00121$:
	ld	a,b
	sub	a,#0x1E
	jr	NC,00124$
;main.c:1320: createBomb(i,0,0,BOMB_NULL);
	push	bc
	ld	hl,#0xFE00
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_createBomb
	pop	af
	pop	af
	pop	bc
;main.c:1321: bombeAllumeeNiveau=0;
	ld	hl,#_bombeAllumeeNiveau + 0
	ld	(hl), #0x00
;main.c:1318: for (i=0; i<MAXBOMB; i++)
	inc	b
	jr	00121$
00124$:
;main.c:1327: cLevel = levels_p[l];
	ld	-11 (ix), c
	ld	-10 (ix), #0x00
	sla	-11 (ix)
	rl	-10 (ix)
	ld	a,#<(_levels_p)
	add	a,-11 (ix)
	ld	e,a
	ld	a,#>(_levels_p)
	adc	a,-10 (ix)
	ld	h, a
	ld	l, e
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	-2 (ix), a
	ld	-1 (ix),h
;main.c:1328: while (*(cLevel+offset)!=255) /* Tant qu'on à pas finit de lire le paramétrage du level courant */
	ld	-3 (ix),#0x00
	ld	-4 (ix),#0x00
00110$:
	ld	a,-2 (ix)
	add	a,-3 (ix)
	ld	c,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	ld	l,a
	inc	a
	jp	Z,00112$
;main.c:1331: psx = *(cLevel+offset);
	ld	-5 (ix), l
;main.c:1332: psy = *(cLevel+offset+1);
	ld	e,c
	ld	d,b
	inc	de
	ld	a,(de)
	ld	-6 (ix),a
;main.c:1333: psl = *(cLevel+offset+2);
	ld	e,c
	ld	d,b
	inc	de
	inc	de
	ld	a,(de)
	ld	-7 (ix),a
;main.c:1334: psh = *(cLevel+offset+3);
	ld	hl,#0x0003
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	ld	e,a
;main.c:1336: if (psl!=0)
	xor	a,a
	or	a,-7 (ix)
	jr	Z,00152$
;main.c:1338: put_char(psx,psy,253);
	ld	a,#0xFD
	push	af
	inc	sp
	ld	h,-6 (ix)
	ld	l,-5 (ix)
	push	hl
	call	_put_char
	pop	af
	inc	sp
;main.c:1339: put_char(psx+psl-1,psy,255);
	ld	a,-5 (ix)
	add	a,-7 (ix)
	dec	a
	ld	d,a
	ld	a,#0xFF
	push	af
	inc	sp
	ld	a,-6 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_put_char
	pop	af
	inc	sp
;main.c:1340: for (i=0; i<psl-2; i++)
	ld	b,#0x00
00125$:
	ld	l,-7 (ix)
	ld	h,#0x00
	dec	hl
	dec	hl
	ld	a, b
	ld	c, #0x00
	sub	a,l
	ld	a,c
	sbc	a,h
	jp	PO,00172$
	xor	a,#0x80
00172$:
	jp	P,00109$
;main.c:1342: put_char(psx+i+1,psy,254);
	ld	a,-5 (ix)
	add	a,b
	ld	c, a
	inc	c
	push	bc
	ld	a,#0xFE
	push	af
	inc	sp
	ld	b, -6 (ix)
	push	bc
	call	_put_char
	pop	af
	inc	sp
	pop	bc
;main.c:1340: for (i=0; i<psl-2; i++)
	inc	b
	jr	00125$
;main.c:1347: for (i=0; i<psh; i++)
00152$:
	ld	c,#0x00
00129$:
	ld	a,c
	sub	a,e
	jr	NC,00109$
;main.c:1349: if (i==0) put_char(psx,psy+i,250);
	xor	a,a
	or	a,c
	jr	NZ,00105$
	ld	a,-6 (ix)
	add	a,c
	ld	b,a
	push	bc
	push	de
	ld	a,#0xFA
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_put_char
	pop	af
	inc	sp
	pop	de
	pop	bc
	jr	00131$
00105$:
;main.c:1350: else if (i==(psh-1)) put_char(psx,psy+i,252);
	ld	l,e
	ld	h,#0x00
	dec	hl
	ld	b,c
	ld	d,#0x00
	push	bc
;	direct compare
	ld	c,b
	ld	a,l
	sub	a,c
	jr	NZ,00173$
;	direct compare
	ld	c,d
	ld	a,h
	sub	a,c
	jr	NZ,00173$
	pop	bc
	jr	00174$
00173$:
	pop	bc
	jr	00102$
00174$:
	ld	a,-6 (ix)
	add	a,c
	ld	b,a
	push	bc
	push	de
	ld	a,#0xFC
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_put_char
	pop	af
	inc	sp
	pop	de
	pop	bc
	jr	00131$
00102$:
;main.c:1351: else put_char(psx,psy+i,251);
	ld	a,-6 (ix)
	add	a,c
	ld	b,a
	push	bc
	push	de
	ld	a,#0xFB
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	call	_put_char
	pop	af
	inc	sp
	pop	de
	pop	bc
00131$:
;main.c:1347: for (i=0; i<psh; i++)
	inc	c
	jr	00129$
00109$:
;main.c:1354: offset+=4;
	inc	-3 (ix)
	inc	-3 (ix)
	inc	-3 (ix)
	inc	-3 (ix)
;main.c:1355: j++;
	inc	-4 (ix)
	jp	00110$
00112$:
;main.c:1361: cLevel = levels_b[l];
	ld	a,#<(_levels_b)
	add	a,-11 (ix)
	ld	c,a
	ld	a,#>(_levels_b)
	adc	a,-10 (ix)
	ld	h, a
	ld	l, c
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	-2 (ix), a
	ld	-1 (ix),h
;main.c:1362: while (*(cLevel+offset)!=255) // Tant qu'on à pas finit de lire le paramétrage du level courant
	ld	-3 (ix),#0x00
	ld	-4 (ix),#0x00
00113$:
	ld	a,-2 (ix)
	add	a,-3 (ix)
	ld	e,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	b,a
	inc	a
	jr	Z,00115$
;main.c:1364: put_frame0(&bombGfx,*(cLevel+offset),*(cLevel+offset+1),2,2);
	ld	hl,#0x0001
	add	hl,de
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	c,(hl)
	push	de
	ld	hl,#0x0202
	push	hl
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_bombGfx
	push	hl
	call	_put_frame0
	pop	af
	pop	af
	pop	af
	pop	de
;main.c:1365: createBomb(j,*(cLevel+offset),*(cLevel+offset+1),BOMB_NORMAL);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	c,(hl)
	ld	a,(de)
	ld	b,a
	ld	a,#0x01
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	call	_createBomb
	pop	af
	pop	af
;main.c:1366: nbBombLevel++;
	ld	iy,#_nbBombLevel
	inc	0 (iy)
;main.c:1367: offset+=2;
	inc	-3 (ix)
	inc	-3 (ix)
;main.c:1368: j++;
	inc	-4 (ix)
	jr	00113$
00115$:
;main.c:1370: bombeAllumeeNiveau=0;
	ld	hl,#_bombeAllumeeNiveau + 0
	ld	(hl), #0x00
;main.c:1372: createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x01
	push	hl
	ld	hl,#0x0120
	push	hl
	ld	a,#0xC8
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
;main.c:1373: initObstacle();
	call	_initObstacle
;main.c:1374: for (i=0; i<32; i++)
	ld	c,#0x00
00137$:
	ld	a,c
	sub	a,#0x20
	jr	NC,00140$
;main.c:1375: for (j=0; j<24; j++)
	ld	a,#0x02
	sub	a,c
	ld	a,#0x00
	rla
	ld	b,a
	ld	a,c
	sub	a,#0x1D
	ld	a,#0x00
	rla
	ld	e,a
	ld	d,#0x00
00133$:
	ld	a,d
	sub	a,#0x18
	jr	NC,00139$
;main.c:1377: if (get_char_protected(i,j)>247) setObstacle(i,j);
	push	bc
	push	de
	push	de
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_get_char_protected
	pop	af
	pop	de
	pop	bc
	ld	a,#0xF7
	sub	a,l
	jr	NC,00117$
	push	bc
	push	de
	push	de
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_setObstacle
	pop	af
	pop	de
	pop	bc
00117$:
;main.c:1378: if ((i<=2) || (i>=29)) setObstacle(i,j);
	xor	a,a
	or	a,b
	jr	Z,00118$
	xor	a,a
	or	a,e
	jr	NZ,00135$
00118$:
	push	bc
	push	de
	push	de
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_setObstacle
	pop	af
	pop	de
	pop	bc
00135$:
;main.c:1375: for (j=0; j<24; j++)
	inc	d
	jr	00133$
00139$:
;main.c:1374: for (i=0; i<32; i++)
	inc	c
	jr	00137$
00140$:
;main.c:1381: enable_nmi();
	call	_enable_nmi
;main.c:1382: screen_on();
	call	_screen_on
	ld	sp,ix
	pop	ix
	ret
_drawLevel_end::
;main.c:1393: void init_allumeBombe(void)
;	---------------------------------
; Function init_allumeBombe
; ---------------------------------
_init_allumeBombe_start::
_init_allumeBombe:
;main.c:1396: for (k=0; k<MAXBOMB; k++)
	ld	bc,#0x0000
00104$:
	ld	a,c
	sub	a,#0x1E
	ret	NC
;main.c:1400: if ((bombeAllumeeNiveau==0) && (bomb[k].allume==BOMB_NORMAL))
	xor	a,a
	ld	iy,#_bombeAllumeeNiveau
	or	a,0 (iy)
	jr	NZ,00106$
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,(de)
	sub	a,#0x01
	jr	NZ,00106$
;main.c:1402: bomb[k].allume=BOMB_ALLUME;
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	inc	de
	ld	a,#0x02
	ld	(de),a
;main.c:1403: bombeAllumeeNiveau=1;   /* Il y à une bombe allumée dans le niveau */
	ld	0 (iy),#0x01
;main.c:1404: sprites[SPRITE_ETINCELLE].x = (bomb[k].x<<3)-1;
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	rlca
	rlca
	rlca
	and	a,#0xF8
	dec	a
	ld	(#0x0025 + _sprites),a
;main.c:1405: sprites[SPRITE_ETINCELLE].y = (bomb[k].y<<3)-2;
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	d,a
	inc	de
	ld	a,(de)
	rlca
	rlca
	rlca
	and	a,#0xF8
	add	a,#0xFE
	ld	(#0x0024 + _sprites),a
00106$:
;main.c:1396: for (k=0; k<MAXBOMB; k++)
	inc	b
	inc	b
	inc	b
	inc	c
	jr	00104$
_init_allumeBombe_end::
;main.c:1410: void checkBombCollision(void)
;	---------------------------------
; Function checkBombCollision
; ---------------------------------
_checkBombCollision_start::
_checkBombCollision:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;main.c:1419: redraw = 0;
	ld	-2 (ix),#0x00
;main.c:1422: for (i=0; i<MAXBOMB; i++)
	ld	-1 (ix),#0x00
	ld	de,#0x0000
00115$:
	ld	a,-1 (ix)
	sub	a,#0x1E
	jp	NC,00118$
;main.c:1425: myBomb = &bomb[i];
	ld	a,#<(_bomb)
	add	a,e
	ld	l, a
	ld	a, #>(_bomb)
	adc	a, #0x00
	ld	h, a
;main.c:1427: myBomb_allume = &myBomb->allume;
	ld	a,l
	add	a,#0x02
	ld	-4 (ix),a
	ld	a,h
	adc	a,#0x00
	ld	-3 (ix),a
;main.c:1430: if (((*myBomb_allume)==BOMB_NORMAL) || ((*myBomb_allume)==BOMB_ALLUME))
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l,(hl)
	ld	a,l
	cp	a,#0x01
	jr	Z,00112$
	sub	a,#0x02
	jp	NZ,00117$
00112$:
;main.c:1433: if (isCollision(sprites[PLAYER_CORPS].x+4,sprites[PLAYER_CORPS].y+4,8,8,(bomb[i].x<<3)+4,(bomb[i].y<<3)+4,8,8)==S_TRUE)
	ld	a,#<(_bomb)
	add	a,d
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	inc	bc
	ld	a,(bc)
	rlca
	rlca
	rlca
	and	a,#0xF8
	add	a,#0x04
	ld	-5 (ix),a
	ld	a,#<(_bomb)
	add	a,d
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	c, a
	inc	c
	inc	c
	inc	c
	inc	c
	ld	a,(#_sprites)
	add	a,#0x04
	ld	-6 (ix),a
	ld	hl,#0x0001 + _sprites
	ld	b, (hl)
	inc	b
	inc	b
	inc	b
	inc	b
	push	de
	ld	hl,#0x0808
	push	hl
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	l, #0x08
	push	hl
	ld	a,-6 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_isCollision
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	ld	a,l
;main.c:1435: startsfxPrio(sfx_catch,0);
	sub	a,#0x01
	jp	NZ,00117$
	push	af
	inc	sp
	ld	hl,#_sfx_catch
	push	hl
	call	_startsfxPrio
	pop	af
	inc	sp
;main.c:1436: if ((*myBomb_allume)==BOMB_NORMAL) {player.score++;perfect=0;}
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,(hl)
	ld	a,e
	sub	a,#0x01
	jr	NZ,00102$
	ld	hl,#0x000d + _player
	ld	a,(hl)
	inc	hl
	ld	b, (hl)
	ld	c, a
	inc	bc
	ld	hl,#0x000d + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#_perfect + 0
	ld	(hl), #0x00
00102$:
;main.c:1437: if ((*myBomb_allume)==BOMB_ALLUME) player.score+=10;
	ld	a,e
	sub	a,#0x02
	jr	NZ,00147$
	ld	a,#0x01
	jr	00148$
00147$:
	xor	a,a
00148$:
	ld	e,a
	or	a,a
	jr	Z,00104$
	ld	hl,#0x000d + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	add	a,#0x0A
	ld	c,a
	ld	a,h
	adc	a,#0x00
	ld	b,a
	ld	hl,#0x000d + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00104$:
;main.c:1440: nbBombLevel--;
	ld	iy,#_nbBombLevel
	dec	0 (iy)
;main.c:1442: redraw = 1;
	ld	-2 (ix),#0x01
;main.c:1445: if ((*myBomb_allume)==BOMB_ALLUME) 	bombeAllumeeNiveau=0;
	xor	a,a
	or	a,e
	jr	Z,00106$
	ld	hl,#_bombeAllumeeNiveau + 0
	ld	(hl), #0x00
00106$:
;main.c:1448: (*myBomb_allume) = BOMB_DETRUIT;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0xFF
;main.c:1451: for (k=0; k<MAXBOMB; k++)
	ld	d,#0x00
	ld	e,#0x00
00121$:
	ld	a,d
	sub	a,#0x1E
	jr	NC,00118$
;main.c:1455: if ((bombeAllumeeNiveau==0) && (bomb[k].allume==BOMB_NORMAL))
	xor	a,a
	ld	iy,#_bombeAllumeeNiveau
	or	a,0 (iy)
	jr	NZ,00123$
	ld	a,#<(_bomb)
	add	a,e
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	inc	bc
	inc	bc
	ld	a,(bc)
	sub	a,#0x01
	jr	NZ,00123$
;main.c:1457: bomb[k].allume=BOMB_ALLUME;
	ld	a,#<(_bomb)
	add	a,e
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	inc	bc
	inc	bc
	ld	a,#0x02
	ld	(bc),a
;main.c:1458: bombeAllumeeNiveau=1;   /* Il y à une bombe allumée dans le niveau */
	ld	0 (iy),#0x01
;main.c:1459: sprites[SPRITE_ETINCELLE].x = (bomb[k].x<<3)-1;
	ld	a,#<(_bomb)
	add	a,e
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	rlca
	rlca
	rlca
	and	a,#0xF8
	dec	a
	ld	(#0x0025 + _sprites),a
;main.c:1460: sprites[SPRITE_ETINCELLE].y = (bomb[k].y<<3)-2;
	ld	a,#<(_bomb)
	add	a,e
	ld	c,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	b,a
	inc	bc
	ld	a,(bc)
	rlca
	rlca
	rlca
	and	a,#0xF8
	add	a,#0xFE
	ld	(#0x0024 + _sprites),a
00123$:
;main.c:1451: for (k=0; k<MAXBOMB; k++)
	inc	e
	inc	e
	inc	e
	inc	d
	jr	00121$
;main.c:1464: break;
00117$:
;main.c:1422: for (i=0; i<MAXBOMB; i++)
	inc	e
	inc	e
	inc	e
	inc	d
	inc	d
	inc	d
	inc	-1 (ix)
	jp	00115$
00118$:
;main.c:1468: if (redraw==1) nmi_renderBomb = 1;
	ld	a,-2 (ix)
	sub	a,#0x01
	jr	NZ,00125$
	ld	hl,#_nmi_renderBomb + 0
	ld	(hl), #0x01
00125$:
	ld	sp,ix
	pop	ix
	ret
_checkBombCollision_end::
;main.c:1471: void controlPlayer(void)
;	---------------------------------
; Function controlPlayer
; ---------------------------------
_controlPlayer_start::
_controlPlayer:
;main.c:1473: sprite_t *mySprite = &sprites[PLAYER_CORPS];
;main.c:1474: byte	*mySprite_x = &mySprite->x;
;main.c:1475: byte	*mySprite_y = &mySprite->y;
;main.c:1476: byte	*mySprite_pattern = &mySprite->pattern;
;main.c:1482: player.posx = player.posx + player.move;
	ld	hl,#0x0004 + _player
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#0x0004 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
;main.c:1487: if ( collision_pied > 0 )
	xor	a,a
	ld	iy,#_collision_pied
	or	a,0 (iy)
	jr	Z,00104$
;main.c:1489: player.posy = ((collision_pied<<3)-16)<<4; // Reste collé au sol
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	a,l
	add	a,#0xF0
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	b, a
	ld	c, l
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x0006 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
;main.c:1491: player.vel=0;   // Vélocitée à 0 forcément
	ld	hl,#_player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;main.c:1492: player.etat=AUSOL;	// On est donc au sol
	ld	hl,#0x000a + _player
	ld	(hl),#0x00
	jr	00105$
00104$:
;main.c:1500: player.etat=ENLAIR;
	ld	hl,#0x000a + _player
	ld	(hl),#0x01
;main.c:1501: if (player.dontmovey<1)
	inc	hl
	ld	a, (hl)
	sub	a,#0x01
	jr	NC,00105$
;main.c:1503: player.posy = player.posy - player.vel;
	ld	hl,#0x0006 + _player
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,c
	sub	a,l
	ld	c,a
	ld	a,b
	sbc	a,h
	ld	b,a
	ld	hl,#0x0006 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
;main.c:1504: player.vel = player.vel - GRAV;
	ld	hl,#_player
	ld	a,(hl)
	inc	hl
	ld	b, (hl)
	ld	c, a
	dec	bc
	ld	hl,#_player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00105$:
;main.c:1509: if ((*mySprite_y)<10)
	ld	a,(#_sprites)
	sub	a,#0x0A
	jr	NC,00107$
;main.c:1511: player.vel=0;/*(*mySprite_y)=10;*/player.posy=10<<4;
	ld	hl,#_player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ld	hl,#0x0006 + _player
	ld	(hl),#0xA0
	inc	hl
	ld	(hl),#0x00
00107$:
;main.c:1515: if (collision_tete>0)
	xor	a,a
	ld	iy,#_collision_tete
	or	a,0 (iy)
	jr	Z,00109$
;main.c:1517: player.vel=0;/*(*mySprite_y)=((collision_tete<<3)+8);*/player.posy=((collision_tete<<3)+8)<<4;
	ld	hl,#_player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	bc, #0x0008
	add	hl,bc
	ld	c, l
	ld	b, h
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x0006 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00109$:
;main.c:1520: pl_fire = joypad_1;
	ld	hl,#_joypad_1 + 0
	ld	c,(hl)
;main.c:1523: if ((((pl_fire&FIRE1) || (pl_fire&FIRE2))) && (collision_tete==0))
	ld	a,c
	and	a,#0x80
	ld	b,a
	or	a,a
	jr	NZ,00113$
	ld	a,c
	and	a,#0x40
	jr	Z,00111$
00113$:
	xor	a,a
	ld	hl,#_collision_tete + 0
	or	a,(hl)
	jr	NZ,00111$
;main.c:1525: action = SAUT;
	ld	hl,#_action + 0
	ld	(hl), #0x01
;main.c:1527: (*mySprite_pattern) = SPATTERN0;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x00
00111$:
;main.c:1530: if ((!(pl_fire&FIRE1)) && !((pl_fire&FIRE2)))
	xor	a,a
	or	a,b
	jr	NZ,00115$
	ld	a,c
	and	a,#0x40
	jr	NZ,00115$
;main.c:1532: action = NOACTION;
	ld	hl,#_action + 0
	ld	(hl), #0x00
;main.c:1533: keyPressTimer=0;
	ld	hl,#_keyPressTimer + 0
	ld	(hl), #0x00
00115$:
;main.c:1538: if ( (action==SAUT) && (keyPressTimer==0) )
	ld	a,(#_action + 0)
	sub	a,#0x01
	jp	NZ,00138$
	xor	a,a
	ld	hl,#_keyPressTimer + 0
	or	a,(hl)
	jp	NZ,00138$
;main.c:1541: if (player.etat==AUSOL)
	ld	a,(#0x000a + _player)
;main.c:1543: startsfxPrio(sfx_jump,0);
	or	a,a
	jr	NZ,00135$
	push	bc
	push	af
	inc	sp
	ld	hl,#_sfx_jump
	push	hl
	call	_startsfxPrio
	pop	af
	inc	sp
	pop	bc
;main.c:1544: player.posy-=32;
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	add	a,#0xE0
	ld	e,a
	ld	a,h
	adc	a,#0xFF
	ld	d,a
	ld	hl,#0x0006 + _player
	ld	(hl),e
	inc	hl
	ld	(hl),d
;main.c:1545: if (control==0)
	xor	a,a
	ld	hl,#_control + 0
	or	a,(hl)
	jr	NZ,00121$
;main.c:1547: if (pl_fire&UP)
	ld	a,c
	and	a,#0x01
	jr	Z,00118$
;main.c:1549: player.vel=4<<4;
	ld	hl,#_player
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0x00
	jr	00121$
00118$:
;main.c:1551: else player.vel=3<<4;
	ld	hl,#_player
	ld	(hl),#0x30
	inc	hl
	ld	(hl),#0x00
00121$:
;main.c:1553: if (control!=0)
	xor	a,a
	ld	hl,#_control + 0
	or	a,(hl)
	jr	Z,00126$
;main.c:1555: if (pl_fire&FIRE2)
	ld	a,c
	and	a,#0x40
	jr	Z,00123$
;main.c:1557: player.vel=4<<4;
	ld	hl,#_player
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0x00
	jr	00126$
00123$:
;main.c:1559: else player.vel=3<<4;
	ld	hl,#_player
	ld	(hl),#0x30
	inc	hl
	ld	(hl),#0x00
00126$:
;main.c:1561: keyPressTimer=1;
	ld	hl,#_keyPressTimer + 0
	ld	(hl), #0x01
;main.c:1562: player.etat=ENLAIR;
	ld	hl,#0x000a + _player
	ld	(hl),#0x01
	jr	00138$
00135$:
;main.c:1564: else if (player.etat==ENLAIR) /* Si on était en l'air, on va stopper le saut */
	ld	a,(#0x000a + _player)
;main.c:1566: startsfxPrio(sfx_stationaire,0);
	sub	a,#0x01
	jr	NZ,00138$
	push	af
	inc	sp
	ld	hl,#_sfx_stationaire
	push	hl
	call	_startsfxPrio
	pop	af
	inc	sp
;main.c:1568: if (player.vel>0)
	ld	hl,#_player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x00
	sub	a,l
	ld	a,#0x00
	sbc	a,h
	jp	PO,00266$
	xor	a,#0x80
00266$:
	jp	P,00128$
;main.c:1570: player.vel=0;
	ld	hl,#_player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00128$:
;main.c:1572: if ( (player.vel<0) && (player.dontmovey==0) )
	ld	hl,#_player
	inc	hl
	ld	a, (hl)
	bit	7,a
	jr	Z,00138$
	ld	hl,#0x000b + _player
	ld	a,(hl)
	or	a,a
	jr	NZ,00138$
;main.c:1574: player.dontmovey=10;
	ld	(hl),#0x0A
;main.c:1575: keyPressTimer=1;
	ld	hl,#_keyPressTimer + 0
	ld	(hl), #0x01
00138$:
;main.c:1582: if (player.dontmovey>0)
	ld	hl,#0x000b + _player
	ld	a,(hl)
	or	a,a
	jr	Z,00141$
;main.c:1584: player.dontmovey--;
	ld	a, (hl)
	dec	a
	ld	(#0x000b + _player),a
00141$:
;main.c:1588: if (player.move>0) player.move-=2;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x00
	sub	a,l
	ld	a,#0x00
	sbc	a,h
	jp	PO,00267$
	xor	a,#0x80
00267$:
	jp	P,00145$
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	b, (hl)
	ld	c, a
	dec	bc
	dec	bc
	ld	hl,#0x0008 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00146$
00145$:
;main.c:1589: else if (player.move<0) player.move+=2;
	ld	hl,#0x0008 + _player
	inc	hl
	ld	a, (hl)
	bit	7,a
	jr	Z,00146$
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	b, (hl)
	ld	c, a
	inc	bc
	inc	bc
	ld	hl,#0x0008 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00146$:
;main.c:1591: if ( (collision_droite!=0) && !(joypad_1&LEFT) )
	xor	a,a
	ld	hl,#_collision_droite + 0
	or	a,(hl)
	jr	Z,00148$
	ld	a,(#_joypad_1 + 0)
	and	a,#0x08
	jr	NZ,00148$
;main.c:1593: player.move=0;
	ld	hl,#0x0008 + _player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;main.c:1594: player.posx=((collision_droite<<3)-15)<<4;
	ld	iy,#_collision_droite
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	a,l
	add	a,#0xF1
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	b, a
	ld	c, l
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x0004 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00148$:
;main.c:1596: if ( (collision_gauche!=0) && !(joypad_1&RIGHT))
	xor	a,a
	ld	hl,#_collision_gauche + 0
	or	a,(hl)
	jr	Z,00151$
	ld	a,(#_joypad_1 + 0)
	and	a,#0x02
	jr	NZ,00151$
;main.c:1598: player.move=0;
	ld	hl,#0x0008 + _player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;main.c:1599: player.posx=((collision_gauche<<3)+7)<<4;
	ld	iy,#_collision_gauche
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl,hl
	add	hl,hl
	add	hl,hl
	ld	bc, #0x0007
	add	hl,bc
	ld	c, l
	ld	b, h
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x0004 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
00151$:
;main.c:1603: if (joypad_1&RIGHT)
	ld	a,(#_joypad_1 + 0)
	and	a,#0x02
	jr	Z,00186$
;main.c:1606: if (collision_droite==0) // Si il n'y à pas de collision
	xor	a,a
	ld	hl,#_collision_droite + 0
	or	a,(hl)
	jp	NZ,00187$
;main.c:1608: player.move+=4;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	add	a,#0x04
	ld	c,a
	ld	a,h
	adc	a,#0x00
	ld	b,a
	ld	hl,#0x0008 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
;main.c:1609: if (player.etat==ENLAIR)
	inc	hl
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00157$
;main.c:1611: if (player.vel>=0) (*mySprite_pattern) = SPATTERN10;
	ld	hl,#_player
	inc	hl
	ld	a, (hl)
	bit	7,a
	jr	NZ,00154$
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x28
	jp	00187$
00154$:
;main.c:1612: else (*mySprite_pattern) = SPATTERN2;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x08
	jp	00187$
00157$:
;main.c:1614: else (*mySprite_pattern) = SPATTERN4 + timerAnimation;
	ld	a,(#_timerAnimation + 0)
	add	a,#0x10
	ld	(#0x0002 + _sprites),a
	jp	00187$
00186$:
;main.c:1618: if (joypad_1&LEFT)
	ld	a,(#_joypad_1 + 0)
	and	a,#0x08
	jr	Z,00183$
;main.c:1620: if (collision_gauche==0) // Si il n'y à pas de collision
	xor	a,a
	ld	hl,#_collision_gauche + 0
	or	a,(hl)
	jp	NZ,00187$
;main.c:1622: player.move-=4;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	add	a,#0xFC
	ld	c,a
	ld	a,h
	adc	a,#0xFF
	ld	b,a
	ld	hl,#0x0008 + _player
	ld	(hl),c
	inc	hl
	ld	(hl),b
;main.c:1623: if (player.etat==ENLAIR)
	inc	hl
	ld	a, (hl)
	sub	a,#0x01
	jr	NZ,00165$
;main.c:1625: if (player.vel>=0) (*mySprite_pattern) = SPATTERN11;
	ld	hl,#_player
	inc	hl
	ld	a, (hl)
	bit	7,a
	jr	NZ,00162$
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x2C
	jr	00187$
00162$:
;main.c:1626: else (*mySprite_pattern) = SPATTERN3;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x0C
	jr	00187$
00165$:
;main.c:1628: else (*mySprite_pattern) = SPATTERN7 + timerAnimation;
	ld	a,(#_timerAnimation + 0)
	add	a,#0x1C
	ld	(#0x0002 + _sprites),a
	jr	00187$
00183$:
;main.c:1635: if (player.move!=0)
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	or	a,(hl)
	jr	Z,00175$
;main.c:1637: if (collision_gauche!=0)
	xor	a,a
	ld	hl,#_collision_gauche + 0
	or	a,(hl)
	jr	Z,00172$
;main.c:1639: player.move=0;
	ld	hl,#0x0008 + _player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jr	00175$
00172$:
;main.c:1641: else if (collision_droite!=0)
	xor	a,a
	ld	hl,#_collision_droite + 0
	or	a,(hl)
	jr	Z,00175$
;main.c:1643: player.move=0;
	ld	hl,#0x0008 + _player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00175$:
;main.c:1647: if (player.etat==AUSOL) (*mySprite_pattern) = SPATTERN0;
	ld	a,(#0x000a + _player)
	or	a,a
	jr	NZ,00180$
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x00
	jr	00187$
00180$:
;main.c:1650: if (player.vel<0) (*mySprite_pattern) = SPATTERN1;
	ld	hl,#_player
	inc	hl
	ld	a, (hl)
	bit	7,a
	jr	Z,00177$
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x04
	jr	00187$
00177$:
;main.c:1651: else (*mySprite_pattern) = SPATTERN0;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x00
00187$:
;main.c:1656: if (player.etat==AUSOL)
	ld	hl,#0x000a + _player
	ld	a,(hl)
	or	a,a
	jr	NZ,00199$
;main.c:1658: if (player.move>36) player.move = 36;
	dec	hl
	dec	hl
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x24
	sub	a,l
	ld	a,#0x00
	sbc	a,h
	jp	PO,00282$
	xor	a,#0x80
00282$:
	jp	P,00191$
	ld	hl,#0x0008 + _player
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
	jr	00200$
00191$:
;main.c:1659: else if (player.move<-36) player.move = -36;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	sub	a,#0xDC
	ld	a,h
	sbc	a,#0xFF
	jp	PO,00283$
	xor	a,#0x80
00283$:
	jp	P,00200$
	ld	hl,#0x0008 + _player
	ld	(hl),#0xDC
	inc	hl
	ld	(hl),#0xFF
	jr	00200$
00199$:
;main.c:1663: if (player.move>25) player.move = 25;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x19
	sub	a,l
	ld	a,#0x00
	sbc	a,h
	jp	PO,00284$
	xor	a,#0x80
00284$:
	jp	P,00196$
	ld	hl,#0x0008 + _player
	ld	(hl),#0x19
	inc	hl
	ld	(hl),#0x00
	jr	00200$
00196$:
;main.c:1664: else if (player.move<-25) player.move = -25;
	ld	hl,#0x0008 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	sub	a,#0xE7
	ld	a,h
	sbc	a,#0xFF
	jp	PO,00285$
	xor	a,#0x80
00285$:
	jp	P,00200$
	ld	hl,#0x0008 + _player
	ld	(hl),#0xE7
	inc	hl
	ld	(hl),#0xFF
00200$:
;main.c:1667: if (player.posx>3472) player.posx=3472;
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,#0x90
	sub	a,l
	ld	a,#0x0D
	sbc	a,h
	jr	NC,00202$
	ld	hl,#0x0004 + _player
	ld	(hl),#0x90
	inc	hl
	ld	(hl),#0x0D
00202$:
;main.c:1668: if (player.posx<368) player.posx=368;
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	sub	a,#0x70
	ld	a,h
	sbc	a,#0x01
	jr	NC,00204$
	ld	hl,#0x0004 + _player
	ld	(hl),#0x70
	inc	hl
	ld	(hl),#0x01
00204$:
;main.c:1671: (*mySprite_x) = player.posx>>4;
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	(#0x0001 + _sprites),a
;main.c:1672: (*mySprite_y) = player.posy>>4;
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	(#_sprites),a
;main.c:1674: sprites[PLAYER_VISAGE].x = (player.posx>>4);
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	(#0x0005 + _sprites),a
;main.c:1675: sprites[PLAYER_VISAGE].y = (player.posy>>4);
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	hl,#0x0004 + _sprites
	ld	(hl),a
;main.c:1676: sprites[PLAYER_VISAGE].pattern = (*mySprite_pattern)+(12<<2);
	dec	hl
	dec	hl
	ld	c,(hl)
	ld	a,c
	add	a,#0x30
	ld	(#0x0006 + _sprites),a
;main.c:1678: sprites[PLAYER_CAPE].x = (player.posx>>4);
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	(#0x0009 + _sprites),a
;main.c:1679: sprites[PLAYER_CAPE].y = (player.posy>>4);
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a,l
	ld	hl,#0x0008 + _sprites
	ld	(hl),a
;main.c:1680: sprites[PLAYER_CAPE].pattern = (*mySprite_pattern)+(24<<2);
	ld	a,c
	add	a,#0x60
	inc	hl
	inc	hl
	ld	(hl),a
	ret
_controlPlayer_end::
;main.c:1689: void reinit()
;	---------------------------------
; Function reinit
; ---------------------------------
_reinit_start::
_reinit:
;main.c:1693: oddNmi = 0;
	ld	hl,#_oddNmi + 0
	ld	(hl), #0x00
;main.c:1694: odd = 0;
	ld	hl,#_odd + 0
	ld	(hl), #0x00
;main.c:1695: keyPressTimer = 0;
	ld	hl,#_keyPressTimer + 0
	ld	(hl), #0x00
;main.c:1696: timer=0;
	ld	hl,#_timer + 0
	ld	(hl), #0x00
;main.c:1697: timerInterne=0;
	ld	hl,#_timerInterne + 0
	ld	(hl), #0x00
;main.c:1698: timerAnimation=0;
	ld	hl,#_timerAnimation + 0
	ld	(hl), #0x00
;main.c:1699: timerAnimation3=0;
	ld	hl,#_timerAnimation3 + 0
	ld	(hl), #0x00
;main.c:1701: nmiCol_Global = 0;
	ld	hl,#_nmiCol_Global + 0
	ld	(hl), #0x00
;main.c:1702: bonusEnCours = 0;
	ld	hl,#_bonusEnCours + 0
	ld	(hl), #0x00
;main.c:1703: ennBonus=0;
	ld	iy,#_ennBonus
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;main.c:1704: action = NOACTION;
	ld	hl,#_action + 0
	ld	(hl), #0x00
;main.c:1706: collision_pied = 0;
	ld	hl,#_collision_pied + 0
	ld	(hl), #0x00
;main.c:1707: collision_tete = 0;
	ld	hl,#_collision_tete + 0
	ld	(hl), #0x00
;main.c:1708: collision_droite = 0;
	ld	hl,#_collision_droite + 0
	ld	(hl), #0x00
;main.c:1709: collision_gauche = 0;
	ld	hl,#_collision_gauche + 0
	ld	(hl), #0x00
;main.c:1711: player.vel = 0.2*16;
	ld	hl,#_player
	ld	(hl),#0x03
	inc	hl
	ld	(hl),#0x00
;main.c:1712: player.vel_cst = (12*16);
	ld	hl,#0x0002 + _player
	ld	(hl),#0xC0
	inc	hl
	ld	(hl),#0x00
;main.c:1713: player.posx = (128-8)*16;
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x07
;main.c:1714: player.posy = 168*16;
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x0A
;main.c:1715: player.move = 0;
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;main.c:1717: tmpx = player.posx>>4;
	ld	hl,#0x0004 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	c,l
;main.c:1718: tmpy = player.posy>>4;
	ld	hl,#0x0006 + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	b,l
;main.c:1720: sprites[PLAYER_CORPS].pattern = SPATTERN0;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x00
;main.c:1721: sprites[PLAYER_CORPS].x = tmpx;
	dec	hl
	ld	(hl),c
;main.c:1722: sprites[PLAYER_CORPS].y = tmpy;
	ld	hl,#_sprites
	ld	(hl),b
;main.c:1723: sprites[PLAYER_CORPS].colour = PLAYER_CORPS_COLOR;
	ld	hl,#0x0003 + _sprites
	ld	(hl),#0x04
;main.c:1725: sprites[PLAYER_VISAGE].x = tmpx;
	inc	hl
	inc	hl
	ld	(hl),c
;main.c:1726: sprites[PLAYER_VISAGE].y = tmpy;
	dec	hl
	ld	(hl),b
;main.c:1727: sprites[PLAYER_VISAGE].colour = PLAYER_VISAGE_COLOR;
	ld	hl,#0x0007 + _sprites
	ld	(hl),#0x0F
;main.c:1729: sprites[PLAYER_CAPE].x = tmpx;
	inc	hl
	inc	hl
	ld	(hl),c
;main.c:1730: sprites[PLAYER_CAPE].y = tmpy;
	dec	hl
	ld	(hl),b
;main.c:1731: sprites[PLAYER_CAPE].colour = PLAYER_CAPE_COLOR;
	ld	hl,#0x000b + _sprites
	ld	(hl),#0x08
;main.c:1733: sprites[SPRITE_ETINCELLE].y = INVISIBLE;
	ld	hl,#0x0024 + _sprites
	ld	(hl),#0xCB
;main.c:1734: sprites[SPRITE_ETINCELLE].pattern = SPATTERN61;
	inc	hl
	inc	hl
	ld	(hl),#0xF4
;main.c:1735: sprites[SPRITE_ETINCELLE].colour = 0;
	inc	hl
	ld	(hl),#0x00
;main.c:1737: player.dontmovey=0;
	ld	hl,#0x000b + _player
	ld	(hl),#0x00
;main.c:1738: bombeAllumeeNiveau=0;
	ld	hl,#_bombeAllumeeNiveau + 0
	ld	(hl), #0x00
	ret
_reinit_end::
;main.c:1741: void init()
;	---------------------------------
; Function init
; ---------------------------------
_init_start::
_init:
;main.c:1743: initSprites();
	call	_initSprites
;main.c:1744: reinit();
	call	_reinit
;main.c:1745: currentLevel=1;
	ld	hl,#_currentLevel + 0
	ld	(hl), #0x01
	ret
_init_end::
;main.c:1748: void show_bomb_tileset()
;	---------------------------------
; Function show_bomb_tileset
; ---------------------------------
_show_bomb_tileset_start::
_show_bomb_tileset:
;main.c:1750: pletter(tileset_color,coltab+(244*8));
	ld	hl,#0x27A0
	push	hl
	ld	hl,#_tileset_color
	push	hl
	call	_pletter
	pop	af
;main.c:1751: pletter(tileset_color,coltab+2048+(244*8));
	ld	hl,#0x2FA0
	ex	(sp),hl
	ld	hl,#_tileset_color
	push	hl
	call	_pletter
	pop	af
;main.c:1752: pletter(tileset_color,coltab+4096+(244*8));
	ld	hl,#0x37A0
	ex	(sp),hl
	ld	hl,#_tileset_color
	push	hl
	call	_pletter
	pop	af
;main.c:1754: pletter(tileset_pattern,chrgen+(244*8));
	ld	hl,#0x07A0
	ex	(sp),hl
	ld	hl,#_tileset_pattern
	push	hl
	call	_pletter
	pop	af
;main.c:1755: pletter(tileset_pattern,chrgen+2048+(244*8));
	ld	hl,#0x0FA0
	ex	(sp),hl
	ld	hl,#_tileset_pattern
	push	hl
	call	_pletter
	pop	af
;main.c:1756: pletter(tileset_pattern,chrgen+4096+(244*8));
	ld	hl,#0x17A0
	ex	(sp),hl
	ld	hl,#_tileset_pattern
	push	hl
	call	_pletter
	pop	af
	pop	af
	ret
_show_bomb_tileset_end::
;main.c:1761: void showFond(byte l)
;	---------------------------------
; Function showFond
; ---------------------------------
_showFond_start::
_showFond:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:1764: SWITCH_IN_BANK0
	ld	a,(#0xFFFC)
	ld	(#_dummy + 0),a
;main.c:1765: if ((lvlgfx)==5)
	ld	a,(#_lvlgfx + 0)
	sub	a,#0x05
	jp	NZ,00111$
;main.c:1767: LoadPatternAndshowAScreenPLE(FOND5_PATTERNRLE,FOND5_COLORRLE,FOND5_NAMERLE);
	ld	hl,#_FOND5_NAMERLE
	push	hl
	ld	hl,#_FOND5_COLORRLE
	push	hl
	ld	hl,#_FOND5_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
;main.c:1768: show_bomb_tileset();
	call	_show_bomb_tileset
;main.c:1770: put_vram_pattern(coltab+(244*8),bombL5C244P1,8,1);
	ld	hl,#0x0001
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C244P1
	push	hl
	ld	hl,#0x27A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1771: put_vram_pattern(coltab+(245*8),bombL5C245P1,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C245P1
	push	hl
	ld	hl,#0x27A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1773: put_vram_pattern(coltab+(244*8)+2048,bombL5C244P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C244P2
	push	hl
	ld	hl,#0x2FA0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1774: put_vram_pattern(coltab+(245*8)+2048,bombL5C245P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C245P2
	push	hl
	ld	hl,#0x2FA8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1776: put_vram_pattern(coltab+(244*8)+4096,bombL5C244P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C244P3
	push	hl
	ld	hl,#0x37A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1777: put_vram_pattern(coltab+(245*8)+4096,bombL5C245P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL5C245P3
	push	hl
	ld	hl,#0x37A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
	jp	00112$
00111$:
;main.c:1779: else if ((lvlgfx)==2)
	ld	a,(#_lvlgfx + 0)
	sub	a,#0x02
	jp	NZ,00108$
;main.c:1782: LoadPatternAndshowAScreenPLE(FOND4_PATTERNRLE,FOND4_COLORRLE,FOND4_NAMERLE);
	ld	hl,#_FOND4_NAMERLE
	push	hl
	ld	hl,#_FOND4_COLORRLE
	push	hl
	ld	hl,#_FOND4_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
;main.c:1783: show_bomb_tileset();
	call	_show_bomb_tileset
;main.c:1785: put_vram_pattern(coltab+(244*8),bombL4C244P1,8,1);
	ld	hl,#0x0001
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C244P1
	push	hl
	ld	hl,#0x27A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1786: put_vram_pattern(coltab+(245*8),bombL4C245P1,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C245P1
	push	hl
	ld	hl,#0x27A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1788: put_vram_pattern(coltab+(244*8)+2048,bombL4C244P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C244P2
	push	hl
	ld	hl,#0x2FA0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1789: put_vram_pattern(coltab+(245*8)+2048,bombL4C245P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C245P2
	push	hl
	ld	hl,#0x2FA8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1791: put_vram_pattern(coltab+(244*8)+4096,bombL4C244P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C244P3
	push	hl
	ld	hl,#0x37A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1792: put_vram_pattern(coltab+(245*8)+4096,bombL4C245P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL4C245P3
	push	hl
	ld	hl,#0x37A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
	jp	00112$
00108$:
;main.c:1796: else if ((lvlgfx)==1)
	ld	a,(#_lvlgfx + 0)
	sub	a,#0x01
	jp	NZ,00105$
;main.c:1798: LoadPatternAndshowAScreenPLE(FOND3_PATTERNRLE,FOND3_COLORRLE,FOND3_NAMERLE);
	ld	hl,#_FOND3_NAMERLE
	push	hl
	ld	hl,#_FOND3_COLORRLE
	push	hl
	ld	hl,#_FOND3_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
;main.c:1799: show_bomb_tileset();
	call	_show_bomb_tileset
;main.c:1801: put_vram_pattern(coltab+(244*8),bombL3C244P1,8,1);
	ld	hl,#0x0001
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C244P1
	push	hl
	ld	hl,#0x27A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1802: put_vram_pattern(coltab+(245*8),bombL3C245P1,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C245P1
	push	hl
	ld	hl,#0x27A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1804: put_vram_pattern(coltab+(244*8)+2048,bombL3C244P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C244P2
	push	hl
	ld	hl,#0x2FA0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1805: put_vram_pattern(coltab+(245*8)+2048,bombL3C245P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C245P2
	push	hl
	ld	hl,#0x2FA8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1807: put_vram_pattern(coltab+(244*8)+4096,bombL3C244P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C244P3
	push	hl
	ld	hl,#0x37A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1808: put_vram_pattern(coltab+(245*8)+4096,bombL3C245P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL3C245P3
	push	hl
	ld	hl,#0x37A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
	jp	00112$
00105$:
;main.c:1810: else if ((lvlgfx)==4)
	ld	a,(#_lvlgfx + 0)
	sub	a,#0x04
	jp	NZ,00102$
;main.c:1812: LoadPatternAndshowAScreenPLE(FOND2_PATTERNRLE,FOND2_COLORRLE,FOND2_NAMERLE);
	ld	hl,#_FOND2_NAMERLE
	push	hl
	ld	hl,#_FOND2_COLORRLE
	push	hl
	ld	hl,#_FOND2_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
;main.c:1813: show_bomb_tileset();
	call	_show_bomb_tileset
;main.c:1815: put_vram_pattern(coltab+(244*8),bombL2C244P1,8,1);
	ld	hl,#0x0001
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C244P1
	push	hl
	ld	hl,#0x27A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1816: put_vram_pattern(coltab+(245*8),bombL2C245P1,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C245P1
	push	hl
	ld	hl,#0x27A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1818: put_vram_pattern(coltab+(244*8)+2048,bombL2C244P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C244P2
	push	hl
	ld	hl,#0x2FA0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1819: put_vram_pattern(coltab+(245*8)+2048,bombL2C245P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C245P2
	push	hl
	ld	hl,#0x2FA8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1821: put_vram_pattern(coltab+(244*8)+4096,bombL2C244P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C244P3
	push	hl
	ld	hl,#0x37A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1822: put_vram_pattern(coltab+(245*8)+4096,bombL2C245P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL2C245P3
	push	hl
	ld	hl,#0x37A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
	jp	00112$
00102$:
;main.c:1826: LoadPatternAndshowAScreenPLE(FOND1_PATTERNRLE,FOND1_COLORRLE,FOND1_NAMERLE);
	ld	hl,#_FOND1_NAMERLE
	push	hl
	ld	hl,#_FOND1_COLORRLE
	push	hl
	ld	hl,#_FOND1_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
;main.c:1827: show_bomb_tileset();
	call	_show_bomb_tileset
;main.c:1829: put_vram_pattern(coltab+(244*8),bombL1C244P1,8,1);
	ld	hl,#0x0001
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C244P1
	push	hl
	ld	hl,#0x27A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1830: put_vram_pattern(coltab+(245*8),bombL1C245P1,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C245P1
	push	hl
	ld	hl,#0x27A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1832: put_vram_pattern(coltab+(244*8)+2048,bombL1C244P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C244P2
	push	hl
	ld	hl,#0x2FA0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1833: put_vram_pattern(coltab+(245*8)+2048,bombL1C245P2,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C245P2
	push	hl
	ld	hl,#0x2FA8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1835: put_vram_pattern(coltab+(244*8)+4096,bombL1C244P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C244P3
	push	hl
	ld	hl,#0x37A0
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1836: put_vram_pattern(coltab+(245*8)+4096,bombL1C245P3,8,1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_bombL1C245P3
	push	hl
	ld	hl,#0x37A8
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
00112$:
;main.c:1844: lvlgfx++;
	ld	iy,#_lvlgfx
	inc	0 (iy)
;main.c:1845: if (lvlgfx>5) lvlgfx=1;
	ld	a,#0x05
	sub	a,0 (iy)
	jr	NC,00115$
	ld	0 (iy),#0x01
00115$:
	pop	ix
	ret
_showFond_end::
;main.c:1865: void showSprites()
;	---------------------------------
; Function showSprites
; ---------------------------------
_showSprites_start::
_showSprites:
;main.c:1867: nb_source = 32-p_source;
	ld	hl,#_p_source
	push	de
	ld	iy,#_nb_source
	push	iy
	pop	de
	ld	a,#0x20
	sub	a,(hl)
	ld	(de),a
	pop	de
;main.c:1868: put_vram(sprgen,&sprites[p_source],nb_source<<2);
	ld	c,0 (iy)
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	ld	a,(#_p_source + 0)
	add	a,a
	add	a,a
	add	a,#<(_sprites)
	ld	e,a
	ld	a,#>(_sprites)
	adc	a,#0x00
	ld	d,a
	push	bc
	push	de
	ld	hl,#0x1B00
	push	hl
	call	_put_vram
	pop	af
	pop	af
	pop	af
;main.c:1869: if (p_source!=0)
	xor	a,a
	ld	iy,#_p_source
	or	a,0 (iy)
	jr	Z,00102$
;main.c:1870: put_vram(sprgen+(nb_source<<2),sprites,p_source<<2);
	ld	c,0 (iy)
	ld	b,#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	ld	iy,#_nb_source
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl,hl
	add	hl,hl
	ld	e, l
	ld	a,h
	add	a,#0x1B
	ld	d,a
	push	bc
	ld	hl,#_sprites
	push	hl
	push	de
	call	_put_vram
	pop	af
	pop	af
	pop	af
00102$:
;main.c:1872: p_source +=4; // 4 = A priori valeur optimale
	ld	iy,#_p_source
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
;main.c:1873: if (p_source>32) p_source = 0;
	ld	a,#0x20
	sub	a,0 (iy)
	ret	NC
	ld	0 (iy),#0x00
	ret
_showSprites_end::
;main.c:1876: void doAnimationDeath(void)
;	---------------------------------
; Function doAnimationDeath
; ---------------------------------
_doAnimationDeath_start::
_doAnimationDeath:
;main.c:1879: char decal=-1;
	ld	c,#0xFF
;main.c:1881: delay(5);
	push	bc
	ld	hl,#0x0005
	push	hl
	call	_delay
	pop	af
	pop	bc
;main.c:1882: cpt=10;
	ld	b,#0x0A
;main.c:1884: while (sprites[PLAYER_CORPS].y!=0)
00103$:
	ld	a,(#_sprites)
	or	a,a
	ret	Z
;main.c:1886: cpt--;
	dec	b
;main.c:1887: if (cpt==0)
	xor	a,a
	or	a,b
	jr	NZ,00102$
;main.c:1889: cpt = 10;
	ld	b,#0x0A
;main.c:1890: decal = decal * -1;
	xor	a,a
	sbc	a,c
	ld	c,a
00102$:
;main.c:1892: sprites[PLAYER_CORPS].pattern = SPATTERN0;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0x00
;main.c:1893: sprites[PLAYER_VISAGE].pattern = SPATTERN0+(12<<2);
	ld	hl,#0x0006 + _sprites
	ld	(hl),#0x30
;main.c:1895: sprites[PLAYER_CORPS].x += decal;
	ld	a,(#0x0001 + _sprites)
	add	a,c
	ld	(#0x0001 + _sprites),a
;main.c:1896: sprites[PLAYER_CORPS].y--;
	ld	a,(#_sprites)
	dec	a
	ld	(#_sprites),a
;main.c:1897: sprites[PLAYER_VISAGE].x += decal;
	ld	a,(#0x0005 + _sprites)
	add	a,c
	ld	hl,#0x0005 + _sprites
	ld	(hl),a
;main.c:1898: sprites[PLAYER_VISAGE].y-- ;
	dec	hl
	ld	a, (hl)
	dec	a
	ld	(#0x0004 + _sprites),a
;main.c:1899: sprites[PLAYER_CAPE].x += decal;
	ld	a,(#0x0009 + _sprites)
	add	a,c
	ld	hl,#0x0009 + _sprites
	ld	(hl),a
;main.c:1900: sprites[PLAYER_CAPE].y--;
	dec	hl
	ld	a, (hl)
	dec	a
	ld	(#0x0008 + _sprites),a
;main.c:1902: delay(1);
	push	bc
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
	pop	bc
	jr	00103$
_doAnimationDeath_end::
;main.c:1906: void recap(byte i)
;	---------------------------------
; Function recap
; ---------------------------------
_recap_start::
_recap:
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:1908: destroyAllEnnemy();
	call	_destroyAllEnnemy
;main.c:1909: sprites[PLAYER_CORPS].pattern = SPATTERN62;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0xF8
;main.c:1910: sprites[PLAYER_VISAGE].pattern = SPATTERN62;
	ld	hl,#0x0006 + _sprites
	ld	(hl),#0xF8
;main.c:1911: sprites[PLAYER_CAPE].pattern = SPATTERN62;
	ld	hl,#0x000a + _sprites
	ld	(hl),#0xF8
;main.c:1912: delay(1);
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
;main.c:1913: screen_off();
	call	_screen_off
;main.c:1914: disable_nmi();
	call	_disable_nmi
;main.c:1916: SWITCH_IN_BANK0
	ld	a,(#0xFFFC)
	ld	(#_dummy + 0),a
;main.c:1917: LoadPatternAndshowAScreenPLE(FONT_PATTERNRLE,FONT_COLORRLE,FONT_NAMERLE);
	ld	hl,#_FONT_NAMERLE
	push	hl
	ld	hl,#_FONT_COLORRLE
	push	hl
	ld	hl,#_FONT_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
;main.c:1919: put_vram_pattern (coltab+65*8,yellow_font,8,26);
	ld	hl,#0x001A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_yellow_font
	push	hl
	ld	hl,#0x2208
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1920: put_vram_pattern (coltab+2048+65*8,yellow_font,8,26);
	inc	sp
	ld	hl,#0x001A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_yellow_font
	push	hl
	ld	hl,#0x2A08
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1921: put_vram_pattern (coltab+4096+65*8,yellow_font,8,26);
	inc	sp
	ld	hl,#0x001A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_yellow_font
	push	hl
	ld	hl,#0x3208
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1923: put_vram_pattern (coltab+48*8,red_font,8,10);
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_red_font
	push	hl
	ld	hl,#0x2180
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1924: put_vram_pattern (coltab+2048+48*8,red_font,8,10);
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_red_font
	push	hl
	ld	hl,#0x2980
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1925: put_vram_pattern (coltab+4096+48*8,red_font,8,10);
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_red_font
	push	hl
	ld	hl,#0x3180
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
	pop	af
	inc	sp
;main.c:1927: if (i==WORKFLOW_NEXTLEVEL) center_string(9,"GET READY");
	ld	a,4 (ix)
	sub	a,#0x02
	jr	NZ,00111$
	ld	a,#0x01
	jr	00112$
00111$:
	xor	a,a
00112$:
	ld	c,a
	or	a,a
	jr	Z,00102$
	push	bc
	ld	hl,#__str_0
	push	hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
	jr	00103$
00102$:
;main.c:1928: else center_string(9,"GAME OVER");
	push	bc
	ld	hl,#__str_1
	push	hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00103$:
;main.c:1930: center_string(11,"SCORE");
	push	bc
	ld	hl,#__str_2
	push	hl
	ld	a,#0x0B
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
;main.c:1931: center_string(12,str(player.score));
	ld	hl,#0x000d + _player
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	hl
	call	_str
	ex	(sp),hl
	ld	a,#0x0C
	push	af
	inc	sp
	call	_center_string
	inc	sp
	ld	hl,#__str_3
	ex	(sp),hl
	ld	a,#0x0E
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
;main.c:1934: center_string(15,str(player.nblives));
	ld	hl,#0x000f + _player
	ld	l,(hl)
	ld	h,#0x00
	push	bc
	push	hl
	call	_str
	ex	(sp),hl
	ld	a,#0x0F
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	call	_screen_on
	call	_enable_nmi
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
	pop	bc
;main.c:1939: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:1940: stopmusic();
	push	bc
	call	_stopmusic
	pop	bc
;main.c:1941: if (i==WORKFLOW_NEXTLEVEL) {}
	xor	a,a
	or	a,c
	jr	NZ,00106$
;main.c:1942: else startmusic(tune_gameOver,0,LOOP_OFF,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_tune_gameOver
	push	hl
	call	_startmusic
	pop	af
	pop	af
	inc	sp
00106$:
;main.c:1943: pause();
	call	_pause
;main.c:1944: stopmusic();
	call	_stopmusic
;main.c:1945: delay(1);
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
;main.c:1946: reinit();
	call	_reinit
	pop	ix
	ret
_recap_end::
__str_0:
	.ascii "GET READY"
	.db 0x00
__str_1:
	.ascii "GAME OVER"
	.db 0x00
__str_2:
	.ascii "SCORE"
	.db 0x00
__str_3:
	.ascii "BJACK"
	.db 0x00
;main.c:1949: void chooseDiff()
;	---------------------------------
; Function chooseDiff
; ---------------------------------
_chooseDiff_start::
_chooseDiff:
;main.c:1952: sprites[PLAYER_CORPS].pattern = SPATTERN62;
	ld	hl,#0x0002 + _sprites
	ld	(hl),#0xF8
;main.c:1953: sprites[PLAYER_VISAGE].pattern = SPATTERN62;
	ld	hl,#0x0006 + _sprites
	ld	(hl),#0xF8
;main.c:1954: sprites[PLAYER_CAPE].pattern = SPATTERN62;
	ld	hl,#0x000a + _sprites
	ld	(hl),#0xF8
;main.c:1955: stopmusic();
	call	_stopmusic
;main.c:1956: destroyAllEnnemy();
	call	_destroyAllEnnemy
;main.c:1957: delay(1);
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
;main.c:1958: screen_off();
	call	_screen_off
;main.c:1959: disable_nmi();
	call	_disable_nmi
;main.c:1961: SWITCH_IN_BANK0
	ld	a,(#0xFFFC)
	ld	(#_dummy + 0),a
;main.c:1962: if (color_logo==0) LoadPatternAndshowAScreenPLE(TITLE_PATTERNRLE,TITLE_COLORRLE,TITLE_NAMERLE);
	xor	a,a
	ld	hl,#_color_logo + 0
	or	a,(hl)
	jr	NZ,00102$
	ld	hl,#_TITLE_NAMERLE
	push	hl
	ld	hl,#_TITLE_COLORRLE
	push	hl
	ld	hl,#_TITLE_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
	jr	00103$
00102$:
;main.c:1963: else LoadPatternAndshowAScreenPLE(TITLECOLOR_PATTERNRLE,TITLECOLOR_COLORRLE,TITLECOLOR_NAMERLE);
	ld	hl,#_TITLECOLOR_NAMERLE
	push	hl
	ld	hl,#_TITLECOLOR_COLORRLE
	push	hl
	ld	hl,#_TITLECOLOR_PATTERNRLE
	push	hl
	call	_LoadPatternAndshowAScreenPLE
	pop	af
	pop	af
	pop	af
00103$:
;main.c:1965: pletter(FONT_PATTERNRLE,chrgen+2048);
	ld	hl,#0x0800
	push	hl
	ld	hl,#_FONT_PATTERNRLE
	push	hl
	call	_pletter
	pop	af
;main.c:1966: pletter(FONT_PATTERNRLE,chrgen+4096);
	ld	hl,#0x1000
	ex	(sp),hl
	ld	hl,#_FONT_PATTERNRLE
	push	hl
	call	_pletter
	pop	af
;main.c:1968: pletter(FONT_PATTERNRLE,coltab+2048);
	ld	hl,#0x2800
	ex	(sp),hl
	ld	hl,#_FONT_PATTERNRLE
	push	hl
	call	_pletter
	pop	af
;main.c:1969: pletter(FONT_PATTERNRLE,coltab+4096);
	ld	hl,#0x3000
	ex	(sp),hl
	ld	hl,#_FONT_PATTERNRLE
	push	hl
	call	_pletter
	pop	af
;main.c:1971: put_vram_pattern (coltab+2048+65*8,yellow_font,8,26);
	ld	hl,#0x001A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_yellow_font
	push	hl
	ld	hl,#0x2A08
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1972: put_vram_pattern (coltab+4096+65*8,yellow_font,8,26);
	inc	sp
	ld	hl,#0x001A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_yellow_font
	push	hl
	ld	hl,#0x3208
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1974: put_vram_pattern (coltab+2048+48*8,red_font,8,10);
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_red_font
	push	hl
	ld	hl,#0x2980
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1975: put_vram_pattern (coltab+4096+48*8,red_font,8,10);
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#_red_font
	push	hl
	ld	hl,#0x3180
	push	hl
	call	_put_vram_pattern
	pop	af
	pop	af
;main.c:1977: center_string(10,"CHOOSE DIFFICULTY");
	inc	sp
	ld	hl,#__str_4
	ex	(sp),hl
	ld	a,#0x0A
	push	af
	inc	sp
	call	_center_string
;main.c:1978: center_string(12,"1 - EASY");
	inc	sp
	ld	hl,#__str_5
	ex	(sp),hl
	ld	a,#0x0C
	push	af
	inc	sp
	call	_center_string
;main.c:1979: center_string(13,"2 - NORMAL");
	inc	sp
	ld	hl,#__str_6
	ex	(sp),hl
	ld	a,#0x0D
	push	af
	inc	sp
	call	_center_string
;main.c:1980: center_string(14,"3 - HARD");
	inc	sp
	ld	hl,#__str_7
	ex	(sp),hl
	ld	a,#0x0E
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
;main.c:1982: if (control==0) center_string(16,"4 - UP FOR HIGH JUMP   ");
	xor	a,a
	ld	hl,#_control + 0
	or	a,(hl)
	jr	NZ,00105$
	ld	hl,#__str_8
	push	hl
	ld	a,#0x10
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	jr	00106$
00105$:
;main.c:1983: else            center_string(16,"4 - FIRE2 FOR HIGH JUMP");
	ld	hl,#__str_9
	push	hl
	ld	a,#0x10
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
00106$:
;main.c:1985: center_string(18,"CODING AND SFX - MICHEL LOUVET");
	ld	hl,#__str_10
	push	hl
	ld	a,#0x12
	push	af
	inc	sp
	call	_center_string
;main.c:1986: center_string(19,"GFX - JP MEOLA - L MIRON");
	inc	sp
	ld	hl,#__str_11
	ex	(sp),hl
	ld	a,#0x13
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
;main.c:1988: if (gameHz==60) center_string(21,"NTSC COLECO");
	ld	a,(#_gameHz + 0)
	sub	a,#0x3C
	jr	NZ,00108$
	ld	hl,#__str_12
	push	hl
	ld	a,#0x15
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	jr	00109$
00108$:
;main.c:1989: else center_string(21,"PAL COLECO ");
	ld	hl,#__str_13
	push	hl
	ld	a,#0x15
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
00109$:
;main.c:1991: screen_on();
	call	_screen_on
;main.c:1992: enable_nmi();
	call	_enable_nmi
;main.c:1994: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:1995: startmusic(tune_intro,0,LOOP_ON,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0100
	push	hl
	ld	hl,#_tune_intro
	push	hl
	call	_startmusic
	pop	af
;main.c:1996: delay(1);
	inc	sp
	ld	hl,#0x0001
	ex	(sp),hl
	call	_delay
	pop	af
;main.c:1998: sortie=0;
	ld	c,#0x00
;main.c:1999: while (sortie==0)
00158$:
	xor	a,a
	or	a,c
	jp	NZ,00160$
;main.c:2001: if (keypad_1==1)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x01
	jr	NZ,00128$
;main.c:2003: difficulty = 3;
	ld	hl,#_difficulty + 0
	ld	(hl), #0x03
;main.c:2004: sortie = 1;
	ld	c,#0x01
	jr	00129$
00128$:
;main.c:2006: else if (keypad_1==2)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x02
	jr	NZ,00125$
;main.c:2008: difficulty = 4;
	ld	hl,#_difficulty + 0
	ld	(hl), #0x04
;main.c:2009: sortie = 1;
	ld	c,#0x01
	jr	00129$
00125$:
;main.c:2011: else if (keypad_1==3)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x03
	jr	NZ,00122$
;main.c:2013: difficulty = 5;
	ld	hl,#_difficulty + 0
	ld	(hl), #0x05
;main.c:2014: sortie = 1;
	ld	c,#0x01
	jr	00129$
00122$:
;main.c:2016: else if (keypad_1==4)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x04
	jr	NZ,00129$
;main.c:2018: while(keypad_1==4) {};
00110$:
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x04
	jr	Z,00110$
;main.c:2019: if (control==0) control=1; else control=0;
	xor	a,a
	ld	iy,#_control
	or	a,0 (iy)
	jr	NZ,00114$
	ld	0 (iy),#0x01
	jr	00115$
00114$:
	ld	hl,#_control + 0
	ld	(hl), #0x00
00115$:
;main.c:2021: if (control==0) center_string(16,"4 - UP FOR HIGH JUMP   ");
	xor	a,a
	ld	hl,#_control + 0
	or	a,(hl)
	jr	NZ,00117$
	push	bc
	ld	hl,#__str_8
	push	hl
	ld	a,#0x10
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
	jr	00129$
00117$:
;main.c:2022: else            center_string(16,"4 - FIRE2 FOR HIGH JUMP");
	push	bc
	ld	hl,#__str_9
	push	hl
	ld	a,#0x10
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00129$:
;main.c:2025: if ((joypad_1&FIRE1) || (joypad_1&FIRE2))
	ld	a,(#_joypad_1 + 0)
	and	a,#0x80
	jr	NZ,00155$
	ld	a,(#_joypad_1 + 0)
	and	a,#0x40
	jp	Z,00158$
00155$:
;main.c:2027: if ((joypad_1&LEFT) || (joypad_1&RIGHT))
	ld	a,(#_joypad_1 + 0)
	and	a,#0x08
	jr	NZ,00142$
	ld	a,(#_joypad_1 + 0)
	and	a,#0x02
	jr	Z,00143$
00142$:
;main.c:2029: delay(1);
	push	bc
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
	pop	bc
;main.c:2030: if (gameHz==60) gameHz=50;
	ld	iy,#_gameHz
	ld	a,0 (iy)
	sub	a,#0x3C
	jr	NZ,00131$
	ld	0 (iy),#0x32
	jr	00132$
00131$:
;main.c:2031: else gameHz=60;
	ld	hl,#_gameHz + 0
	ld	(hl), #0x3C
00132$:
;main.c:2033: if (gameHz==60) center_string(21,"NTSC COLECO");
	ld	a,(#_gameHz + 0)
	sub	a,#0x3C
	jr	NZ,00134$
	push	bc
	ld	hl,#__str_12
	push	hl
	ld	a,#0x15
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
	jr	00136$
00134$:
;main.c:2034: else center_string(21,"PAL COLECO ");
	push	bc
	ld	hl,#__str_13
	push	hl
	ld	a,#0x15
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
;main.c:2036: while (joypad_1&LEFT) {}
00136$:
	ld	a,(#_joypad_1 + 0)
	and	a,#0x08
	jr	NZ,00136$
;main.c:2037: while (joypad_1&RIGHT) {}
00139$:
	ld	a,(#_joypad_1 + 0)
	and	a,#0x02
	jr	NZ,00139$
;main.c:2039: startmusic(tune_intro,0,LOOP_ON,gameHz);
	push	bc
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0100
	push	hl
	ld	hl,#_tune_intro
	push	hl
	call	_startmusic
	pop	af
	pop	af
	inc	sp
	pop	bc
00143$:
;main.c:2042: if (keypad_1==7) {cheat=0;center_string(22,"NO CHEAT     ");}
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x07
	jr	NZ,00146$
	ld	hl,#_cheat + 0
	ld	(hl), #0x00
	push	bc
	ld	hl,#__str_14
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00146$:
;main.c:2043: if (keypad_1==8) {cheat=1;center_string(22,"UNTOUCHABLE  ");}
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x08
	jr	NZ,00148$
	ld	hl,#_cheat + 0
	ld	(hl), #0x01
	push	bc
	ld	hl,#__str_15
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00148$:
;main.c:2044: if (keypad_1==9) {cheat=2;center_string(22,"INFINITE LIFE");}
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x09
	jr	NZ,00150$
	ld	hl,#_cheat + 0
	ld	(hl), #0x02
	push	bc
	ld	hl,#__str_16
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00150$:
;main.c:2045: if (keypad_1==5)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x05
	jr	NZ,00152$
;main.c:2047: color_logo = 1;
	ld	hl,#_color_logo + 0
	ld	(hl), #0x01
;main.c:2048: center_string(22,"COLOR LOGO AFTER GAME OVER");
	push	bc
	ld	hl,#__str_17
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
00152$:
;main.c:2050: if (keypad_1==6)
	ld	a,(#_keypad_1 + 0)
	sub	a,#0x06
	jp	NZ,00158$
;main.c:2052: color_logo = 0;
	ld	hl,#_color_logo + 0
	ld	(hl), #0x00
;main.c:2053: center_string(22,"MONO LOGO AFTER GAME OVER");
	push	bc
	ld	hl,#__str_18
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	call	_center_string
	pop	af
	inc	sp
	pop	bc
	jp	00158$
00160$:
;main.c:2058: stopmusic();
	call	_stopmusic
;main.c:2059: delay(1);
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
	ret
_chooseDiff_end::
__str_4:
	.ascii "CHOOSE DIFFICULTY"
	.db 0x00
__str_5:
	.ascii "1 - EASY"
	.db 0x00
__str_6:
	.ascii "2 - NORMAL"
	.db 0x00
__str_7:
	.ascii "3 - HARD"
	.db 0x00
__str_8:
	.ascii "4 - UP FOR HIGH JUMP   "
	.db 0x00
__str_9:
	.ascii "4 - FIRE2 FOR HIGH JUMP"
	.db 0x00
__str_10:
	.ascii "CODING AND SFX - MICHEL LOUVET"
	.db 0x00
__str_11:
	.ascii "GFX - JP MEOLA - L MIRON"
	.db 0x00
__str_12:
	.ascii "NTSC COLECO"
	.db 0x00
__str_13:
	.ascii "PAL COLECO "
	.db 0x00
__str_14:
	.ascii "NO CHEAT     "
	.db 0x00
__str_15:
	.ascii "UNTOUCHABLE  "
	.db 0x00
__str_16:
	.ascii "INFINITE LIFE"
	.db 0x00
__str_17:
	.ascii "COLOR LOGO AFTER GAME OVER"
	.db 0x00
__str_18:
	.ascii "MONO LOGO AFTER GAME OVER"
	.db 0x00
;main.c:2063: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;main.c:2065: const unsigned char hz=(*(volatile unsigned char*)0x0069);
	ld	a,(#0x0069)
	ld	(#_gameHz + 0),a
;main.c:2068: color_logo = 0;
	ld	hl,#_color_logo + 0
	ld	(hl), #0x00
;main.c:2070: control = 0;
	ld	hl,#_control + 0
	ld	(hl), #0x00
;main.c:2071: lvlgfx=1;
	ld	hl,#_lvlgfx + 0
	ld	(hl), #0x01
;main.c:2073: cheat = 0;
	ld	hl,#_cheat + 0
	ld	(hl), #0x00
;main.c:2075: screen_mode_2_bitmap();
	call	_screen_mode_2_bitmap
;main.c:2079: oddTimer = 0;
	ld	hl,#_oddTimer + 0
	ld	(hl), #0x00
;main.c:2080: p_source=0;
	ld	hl,#_p_source + 0
	ld	(hl), #0x00
;main.c:2081: nb_source=0;
	ld	hl,#_nb_source + 0
	ld	(hl), #0x00
;main.c:2083: disable_nmi();
	call	_disable_nmi
;main.c:2084: screen_off();
	call	_screen_off
;main.c:2086: SWITCH_IN_BANK0
	ld	a,(#0xFFFC)
	ld	(#_dummy + 0),a
;main.c:2087: rle2vram(SPATTERNRLE,sprtab);
	ld	hl,#0x3800
	push	hl
	ld	hl,#_SPATTERNRLE
	push	hl
	call	_rle2vram
	pop	af
;main.c:2089: delay(1);
	ld	hl,#0x0001
	ex	(sp),hl
	call	_delay
	pop	af
;main.c:2091: workflow = WORKFLOW_SPLASH;
	ld	hl,#_workflow + 0
	ld	(hl), #0x00
;main.c:2093: while(1)
00143$:
;main.c:2098: if (workflow==WORKFLOW_GAME)
	ld	a,(#_workflow + 0)
	sub	a,#0x04
	jp	NZ,00140$
;main.c:2100: ticks=0;
	ld	iy,#_ticks
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;main.c:2101: if (gameHz==50) cpt=0;
	ld	a,(#_gameHz + 0)
	sub	a,#0x32
	jr	NZ,00102$
	ld	hl,#_cpt + 0
	ld	(hl), #0x00
00102$:
;main.c:2102: cpt++;
	ld	iy,#_cpt
	inc	0 (iy)
;main.c:2103: if (cpt<5) {
	ld	a,0 (iy)
	sub	a,#0x05
	jr	NC,00110$
;main.c:2104: generateEnnemy();
	call	_generateEnnemy
;main.c:2105: moveEnnemy();
	call	_moveEnnemy
;main.c:2106: checkPlayerCharCollision();
	call	_checkPlayerCharCollision
;main.c:2107: controlPlayer();
	call	_controlPlayer
;main.c:2108: checkBombCollision();
	call	_checkBombCollision
;main.c:2109: animateBomb();
	call	_animateBomb
;main.c:2110: timer++;
	ld	iy,#_timer
	inc	0 (iy)
;main.c:2111: oddTimer=oddTimer^1;
	ld	iy,#_oddTimer
	ld	a,0 (iy)
	xor	a,#0x01
	ld	0 (iy),a
;main.c:2112: if ((timer&7)==0) timerAnimation+=4;
	ld	a,(#_timer + 0)
	and	a,#0x07
	jr	NZ,00104$
	ld	iy,#_timerAnimation
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
00104$:
;main.c:2113: if (timerAnimation==12) timerAnimation=0;
	ld	iy,#_timerAnimation
	ld	a,0 (iy)
	sub	a,#0x0C
	jr	NZ,00106$
	ld	0 (iy),#0x00
00106$:
;main.c:2115: if (nbBombLevel==0) workflow = WORKFLOW_NEXTLEVEL;
	xor	a,a
	ld	hl,#_nbBombLevel + 0
	or	a,(hl)
	jr	NZ,00111$
	ld	hl,#_workflow + 0
	ld	(hl), #0x02
	jr	00111$
00110$:
;main.c:2116: } else cpt=0;
	ld	hl,#_cpt + 0
	ld	(hl), #0x00
00111$:
;main.c:2118: if (ticks==0) delay(1);
	ld	iy,#_ticks
	ld	a,0 (iy)
	or	a,1 (iy)
	jp	NZ,00143$
	ld	hl,#0x0001
	push	hl
	call	_delay
	pop	af
	jp	00143$
00140$:
;main.c:2123: else if (workflow==WORKFLOW_LOOSE_LIFE)
	ld	a,(#_workflow + 0)
	sub	a,#0x05
	jr	NZ,00137$
;main.c:2126: destroyAllEnnemy();
	call	_destroyAllEnnemy
;main.c:2128: doAnimationDeath();
	call	_doAnimationDeath
;main.c:2130: reinit();
	call	_reinit
;main.c:2131: createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x01
	push	hl
	ld	hl,#0x0120
	push	hl
	ld	a,#0xC8
	push	af
	inc	sp
	call	_createEnnemy
	ld	hl,#0x0009
	add	hl,sp
	ld	sp,hl
;main.c:2132: player.nblives--;
	ld	a,(#0x000f + _player)
	dec	a
	ld	hl,#0x000f + _player
	ld	(hl),a
;main.c:2133: if (cheat==2) player.nblives++;
	ld	a,(#_cheat + 0)
	sub	a,#0x02
	jr	NZ,00115$
	ld	a, (hl)
	inc	a
	ld	(#0x000f + _player),a
00115$:
;main.c:2134: nbEnnemyLevel=0;
	ld	hl,#_nbEnnemyLevel + 0
	ld	(hl), #0x00
;main.c:2135: if (player.nblives==0) workflow = WORKFLOW_GAMEOVER;
	ld	a,(#0x000f + _player)
	or	a,a
	jr	NZ,00117$
	ld	hl,#_workflow + 0
	ld	(hl), #0x03
	jp	00143$
00117$:
;main.c:2136: else workflow=WORKFLOW_GAME;
	ld	hl,#_workflow + 0
	ld	(hl), #0x04
	jp	00143$
00137$:
;main.c:2141: else if (workflow==WORKFLOW_SPLASH)
	xor	a,a
	ld	hl,#_workflow + 0
	or	a,(hl)
	jr	NZ,00134$
;main.c:2143: chooseDiff();
	call	_chooseDiff
;main.c:2145: workflow = WORKFLOW_TITLE;
	ld	hl,#_workflow + 0
	ld	(hl), #0x01
	jp	00143$
00134$:
;main.c:2150: else if (workflow==WORKFLOW_TITLE)
	ld	a,(#_workflow + 0)
	sub	a,#0x01
	jr	NZ,00131$
;main.c:2155: lvlgfx=1;
	ld	hl,#_lvlgfx + 0
	ld	(hl), #0x01
;main.c:2156: nbLevelPasse=0;
	ld	hl,#_nbLevelPasse + 0
	ld	(hl), #0x00
;main.c:2157: player.score = 0;
	ld	hl,#0x000d + _player
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;main.c:2158: player.nblives=3;
	inc	hl
	ld	(hl),#0x03
;main.c:2159: init();
	call	_init
;main.c:2161: screen_off();
	call	_screen_off
;main.c:2162: disable_nmi();
	call	_disable_nmi
;main.c:2164: currentLevel=1;
	ld	hl,#_currentLevel + 0
	ld	(hl), #0x01
;main.c:2166: showFond(currentLevel);
	ld	a,#0x01
	push	af
	inc	sp
	call	_showFond
	inc	sp
;main.c:2167: initEnnemy();
	call	_initEnnemy
;main.c:2168: nbEnnemyLevel=0;
	ld	hl,#_nbEnnemyLevel + 0
	ld	(hl), #0x00
;main.c:2169: drawLevel(currentLevel-1);
	ld	a,(#_currentLevel + 0)
	dec	a
	push	af
	inc	sp
	call	_drawLevel
	inc	sp
;main.c:2171: screen_on();
	call	_screen_on
;main.c:2172: enable_nmi();
	call	_enable_nmi
;main.c:2174: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:2175: startmusic(tune_ingame,0,LOOP_ON,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0100
	push	hl
	ld	hl,#_tune_ingame
	push	hl
	call	_startmusic
	pop	af
	pop	af
	inc	sp
;main.c:2176: init_allumeBombe(); /* Allume la 1ere bombe */
	call	_init_allumeBombe
;main.c:2177: perfect=1;
	ld	hl,#_perfect + 0
	ld	(hl), #0x01
;main.c:2178: workflow = WORKFLOW_GAME;
	ld	hl,#_workflow + 0
	ld	(hl), #0x04
	jp	00143$
00131$:
;main.c:2184: else if (workflow==WORKFLOW_NEXTLEVEL)
	ld	a,(#_workflow + 0)
	sub	a,#0x02
	jp	NZ,00128$
;main.c:2186: stopmusic();
	call	_stopmusic
;main.c:2187: nmi_renderBomb	= 0;
	ld	iy,#_nmi_renderBomb
	ld	0 (iy),#0x00
;main.c:2188: nmiCol_Global=0;
	ld	iy,#_nmiCol_Global
	ld	0 (iy),#0x00
;main.c:2189: currentLevel++;
	ld	iy,#_currentLevel
	inc	0 (iy)
;main.c:2190: if (currentLevel>16) currentLevel=1;
	ld	a,#0x10
	sub	a,0 (iy)
	jr	NC,00120$
	ld	0 (iy),#0x01
00120$:
;main.c:2191: nbEnnemyLevel=0;
	ld	iy,#_nbEnnemyLevel
	ld	0 (iy),#0x00
;main.c:2192: recap(workflow);
	ld	a,(_workflow)
	push	af
	inc	sp
	call	_recap
	inc	sp
;main.c:2194: screen_off();
	call	_screen_off
;main.c:2195: disable_nmi();
	call	_disable_nmi
;main.c:2196: destroyAllEnnemy();
	call	_destroyAllEnnemy
;main.c:2197: createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	l, #0x01
	push	hl
	ld	hl,#0x0120
	push	hl
	ld	a,#0xC8
	push	af
	inc	sp
	call	_createEnnemy
	ld	iy,#0x0009
	add	iy,sp
	ld	sp,iy
;main.c:2198: showFond(currentLevel);
	ld	a,(_currentLevel)
	push	af
	inc	sp
	call	_showFond
	inc	sp
;main.c:2199: drawLevel(currentLevel-1);
	ld	a,(#_currentLevel + 0)
	dec	a
	push	af
	inc	sp
	call	_drawLevel
	inc	sp
;main.c:2200: screen_on();
	call	_screen_on
;main.c:2201: enable_nmi();
	call	_enable_nmi
;main.c:2202: reinit();
	call	_reinit
;main.c:2204: nbLevelPasse++;
	ld	iy,#_nbLevelPasse
	inc	0 (iy)
;main.c:2205: if (nbLevelPasse==10)
	ld	a,0 (iy)
	sub	a,#0x0A
	jr	NZ,00124$
;main.c:2207: nbLevelPasse = 0;
	ld	0 (iy),#0x00
;main.c:2208: player.nblives++;
	ld	a,(#0x000f + _player)
	inc	a
	ld	(#0x000f + _player),a
;main.c:2209: difficulty++;
	ld	iy,#_difficulty
	inc	0 (iy)
;main.c:2210: if (difficulty>6) difficulty=6;
	ld	a,#0x06
	sub	a,0 (iy)
	jr	NC,00124$
	ld	0 (iy),#0x06
00124$:
;main.c:2213: SWITCH_IN_BANK1
	ld	a,(#0xFFFD)
	ld	(#_dummy + 0),a
;main.c:2214: stopmusic();
	call	_stopmusic
;main.c:2215: startmusic(tune_ingame,0,LOOP_ON,gameHz);
	ld	a,(_gameHz)
	push	af
	inc	sp
	ld	hl,#0x0100
	push	hl
	ld	hl,#_tune_ingame
	push	hl
	call	_startmusic
	pop	af
	pop	af
	inc	sp
;main.c:2217: init_allumeBombe(); /* Allume la 1ere bombe */
	call	_init_allumeBombe
;main.c:2218: perfect=1;
	ld	hl,#_perfect + 0
	ld	(hl), #0x01
;main.c:2219: workflow = WORKFLOW_GAME;
	ld	hl,#_workflow + 0
	ld	(hl), #0x04
	jp	00143$
00128$:
;main.c:2224: else if (workflow==WORKFLOW_GAMEOVER)
	ld	a,(#_workflow + 0)
	sub	a,#0x03
	jp	NZ,00143$
;main.c:2226: stop_music();
	call	_stop_music
;main.c:2227: recap(workflow);
	ld	a,(_workflow)
	push	af
	inc	sp
	call	_recap
	inc	sp
;main.c:2228: workflow = WORKFLOW_SPLASH;
	ld	hl,#_workflow + 0
	ld	(hl), #0x00
	jp	00143$
_main_end::
;main.c:2234: void nmi()
;	---------------------------------
; Function nmi
; ---------------------------------
_nmi_start::
_nmi:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl
;main.c:2245: ++ticks;
	ld	iy,#_ticks
	inc	0 (iy)
	jr	NZ,00116$
	inc	1 (iy)
00116$:
;main.c:2247: showSprites();
	call	_showSprites
;main.c:2248: sound_nmi();
	call	_sound_nmi
;main.c:2251: if (nmi_renderBomb==1)
	ld	a,(#_nmi_renderBomb + 0)
	sub	a,#0x01
	jr	NZ,00109$
;main.c:2253: for (k=0; k<MAXBOMB; k++)
	ld	-1 (ix),#0x00
	ld	b,#0x00
00105$:
	ld	a,-1 (ix)
	sub	a,#0x1E
	jr	NC,00108$
;main.c:2255: myBomb = &bomb[k];
	ld	a,#<(_bomb)
	add	a,b
	ld	e,a
	ld	a,#>(_bomb)
	adc	a,#0x00
	ld	-3 (ix), e
	ld	-2 (ix), a
;main.c:2256: myBomb_allume = &myBomb->allume;
	ld	a,-3 (ix)
	add	a,#0x02
	ld	c,a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	e,a
;main.c:2258: myBomb_y = &myBomb->y;
	ld	a,-3 (ix)
	add	a,#0x01
	ld	-5 (ix),a
	ld	a,-2 (ix)
	adc	a,#0x00
	ld	-4 (ix),a
;main.c:2260: if ((*myBomb_allume)==BOMB_DETRUIT)
	ld	l,c
	ld	h,e
	ld	a, (hl)
	inc	a
	jr	NZ,00107$
;main.c:2262: (*myBomb_allume) = BOMB_NULL;
	ld	l,c
	ld	h,e
	ld	(hl),#0xFE
;main.c:2263: buffer2screen((*myBomb_x),(*myBomb_y));
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	e,(hl)
	push	bc
	ld	d, c
	push	de
	call	_buffer2screen
	pop	af
	pop	bc
00107$:
;main.c:2253: for (k=0; k<MAXBOMB; k++)
	inc	b
	inc	b
	inc	b
	inc	-1 (ix)
	jr	00105$
00108$:
;main.c:2266: nmi_renderBomb = 0;
	ld	hl,#_nmi_renderBomb + 0
	ld	(hl), #0x00
00109$:
	ld	sp,ix
	pop	ix
	ret
_nmi_end::
	.area _CODE
	.area _CABS
