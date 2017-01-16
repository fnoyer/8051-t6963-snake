                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:09 2017
                              5 ;--------------------------------------------------------
                              6 	.module stdio_t6963c
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _STDIO_startWritingAt_PARM_2
                             13 	.globl _putchar
                             14 	.globl _STDIO_startWritingAt
                             15 	.globl _STDIO_initialize
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
                            125 	.globl _address
                            126 ;--------------------------------------------------------
                            127 ; special function registers
                            128 ;--------------------------------------------------------
                            129 	.area RSEG    (ABS,DATA)
   0000                     130 	.org 0x0000
                    00E0    131 _ACC	=	0x00e0
                    00F0    132 _B	=	0x00f0
                    0083    133 _DPH	=	0x0083
                    0083    134 _DP0H	=	0x0083
                    0082    135 _DPL	=	0x0082
                    0082    136 _DP0L	=	0x0082
                    00A8    137 _IE	=	0x00a8
                    00B8    138 _IP	=	0x00b8
                    0080    139 _P0	=	0x0080
                    0090    140 _P1	=	0x0090
                    00A0    141 _P2	=	0x00a0
                    00B0    142 _P3	=	0x00b0
                    0087    143 _PCON	=	0x0087
                    00D0    144 _PSW	=	0x00d0
                    0099    145 _SBUF	=	0x0099
                    0099    146 _SBUF0	=	0x0099
                    0098    147 _SCON	=	0x0098
                    0081    148 _SP	=	0x0081
                    0088    149 _TCON	=	0x0088
                    008C    150 _TH0	=	0x008c
                    008D    151 _TH1	=	0x008d
                    008A    152 _TL0	=	0x008a
                    008B    153 _TL1	=	0x008b
                    0089    154 _TMOD	=	0x0089
                            155 ;--------------------------------------------------------
                            156 ; special function bits
                            157 ;--------------------------------------------------------
                            158 	.area RSEG    (ABS,DATA)
   0000                     159 	.org 0x0000
                    00F0    160 _BREG_F0	=	0x00f0
                    00F1    161 _BREG_F1	=	0x00f1
                    00F2    162 _BREG_F2	=	0x00f2
                    00F3    163 _BREG_F3	=	0x00f3
                    00F4    164 _BREG_F4	=	0x00f4
                    00F5    165 _BREG_F5	=	0x00f5
                    00F6    166 _BREG_F6	=	0x00f6
                    00F7    167 _BREG_F7	=	0x00f7
                    00A8    168 _EX0	=	0x00a8
                    00A9    169 _ET0	=	0x00a9
                    00AA    170 _EX1	=	0x00aa
                    00AB    171 _ET1	=	0x00ab
                    00AC    172 _ES	=	0x00ac
                    00AF    173 _EA	=	0x00af
                    00B8    174 _PX0	=	0x00b8
                    00B9    175 _PT0	=	0x00b9
                    00BA    176 _PX1	=	0x00ba
                    00BB    177 _PT1	=	0x00bb
                    00BC    178 _PS	=	0x00bc
                    0080    179 _P0_0	=	0x0080
                    0081    180 _P0_1	=	0x0081
                    0082    181 _P0_2	=	0x0082
                    0083    182 _P0_3	=	0x0083
                    0084    183 _P0_4	=	0x0084
                    0085    184 _P0_5	=	0x0085
                    0086    185 _P0_6	=	0x0086
                    0087    186 _P0_7	=	0x0087
                    0090    187 _P1_0	=	0x0090
                    0091    188 _P1_1	=	0x0091
                    0092    189 _P1_2	=	0x0092
                    0093    190 _P1_3	=	0x0093
                    0094    191 _P1_4	=	0x0094
                    0095    192 _P1_5	=	0x0095
                    0096    193 _P1_6	=	0x0096
                    0097    194 _P1_7	=	0x0097
                    00A0    195 _P2_0	=	0x00a0
                    00A1    196 _P2_1	=	0x00a1
                    00A2    197 _P2_2	=	0x00a2
                    00A3    198 _P2_3	=	0x00a3
                    00A4    199 _P2_4	=	0x00a4
                    00A5    200 _P2_5	=	0x00a5
                    00A6    201 _P2_6	=	0x00a6
                    00A7    202 _P2_7	=	0x00a7
                    00B0    203 _P3_0	=	0x00b0
                    00B1    204 _P3_1	=	0x00b1
                    00B2    205 _P3_2	=	0x00b2
                    00B3    206 _P3_3	=	0x00b3
                    00B4    207 _P3_4	=	0x00b4
                    00B5    208 _P3_5	=	0x00b5
                    00B6    209 _P3_6	=	0x00b6
                    00B7    210 _P3_7	=	0x00b7
                    00B0    211 _RXD	=	0x00b0
                    00B0    212 _RXD0	=	0x00b0
                    00B1    213 _TXD	=	0x00b1
                    00B1    214 _TXD0	=	0x00b1
                    00B2    215 _INT0	=	0x00b2
                    00B3    216 _INT1	=	0x00b3
                    00B4    217 _T0	=	0x00b4
                    00B5    218 _T1	=	0x00b5
                    00B6    219 _WR	=	0x00b6
                    00B7    220 _RD	=	0x00b7
                    00D0    221 _P	=	0x00d0
                    00D1    222 _F1	=	0x00d1
                    00D2    223 _OV	=	0x00d2
                    00D3    224 _RS0	=	0x00d3
                    00D4    225 _RS1	=	0x00d4
                    00D5    226 _F0	=	0x00d5
                    00D6    227 _AC	=	0x00d6
                    00D7    228 _CY	=	0x00d7
                    0098    229 _RI	=	0x0098
                    0099    230 _TI	=	0x0099
                    009A    231 _RB8	=	0x009a
                    009B    232 _TB8	=	0x009b
                    009C    233 _REN	=	0x009c
                    009D    234 _SM2	=	0x009d
                    009E    235 _SM1	=	0x009e
                    009F    236 _SM0	=	0x009f
                    0088    237 _IT0	=	0x0088
                    0089    238 _IE0	=	0x0089
                    008A    239 _IT1	=	0x008a
                    008B    240 _IE1	=	0x008b
                    008C    241 _TR0	=	0x008c
                    008D    242 _TF0	=	0x008d
                    008E    243 _TR1	=	0x008e
                    008F    244 _TF1	=	0x008f
                            245 ;--------------------------------------------------------
                            246 ; overlayable register banks
                            247 ;--------------------------------------------------------
                            248 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     249 	.ds 8
                            250 ;--------------------------------------------------------
                            251 ; internal ram data
                            252 ;--------------------------------------------------------
                            253 	.area DSEG    (DATA)
   0022                     254 _address::
   0022                     255 	.ds 2
                            256 ;--------------------------------------------------------
                            257 ; overlayable items in internal ram 
                            258 ;--------------------------------------------------------
                            259 	.area	OSEG    (OVR,DATA)
   003F                     260 _STDIO_startWritingAt_PARM_2::
   003F                     261 	.ds 1
                            262 ;--------------------------------------------------------
                            263 ; indirectly addressable internal ram data
                            264 ;--------------------------------------------------------
                            265 	.area ISEG    (DATA)
                            266 ;--------------------------------------------------------
                            267 ; absolute internal ram data
                            268 ;--------------------------------------------------------
                            269 	.area IABS    (ABS,DATA)
                            270 	.area IABS    (ABS,DATA)
                            271 ;--------------------------------------------------------
                            272 ; bit data
                            273 ;--------------------------------------------------------
                            274 	.area BSEG    (BIT)
                            275 ;--------------------------------------------------------
                            276 ; paged external ram data
                            277 ;--------------------------------------------------------
                            278 	.area PSEG    (PAG,XDATA)
                            279 ;--------------------------------------------------------
                            280 ; external ram data
                            281 ;--------------------------------------------------------
                            282 	.area XSEG    (XDATA)
                            283 ;--------------------------------------------------------
                            284 ; absolute external ram data
                            285 ;--------------------------------------------------------
                            286 	.area XABS    (ABS,XDATA)
                            287 ;--------------------------------------------------------
                            288 ; external initialized ram data
                            289 ;--------------------------------------------------------
                            290 	.area XISEG   (XDATA)
                            291 	.area HOME    (CODE)
                            292 	.area GSINIT0 (CODE)
                            293 	.area GSINIT1 (CODE)
                            294 	.area GSINIT2 (CODE)
                            295 	.area GSINIT3 (CODE)
                            296 	.area GSINIT4 (CODE)
                            297 	.area GSINIT5 (CODE)
                            298 	.area GSINIT  (CODE)
                            299 	.area GSFINAL (CODE)
                            300 	.area CSEG    (CODE)
                            301 ;--------------------------------------------------------
                            302 ; global & static initialisations
                            303 ;--------------------------------------------------------
                            304 	.area HOME    (CODE)
                            305 	.area GSINIT  (CODE)
                            306 	.area GSFINAL (CODE)
                            307 	.area GSINIT  (CODE)
                            308 ;	../stdio-t6963c.c:5: unsigned int address = 0;
   0067 E4                  309 	clr	a
   0068 F5 22               310 	mov	_address,a
   006A F5 23               311 	mov	(_address + 1),a
                            312 ;--------------------------------------------------------
                            313 ; Home
                            314 ;--------------------------------------------------------
                            315 	.area HOME    (CODE)
                            316 	.area HOME    (CODE)
                            317 ;--------------------------------------------------------
                            318 ; code
                            319 ;--------------------------------------------------------
                            320 	.area CSEG    (CODE)
                            321 ;------------------------------------------------------------
                            322 ;Allocation info for local variables in function 'STDIO_initialize'
                            323 ;------------------------------------------------------------
                            324 ;------------------------------------------------------------
                            325 ;	../stdio-t6963c.c:11: void STDIO_initialize() {
                            326 ;	-----------------------------------------
                            327 ;	 function STDIO_initialize
                            328 ;	-----------------------------------------
   0368                     329 _STDIO_initialize:
                    0002    330 	ar2 = 0x02
                    0003    331 	ar3 = 0x03
                    0004    332 	ar4 = 0x04
                    0005    333 	ar5 = 0x05
                    0006    334 	ar6 = 0x06
                    0007    335 	ar7 = 0x07
                    0000    336 	ar0 = 0x00
                    0001    337 	ar1 = 0x01
                            338 ;	../stdio-t6963c.c:12: T6963C_initialize();
   0368 02 03 21            339 	ljmp	_T6963C_initialize
                            340 ;------------------------------------------------------------
                            341 ;Allocation info for local variables in function 'STDIO_startWritingAt'
                            342 ;------------------------------------------------------------
                            343 ;y                         Allocated with name '_STDIO_startWritingAt_PARM_2'
                            344 ;x                         Allocated to registers r2 
                            345 ;------------------------------------------------------------
                            346 ;	../stdio-t6963c.c:21: void STDIO_startWritingAt(unsigned char x, unsigned char y) {
                            347 ;	-----------------------------------------
                            348 ;	 function STDIO_startWritingAt
                            349 ;	-----------------------------------------
   036B                     350 _STDIO_startWritingAt:
   036B AA 82               351 	mov	r2,dpl
                            352 ;	../stdio-t6963c.c:22: address = x + y * T6963C_COLONNES;
   036D 7B 00               353 	mov	r3,#0x00
   036F E5 3F               354 	mov	a,_STDIO_startWritingAt_PARM_2
   0371 75 F0 1E            355 	mov	b,#0x1E
   0374 A4                  356 	mul	ab
   0375 2A                  357 	add	a,r2
   0376 F5 22               358 	mov	_address,a
   0378 EB                  359 	mov	a,r3
   0379 35 F0               360 	addc	a,b
   037B F5 23               361 	mov	(_address + 1),a
   037D 22                  362 	ret
                            363 ;------------------------------------------------------------
                            364 ;Allocation info for local variables in function 'putchar'
                            365 ;------------------------------------------------------------
                            366 ;c                         Allocated to registers r2 
                            367 ;------------------------------------------------------------
                            368 ;	../stdio-t6963c.c:29: char putchar(char c) {
                            369 ;	-----------------------------------------
                            370 ;	 function putchar
                            371 ;	-----------------------------------------
   037E                     372 _putchar:
   037E AA 82               373 	mov	r2,dpl
                            374 ;	../stdio-t6963c.c:30: switch(c) {
   0380 BA E0 02            375 	cjne	r2,#0xE0,00115$
   0383 80 78               376 	sjmp	00105$
   0385                     377 00115$:
   0385 BA E9 02            378 	cjne	r2,#0xE9,00116$
   0388 80 59               379 	sjmp	00104$
   038A                     380 00116$:
   038A BA 09 02            381 	cjne	r2,#0x09,00117$
   038D 80 47               382 	sjmp	00103$
   038F                     383 00117$:
   038F BA 0A 02            384 	cjne	r2,#0x0A,00118$
   0392 80 07               385 	sjmp	00101$
   0394                     386 00118$:
   0394 BA 0D 02            387 	cjne	r2,#0x0D,00119$
   0397 80 10               388 	sjmp	00102$
   0399                     389 00119$:
                            390 ;	../stdio-t6963c.c:31: case '\n':
   0399 80 7C               391 	sjmp	00106$
   039B                     392 00101$:
                            393 ;	../stdio-t6963c.c:32: address += T6963C_COLONNES;
   039B 74 1E               394 	mov	a,#0x1E
   039D 25 22               395 	add	a,_address
   039F F5 22               396 	mov	_address,a
   03A1 E4                  397 	clr	a
   03A2 35 23               398 	addc	a,(_address + 1)
   03A4 F5 23               399 	mov	(_address + 1),a
                            400 ;	../stdio-t6963c.c:33: break;
   03A6 02 04 31            401 	ljmp	00107$
                            402 ;	../stdio-t6963c.c:35: case '\r':
   03A9                     403 00102$:
                            404 ;	../stdio-t6963c.c:36: address /= T6963C_COLONNES;
   03A9 75 3F 1E            405 	mov	__divuint_PARM_2,#0x1E
   03AC 75 40 00            406 	mov	(__divuint_PARM_2 + 1),#0x00
   03AF 85 22 82            407 	mov	dpl,_address
   03B2 85 23 83            408 	mov	dph,(_address + 1)
   03B5 C0 02               409 	push	ar2
   03B7 12 0E 5C            410 	lcall	__divuint
   03BA 85 82 22            411 	mov	_address,dpl
   03BD 85 83 23            412 	mov	(_address + 1),dph
                            413 ;	../stdio-t6963c.c:37: address *= T6963C_COLONNES;
   03C0 85 22 3F            414 	mov	__mulint_PARM_2,_address
   03C3 85 23 40            415 	mov	(__mulint_PARM_2 + 1),(_address + 1)
   03C6 90 00 1E            416 	mov	dptr,#0x001E
   03C9 12 0E E9            417 	lcall	__mulint
   03CC 85 82 22            418 	mov	_address,dpl
   03CF 85 83 23            419 	mov	(_address + 1),dph
   03D2 D0 02               420 	pop	ar2
                            421 ;	../stdio-t6963c.c:38: break;
                            422 ;	../stdio-t6963c.c:40: case '\t':
   03D4 80 5B               423 	sjmp	00107$
   03D6                     424 00103$:
                            425 ;	../stdio-t6963c.c:41: address += 3;
   03D6 74 03               426 	mov	a,#0x03
   03D8 25 22               427 	add	a,_address
   03DA F5 22               428 	mov	_address,a
   03DC E4                  429 	clr	a
   03DD 35 23               430 	addc	a,(_address + 1)
   03DF F5 23               431 	mov	(_address + 1),a
                            432 ;	../stdio-t6963c.c:42: break;
                            433 ;	../stdio-t6963c.c:44: case 'é':
   03E1 80 4E               434 	sjmp	00107$
   03E3                     435 00104$:
                            436 ;	../stdio-t6963c.c:45: T6963C_dataWrite(T6963C_ZONE_TEXTE + address++, 0x62);
   03E3 85 22 82            437 	mov	dpl,_address
   03E6 85 23 83            438 	mov	dph,(_address + 1)
   03E9 05 22               439 	inc	_address
   03EB E4                  440 	clr	a
   03EC B5 22 02            441 	cjne	a,_address,00120$
   03EF 05 23               442 	inc	(_address + 1)
   03F1                     443 00120$:
   03F1 75 14 62            444 	mov	_T6963C_dataWrite_PARM_2,#0x62
   03F4 C0 02               445 	push	ar2
   03F6 12 01 D9            446 	lcall	_T6963C_dataWrite
   03F9 D0 02               447 	pop	ar2
                            448 ;	../stdio-t6963c.c:46: break;
                            449 ;	../stdio-t6963c.c:48: case 'à':
   03FB 80 34               450 	sjmp	00107$
   03FD                     451 00105$:
                            452 ;	../stdio-t6963c.c:49: T6963C_dataWrite(T6963C_ZONE_TEXTE + address++, 0x65);
   03FD 85 22 82            453 	mov	dpl,_address
   0400 85 23 83            454 	mov	dph,(_address + 1)
   0403 05 22               455 	inc	_address
   0405 E4                  456 	clr	a
   0406 B5 22 02            457 	cjne	a,_address,00121$
   0409 05 23               458 	inc	(_address + 1)
   040B                     459 00121$:
   040B 75 14 65            460 	mov	_T6963C_dataWrite_PARM_2,#0x65
   040E C0 02               461 	push	ar2
   0410 12 01 D9            462 	lcall	_T6963C_dataWrite
   0413 D0 02               463 	pop	ar2
                            464 ;	../stdio-t6963c.c:50: break;
                            465 ;	../stdio-t6963c.c:52: default:
   0415 80 1A               466 	sjmp	00107$
   0417                     467 00106$:
                            468 ;	../stdio-t6963c.c:53: T6963C_dataWrite(T6963C_ZONE_TEXTE + address++, c - 32);
   0417 85 22 82            469 	mov	dpl,_address
   041A 85 23 83            470 	mov	dph,(_address + 1)
   041D 05 22               471 	inc	_address
   041F E4                  472 	clr	a
   0420 B5 22 02            473 	cjne	a,_address,00122$
   0423 05 23               474 	inc	(_address + 1)
   0425                     475 00122$:
   0425 EA                  476 	mov	a,r2
   0426 24 E0               477 	add	a,#0xe0
   0428 F5 14               478 	mov	_T6963C_dataWrite_PARM_2,a
   042A C0 02               479 	push	ar2
   042C 12 01 D9            480 	lcall	_T6963C_dataWrite
   042F D0 02               481 	pop	ar2
                            482 ;	../stdio-t6963c.c:55: }
   0431                     483 00107$:
                            484 ;	../stdio-t6963c.c:56: return c;
   0431 8A 82               485 	mov	dpl,r2
   0433 22                  486 	ret
                            487 	.area CSEG    (CODE)
                            488 	.area CONST   (CODE)
                            489 	.area XINIT   (CODE)
                            490 	.area CABS    (ABS,CODE)
