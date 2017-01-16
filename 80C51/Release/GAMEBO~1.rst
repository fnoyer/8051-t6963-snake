                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:10 2017
                              5 ;--------------------------------------------------------
                              6 	.module gameboard
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _GMB_copyFromRomToCg
                             13 	.globl _GMB_display_PARM_3
                             14 	.globl _GMB_display_PARM_2
                             15 	.globl _GMB_clear_PARM_4
                             16 	.globl _GMB_clear_PARM_3
                             17 	.globl _GMB_clear_PARM_2
                             18 	.globl _GMB_draw_PARM_4
                             19 	.globl _GMB_draw_PARM_3
                             20 	.globl _GMB_draw_PARM_2
                             21 	.globl _GMB_copyFromRomToCg_PARM_2
                             22 	.globl _GMB_initialize
                             23 	.globl _GMB_draw
                             24 	.globl _GMB_clear
                             25 	.globl _GMB_display
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (ABS,DATA)
   0000                      30 	.org 0x0000
                             31 ;--------------------------------------------------------
                             32 ; special function bits
                             33 ;--------------------------------------------------------
                             34 	.area RSEG    (ABS,DATA)
   0000                      35 	.org 0x0000
                             36 ;--------------------------------------------------------
                             37 ; overlayable register banks
                             38 ;--------------------------------------------------------
                             39 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      40 	.ds 8
                             41 ;--------------------------------------------------------
                             42 ; internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area DSEG    (DATA)
   002F                      45 _GMB_copyFromRomToCg_PARM_2:
   002F                      46 	.ds 1
   0030                      47 _GMB_draw_PARM_2:
   0030                      48 	.ds 1
   0031                      49 _GMB_draw_PARM_3:
   0031                      50 	.ds 1
   0032                      51 _GMB_draw_PARM_4:
   0032                      52 	.ds 1
   0033                      53 _GMB_clear_PARM_2:
   0033                      54 	.ds 1
   0034                      55 _GMB_clear_PARM_3:
   0034                      56 	.ds 1
   0035                      57 _GMB_clear_PARM_4:
   0035                      58 	.ds 1
   0036                      59 _GMB_display_PARM_2:
   0036                      60 	.ds 1
   0037                      61 _GMB_display_PARM_3:
   0037                      62 	.ds 3
   003A                      63 _GMB_display_taille_1_1:
   003A                      64 	.ds 1
                             65 ;--------------------------------------------------------
                             66 ; overlayable items in internal ram 
                             67 ;--------------------------------------------------------
                             68 	.area OSEG    (OVR,DATA)
                             69 ;--------------------------------------------------------
                             70 ; indirectly addressable internal ram data
                             71 ;--------------------------------------------------------
                             72 	.area ISEG    (DATA)
                             73 ;--------------------------------------------------------
                             74 ; absolute internal ram data
                             75 ;--------------------------------------------------------
                             76 	.area IABS    (ABS,DATA)
                             77 	.area IABS    (ABS,DATA)
                             78 ;--------------------------------------------------------
                             79 ; bit data
                             80 ;--------------------------------------------------------
                             81 	.area BSEG    (BIT)
                             82 ;--------------------------------------------------------
                             83 ; paged external ram data
                             84 ;--------------------------------------------------------
                             85 	.area PSEG    (PAG,XDATA)
                             86 ;--------------------------------------------------------
                             87 ; external ram data
                             88 ;--------------------------------------------------------
                             89 	.area XSEG    (XDATA)
                             90 ;--------------------------------------------------------
                             91 ; absolute external ram data
                             92 ;--------------------------------------------------------
                             93 	.area XABS    (ABS,XDATA)
                             94 ;--------------------------------------------------------
                             95 ; external initialized ram data
                             96 ;--------------------------------------------------------
                             97 	.area XISEG   (XDATA)
                             98 	.area HOME    (CODE)
                             99 	.area GSINIT0 (CODE)
                            100 	.area GSINIT1 (CODE)
                            101 	.area GSINIT2 (CODE)
                            102 	.area GSINIT3 (CODE)
                            103 	.area GSINIT4 (CODE)
                            104 	.area GSINIT5 (CODE)
                            105 	.area GSINIT  (CODE)
                            106 	.area GSFINAL (CODE)
                            107 	.area CSEG    (CODE)
                            108 ;--------------------------------------------------------
                            109 ; global & static initialisations
                            110 ;--------------------------------------------------------
                            111 	.area HOME    (CODE)
                            112 	.area GSINIT  (CODE)
                            113 	.area GSFINAL (CODE)
                            114 	.area GSINIT  (CODE)
                            115 ;--------------------------------------------------------
                            116 ; Home
                            117 ;--------------------------------------------------------
                            118 	.area HOME    (CODE)
                            119 	.area HOME    (CODE)
                            120 ;--------------------------------------------------------
                            121 ; code
                            122 ;--------------------------------------------------------
                            123 	.area CSEG    (CODE)
                            124 ;------------------------------------------------------------
                            125 ;Allocation info for local variables in function 'GMB_copyFromRomToCg'
                            126 ;------------------------------------------------------------
                            127 ;cgCode                    Allocated with name '_GMB_copyFromRomToCg_PARM_2'
                            128 ;positionInRom             Allocated to registers r2 
                            129 ;rom_cg_address            Allocated to registers 
                            130 ;video_cg_address          Allocated to registers 
                            131 ;------------------------------------------------------------
                            132 ;	../gameboard.c:15: void GMB_copyFromRomToCg(unsigned char positionInRom, unsigned char cgCode) {
                            133 ;	-----------------------------------------
                            134 ;	 function GMB_copyFromRomToCg
                            135 ;	-----------------------------------------
   0B6F                     136 _GMB_copyFromRomToCg:
                    0002    137 	ar2 = 0x02
                    0003    138 	ar3 = 0x03
                    0004    139 	ar4 = 0x04
                    0005    140 	ar5 = 0x05
                    0006    141 	ar6 = 0x06
                    0007    142 	ar7 = 0x07
                    0000    143 	ar0 = 0x00
                    0001    144 	ar1 = 0x01
                            145 ;	../gameboard.c:16: unsigned char *rom_cg_address = (unsigned char __xdata *) (ROM_CG_ADDRESS + positionInRom * 8);
   0B6F E5 82               146 	mov	a,dpl
   0B71 75 F0 08            147 	mov	b,#0x08
   0B74 A4                  148 	mul	ab
   0B75 FA                  149 	mov	r2,a
   0B76 AB F0               150 	mov	r3,b
   0B78 8A 15               151 	mov	_T6963C_autoWrite_PARM_2,r2
   0B7A 8B 16               152 	mov	(_T6963C_autoWrite_PARM_2 + 1),r3
   0B7C 75 17 00            153 	mov	(_T6963C_autoWrite_PARM_2 + 2),#0x00
                            154 ;	../gameboard.c:17: unsigned int video_cg_address = cgCode * 8 + T6963C_ZONE_CG;
   0B7F E5 2F               155 	mov	a,_GMB_copyFromRomToCg_PARM_2
   0B81 75 F0 08            156 	mov	b,#0x08
   0B84 A4                  157 	mul	ab
   0B85 F5 82               158 	mov	dpl,a
   0B87 74 18               159 	mov	a,#0x18
   0B89 25 F0               160 	add	a,b
   0B8B F5 83               161 	mov	dph,a
                            162 ;	../gameboard.c:18: T6963C_autoWrite(video_cg_address, rom_cg_address, 8);
   0B8D 75 18 08            163 	mov	_T6963C_autoWrite_PARM_3,#0x08
   0B90 75 19 00            164 	mov	(_T6963C_autoWrite_PARM_3 + 1),#0x00
   0B93 02 02 1A            165 	ljmp	_T6963C_autoWrite
                            166 ;------------------------------------------------------------
                            167 ;Allocation info for local variables in function 'GMB_initialize'
                            168 ;------------------------------------------------------------
                            169 ;------------------------------------------------------------
                            170 ;	../gameboard.c:24: void GMB_initialize() {
                            171 ;	-----------------------------------------
                            172 ;	 function GMB_initialize
                            173 ;	-----------------------------------------
   0B96                     174 _GMB_initialize:
                            175 ;	../gameboard.c:25: GMB_copyFromRomToCg( 0, OBSTACLE_A);
   0B96 75 2F A1            176 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA1
   0B99 75 82 00            177 	mov	dpl,#0x00
   0B9C 12 0B 6F            178 	lcall	_GMB_copyFromRomToCg
                            179 ;	../gameboard.c:26: GMB_copyFromRomToCg( 1, OBSTACLE_B);
   0B9F 75 2F A2            180 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA2
   0BA2 75 82 01            181 	mov	dpl,#0x01
   0BA5 12 0B 6F            182 	lcall	_GMB_copyFromRomToCg
                            183 ;	../gameboard.c:27: GMB_copyFromRomToCg( 2, OBSTACLE_C);
   0BA8 75 2F A3            184 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA3
   0BAB 75 82 02            185 	mov	dpl,#0x02
   0BAE 12 0B 6F            186 	lcall	_GMB_copyFromRomToCg
                            187 ;	../gameboard.c:28: GMB_copyFromRomToCg( 3, OBSTACLE_D);
   0BB1 75 2F A4            188 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA4
   0BB4 75 82 03            189 	mov	dpl,#0x03
   0BB7 12 0B 6F            190 	lcall	_GMB_copyFromRomToCg
                            191 ;	../gameboard.c:29: GMB_copyFromRomToCg( 4, OBSTACLE_E);
   0BBA 75 2F A5            192 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA5
   0BBD 75 82 04            193 	mov	dpl,#0x04
   0BC0 12 0B 6F            194 	lcall	_GMB_copyFromRomToCg
                            195 ;	../gameboard.c:30: GMB_copyFromRomToCg( 5, OBSTACLE_F);
   0BC3 75 2F A6            196 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA6
   0BC6 75 82 05            197 	mov	dpl,#0x05
   0BC9 12 0B 6F            198 	lcall	_GMB_copyFromRomToCg
                            199 ;	../gameboard.c:31: GMB_copyFromRomToCg( 6, OBSTACLE_G);
   0BCC 75 2F A7            200 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA7
   0BCF 75 82 06            201 	mov	dpl,#0x06
   0BD2 12 0B 6F            202 	lcall	_GMB_copyFromRomToCg
                            203 ;	../gameboard.c:32: GMB_copyFromRomToCg( 7, OBSTACLE_H);
   0BD5 75 2F A8            204 	mov	_GMB_copyFromRomToCg_PARM_2,#0xA8
   0BD8 75 82 07            205 	mov	dpl,#0x07
   0BDB 12 0B 6F            206 	lcall	_GMB_copyFromRomToCg
                            207 ;	../gameboard.c:34: GMB_copyFromRomToCg( 8, SNAKE_BODY);
   0BDE 75 2F 91            208 	mov	_GMB_copyFromRomToCg_PARM_2,#0x91
   0BE1 75 82 08            209 	mov	dpl,#0x08
   0BE4 12 0B 6F            210 	lcall	_GMB_copyFromRomToCg
                            211 ;	../gameboard.c:35: GMB_copyFromRomToCg( 9, SNAKE_SWALLOW);
   0BE7 75 2F 92            212 	mov	_GMB_copyFromRomToCg_PARM_2,#0x92
   0BEA 75 82 09            213 	mov	dpl,#0x09
   0BED 12 0B 6F            214 	lcall	_GMB_copyFromRomToCg
                            215 ;	../gameboard.c:36: GMB_copyFromRomToCg(10, SNAKE_HEAD);
   0BF0 75 2F 93            216 	mov	_GMB_copyFromRomToCg_PARM_2,#0x93
   0BF3 75 82 0A            217 	mov	dpl,#0x0A
   0BF6 12 0B 6F            218 	lcall	_GMB_copyFromRomToCg
                            219 ;	../gameboard.c:37: GMB_copyFromRomToCg(11, SNAKE_DEAD);
   0BF9 75 2F 94            220 	mov	_GMB_copyFromRomToCg_PARM_2,#0x94
   0BFC 75 82 0B            221 	mov	dpl,#0x0B
   0BFF 12 0B 6F            222 	lcall	_GMB_copyFromRomToCg
                            223 ;	../gameboard.c:39: GMB_copyFromRomToCg(12, FRUIT);
   0C02 75 2F 95            224 	mov	_GMB_copyFromRomToCg_PARM_2,#0x95
   0C05 75 82 0C            225 	mov	dpl,#0x0C
   0C08 02 0B 6F            226 	ljmp	_GMB_copyFromRomToCg
                            227 ;------------------------------------------------------------
                            228 ;Allocation info for local variables in function 'GMB_draw'
                            229 ;------------------------------------------------------------
                            230 ;y0                        Allocated with name '_GMB_draw_PARM_2'
                            231 ;x1                        Allocated with name '_GMB_draw_PARM_3'
                            232 ;y1                        Allocated with name '_GMB_draw_PARM_4'
                            233 ;x0                        Allocated to registers r2 
                            234 ;i                         Allocated to registers r3 
                            235 ;j                         Allocated with name '_GMB_draw_j_1_1'
                            236 ;------------------------------------------------------------
                            237 ;	../gameboard.c:49: void GMB_draw(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
                            238 ;	-----------------------------------------
                            239 ;	 function GMB_draw
                            240 ;	-----------------------------------------
   0C0B                     241 _GMB_draw:
   0C0B AA 82               242 	mov	r2,dpl
                            243 ;	../gameboard.c:58: for(i = x0; i <= x1; i++){
   0C0D 8A 03               244 	mov	ar3,r2
   0C0F                     245 00113$:
   0C0F E5 31               246 	mov	a,_GMB_draw_PARM_3
   0C11 B5 03 00            247 	cjne	a,ar3,00140$
   0C14                     248 00140$:
   0C14 40 4B               249 	jc	00116$
                            250 ;	../gameboard.c:59: if(i == x0){
   0C16 EB                  251 	mov	a,r3
   0C17 B5 02 15            252 	cjne	a,ar2,00105$
                            253 ;	../gameboard.c:60: T6963C_writeAt(x0, y0, OBSTACLE_A);
   0C1A 85 30 1F            254 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
   0C1D 75 20 A1            255 	mov	_T6963C_writeAt_PARM_3,#0xA1
   0C20 8A 82               256 	mov	dpl,r2
   0C22 C0 02               257 	push	ar2
   0C24 C0 03               258 	push	ar3
   0C26 12 03 0C            259 	lcall	_T6963C_writeAt
   0C29 D0 03               260 	pop	ar3
   0C2B D0 02               261 	pop	ar2
   0C2D 80 2F               262 	sjmp	00115$
   0C2F                     263 00105$:
                            264 ;	../gameboard.c:62: else if (i < x1){
   0C2F EB                  265 	mov	a,r3
   0C30 B5 31 00            266 	cjne	a,_GMB_draw_PARM_3,00144$
   0C33                     267 00144$:
   0C33 50 15               268 	jnc	00102$
                            269 ;	../gameboard.c:63: T6963C_writeAt(i, y0, OBSTACLE_B);
   0C35 85 30 1F            270 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
   0C38 75 20 A2            271 	mov	_T6963C_writeAt_PARM_3,#0xA2
   0C3B 8B 82               272 	mov	dpl,r3
   0C3D C0 02               273 	push	ar2
   0C3F C0 03               274 	push	ar3
   0C41 12 03 0C            275 	lcall	_T6963C_writeAt
   0C44 D0 03               276 	pop	ar3
   0C46 D0 02               277 	pop	ar2
   0C48 80 14               278 	sjmp	00115$
   0C4A                     279 00102$:
                            280 ;	../gameboard.c:66: T6963C_writeAt(x1, y0, OBSTACLE_C);
   0C4A 85 30 1F            281 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
   0C4D 75 20 A3            282 	mov	_T6963C_writeAt_PARM_3,#0xA3
   0C50 85 31 82            283 	mov	dpl,_GMB_draw_PARM_3
   0C53 C0 02               284 	push	ar2
   0C55 C0 03               285 	push	ar3
   0C57 12 03 0C            286 	lcall	_T6963C_writeAt
   0C5A D0 03               287 	pop	ar3
   0C5C D0 02               288 	pop	ar2
   0C5E                     289 00115$:
                            290 ;	../gameboard.c:58: for(i = x0; i <= x1; i++){
   0C5E 0B                  291 	inc	r3
   0C5F 80 AE               292 	sjmp	00113$
   0C61                     293 00116$:
                            294 ;	../gameboard.c:71: for(i = x0; i <= x1; i++){
   0C61 8A 03               295 	mov	ar3,r2
   0C63                     296 00117$:
   0C63 E5 31               297 	mov	a,_GMB_draw_PARM_3
   0C65 B5 03 00            298 	cjne	a,ar3,00146$
   0C68                     299 00146$:
   0C68 40 4B               300 	jc	00120$
                            301 ;	../gameboard.c:72: if(i == x0){
   0C6A EB                  302 	mov	a,r3
   0C6B B5 02 15            303 	cjne	a,ar2,00111$
                            304 ;	../gameboard.c:73: T6963C_writeAt(x0, y1, OBSTACLE_F);
   0C6E 85 32 1F            305 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
   0C71 75 20 A6            306 	mov	_T6963C_writeAt_PARM_3,#0xA6
   0C74 8A 82               307 	mov	dpl,r2
   0C76 C0 02               308 	push	ar2
   0C78 C0 03               309 	push	ar3
   0C7A 12 03 0C            310 	lcall	_T6963C_writeAt
   0C7D D0 03               311 	pop	ar3
   0C7F D0 02               312 	pop	ar2
   0C81 80 2F               313 	sjmp	00119$
   0C83                     314 00111$:
                            315 ;	../gameboard.c:75: else if (i < x1){
   0C83 EB                  316 	mov	a,r3
   0C84 B5 31 00            317 	cjne	a,_GMB_draw_PARM_3,00150$
   0C87                     318 00150$:
   0C87 50 15               319 	jnc	00108$
                            320 ;	../gameboard.c:76: T6963C_writeAt(i, y1, OBSTACLE_G);
   0C89 85 32 1F            321 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
   0C8C 75 20 A7            322 	mov	_T6963C_writeAt_PARM_3,#0xA7
   0C8F 8B 82               323 	mov	dpl,r3
   0C91 C0 02               324 	push	ar2
   0C93 C0 03               325 	push	ar3
   0C95 12 03 0C            326 	lcall	_T6963C_writeAt
   0C98 D0 03               327 	pop	ar3
   0C9A D0 02               328 	pop	ar2
   0C9C 80 14               329 	sjmp	00119$
   0C9E                     330 00108$:
                            331 ;	../gameboard.c:79: T6963C_writeAt(x1, y1, OBSTACLE_H);
   0C9E 85 32 1F            332 	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
   0CA1 75 20 A8            333 	mov	_T6963C_writeAt_PARM_3,#0xA8
   0CA4 85 31 82            334 	mov	dpl,_GMB_draw_PARM_3
   0CA7 C0 02               335 	push	ar2
   0CA9 C0 03               336 	push	ar3
   0CAB 12 03 0C            337 	lcall	_T6963C_writeAt
   0CAE D0 03               338 	pop	ar3
   0CB0 D0 02               339 	pop	ar2
   0CB2                     340 00119$:
                            341 ;	../gameboard.c:71: for(i = x0; i <= x1; i++){
   0CB2 0B                  342 	inc	r3
   0CB3 80 AE               343 	sjmp	00117$
   0CB5                     344 00120$:
                            345 ;	../gameboard.c:84: for(i = y0+1; i <= y1-1; i++){
   0CB5 E5 30               346 	mov	a,_GMB_draw_PARM_2
   0CB7 04                  347 	inc	a
   0CB8 FB                  348 	mov	r3,a
   0CB9                     349 00121$:
   0CB9 AC 32               350 	mov	r4,_GMB_draw_PARM_4
   0CBB 7D 00               351 	mov	r5,#0x00
   0CBD 1C                  352 	dec	r4
   0CBE BC FF 01            353 	cjne	r4,#0xff,00152$
   0CC1 1D                  354 	dec	r5
   0CC2                     355 00152$:
   0CC2 8B 06               356 	mov	ar6,r3
   0CC4 7F 00               357 	mov	r7,#0x00
   0CC6 C3                  358 	clr	c
   0CC7 EC                  359 	mov	a,r4
   0CC8 9E                  360 	subb	a,r6
   0CC9 ED                  361 	mov	a,r5
   0CCA 64 80               362 	xrl	a,#0x80
   0CCC 8F F0               363 	mov	b,r7
   0CCE 63 F0 80            364 	xrl	b,#0x80
   0CD1 95 F0               365 	subb	a,b
   0CD3 40 24               366 	jc	00125$
                            367 ;	../gameboard.c:85: T6963C_writeAt(x0, i, OBSTACLE_D);
   0CD5 8B 1F               368 	mov	_T6963C_writeAt_PARM_2,r3
   0CD7 75 20 A4            369 	mov	_T6963C_writeAt_PARM_3,#0xA4
   0CDA 8A 82               370 	mov	dpl,r2
   0CDC C0 02               371 	push	ar2
   0CDE C0 03               372 	push	ar3
   0CE0 12 03 0C            373 	lcall	_T6963C_writeAt
   0CE3 D0 03               374 	pop	ar3
                            375 ;	../gameboard.c:86: T6963C_writeAt(x1, i, OBSTACLE_E);	   
   0CE5 8B 1F               376 	mov	_T6963C_writeAt_PARM_2,r3
   0CE7 75 20 A5            377 	mov	_T6963C_writeAt_PARM_3,#0xA5
   0CEA 85 31 82            378 	mov	dpl,_GMB_draw_PARM_3
   0CED C0 03               379 	push	ar3
   0CEF 12 03 0C            380 	lcall	_T6963C_writeAt
   0CF2 D0 03               381 	pop	ar3
   0CF4 D0 02               382 	pop	ar2
                            383 ;	../gameboard.c:84: for(i = y0+1; i <= y1-1; i++){
   0CF6 0B                  384 	inc	r3
   0CF7 80 C0               385 	sjmp	00121$
   0CF9                     386 00125$:
   0CF9 22                  387 	ret
                            388 ;------------------------------------------------------------
                            389 ;Allocation info for local variables in function 'GMB_clear'
                            390 ;------------------------------------------------------------
                            391 ;y0                        Allocated with name '_GMB_clear_PARM_2'
                            392 ;x1                        Allocated with name '_GMB_clear_PARM_3'
                            393 ;y1                        Allocated with name '_GMB_clear_PARM_4'
                            394 ;x0                        Allocated to registers r2 
                            395 ;i                         Allocated to registers r2 
                            396 ;j                         Allocated to registers r3 
                            397 ;------------------------------------------------------------
                            398 ;	../gameboard.c:97: void GMB_clear(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
                            399 ;	-----------------------------------------
                            400 ;	 function GMB_clear
                            401 ;	-----------------------------------------
   0CFA                     402 _GMB_clear:
   0CFA AA 82               403 	mov	r2,dpl
                            404 ;	../gameboard.c:102: for(i = x0; i <= x1; i++){
   0CFC                     405 00105$:
   0CFC E5 34               406 	mov	a,_GMB_clear_PARM_3
   0CFE B5 02 00            407 	cjne	a,ar2,00117$
   0D01                     408 00117$:
   0D01 40 21               409 	jc	00109$
                            410 ;	../gameboard.c:103: for(j = y0; j <= y1; j++){
   0D03 AB 33               411 	mov	r3,_GMB_clear_PARM_2
   0D05                     412 00101$:
   0D05 E5 35               413 	mov	a,_GMB_clear_PARM_4
   0D07 B5 03 00            414 	cjne	a,ar3,00119$
   0D0A                     415 00119$:
   0D0A 40 15               416 	jc	00107$
                            417 ;	../gameboard.c:104: T6963C_writeAt(i, j, EMPTY);
   0D0C 8B 1F               418 	mov	_T6963C_writeAt_PARM_2,r3
   0D0E 75 20 00            419 	mov	_T6963C_writeAt_PARM_3,#0x00
   0D11 8A 82               420 	mov	dpl,r2
   0D13 C0 02               421 	push	ar2
   0D15 C0 03               422 	push	ar3
   0D17 12 03 0C            423 	lcall	_T6963C_writeAt
   0D1A D0 03               424 	pop	ar3
   0D1C D0 02               425 	pop	ar2
                            426 ;	../gameboard.c:103: for(j = y0; j <= y1; j++){
   0D1E 0B                  427 	inc	r3
   0D1F 80 E4               428 	sjmp	00101$
   0D21                     429 00107$:
                            430 ;	../gameboard.c:102: for(i = x0; i <= x1; i++){
   0D21 0A                  431 	inc	r2
   0D22 80 D8               432 	sjmp	00105$
   0D24                     433 00109$:
   0D24 22                  434 	ret
                            435 ;------------------------------------------------------------
                            436 ;Allocation info for local variables in function 'GMB_display'
                            437 ;------------------------------------------------------------
                            438 ;y0                        Allocated with name '_GMB_display_PARM_2'
                            439 ;text                      Allocated with name '_GMB_display_PARM_3'
                            440 ;x0                        Allocated to registers r2 
                            441 ;x1                        Allocated to registers r4 
                            442 ;y1                        Allocated to registers 
                            443 ;taille                    Allocated with name '_GMB_display_taille_1_1'
                            444 ;i                         Allocated to registers r5 
                            445 ;------------------------------------------------------------
                            446 ;	../gameboard.c:116: void GMB_display(unsigned char x0, unsigned char y0, char *text) {
                            447 ;	-----------------------------------------
                            448 ;	 function GMB_display
                            449 ;	-----------------------------------------
   0D25                     450 _GMB_display:
   0D25 AA 82               451 	mov	r2,dpl
                            452 ;	../gameboard.c:126: taille = strlen(text);
   0D27 85 37 82            453 	mov	dpl,_GMB_display_PARM_3
   0D2A 85 38 83            454 	mov	dph,(_GMB_display_PARM_3 + 1)
   0D2D 85 39 F0            455 	mov	b,(_GMB_display_PARM_3 + 2)
   0D30 C0 02               456 	push	ar2
   0D32 12 0F C1            457 	lcall	_strlen
   0D35 AB 82               458 	mov	r3,dpl
   0D37 D0 02               459 	pop	ar2
                            460 ;	../gameboard.c:127: x1 = x0 + taille + 1;
   0D39 EB                  461 	mov	a,r3
   0D3A F5 3A               462 	mov	_GMB_display_taille_1_1,a
   0D3C 2A                  463 	add	a,r2
   0D3D 04                  464 	inc	a
   0D3E FC                  465 	mov	r4,a
                            466 ;	../gameboard.c:136: for(i = 0; i < 3; i++){
   0D3F 7D 00               467 	mov	r5,#0x00
   0D41                     468 00109$:
   0D41 BD 03 00            469 	cjne	r5,#0x03,00128$
   0D44                     470 00128$:
   0D44 40 03               471 	jc	00129$
   0D46 02 0D E4            472 	ljmp	00112$
   0D49                     473 00129$:
                            474 ;	../gameboard.c:137: if(i == 0){
   0D49 ED                  475 	mov	a,r5
   0D4A 70 2C               476 	jnz	00107$
                            477 ;	../gameboard.c:138: T6963C_writeAt(x0, y0, OBSTACLE_A);
   0D4C 85 36 1F            478 	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
   0D4F 75 20 A1            479 	mov	_T6963C_writeAt_PARM_3,#0xA1
   0D52 8A 82               480 	mov	dpl,r2
   0D54 C0 02               481 	push	ar2
   0D56 C0 04               482 	push	ar4
   0D58 C0 05               483 	push	ar5
   0D5A 12 03 0C            484 	lcall	_T6963C_writeAt
   0D5D D0 05               485 	pop	ar5
   0D5F D0 04               486 	pop	ar4
                            487 ;	../gameboard.c:139: T6963C_writeAt(x1, y0, OBSTACLE_C);
   0D61 85 36 1F            488 	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
   0D64 75 20 A3            489 	mov	_T6963C_writeAt_PARM_3,#0xA3
   0D67 8C 82               490 	mov	dpl,r4
   0D69 C0 04               491 	push	ar4
   0D6B C0 05               492 	push	ar5
   0D6D 12 03 0C            493 	lcall	_T6963C_writeAt
   0D70 D0 05               494 	pop	ar5
   0D72 D0 04               495 	pop	ar4
   0D74 D0 02               496 	pop	ar2
   0D76 80 68               497 	sjmp	00111$
   0D78                     498 00107$:
                            499 ;	../gameboard.c:140: }else if(i == 1){
   0D78 BD 01 32            500 	cjne	r5,#0x01,00104$
                            501 ;	../gameboard.c:141: T6963C_writeAt(x0, y0+i, OBSTACLE_D);
   0D7B ED                  502 	mov	a,r5
   0D7C 25 36               503 	add	a,_GMB_display_PARM_2
   0D7E FE                  504 	mov	r6,a
   0D7F 8E 1F               505 	mov	_T6963C_writeAt_PARM_2,r6
   0D81 75 20 A4            506 	mov	_T6963C_writeAt_PARM_3,#0xA4
   0D84 8A 82               507 	mov	dpl,r2
   0D86 C0 02               508 	push	ar2
   0D88 C0 04               509 	push	ar4
   0D8A C0 05               510 	push	ar5
   0D8C C0 06               511 	push	ar6
   0D8E 12 03 0C            512 	lcall	_T6963C_writeAt
   0D91 D0 06               513 	pop	ar6
   0D93 D0 05               514 	pop	ar5
   0D95 D0 04               515 	pop	ar4
                            516 ;	../gameboard.c:142: T6963C_writeAt(x1, y0+i, OBSTACLE_E);
   0D97 8E 1F               517 	mov	_T6963C_writeAt_PARM_2,r6
   0D99 75 20 A5            518 	mov	_T6963C_writeAt_PARM_3,#0xA5
   0D9C 8C 82               519 	mov	dpl,r4
   0D9E C0 04               520 	push	ar4
   0DA0 C0 05               521 	push	ar5
   0DA2 12 03 0C            522 	lcall	_T6963C_writeAt
   0DA5 D0 05               523 	pop	ar5
   0DA7 D0 04               524 	pop	ar4
   0DA9 D0 02               525 	pop	ar2
   0DAB 80 33               526 	sjmp	00111$
   0DAD                     527 00104$:
                            528 ;	../gameboard.c:143: } else if(i == 2){
   0DAD BD 02 30            529 	cjne	r5,#0x02,00111$
                            530 ;	../gameboard.c:144: T6963C_writeAt(x0, y0+i, OBSTACLE_F);
   0DB0 ED                  531 	mov	a,r5
   0DB1 25 36               532 	add	a,_GMB_display_PARM_2
   0DB3 FE                  533 	mov	r6,a
   0DB4 8E 1F               534 	mov	_T6963C_writeAt_PARM_2,r6
   0DB6 75 20 A6            535 	mov	_T6963C_writeAt_PARM_3,#0xA6
   0DB9 8A 82               536 	mov	dpl,r2
   0DBB C0 02               537 	push	ar2
   0DBD C0 04               538 	push	ar4
   0DBF C0 05               539 	push	ar5
   0DC1 C0 06               540 	push	ar6
   0DC3 12 03 0C            541 	lcall	_T6963C_writeAt
   0DC6 D0 06               542 	pop	ar6
   0DC8 D0 05               543 	pop	ar5
   0DCA D0 04               544 	pop	ar4
                            545 ;	../gameboard.c:145: T6963C_writeAt(x1, y0+i, OBSTACLE_H);
   0DCC 8E 1F               546 	mov	_T6963C_writeAt_PARM_2,r6
   0DCE 75 20 A8            547 	mov	_T6963C_writeAt_PARM_3,#0xA8
   0DD1 8C 82               548 	mov	dpl,r4
   0DD3 C0 04               549 	push	ar4
   0DD5 C0 05               550 	push	ar5
   0DD7 12 03 0C            551 	lcall	_T6963C_writeAt
   0DDA D0 05               552 	pop	ar5
   0DDC D0 04               553 	pop	ar4
   0DDE D0 02               554 	pop	ar2
   0DE0                     555 00111$:
                            556 ;	../gameboard.c:136: for(i = 0; i < 3; i++){
   0DE0 0D                  557 	inc	r5
   0DE1 02 0D 41            558 	ljmp	00109$
   0DE4                     559 00112$:
                            560 ;	../gameboard.c:151: for(i = 0; i < taille; i++){
   0DE4 0A                  561 	inc	r2
   0DE5 E5 36               562 	mov	a,_GMB_display_PARM_2
   0DE7 04                  563 	inc	a
   0DE8 FC                  564 	mov	r4,a
   0DE9 74 02               565 	mov	a,#0x02
   0DEB 25 36               566 	add	a,_GMB_display_PARM_2
   0DED FD                  567 	mov	r5,a
   0DEE 7E 00               568 	mov	r6,#0x00
   0DF0                     569 00113$:
   0DF0 EE                  570 	mov	a,r6
   0DF1 B5 3A 00            571 	cjne	a,_GMB_display_taille_1_1,00135$
   0DF4                     572 00135$:
   0DF4 50 65               573 	jnc	00117$
                            574 ;	../gameboard.c:152: T6963C_writeAt(x0+1+i, y0,   OBSTACLE_B);
   0DF6 EE                  575 	mov	a,r6
   0DF7 2A                  576 	add	a,r2
   0DF8 FF                  577 	mov	r7,a
   0DF9 85 36 1F            578 	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
   0DFC 75 20 A2            579 	mov	_T6963C_writeAt_PARM_3,#0xA2
   0DFF 8F 82               580 	mov	dpl,r7
   0E01 C0 02               581 	push	ar2
   0E03 C0 04               582 	push	ar4
   0E05 C0 05               583 	push	ar5
   0E07 C0 06               584 	push	ar6
   0E09 C0 07               585 	push	ar7
   0E0B 12 03 0C            586 	lcall	_T6963C_writeAt
   0E0E D0 07               587 	pop	ar7
   0E10 D0 06               588 	pop	ar6
   0E12 D0 05               589 	pop	ar5
   0E14 D0 04               590 	pop	ar4
                            591 ;	../gameboard.c:153: T6963C_writeAt(x0+1+i, y0+1, text[i]-32);
   0E16 EE                  592 	mov	a,r6
   0E17 25 37               593 	add	a,_GMB_display_PARM_3
   0E19 F8                  594 	mov	r0,a
   0E1A E4                  595 	clr	a
   0E1B 35 38               596 	addc	a,(_GMB_display_PARM_3 + 1)
   0E1D F9                  597 	mov	r1,a
   0E1E AB 39               598 	mov	r3,(_GMB_display_PARM_3 + 2)
   0E20 88 82               599 	mov	dpl,r0
   0E22 89 83               600 	mov	dph,r1
   0E24 8B F0               601 	mov	b,r3
   0E26 12 0F D9            602 	lcall	__gptrget
   0E29 24 E0               603 	add	a,#0xe0
   0E2B F5 20               604 	mov	_T6963C_writeAt_PARM_3,a
   0E2D 8C 1F               605 	mov	_T6963C_writeAt_PARM_2,r4
   0E2F 8F 82               606 	mov	dpl,r7
   0E31 C0 04               607 	push	ar4
   0E33 C0 05               608 	push	ar5
   0E35 C0 06               609 	push	ar6
   0E37 C0 07               610 	push	ar7
   0E39 12 03 0C            611 	lcall	_T6963C_writeAt
   0E3C D0 07               612 	pop	ar7
   0E3E D0 06               613 	pop	ar6
   0E40 D0 05               614 	pop	ar5
                            615 ;	../gameboard.c:154: T6963C_writeAt(x0+1+i, y0+2, OBSTACLE_G);
   0E42 8D 1F               616 	mov	_T6963C_writeAt_PARM_2,r5
   0E44 75 20 A7            617 	mov	_T6963C_writeAt_PARM_3,#0xA7
   0E47 8F 82               618 	mov	dpl,r7
   0E49 C0 05               619 	push	ar5
   0E4B C0 06               620 	push	ar6
   0E4D 12 03 0C            621 	lcall	_T6963C_writeAt
   0E50 D0 06               622 	pop	ar6
   0E52 D0 05               623 	pop	ar5
   0E54 D0 04               624 	pop	ar4
   0E56 D0 02               625 	pop	ar2
                            626 ;	../gameboard.c:151: for(i = 0; i < taille; i++){
   0E58 0E                  627 	inc	r6
   0E59 80 95               628 	sjmp	00113$
   0E5B                     629 00117$:
   0E5B 22                  630 	ret
                            631 	.area CSEG    (CODE)
                            632 	.area CONST   (CODE)
                            633 	.area XINIT   (CODE)
                            634 	.area CABS    (ABS,CODE)
