                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:10 2017
                              5 ;--------------------------------------------------------
                              6 	.module snake
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SNAKE_turn_PARM_2
                             13 	.globl _SNAKE_showBody
                             14 	.globl _SNAKE_showHead
                             15 	.globl _SNAKE_iterate_PARM_2
                             16 	.globl _SNAKE_move
                             17 	.globl _SNAKE_liveOrDie
                             18 	.globl _SNAKE_turn
                             19 	.globl _SNAKE_iterate
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (ABS,DATA)
   0000                      24 	.org 0x0000
                             25 ;--------------------------------------------------------
                             26 ; special function bits
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (ABS,DATA)
   0000                      29 	.org 0x0000
                             30 ;--------------------------------------------------------
                             31 ; overlayable register banks
                             32 ;--------------------------------------------------------
                             33 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      34 	.ds 8
                             35 ;--------------------------------------------------------
                             36 ; internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area DSEG    (DATA)
   0026                      39 _SNAKE_move_sloc0_1_0:
   0026                      40 	.ds 3
   0029                      41 _SNAKE_liveOrDie_sloc0_1_0:
   0029                      42 	.ds 3
   002C                      43 _SNAKE_iterate_PARM_2:
   002C                      44 	.ds 1
                             45 ;--------------------------------------------------------
                             46 ; overlayable items in internal ram 
                             47 ;--------------------------------------------------------
                             48 	.area	OSEG    (OVR,DATA)
   003F                      49 _SNAKE_turn_PARM_2::
   003F                      50 	.ds 1
                             51 ;--------------------------------------------------------
                             52 ; indirectly addressable internal ram data
                             53 ;--------------------------------------------------------
                             54 	.area ISEG    (DATA)
                             55 ;--------------------------------------------------------
                             56 ; absolute internal ram data
                             57 ;--------------------------------------------------------
                             58 	.area IABS    (ABS,DATA)
                             59 	.area IABS    (ABS,DATA)
                             60 ;--------------------------------------------------------
                             61 ; bit data
                             62 ;--------------------------------------------------------
                             63 	.area BSEG    (BIT)
                             64 ;--------------------------------------------------------
                             65 ; paged external ram data
                             66 ;--------------------------------------------------------
                             67 	.area PSEG    (PAG,XDATA)
                             68 ;--------------------------------------------------------
                             69 ; external ram data
                             70 ;--------------------------------------------------------
                             71 	.area XSEG    (XDATA)
                             72 ;--------------------------------------------------------
                             73 ; absolute external ram data
                             74 ;--------------------------------------------------------
                             75 	.area XABS    (ABS,XDATA)
                             76 ;--------------------------------------------------------
                             77 ; external initialized ram data
                             78 ;--------------------------------------------------------
                             79 	.area XISEG   (XDATA)
                             80 	.area HOME    (CODE)
                             81 	.area GSINIT0 (CODE)
                             82 	.area GSINIT1 (CODE)
                             83 	.area GSINIT2 (CODE)
                             84 	.area GSINIT3 (CODE)
                             85 	.area GSINIT4 (CODE)
                             86 	.area GSINIT5 (CODE)
                             87 	.area GSINIT  (CODE)
                             88 	.area GSFINAL (CODE)
                             89 	.area CSEG    (CODE)
                             90 ;--------------------------------------------------------
                             91 ; global & static initialisations
                             92 ;--------------------------------------------------------
                             93 	.area HOME    (CODE)
                             94 	.area GSINIT  (CODE)
                             95 	.area GSFINAL (CODE)
                             96 	.area GSINIT  (CODE)
                             97 ;--------------------------------------------------------
                             98 ; Home
                             99 ;--------------------------------------------------------
                            100 	.area HOME    (CODE)
                            101 	.area HOME    (CODE)
                            102 ;--------------------------------------------------------
                            103 ; code
                            104 ;--------------------------------------------------------
                            105 	.area CSEG    (CODE)
                            106 ;------------------------------------------------------------
                            107 ;Allocation info for local variables in function 'SNAKE_move'
                            108 ;------------------------------------------------------------
                            109 ;snake                     Allocated to registers r2 r3 r4 
                            110 ;sloc0                     Allocated with name '_SNAKE_move_sloc0_1_0'
                            111 ;------------------------------------------------------------
                            112 ;	../snake.c:14: void SNAKE_move(Snake *snake) {
                            113 ;	-----------------------------------------
                            114 ;	 function SNAKE_move
                            115 ;	-----------------------------------------
   045F                     116 _SNAKE_move:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
   045F AA 82               125 	mov	r2,dpl
   0461 AB 83               126 	mov	r3,dph
   0463 AC F0               127 	mov	r4,b
                            128 ;	../snake.c:17: BUFFER_in(snake->position.x);
   0465 74 01               129 	mov	a,#0x01
   0467 2A                  130 	add	a,r2
   0468 FD                  131 	mov	r5,a
   0469 E4                  132 	clr	a
   046A 3B                  133 	addc	a,r3
   046B FE                  134 	mov	r6,a
   046C 8C 07               135 	mov	ar7,r4
   046E 8D 82               136 	mov	dpl,r5
   0470 8E 83               137 	mov	dph,r6
   0472 8F F0               138 	mov	b,r7
   0474 12 0F D9            139 	lcall	__gptrget
   0477 F5 82               140 	mov	dpl,a
   0479 C0 02               141 	push	ar2
   047B C0 03               142 	push	ar3
   047D C0 04               143 	push	ar4
   047F 12 04 34            144 	lcall	_BUFFER_in
   0482 D0 04               145 	pop	ar4
   0484 D0 03               146 	pop	ar3
   0486 D0 02               147 	pop	ar2
                            148 ;	../snake.c:18: BUFFER_in(snake->position.y);
   0488 74 01               149 	mov	a,#0x01
   048A 2A                  150 	add	a,r2
   048B FD                  151 	mov	r5,a
   048C E4                  152 	clr	a
   048D 3B                  153 	addc	a,r3
   048E FE                  154 	mov	r6,a
   048F 8C 07               155 	mov	ar7,r4
   0491 74 01               156 	mov	a,#0x01
   0493 2D                  157 	add	a,r5
   0494 F5 26               158 	mov	_SNAKE_move_sloc0_1_0,a
   0496 E4                  159 	clr	a
   0497 3E                  160 	addc	a,r6
   0498 F5 27               161 	mov	(_SNAKE_move_sloc0_1_0 + 1),a
   049A 8F 28               162 	mov	(_SNAKE_move_sloc0_1_0 + 2),r7
   049C 85 26 82            163 	mov	dpl,_SNAKE_move_sloc0_1_0
   049F 85 27 83            164 	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
   04A2 85 28 F0            165 	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
   04A5 12 0F D9            166 	lcall	__gptrget
   04A8 F5 82               167 	mov	dpl,a
   04AA C0 02               168 	push	ar2
   04AC C0 03               169 	push	ar3
   04AE C0 04               170 	push	ar4
   04B0 C0 05               171 	push	ar5
   04B2 C0 06               172 	push	ar6
   04B4 C0 07               173 	push	ar7
   04B6 12 04 34            174 	lcall	_BUFFER_in
   04B9 D0 07               175 	pop	ar7
   04BB D0 06               176 	pop	ar6
   04BD D0 05               177 	pop	ar5
   04BF D0 04               178 	pop	ar4
   04C1 D0 03               179 	pop	ar3
   04C3 D0 02               180 	pop	ar2
                            181 ;	../snake.c:20: switch(snake->direction){
   04C5 8A 82               182 	mov	dpl,r2
   04C7 8B 83               183 	mov	dph,r3
   04C9 8C F0               184 	mov	b,r4
   04CB 12 0F D9            185 	lcall	__gptrget
   04CE FA                  186 	mov	r2,a
   04CF 74 03               187 	mov	a,#0x03
   04D1 B5 02 00            188 	cjne	a,ar2,00110$
   04D4                     189 00110$:
   04D4 50 01               190 	jnc	00111$
   04D6 22                  191 	ret
   04D7                     192 00111$:
   04D7 EA                  193 	mov	a,r2
   04D8 2A                  194 	add	a,r2
   04D9 2A                  195 	add	a,r2
   04DA 90 04 DE            196 	mov	dptr,#00112$
   04DD 73                  197 	jmp	@a+dptr
   04DE                     198 00112$:
   04DE 02 04 EA            199 	ljmp	00101$
   04E1 02 05 05            200 	ljmp	00102$
   04E4 02 05 20            201 	ljmp	00103$
   04E7 02 05 35            202 	ljmp	00104$
                            203 ;	../snake.c:21: case(MOVES_UP): 
   04EA                     204 00101$:
                            205 ;	../snake.c:22: snake->position.y--; 
   04EA 85 26 82            206 	mov	dpl,_SNAKE_move_sloc0_1_0
   04ED 85 27 83            207 	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
   04F0 85 28 F0            208 	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
   04F3 12 0F D9            209 	lcall	__gptrget
   04F6 FA                  210 	mov	r2,a
   04F7 1A                  211 	dec	r2
   04F8 85 26 82            212 	mov	dpl,_SNAKE_move_sloc0_1_0
   04FB 85 27 83            213 	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
   04FE 85 28 F0            214 	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
   0501 EA                  215 	mov	a,r2
                            216 ;	../snake.c:23: break;
                            217 ;	../snake.c:24: case(MOVES_DOWN):
   0502 02 0E D0            218 	ljmp	__gptrput
   0505                     219 00102$:
                            220 ;	../snake.c:25: snake->position.y++; 
   0505 85 26 82            221 	mov	dpl,_SNAKE_move_sloc0_1_0
   0508 85 27 83            222 	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
   050B 85 28 F0            223 	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
   050E 12 0F D9            224 	lcall	__gptrget
   0511 FA                  225 	mov	r2,a
   0512 0A                  226 	inc	r2
   0513 85 26 82            227 	mov	dpl,_SNAKE_move_sloc0_1_0
   0516 85 27 83            228 	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
   0519 85 28 F0            229 	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
   051C EA                  230 	mov	a,r2
                            231 ;	../snake.c:26: break;
                            232 ;	../snake.c:27: case(MOVES_LEFT):
   051D 02 0E D0            233 	ljmp	__gptrput
   0520                     234 00103$:
                            235 ;	../snake.c:28: snake->position.x--;
   0520 8D 82               236 	mov	dpl,r5
   0522 8E 83               237 	mov	dph,r6
   0524 8F F0               238 	mov	b,r7
   0526 12 0F D9            239 	lcall	__gptrget
   0529 FA                  240 	mov	r2,a
   052A 1A                  241 	dec	r2
   052B 8D 82               242 	mov	dpl,r5
   052D 8E 83               243 	mov	dph,r6
   052F 8F F0               244 	mov	b,r7
   0531 EA                  245 	mov	a,r2
                            246 ;	../snake.c:29: break;
                            247 ;	../snake.c:30: case(MOVES_RIGHT):
   0532 02 0E D0            248 	ljmp	__gptrput
   0535                     249 00104$:
                            250 ;	../snake.c:31: snake->position.x++;
   0535 8D 82               251 	mov	dpl,r5
   0537 8E 83               252 	mov	dph,r6
   0539 8F F0               253 	mov	b,r7
   053B 12 0F D9            254 	lcall	__gptrget
   053E FA                  255 	mov	r2,a
   053F 0A                  256 	inc	r2
   0540 8D 82               257 	mov	dpl,r5
   0542 8E 83               258 	mov	dph,r6
   0544 8F F0               259 	mov	b,r7
   0546 EA                  260 	mov	a,r2
                            261 ;	../snake.c:34: }
   0547 02 0E D0            262 	ljmp	__gptrput
                            263 ;------------------------------------------------------------
                            264 ;Allocation info for local variables in function 'SNAKE_liveOrDie'
                            265 ;------------------------------------------------------------
                            266 ;snake                     Allocated to registers r2 r3 r4 
                            267 ;c                         Allocated to registers r5 
                            268 ;sloc0                     Allocated with name '_SNAKE_liveOrDie_sloc0_1_0'
                            269 ;------------------------------------------------------------
                            270 ;	../snake.c:42: void SNAKE_liveOrDie(Snake *snake) {
                            271 ;	-----------------------------------------
                            272 ;	 function SNAKE_liveOrDie
                            273 ;	-----------------------------------------
   054A                     274 _SNAKE_liveOrDie:
   054A AA 82               275 	mov	r2,dpl
   054C AB 83               276 	mov	r3,dph
   054E AC F0               277 	mov	r4,b
                            278 ;	../snake.c:43: unsigned char c = T6963C_readFrom(snake->position.x, snake->position.y);
   0550 74 01               279 	mov	a,#0x01
   0552 2A                  280 	add	a,r2
   0553 FD                  281 	mov	r5,a
   0554 E4                  282 	clr	a
   0555 3B                  283 	addc	a,r3
   0556 FE                  284 	mov	r6,a
   0557 8C 07               285 	mov	ar7,r4
   0559 8D 82               286 	mov	dpl,r5
   055B 8E 83               287 	mov	dph,r6
   055D 8F F0               288 	mov	b,r7
   055F 12 0F D9            289 	lcall	__gptrget
   0562 FD                  290 	mov	r5,a
   0563 74 01               291 	mov	a,#0x01
   0565 2A                  292 	add	a,r2
   0566 FE                  293 	mov	r6,a
   0567 E4                  294 	clr	a
   0568 3B                  295 	addc	a,r3
   0569 FF                  296 	mov	r7,a
   056A 8C 00               297 	mov	ar0,r4
   056C 74 01               298 	mov	a,#0x01
   056E 2E                  299 	add	a,r6
   056F F5 29               300 	mov	_SNAKE_liveOrDie_sloc0_1_0,a
   0571 E4                  301 	clr	a
   0572 3F                  302 	addc	a,r7
   0573 F5 2A               303 	mov	(_SNAKE_liveOrDie_sloc0_1_0 + 1),a
   0575 88 2B               304 	mov	(_SNAKE_liveOrDie_sloc0_1_0 + 2),r0
   0577 85 29 82            305 	mov	dpl,_SNAKE_liveOrDie_sloc0_1_0
   057A 85 2A 83            306 	mov	dph,(_SNAKE_liveOrDie_sloc0_1_0 + 1)
   057D 85 2B F0            307 	mov	b,(_SNAKE_liveOrDie_sloc0_1_0 + 2)
   0580 12 0F D9            308 	lcall	__gptrget
   0583 F5 21               309 	mov	_T6963C_readFrom_PARM_2,a
   0585 8D 82               310 	mov	dpl,r5
   0587 C0 02               311 	push	ar2
   0589 C0 03               312 	push	ar3
   058B C0 04               313 	push	ar4
   058D C0 06               314 	push	ar6
   058F C0 07               315 	push	ar7
   0591 C0 00               316 	push	ar0
   0593 12 03 18            317 	lcall	_T6963C_readFrom
   0596 AD 82               318 	mov	r5,dpl
   0598 D0 00               319 	pop	ar0
   059A D0 07               320 	pop	ar7
   059C D0 06               321 	pop	ar6
   059E D0 04               322 	pop	ar4
   05A0 D0 03               323 	pop	ar3
   05A2 D0 02               324 	pop	ar2
                            325 ;	../snake.c:47: if(snake->position.x > SNAKE_LIMIT_X0 && snake->position.y > SNAKE_LIMIT_Y0 && 
   05A4 8E 82               326 	mov	dpl,r6
   05A6 8F 83               327 	mov	dph,r7
   05A8 88 F0               328 	mov	b,r0
   05AA 12 0F D9            329 	lcall	__gptrget
   05AD FE                  330 	mov	r6,a
   05AE 70 03               331 	jnz	00134$
   05B0 02 06 60            332 	ljmp	00114$
   05B3                     333 00134$:
   05B3 85 29 82            334 	mov	dpl,_SNAKE_liveOrDie_sloc0_1_0
   05B6 85 2A 83            335 	mov	dph,(_SNAKE_liveOrDie_sloc0_1_0 + 1)
   05B9 85 2B F0            336 	mov	b,(_SNAKE_liveOrDie_sloc0_1_0 + 2)
   05BC 12 0F D9            337 	lcall	__gptrget
   05BF FF                  338 	mov	r7,a
   05C0 70 03               339 	jnz	00135$
   05C2 02 06 60            340 	ljmp	00114$
   05C5                     341 00135$:
                            342 ;	../snake.c:48: snake->position.x < SNAKE_LIMIT_X1 && snake->position.y < SNAKE_LIMIT_Y1){	
   05C5 BE 1D 00            343 	cjne	r6,#0x1D,00136$
   05C8                     344 00136$:
   05C8 40 03               345 	jc	00137$
   05CA 02 06 60            346 	ljmp	00114$
   05CD                     347 00137$:
   05CD BF 0F 00            348 	cjne	r7,#0x0F,00138$
   05D0                     349 00138$:
   05D0 40 03               350 	jc	00139$
   05D2 02 06 60            351 	ljmp	00114$
   05D5                     352 00139$:
                            353 ;	../snake.c:50: switch(c){
   05D5 BD 91 02            354 	cjne	r5,#0x91,00140$
   05D8 80 2B               355 	sjmp	00109$
   05DA                     356 00140$:
   05DA BD 95 02            357 	cjne	r5,#0x95,00141$
   05DD 80 3A               358 	sjmp	00110$
   05DF                     359 00141$:
   05DF BD A1 02            360 	cjne	r5,#0xA1,00142$
   05E2 80 21               361 	sjmp	00109$
   05E4                     362 00142$:
   05E4 BD A2 02            363 	cjne	r5,#0xA2,00143$
   05E7 80 1C               364 	sjmp	00109$
   05E9                     365 00143$:
   05E9 BD A3 02            366 	cjne	r5,#0xA3,00144$
   05EC 80 17               367 	sjmp	00109$
   05EE                     368 00144$:
   05EE BD A4 02            369 	cjne	r5,#0xA4,00145$
   05F1 80 12               370 	sjmp	00109$
   05F3                     371 00145$:
   05F3 BD A5 02            372 	cjne	r5,#0xA5,00146$
   05F6 80 0D               373 	sjmp	00109$
   05F8                     374 00146$:
   05F8 BD A6 02            375 	cjne	r5,#0xA6,00147$
   05FB 80 08               376 	sjmp	00109$
   05FD                     377 00147$:
   05FD BD A7 02            378 	cjne	r5,#0xA7,00148$
   0600 80 03               379 	sjmp	00109$
   0602                     380 00148$:
   0602 BD A8 48            381 	cjne	r5,#0xA8,00111$
                            382 ;	../snake.c:59: case(SNAKE_BODY):
   0605                     383 00109$:
                            384 ;	../snake.c:60: snake->status = DEAD;
   0605 74 03               385 	mov	a,#0x03
   0607 2A                  386 	add	a,r2
   0608 FD                  387 	mov	r5,a
   0609 E4                  388 	clr	a
   060A 3B                  389 	addc	a,r3
   060B FE                  390 	mov	r6,a
   060C 8C 07               391 	mov	ar7,r4
   060E 8D 82               392 	mov	dpl,r5
   0610 8E 83               393 	mov	dph,r6
   0612 8F F0               394 	mov	b,r7
   0614 74 01               395 	mov	a,#0x01
                            396 ;	../snake.c:61: break;
                            397 ;	../snake.c:62: case(FRUIT):
   0616 02 0E D0            398 	ljmp	__gptrput
   0619                     399 00110$:
                            400 ;	../snake.c:63: snake->status = EATING;
   0619 74 03               401 	mov	a,#0x03
   061B 2A                  402 	add	a,r2
   061C FD                  403 	mov	r5,a
   061D E4                  404 	clr	a
   061E 3B                  405 	addc	a,r3
   061F FE                  406 	mov	r6,a
   0620 8C 07               407 	mov	ar7,r4
   0622 8D 82               408 	mov	dpl,r5
   0624 8E 83               409 	mov	dph,r6
   0626 8F F0               410 	mov	b,r7
   0628 74 02               411 	mov	a,#0x02
   062A 12 0E D0            412 	lcall	__gptrput
                            413 ;	../snake.c:64: snake->caloriesLeft+= FRUIT_CALORIES;
   062D 74 04               414 	mov	a,#0x04
   062F 2A                  415 	add	a,r2
   0630 FD                  416 	mov	r5,a
   0631 E4                  417 	clr	a
   0632 3B                  418 	addc	a,r3
   0633 FE                  419 	mov	r6,a
   0634 8C 07               420 	mov	ar7,r4
   0636 8D 82               421 	mov	dpl,r5
   0638 8E 83               422 	mov	dph,r6
   063A 8F F0               423 	mov	b,r7
   063C 12 0F D9            424 	lcall	__gptrget
   063F F8                  425 	mov	r0,a
   0640 08                  426 	inc	r0
   0641 08                  427 	inc	r0
   0642 08                  428 	inc	r0
   0643 8D 82               429 	mov	dpl,r5
   0645 8E 83               430 	mov	dph,r6
   0647 8F F0               431 	mov	b,r7
   0649 E8                  432 	mov	a,r0
                            433 ;	../snake.c:65: break;
                            434 ;	../snake.c:66: default:
   064A 02 0E D0            435 	ljmp	__gptrput
   064D                     436 00111$:
                            437 ;	../snake.c:67: snake->status = ALIVE;
   064D 74 03               438 	mov	a,#0x03
   064F 2A                  439 	add	a,r2
   0650 FD                  440 	mov	r5,a
   0651 E4                  441 	clr	a
   0652 3B                  442 	addc	a,r3
   0653 FE                  443 	mov	r6,a
   0654 8C 07               444 	mov	ar7,r4
   0656 8D 82               445 	mov	dpl,r5
   0658 8E 83               446 	mov	dph,r6
   065A 8F F0               447 	mov	b,r7
   065C E4                  448 	clr	a
                            449 ;	../snake.c:69: }
   065D 02 0E D0            450 	ljmp	__gptrput
   0660                     451 00114$:
                            452 ;	../snake.c:71: snake->status = DEAD;
   0660 74 03               453 	mov	a,#0x03
   0662 2A                  454 	add	a,r2
   0663 FA                  455 	mov	r2,a
   0664 E4                  456 	clr	a
   0665 3B                  457 	addc	a,r3
   0666 FB                  458 	mov	r3,a
   0667 8A 82               459 	mov	dpl,r2
   0669 8B 83               460 	mov	dph,r3
   066B 8C F0               461 	mov	b,r4
   066D 74 01               462 	mov	a,#0x01
   066F 02 0E D0            463 	ljmp	__gptrput
                            464 ;------------------------------------------------------------
                            465 ;Allocation info for local variables in function 'SNAKE_showHead'
                            466 ;------------------------------------------------------------
                            467 ;snake                     Allocated to registers r2 r3 r4 
                            468 ;------------------------------------------------------------
                            469 ;	../snake.c:79: void SNAKE_showHead(Snake *snake) {
                            470 ;	-----------------------------------------
                            471 ;	 function SNAKE_showHead
                            472 ;	-----------------------------------------
   0672                     473 _SNAKE_showHead:
   0672 AA 82               474 	mov	r2,dpl
   0674 AB 83               475 	mov	r3,dph
   0676 AC F0               476 	mov	r4,b
                            477 ;	../snake.c:83: if(snake->status == DEAD){
   0678 74 03               478 	mov	a,#0x03
   067A 2A                  479 	add	a,r2
   067B FD                  480 	mov	r5,a
   067C E4                  481 	clr	a
   067D 3B                  482 	addc	a,r3
   067E FE                  483 	mov	r6,a
   067F 8C 07               484 	mov	ar7,r4
   0681 8D 82               485 	mov	dpl,r5
   0683 8E 83               486 	mov	dph,r6
   0685 8F F0               487 	mov	b,r7
   0687 12 0F D9            488 	lcall	__gptrget
   068A FD                  489 	mov	r5,a
   068B BD 01 34            490 	cjne	r5,#0x01,00102$
                            491 ;	../snake.c:84: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_DEAD);
   068E 74 01               492 	mov	a,#0x01
   0690 2A                  493 	add	a,r2
   0691 FD                  494 	mov	r5,a
   0692 E4                  495 	clr	a
   0693 3B                  496 	addc	a,r3
   0694 FE                  497 	mov	r6,a
   0695 8C 07               498 	mov	ar7,r4
   0697 8D 82               499 	mov	dpl,r5
   0699 8E 83               500 	mov	dph,r6
   069B 8F F0               501 	mov	b,r7
   069D 12 0F D9            502 	lcall	__gptrget
   06A0 FD                  503 	mov	r5,a
   06A1 74 01               504 	mov	a,#0x01
   06A3 2A                  505 	add	a,r2
   06A4 FE                  506 	mov	r6,a
   06A5 E4                  507 	clr	a
   06A6 3B                  508 	addc	a,r3
   06A7 FF                  509 	mov	r7,a
   06A8 8C 00               510 	mov	ar0,r4
   06AA 0E                  511 	inc	r6
   06AB BE 00 01            512 	cjne	r6,#0x00,00109$
   06AE 0F                  513 	inc	r7
   06AF                     514 00109$:
   06AF 8E 82               515 	mov	dpl,r6
   06B1 8F 83               516 	mov	dph,r7
   06B3 88 F0               517 	mov	b,r0
   06B5 12 0F D9            518 	lcall	__gptrget
   06B8 F5 1F               519 	mov	_T6963C_writeAt_PARM_2,a
   06BA 75 20 94            520 	mov	_T6963C_writeAt_PARM_3,#0x94
   06BD 8D 82               521 	mov	dpl,r5
   06BF 02 03 0C            522 	ljmp	_T6963C_writeAt
   06C2                     523 00102$:
                            524 ;	../snake.c:87: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_HEAD);
   06C2 74 01               525 	mov	a,#0x01
   06C4 2A                  526 	add	a,r2
   06C5 FD                  527 	mov	r5,a
   06C6 E4                  528 	clr	a
   06C7 3B                  529 	addc	a,r3
   06C8 FE                  530 	mov	r6,a
   06C9 8C 07               531 	mov	ar7,r4
   06CB 8D 82               532 	mov	dpl,r5
   06CD 8E 83               533 	mov	dph,r6
   06CF 8F F0               534 	mov	b,r7
   06D1 12 0F D9            535 	lcall	__gptrget
   06D4 FD                  536 	mov	r5,a
   06D5 0A                  537 	inc	r2
   06D6 BA 00 01            538 	cjne	r2,#0x00,00110$
   06D9 0B                  539 	inc	r3
   06DA                     540 00110$:
   06DA 0A                  541 	inc	r2
   06DB BA 00 01            542 	cjne	r2,#0x00,00111$
   06DE 0B                  543 	inc	r3
   06DF                     544 00111$:
   06DF 8A 82               545 	mov	dpl,r2
   06E1 8B 83               546 	mov	dph,r3
   06E3 8C F0               547 	mov	b,r4
   06E5 12 0F D9            548 	lcall	__gptrget
   06E8 F5 1F               549 	mov	_T6963C_writeAt_PARM_2,a
   06EA 75 20 93            550 	mov	_T6963C_writeAt_PARM_3,#0x93
   06ED 8D 82               551 	mov	dpl,r5
   06EF 02 03 0C            552 	ljmp	_T6963C_writeAt
                            553 ;------------------------------------------------------------
                            554 ;Allocation info for local variables in function 'SNAKE_showBody'
                            555 ;------------------------------------------------------------
                            556 ;snake                     Allocated to registers r2 r3 r4 
                            557 ;------------------------------------------------------------
                            558 ;	../snake.c:97: void SNAKE_showBody(Snake *snake) {
                            559 ;	-----------------------------------------
                            560 ;	 function SNAKE_showBody
                            561 ;	-----------------------------------------
   06F2                     562 _SNAKE_showBody:
   06F2 AA 82               563 	mov	r2,dpl
   06F4 AB 83               564 	mov	r3,dph
   06F6 AC F0               565 	mov	r4,b
                            566 ;	../snake.c:100: if(snake->status == EATING){
   06F8 74 03               567 	mov	a,#0x03
   06FA 2A                  568 	add	a,r2
   06FB FD                  569 	mov	r5,a
   06FC E4                  570 	clr	a
   06FD 3B                  571 	addc	a,r3
   06FE FE                  572 	mov	r6,a
   06FF 8C 07               573 	mov	ar7,r4
   0701 8D 82               574 	mov	dpl,r5
   0703 8E 83               575 	mov	dph,r6
   0705 8F F0               576 	mov	b,r7
   0707 12 0F D9            577 	lcall	__gptrget
   070A FD                  578 	mov	r5,a
   070B BD 02 42            579 	cjne	r5,#0x02,00102$
                            580 ;	../snake.c:101: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_SWALLOW);
   070E 74 01               581 	mov	a,#0x01
   0710 2A                  582 	add	a,r2
   0711 FD                  583 	mov	r5,a
   0712 E4                  584 	clr	a
   0713 3B                  585 	addc	a,r3
   0714 FE                  586 	mov	r6,a
   0715 8C 07               587 	mov	ar7,r4
   0717 8D 82               588 	mov	dpl,r5
   0719 8E 83               589 	mov	dph,r6
   071B 8F F0               590 	mov	b,r7
   071D 12 0F D9            591 	lcall	__gptrget
   0720 FD                  592 	mov	r5,a
   0721 74 01               593 	mov	a,#0x01
   0723 2A                  594 	add	a,r2
   0724 FE                  595 	mov	r6,a
   0725 E4                  596 	clr	a
   0726 3B                  597 	addc	a,r3
   0727 FF                  598 	mov	r7,a
   0728 8C 00               599 	mov	ar0,r4
   072A 0E                  600 	inc	r6
   072B BE 00 01            601 	cjne	r6,#0x00,00113$
   072E 0F                  602 	inc	r7
   072F                     603 00113$:
   072F 8E 82               604 	mov	dpl,r6
   0731 8F 83               605 	mov	dph,r7
   0733 88 F0               606 	mov	b,r0
   0735 12 0F D9            607 	lcall	__gptrget
   0738 F5 1F               608 	mov	_T6963C_writeAt_PARM_2,a
   073A 75 20 92            609 	mov	_T6963C_writeAt_PARM_3,#0x92
   073D 8D 82               610 	mov	dpl,r5
   073F C0 02               611 	push	ar2
   0741 C0 03               612 	push	ar3
   0743 C0 04               613 	push	ar4
   0745 12 03 0C            614 	lcall	_T6963C_writeAt
   0748 D0 04               615 	pop	ar4
   074A D0 03               616 	pop	ar3
   074C D0 02               617 	pop	ar2
   074E 80 40               618 	sjmp	00103$
   0750                     619 00102$:
                            620 ;	../snake.c:104: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_BODY);
   0750 74 01               621 	mov	a,#0x01
   0752 2A                  622 	add	a,r2
   0753 FD                  623 	mov	r5,a
   0754 E4                  624 	clr	a
   0755 3B                  625 	addc	a,r3
   0756 FE                  626 	mov	r6,a
   0757 8C 07               627 	mov	ar7,r4
   0759 8D 82               628 	mov	dpl,r5
   075B 8E 83               629 	mov	dph,r6
   075D 8F F0               630 	mov	b,r7
   075F 12 0F D9            631 	lcall	__gptrget
   0762 FD                  632 	mov	r5,a
   0763 74 01               633 	mov	a,#0x01
   0765 2A                  634 	add	a,r2
   0766 FE                  635 	mov	r6,a
   0767 E4                  636 	clr	a
   0768 3B                  637 	addc	a,r3
   0769 FF                  638 	mov	r7,a
   076A 8C 00               639 	mov	ar0,r4
   076C 0E                  640 	inc	r6
   076D BE 00 01            641 	cjne	r6,#0x00,00114$
   0770 0F                  642 	inc	r7
   0771                     643 00114$:
   0771 8E 82               644 	mov	dpl,r6
   0773 8F 83               645 	mov	dph,r7
   0775 88 F0               646 	mov	b,r0
   0777 12 0F D9            647 	lcall	__gptrget
   077A F5 1F               648 	mov	_T6963C_writeAt_PARM_2,a
   077C 75 20 91            649 	mov	_T6963C_writeAt_PARM_3,#0x91
   077F 8D 82               650 	mov	dpl,r5
   0781 C0 02               651 	push	ar2
   0783 C0 03               652 	push	ar3
   0785 C0 04               653 	push	ar4
   0787 12 03 0C            654 	lcall	_T6963C_writeAt
   078A D0 04               655 	pop	ar4
   078C D0 03               656 	pop	ar3
   078E D0 02               657 	pop	ar2
   0790                     658 00103$:
                            659 ;	../snake.c:107: if(snake->caloriesLeft == 0){
   0790 74 04               660 	mov	a,#0x04
   0792 2A                  661 	add	a,r2
   0793 FA                  662 	mov	r2,a
   0794 E4                  663 	clr	a
   0795 3B                  664 	addc	a,r3
   0796 FB                  665 	mov	r3,a
   0797 8A 82               666 	mov	dpl,r2
   0799 8B 83               667 	mov	dph,r3
   079B 8C F0               668 	mov	b,r4
   079D 12 0F D9            669 	lcall	__gptrget
   07A0 FD                  670 	mov	r5,a
   07A1 70 17               671 	jnz	00105$
                            672 ;	../snake.c:108: T6963C_writeAt(BUFFER_out(), BUFFER_out(), EMPTY);
   07A3 12 04 46            673 	lcall	_BUFFER_out
   07A6 AE 82               674 	mov	r6,dpl
   07A8 C0 06               675 	push	ar6
   07AA 12 04 46            676 	lcall	_BUFFER_out
   07AD 85 82 1F            677 	mov	_T6963C_writeAt_PARM_2,dpl
   07B0 D0 06               678 	pop	ar6
   07B2 75 20 00            679 	mov	_T6963C_writeAt_PARM_3,#0x00
   07B5 8E 82               680 	mov	dpl,r6
   07B7 02 03 0C            681 	ljmp	_T6963C_writeAt
   07BA                     682 00105$:
                            683 ;	../snake.c:110: snake->caloriesLeft--;
   07BA 1D                  684 	dec	r5
   07BB 8A 82               685 	mov	dpl,r2
   07BD 8B 83               686 	mov	dph,r3
   07BF 8C F0               687 	mov	b,r4
   07C1 ED                  688 	mov	a,r5
   07C2 02 0E D0            689 	ljmp	__gptrput
                            690 ;------------------------------------------------------------
                            691 ;Allocation info for local variables in function 'SNAKE_turn'
                            692 ;------------------------------------------------------------
                            693 ;arrow                     Allocated with name '_SNAKE_turn_PARM_2'
                            694 ;snake                     Allocated to registers r2 r3 r4 
                            695 ;------------------------------------------------------------
                            696 ;	../snake.c:120: void SNAKE_turn(Snake *snake, Arrow arrow) {
                            697 ;	-----------------------------------------
                            698 ;	 function SNAKE_turn
                            699 ;	-----------------------------------------
   07C5                     700 _SNAKE_turn:
   07C5 AA 82               701 	mov	r2,dpl
   07C7 AB 83               702 	mov	r3,dph
   07C9 AC F0               703 	mov	r4,b
                            704 ;	../snake.c:122: switch(arrow){
   07CB 74 01               705 	mov	a,#0x01
   07CD B5 3F 02            706 	cjne	a,_SNAKE_turn_PARM_2,00125$
   07D0 80 15               707 	sjmp	00101$
   07D2                     708 00125$:
   07D2 74 02               709 	mov	a,#0x02
   07D4 B5 3F 02            710 	cjne	a,_SNAKE_turn_PARM_2,00126$
   07D7 80 26               711 	sjmp	00104$
   07D9                     712 00126$:
   07D9 74 03               713 	mov	a,#0x03
   07DB B5 3F 02            714 	cjne	a,_SNAKE_turn_PARM_2,00127$
   07DE 80 39               715 	sjmp	00107$
   07E0                     716 00127$:
   07E0 74 04               717 	mov	a,#0x04
                            718 ;	../snake.c:123: case(ARROW_UP): 
   07E2 B5 3F 66            719 	cjne	a,_SNAKE_turn_PARM_2,00115$
   07E5 80 4B               720 	sjmp	00110$
   07E7                     721 00101$:
                            722 ;	../snake.c:124: if(snake->direction != MOVES_DOWN){
   07E7 8A 82               723 	mov	dpl,r2
   07E9 8B 83               724 	mov	dph,r3
   07EB 8C F0               725 	mov	b,r4
   07ED 12 0F D9            726 	lcall	__gptrget
   07F0 FD                  727 	mov	r5,a
   07F1 BD 01 01            728 	cjne	r5,#0x01,00129$
   07F4 22                  729 	ret
   07F5                     730 00129$:
                            731 ;	../snake.c:125: snake->direction = MOVES_UP;
   07F5 8A 82               732 	mov	dpl,r2
   07F7 8B 83               733 	mov	dph,r3
   07F9 8C F0               734 	mov	b,r4
   07FB E4                  735 	clr	a
                            736 ;	../snake.c:127: break;
                            737 ;	../snake.c:128: case(ARROW_DOWN):
   07FC 02 0E D0            738 	ljmp	__gptrput
   07FF                     739 00104$:
                            740 ;	../snake.c:129: if(snake->direction != MOVES_UP){
   07FF 8A 82               741 	mov	dpl,r2
   0801 8B 83               742 	mov	dph,r3
   0803 8C F0               743 	mov	b,r4
   0805 12 0F D9            744 	lcall	__gptrget
   0808 FD                  745 	mov	r5,a
   0809 7E 00               746 	mov	r6,#0x00
   080B 4E                  747 	orl	a,r6
   080C 60 3D               748 	jz	00115$
                            749 ;	../snake.c:130: snake->direction = MOVES_DOWN;
   080E 8A 82               750 	mov	dpl,r2
   0810 8B 83               751 	mov	dph,r3
   0812 8C F0               752 	mov	b,r4
   0814 74 01               753 	mov	a,#0x01
                            754 ;	../snake.c:132: break;
                            755 ;	../snake.c:133: case(ARROW_LEFT):
   0816 02 0E D0            756 	ljmp	__gptrput
   0819                     757 00107$:
                            758 ;	../snake.c:134: if(snake->direction != MOVES_RIGHT){
   0819 8A 82               759 	mov	dpl,r2
   081B 8B 83               760 	mov	dph,r3
   081D 8C F0               761 	mov	b,r4
   081F 12 0F D9            762 	lcall	__gptrget
   0822 FD                  763 	mov	r5,a
   0823 BD 03 01            764 	cjne	r5,#0x03,00131$
   0826 22                  765 	ret
   0827                     766 00131$:
                            767 ;	../snake.c:135: snake->direction = MOVES_LEFT;
   0827 8A 82               768 	mov	dpl,r2
   0829 8B 83               769 	mov	dph,r3
   082B 8C F0               770 	mov	b,r4
   082D 74 02               771 	mov	a,#0x02
                            772 ;	../snake.c:137: break;
                            773 ;	../snake.c:138: case(ARROW_RIGHT):
   082F 02 0E D0            774 	ljmp	__gptrput
   0832                     775 00110$:
                            776 ;	../snake.c:139: if(snake->direction != MOVES_LEFT){
   0832 8A 82               777 	mov	dpl,r2
   0834 8B 83               778 	mov	dph,r3
   0836 8C F0               779 	mov	b,r4
   0838 12 0F D9            780 	lcall	__gptrget
   083B FD                  781 	mov	r5,a
   083C BD 02 01            782 	cjne	r5,#0x02,00132$
   083F 22                  783 	ret
   0840                     784 00132$:
                            785 ;	../snake.c:140: snake->direction = MOVES_RIGHT;
   0840 8A 82               786 	mov	dpl,r2
   0842 8B 83               787 	mov	dph,r3
   0844 8C F0               788 	mov	b,r4
   0846 74 03               789 	mov	a,#0x03
                            790 ;	../snake.c:145: }
   0848 02 0E D0            791 	ljmp	__gptrput
   084B                     792 00115$:
   084B 22                  793 	ret
                            794 ;------------------------------------------------------------
                            795 ;Allocation info for local variables in function 'SNAKE_iterate'
                            796 ;------------------------------------------------------------
                            797 ;arrow                     Allocated with name '_SNAKE_iterate_PARM_2'
                            798 ;snake                     Allocated to registers r2 r3 r4 
                            799 ;------------------------------------------------------------
                            800 ;	../snake.c:155: Status SNAKE_iterate(Snake *snake, Arrow arrow) {
                            801 ;	-----------------------------------------
                            802 ;	 function SNAKE_iterate
                            803 ;	-----------------------------------------
   084C                     804 _SNAKE_iterate:
                            805 ;	../snake.c:156: SNAKE_showBody(snake);
   084C AA 82               806 	mov	r2,dpl
   084E AB 83               807 	mov	r3,dph
   0850 AC F0               808 	mov	r4,b
   0852 C0 02               809 	push	ar2
   0854 C0 03               810 	push	ar3
   0856 C0 04               811 	push	ar4
   0858 12 06 F2            812 	lcall	_SNAKE_showBody
   085B D0 04               813 	pop	ar4
   085D D0 03               814 	pop	ar3
   085F D0 02               815 	pop	ar2
                            816 ;	../snake.c:157: SNAKE_turn(snake, arrow);
   0861 85 2C 3F            817 	mov	_SNAKE_turn_PARM_2,_SNAKE_iterate_PARM_2
   0864 8A 82               818 	mov	dpl,r2
   0866 8B 83               819 	mov	dph,r3
   0868 8C F0               820 	mov	b,r4
   086A C0 02               821 	push	ar2
   086C C0 03               822 	push	ar3
   086E C0 04               823 	push	ar4
   0870 12 07 C5            824 	lcall	_SNAKE_turn
   0873 D0 04               825 	pop	ar4
   0875 D0 03               826 	pop	ar3
   0877 D0 02               827 	pop	ar2
                            828 ;	../snake.c:158: SNAKE_move(snake);
   0879 8A 82               829 	mov	dpl,r2
   087B 8B 83               830 	mov	dph,r3
   087D 8C F0               831 	mov	b,r4
   087F C0 02               832 	push	ar2
   0881 C0 03               833 	push	ar3
   0883 C0 04               834 	push	ar4
   0885 12 04 5F            835 	lcall	_SNAKE_move
   0888 D0 04               836 	pop	ar4
   088A D0 03               837 	pop	ar3
   088C D0 02               838 	pop	ar2
                            839 ;	../snake.c:159: SNAKE_liveOrDie(snake);
   088E 8A 82               840 	mov	dpl,r2
   0890 8B 83               841 	mov	dph,r3
   0892 8C F0               842 	mov	b,r4
   0894 C0 02               843 	push	ar2
   0896 C0 03               844 	push	ar3
   0898 C0 04               845 	push	ar4
   089A 12 05 4A            846 	lcall	_SNAKE_liveOrDie
   089D D0 04               847 	pop	ar4
   089F D0 03               848 	pop	ar3
   08A1 D0 02               849 	pop	ar2
                            850 ;	../snake.c:160: SNAKE_showHead(snake);
   08A3 8A 82               851 	mov	dpl,r2
   08A5 8B 83               852 	mov	dph,r3
   08A7 8C F0               853 	mov	b,r4
   08A9 C0 02               854 	push	ar2
   08AB C0 03               855 	push	ar3
   08AD C0 04               856 	push	ar4
   08AF 12 06 72            857 	lcall	_SNAKE_showHead
   08B2 D0 04               858 	pop	ar4
   08B4 D0 03               859 	pop	ar3
   08B6 D0 02               860 	pop	ar2
                            861 ;	../snake.c:162: return snake->status;
   08B8 74 03               862 	mov	a,#0x03
   08BA 2A                  863 	add	a,r2
   08BB FA                  864 	mov	r2,a
   08BC E4                  865 	clr	a
   08BD 3B                  866 	addc	a,r3
   08BE FB                  867 	mov	r3,a
   08BF 8A 82               868 	mov	dpl,r2
   08C1 8B 83               869 	mov	dph,r3
   08C3 8C F0               870 	mov	b,r4
   08C5 12 0F D9            871 	lcall	__gptrget
   08C8 F5 82               872 	mov	dpl,a
   08CA 22                  873 	ret
                            874 	.area CSEG    (CODE)
                            875 	.area CONST   (CODE)
                            876 	.area XINIT   (CODE)
                            877 	.area CABS    (ABS,CODE)
