                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:09 2017
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _play
                             14 	.globl _initialize
                             15 	.globl _pause
                             16 	.globl _TF1
                             17 	.globl _TR1
                             18 	.globl _TF0
                             19 	.globl _TR0
                             20 	.globl _IE1
                             21 	.globl _IT1
                             22 	.globl _IE0
                             23 	.globl _IT0
                             24 	.globl _SM0
                             25 	.globl _SM1
                             26 	.globl _SM2
                             27 	.globl _REN
                             28 	.globl _TB8
                             29 	.globl _RB8
                             30 	.globl _TI
                             31 	.globl _RI
                             32 	.globl _CY
                             33 	.globl _AC
                             34 	.globl _F0
                             35 	.globl _RS1
                             36 	.globl _RS0
                             37 	.globl _OV
                             38 	.globl _F1
                             39 	.globl _P
                             40 	.globl _RD
                             41 	.globl _WR
                             42 	.globl _T1
                             43 	.globl _T0
                             44 	.globl _INT1
                             45 	.globl _INT0
                             46 	.globl _TXD0
                             47 	.globl _TXD
                             48 	.globl _RXD0
                             49 	.globl _RXD
                             50 	.globl _P3_7
                             51 	.globl _P3_6
                             52 	.globl _P3_5
                             53 	.globl _P3_4
                             54 	.globl _P3_3
                             55 	.globl _P3_2
                             56 	.globl _P3_1
                             57 	.globl _P3_0
                             58 	.globl _P2_7
                             59 	.globl _P2_6
                             60 	.globl _P2_5
                             61 	.globl _P2_4
                             62 	.globl _P2_3
                             63 	.globl _P2_2
                             64 	.globl _P2_1
                             65 	.globl _P2_0
                             66 	.globl _P1_7
                             67 	.globl _P1_6
                             68 	.globl _P1_5
                             69 	.globl _P1_4
                             70 	.globl _P1_3
                             71 	.globl _P1_2
                             72 	.globl _P1_1
                             73 	.globl _P1_0
                             74 	.globl _P0_7
                             75 	.globl _P0_6
                             76 	.globl _P0_5
                             77 	.globl _P0_4
                             78 	.globl _P0_3
                             79 	.globl _P0_2
                             80 	.globl _P0_1
                             81 	.globl _P0_0
                             82 	.globl _PS
                             83 	.globl _PT1
                             84 	.globl _PX1
                             85 	.globl _PT0
                             86 	.globl _PX0
                             87 	.globl _EA
                             88 	.globl _ES
                             89 	.globl _ET1
                             90 	.globl _EX1
                             91 	.globl _ET0
                             92 	.globl _EX0
                             93 	.globl _BREG_F7
                             94 	.globl _BREG_F6
                             95 	.globl _BREG_F5
                             96 	.globl _BREG_F4
                             97 	.globl _BREG_F3
                             98 	.globl _BREG_F2
                             99 	.globl _BREG_F1
                            100 	.globl _BREG_F0
                            101 	.globl _TMOD
                            102 	.globl _TL1
                            103 	.globl _TL0
                            104 	.globl _TH1
                            105 	.globl _TH0
                            106 	.globl _TCON
                            107 	.globl _SP
                            108 	.globl _SCON
                            109 	.globl _SBUF0
                            110 	.globl _SBUF
                            111 	.globl _PSW
                            112 	.globl _PCON
                            113 	.globl _P3
                            114 	.globl _P2
                            115 	.globl _P1
                            116 	.globl _P0
                            117 	.globl _IP
                            118 	.globl _IE
                            119 	.globl _DP0L
                            120 	.globl _DPL
                            121 	.globl _DP0H
                            122 	.globl _DPH
                            123 	.globl _B
                            124 	.globl _ACC
                            125 ;--------------------------------------------------------
                            126 ; special function registers
                            127 ;--------------------------------------------------------
                            128 	.area RSEG    (ABS,DATA)
   0000                     129 	.org 0x0000
                    00E0    130 _ACC	=	0x00e0
                    00F0    131 _B	=	0x00f0
                    0083    132 _DPH	=	0x0083
                    0083    133 _DP0H	=	0x0083
                    0082    134 _DPL	=	0x0082
                    0082    135 _DP0L	=	0x0082
                    00A8    136 _IE	=	0x00a8
                    00B8    137 _IP	=	0x00b8
                    0080    138 _P0	=	0x0080
                    0090    139 _P1	=	0x0090
                    00A0    140 _P2	=	0x00a0
                    00B0    141 _P3	=	0x00b0
                    0087    142 _PCON	=	0x0087
                    00D0    143 _PSW	=	0x00d0
                    0099    144 _SBUF	=	0x0099
                    0099    145 _SBUF0	=	0x0099
                    0098    146 _SCON	=	0x0098
                    0081    147 _SP	=	0x0081
                    0088    148 _TCON	=	0x0088
                    008C    149 _TH0	=	0x008c
                    008D    150 _TH1	=	0x008d
                    008A    151 _TL0	=	0x008a
                    008B    152 _TL1	=	0x008b
                    0089    153 _TMOD	=	0x0089
                            154 ;--------------------------------------------------------
                            155 ; special function bits
                            156 ;--------------------------------------------------------
                            157 	.area RSEG    (ABS,DATA)
   0000                     158 	.org 0x0000
                    00F0    159 _BREG_F0	=	0x00f0
                    00F1    160 _BREG_F1	=	0x00f1
                    00F2    161 _BREG_F2	=	0x00f2
                    00F3    162 _BREG_F3	=	0x00f3
                    00F4    163 _BREG_F4	=	0x00f4
                    00F5    164 _BREG_F5	=	0x00f5
                    00F6    165 _BREG_F6	=	0x00f6
                    00F7    166 _BREG_F7	=	0x00f7
                    00A8    167 _EX0	=	0x00a8
                    00A9    168 _ET0	=	0x00a9
                    00AA    169 _EX1	=	0x00aa
                    00AB    170 _ET1	=	0x00ab
                    00AC    171 _ES	=	0x00ac
                    00AF    172 _EA	=	0x00af
                    00B8    173 _PX0	=	0x00b8
                    00B9    174 _PT0	=	0x00b9
                    00BA    175 _PX1	=	0x00ba
                    00BB    176 _PT1	=	0x00bb
                    00BC    177 _PS	=	0x00bc
                    0080    178 _P0_0	=	0x0080
                    0081    179 _P0_1	=	0x0081
                    0082    180 _P0_2	=	0x0082
                    0083    181 _P0_3	=	0x0083
                    0084    182 _P0_4	=	0x0084
                    0085    183 _P0_5	=	0x0085
                    0086    184 _P0_6	=	0x0086
                    0087    185 _P0_7	=	0x0087
                    0090    186 _P1_0	=	0x0090
                    0091    187 _P1_1	=	0x0091
                    0092    188 _P1_2	=	0x0092
                    0093    189 _P1_3	=	0x0093
                    0094    190 _P1_4	=	0x0094
                    0095    191 _P1_5	=	0x0095
                    0096    192 _P1_6	=	0x0096
                    0097    193 _P1_7	=	0x0097
                    00A0    194 _P2_0	=	0x00a0
                    00A1    195 _P2_1	=	0x00a1
                    00A2    196 _P2_2	=	0x00a2
                    00A3    197 _P2_3	=	0x00a3
                    00A4    198 _P2_4	=	0x00a4
                    00A5    199 _P2_5	=	0x00a5
                    00A6    200 _P2_6	=	0x00a6
                    00A7    201 _P2_7	=	0x00a7
                    00B0    202 _P3_0	=	0x00b0
                    00B1    203 _P3_1	=	0x00b1
                    00B2    204 _P3_2	=	0x00b2
                    00B3    205 _P3_3	=	0x00b3
                    00B4    206 _P3_4	=	0x00b4
                    00B5    207 _P3_5	=	0x00b5
                    00B6    208 _P3_6	=	0x00b6
                    00B7    209 _P3_7	=	0x00b7
                    00B0    210 _RXD	=	0x00b0
                    00B0    211 _RXD0	=	0x00b0
                    00B1    212 _TXD	=	0x00b1
                    00B1    213 _TXD0	=	0x00b1
                    00B2    214 _INT0	=	0x00b2
                    00B3    215 _INT1	=	0x00b3
                    00B4    216 _T0	=	0x00b4
                    00B5    217 _T1	=	0x00b5
                    00B6    218 _WR	=	0x00b6
                    00B7    219 _RD	=	0x00b7
                    00D0    220 _P	=	0x00d0
                    00D1    221 _F1	=	0x00d1
                    00D2    222 _OV	=	0x00d2
                    00D3    223 _RS0	=	0x00d3
                    00D4    224 _RS1	=	0x00d4
                    00D5    225 _F0	=	0x00d5
                    00D6    226 _AC	=	0x00d6
                    00D7    227 _CY	=	0x00d7
                    0098    228 _RI	=	0x0098
                    0099    229 _TI	=	0x0099
                    009A    230 _RB8	=	0x009a
                    009B    231 _TB8	=	0x009b
                    009C    232 _REN	=	0x009c
                    009D    233 _SM2	=	0x009d
                    009E    234 _SM1	=	0x009e
                    009F    235 _SM0	=	0x009f
                    0088    236 _IT0	=	0x0088
                    0089    237 _IE0	=	0x0089
                    008A    238 _IT1	=	0x008a
                    008B    239 _IE1	=	0x008b
                    008C    240 _TR0	=	0x008c
                    008D    241 _TF0	=	0x008d
                    008E    242 _TR1	=	0x008e
                    008F    243 _TF1	=	0x008f
                            244 ;--------------------------------------------------------
                            245 ; overlayable register banks
                            246 ;--------------------------------------------------------
                            247 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     248 	.ds 8
                            249 ;--------------------------------------------------------
                            250 ; internal ram data
                            251 ;--------------------------------------------------------
                            252 	.area DSEG    (DATA)
   0008                     253 _play_snake_1_1:
   0008                     254 	.ds 5
                            255 ;--------------------------------------------------------
                            256 ; overlayable items in internal ram 
                            257 ;--------------------------------------------------------
                            258 	.area	OSEG    (OVR,DATA)
                            259 ;--------------------------------------------------------
                            260 ; Stack segment in internal ram 
                            261 ;--------------------------------------------------------
                            262 	.area	SSEG	(DATA)
   0043                     263 __start__stack:
   0043                     264 	.ds	1
                            265 
                            266 ;--------------------------------------------------------
                            267 ; indirectly addressable internal ram data
                            268 ;--------------------------------------------------------
                            269 	.area ISEG    (DATA)
                            270 ;--------------------------------------------------------
                            271 ; absolute internal ram data
                            272 ;--------------------------------------------------------
                            273 	.area IABS    (ABS,DATA)
                            274 	.area IABS    (ABS,DATA)
                            275 ;--------------------------------------------------------
                            276 ; bit data
                            277 ;--------------------------------------------------------
                            278 	.area BSEG    (BIT)
                            279 ;--------------------------------------------------------
                            280 ; paged external ram data
                            281 ;--------------------------------------------------------
                            282 	.area PSEG    (PAG,XDATA)
                            283 ;--------------------------------------------------------
                            284 ; external ram data
                            285 ;--------------------------------------------------------
                            286 	.area XSEG    (XDATA)
                            287 ;--------------------------------------------------------
                            288 ; absolute external ram data
                            289 ;--------------------------------------------------------
                            290 	.area XABS    (ABS,XDATA)
                            291 ;--------------------------------------------------------
                            292 ; external initialized ram data
                            293 ;--------------------------------------------------------
                            294 	.area XISEG   (XDATA)
                            295 	.area HOME    (CODE)
                            296 	.area GSINIT0 (CODE)
                            297 	.area GSINIT1 (CODE)
                            298 	.area GSINIT2 (CODE)
                            299 	.area GSINIT3 (CODE)
                            300 	.area GSINIT4 (CODE)
                            301 	.area GSINIT5 (CODE)
                            302 	.area GSINIT  (CODE)
                            303 	.area GSFINAL (CODE)
                            304 	.area CSEG    (CODE)
                            305 ;--------------------------------------------------------
                            306 ; interrupt vector 
                            307 ;--------------------------------------------------------
                            308 	.area HOME    (CODE)
   0000                     309 __interrupt_vect:
   0000 02 00 08            310 	ljmp	__sdcc_gsinit_startup
                            311 ;--------------------------------------------------------
                            312 ; global & static initialisations
                            313 ;--------------------------------------------------------
                            314 	.area HOME    (CODE)
                            315 	.area GSINIT  (CODE)
                            316 	.area GSFINAL (CODE)
                            317 	.area GSINIT  (CODE)
                            318 	.globl __sdcc_gsinit_startup
                            319 	.globl __sdcc_program_startup
                            320 	.globl __start__stack
                            321 	.globl __mcs51_genXINIT
                            322 	.globl __mcs51_genXRAMCLEAR
                            323 	.globl __mcs51_genRAMCLEAR
                            324 	.area GSFINAL (CODE)
   007C 02 00 03            325 	ljmp	__sdcc_program_startup
                            326 ;--------------------------------------------------------
                            327 ; Home
                            328 ;--------------------------------------------------------
                            329 	.area HOME    (CODE)
                            330 	.area HOME    (CODE)
   0003                     331 __sdcc_program_startup:
   0003 12 01 2D            332 	lcall	_main
                            333 ;	return from main will lock up
   0006 80 FE               334 	sjmp .
                            335 ;--------------------------------------------------------
                            336 ; code
                            337 ;--------------------------------------------------------
                            338 	.area CSEG    (CODE)
                            339 ;------------------------------------------------------------
                            340 ;Allocation info for local variables in function 'pause'
                            341 ;------------------------------------------------------------
                            342 ;t                         Allocated to registers r2 r3 
                            343 ;n                         Allocated to registers r4 r5 
                            344 ;------------------------------------------------------------
                            345 ;	../main.c:16: void pause(unsigned int t) {
                            346 ;	-----------------------------------------
                            347 ;	 function pause
                            348 ;	-----------------------------------------
   007F                     349 _pause:
                    0002    350 	ar2 = 0x02
                    0003    351 	ar3 = 0x03
                    0004    352 	ar4 = 0x04
                    0005    353 	ar5 = 0x05
                    0006    354 	ar6 = 0x06
                    0007    355 	ar7 = 0x07
                    0000    356 	ar0 = 0x00
                    0001    357 	ar1 = 0x01
   007F AA 82               358 	mov	r2,dpl
   0081 AB 83               359 	mov	r3,dph
                            360 ;	../main.c:18: for (n=0; n < t; n++);
   0083 7C 00               361 	mov	r4,#0x00
   0085 7D 00               362 	mov	r5,#0x00
   0087                     363 00101$:
   0087 C3                  364 	clr	c
   0088 EC                  365 	mov	a,r4
   0089 9A                  366 	subb	a,r2
   008A ED                  367 	mov	a,r5
   008B 9B                  368 	subb	a,r3
   008C 50 07               369 	jnc	00105$
   008E 0C                  370 	inc	r4
   008F BC 00 F5            371 	cjne	r4,#0x00,00101$
   0092 0D                  372 	inc	r5
   0093 80 F2               373 	sjmp	00101$
   0095                     374 00105$:
   0095 22                  375 	ret
                            376 ;------------------------------------------------------------
                            377 ;Allocation info for local variables in function 'initialize'
                            378 ;------------------------------------------------------------
                            379 ;------------------------------------------------------------
                            380 ;	../main.c:21: void initialize() {
                            381 ;	-----------------------------------------
                            382 ;	 function initialize
                            383 ;	-----------------------------------------
   0096                     384 _initialize:
                            385 ;	../main.c:22: STDIO_initialize();
   0096 12 03 68            386 	lcall	_STDIO_initialize
                            387 ;	../main.c:23: GMB_initialize();
   0099 02 0B 96            388 	ljmp	_GMB_initialize
                            389 ;------------------------------------------------------------
                            390 ;Allocation info for local variables in function 'play'
                            391 ;------------------------------------------------------------
                            392 ;snake                     Allocated with name '_play_snake_1_1'
                            393 ;keyboard                  Allocated to registers r2 r3 r4 
                            394 ;arrow                     Allocated to registers 
                            395 ;------------------------------------------------------------
                            396 ;	../main.c:26: void play() {
                            397 ;	-----------------------------------------
                            398 ;	 function play
                            399 ;	-----------------------------------------
   009C                     400 _play:
                            401 ;	../main.c:27: Snake snake = {MOVES_RIGHT, {10, 10}, ALIVE, 5};
   009C 75 08 03            402 	mov	_play_snake_1_1,#0x03
   009F 75 09 0A            403 	mov	(_play_snake_1_1 + 0x0001),#0x0A
   00A2 75 0A 0A            404 	mov	(_play_snake_1_1 + 0x0002),#0x0A
   00A5 75 0B 00            405 	mov	(_play_snake_1_1 + 0x0003),#0x00
   00A8 75 0C 05            406 	mov	(_play_snake_1_1 + 0x0004),#0x05
                            407 ;	../main.c:28: unsigned char *keyboard = (unsigned char __xdata *) 0x3000;
   00AB 7A 00               408 	mov	r2,#0x00
   00AD 7B 30               409 	mov	r3,#0x30
   00AF 7C 00               410 	mov	r4,#0x00
                            411 ;	../main.c:31: GMB_draw(SNAKE_LIMIT_X0, SNAKE_LIMIT_Y0, SNAKE_LIMIT_X1, SNAKE_LIMIT_Y1);
   00B1 75 30 00            412 	mov	_GMB_draw_PARM_2,#0x00
   00B4 75 31 1D            413 	mov	_GMB_draw_PARM_3,#0x1D
   00B7 75 32 0F            414 	mov	_GMB_draw_PARM_4,#0x0F
   00BA 75 82 00            415 	mov	dpl,#0x00
   00BD C0 02               416 	push	ar2
   00BF C0 03               417 	push	ar3
   00C1 C0 04               418 	push	ar4
   00C3 12 0C 0B            419 	lcall	_GMB_draw
                            420 ;	../main.c:32: FRUIT_place();
   00C6 12 0B 5D            421 	lcall	_FRUIT_place
   00C9 D0 04               422 	pop	ar4
   00CB D0 03               423 	pop	ar3
   00CD D0 02               424 	pop	ar2
                            425 ;	../main.c:33: do {
   00CF                     426 00103$:
                            427 ;	../main.c:34: arrow = KEYBOARD_readArrows(keyboard);
   00CF 8A 82               428 	mov	dpl,r2
   00D1 8B 83               429 	mov	dph,r3
   00D3 8C F0               430 	mov	b,r4
   00D5 C0 02               431 	push	ar2
   00D7 C0 03               432 	push	ar3
   00D9 C0 04               433 	push	ar4
   00DB 12 08 CB            434 	lcall	_KEYBOARD_readArrows
   00DE 85 82 2C            435 	mov	_SNAKE_iterate_PARM_2,dpl
                            436 ;	../main.c:35: if (SNAKE_iterate(&snake, arrow) == EATING) {
   00E1 90 00 08            437 	mov	dptr,#_play_snake_1_1
   00E4 75 F0 40            438 	mov	b,#0x40
   00E7 12 08 4C            439 	lcall	_SNAKE_iterate
   00EA AD 82               440 	mov	r5,dpl
   00EC D0 04               441 	pop	ar4
   00EE D0 03               442 	pop	ar3
   00F0 D0 02               443 	pop	ar2
   00F2 BD 02 0F            444 	cjne	r5,#0x02,00102$
                            445 ;	../main.c:36: FRUIT_place();
   00F5 C0 02               446 	push	ar2
   00F7 C0 03               447 	push	ar3
   00F9 C0 04               448 	push	ar4
   00FB 12 0B 5D            449 	lcall	_FRUIT_place
   00FE D0 04               450 	pop	ar4
   0100 D0 03               451 	pop	ar3
   0102 D0 02               452 	pop	ar2
   0104                     453 00102$:
                            454 ;	../main.c:38: pause(20000);
   0104 90 4E 20            455 	mov	dptr,#0x4E20
   0107 C0 02               456 	push	ar2
   0109 C0 03               457 	push	ar3
   010B C0 04               458 	push	ar4
   010D 12 00 7F            459 	lcall	_pause
   0110 D0 04               460 	pop	ar4
   0112 D0 03               461 	pop	ar3
   0114 D0 02               462 	pop	ar2
                            463 ;	../main.c:39: } while (snake.status != DEAD);
   0116 74 01               464 	mov	a,#0x01
   0118 B5 0B B4            465 	cjne	a,(_play_snake_1_1 + 0x0003),00103$
                            466 ;	../main.c:40: GMB_display(3, 7, " Le serpent est mort ");
   011B 75 37 2F            467 	mov	_GMB_display_PARM_3,#__str_0
   011E 75 38 10            468 	mov	(_GMB_display_PARM_3 + 1),#(__str_0 >> 8)
   0121 75 39 80            469 	mov	(_GMB_display_PARM_3 + 2),#0x80
   0124 75 36 07            470 	mov	_GMB_display_PARM_2,#0x07
   0127 75 82 03            471 	mov	dpl,#0x03
   012A 02 0D 25            472 	ljmp	_GMB_display
                            473 ;------------------------------------------------------------
                            474 ;Allocation info for local variables in function 'main'
                            475 ;------------------------------------------------------------
                            476 ;------------------------------------------------------------
                            477 ;	../main.c:43: void main(void) {
                            478 ;	-----------------------------------------
                            479 ;	 function main
                            480 ;	-----------------------------------------
   012D                     481 _main:
                            482 ;	../main.c:44: initialize();
   012D 12 00 96            483 	lcall	_initialize
                            484 ;	../main.c:45: play();
   0130 12 00 9C            485 	lcall	_play
                            486 ;	../main.c:47: while(1);
   0133                     487 00102$:
   0133 80 FE               488 	sjmp	00102$
                            489 	.area CSEG    (CODE)
                            490 	.area CONST   (CODE)
   102F                     491 __str_0:
   102F 20 4C 65 20 73 65   492 	.ascii " Le serpent est mort "
        72 70 65 6E 74 20
        65 73 74 20 6D 6F
        72 74 20
   1044 00                  493 	.db 0x00
                            494 	.area XINIT   (CODE)
                            495 	.area CABS    (ABS,CODE)
