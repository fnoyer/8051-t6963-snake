                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:10 2017
                              5 ;--------------------------------------------------------
                              6 	.module fruit
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _FRUIT_placeInFreeSpace
                             13 	.globl _FRUIT_random
                             14 	.globl _FRUIT_place
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (ABS,DATA)
   0000                      19 	.org 0x0000
                             20 ;--------------------------------------------------------
                             21 ; special function bits
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (ABS,DATA)
   0000                      24 	.org 0x0000
                             25 ;--------------------------------------------------------
                             26 ; overlayable register banks
                             27 ;--------------------------------------------------------
                             28 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      29 	.ds 8
                             30 ;--------------------------------------------------------
                             31 ; internal ram data
                             32 ;--------------------------------------------------------
                             33 	.area DSEG    (DATA)
   002D                      34 _FRUIT_place_position_1_1:
   002D                      35 	.ds 2
                             36 ;--------------------------------------------------------
                             37 ; overlayable items in internal ram 
                             38 ;--------------------------------------------------------
                             39 	.area OSEG    (OVR,DATA)
                             40 ;--------------------------------------------------------
                             41 ; indirectly addressable internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area ISEG    (DATA)
                             44 ;--------------------------------------------------------
                             45 ; absolute internal ram data
                             46 ;--------------------------------------------------------
                             47 	.area IABS    (ABS,DATA)
                             48 	.area IABS    (ABS,DATA)
                             49 ;--------------------------------------------------------
                             50 ; bit data
                             51 ;--------------------------------------------------------
                             52 	.area BSEG    (BIT)
                             53 ;--------------------------------------------------------
                             54 ; paged external ram data
                             55 ;--------------------------------------------------------
                             56 	.area PSEG    (PAG,XDATA)
                             57 ;--------------------------------------------------------
                             58 ; external ram data
                             59 ;--------------------------------------------------------
                             60 	.area XSEG    (XDATA)
                             61 ;--------------------------------------------------------
                             62 ; absolute external ram data
                             63 ;--------------------------------------------------------
                             64 	.area XABS    (ABS,XDATA)
                             65 ;--------------------------------------------------------
                             66 ; external initialized ram data
                             67 ;--------------------------------------------------------
                             68 	.area XISEG   (XDATA)
                             69 	.area HOME    (CODE)
                             70 	.area GSINIT0 (CODE)
                             71 	.area GSINIT1 (CODE)
                             72 	.area GSINIT2 (CODE)
                             73 	.area GSINIT3 (CODE)
                             74 	.area GSINIT4 (CODE)
                             75 	.area GSINIT5 (CODE)
                             76 	.area GSINIT  (CODE)
                             77 	.area GSFINAL (CODE)
                             78 	.area CSEG    (CODE)
                             79 ;--------------------------------------------------------
                             80 ; global & static initialisations
                             81 ;--------------------------------------------------------
                             82 	.area HOME    (CODE)
                             83 	.area GSINIT  (CODE)
                             84 	.area GSFINAL (CODE)
                             85 	.area GSINIT  (CODE)
                             86 ;--------------------------------------------------------
                             87 ; Home
                             88 ;--------------------------------------------------------
                             89 	.area HOME    (CODE)
                             90 	.area HOME    (CODE)
                             91 ;--------------------------------------------------------
                             92 ; code
                             93 ;--------------------------------------------------------
                             94 	.area CSEG    (CODE)
                             95 ;------------------------------------------------------------
                             96 ;Allocation info for local variables in function 'FRUIT_placeInFreeSpace'
                             97 ;------------------------------------------------------------
                             98 ;position                  Allocated to registers r2 r3 r4 
                             99 ;c                         Allocated to registers 
                            100 ;------------------------------------------------------------
                            101 ;	../fruit.c:17: void FRUIT_placeInFreeSpace(Position *position) {
                            102 ;	-----------------------------------------
                            103 ;	 function FRUIT_placeInFreeSpace
                            104 ;	-----------------------------------------
   091A                     105 _FRUIT_placeInFreeSpace:
                    0002    106 	ar2 = 0x02
                    0003    107 	ar3 = 0x03
                    0004    108 	ar4 = 0x04
                    0005    109 	ar5 = 0x05
                    0006    110 	ar6 = 0x06
                    0007    111 	ar7 = 0x07
                    0000    112 	ar0 = 0x00
                    0001    113 	ar1 = 0x01
                            114 ;	../fruit.c:20: char c = T6963C_readFrom(position->x, position->y);
   091A AA 82               115 	mov	r2,dpl
   091C AB 83               116 	mov	r3,dph
   091E AC F0               117 	mov	r4,b
   0920 12 0F D9            118 	lcall	__gptrget
   0923 FD                  119 	mov	r5,a
   0924 74 01               120 	mov	a,#0x01
   0926 2A                  121 	add	a,r2
   0927 FE                  122 	mov	r6,a
   0928 E4                  123 	clr	a
   0929 3B                  124 	addc	a,r3
   092A FF                  125 	mov	r7,a
   092B 8C 00               126 	mov	ar0,r4
   092D 8E 82               127 	mov	dpl,r6
   092F 8F 83               128 	mov	dph,r7
   0931 88 F0               129 	mov	b,r0
   0933 12 0F D9            130 	lcall	__gptrget
   0936 F5 21               131 	mov	_T6963C_readFrom_PARM_2,a
   0938 8D 82               132 	mov	dpl,r5
   093A C0 02               133 	push	ar2
   093C C0 03               134 	push	ar3
   093E C0 04               135 	push	ar4
   0940 C0 06               136 	push	ar6
   0942 C0 07               137 	push	ar7
   0944 C0 00               138 	push	ar0
   0946 12 03 18            139 	lcall	_T6963C_readFrom
   0949 E5 82               140 	mov	a,dpl
   094B D0 00               141 	pop	ar0
   094D D0 07               142 	pop	ar7
   094F D0 06               143 	pop	ar6
   0951 D0 04               144 	pop	ar4
   0953 D0 03               145 	pop	ar3
   0955 D0 02               146 	pop	ar2
                            147 ;	../fruit.c:23: if(c == EMPTY){
   0957 70 1D               148 	jnz	00114$
                            149 ;	../fruit.c:24: T6963C_writeAt(position->x, position->y, FRUIT);
   0959 8A 82               150 	mov	dpl,r2
   095B 8B 83               151 	mov	dph,r3
   095D 8C F0               152 	mov	b,r4
   095F 12 0F D9            153 	lcall	__gptrget
   0962 FD                  154 	mov	r5,a
   0963 8E 82               155 	mov	dpl,r6
   0965 8F 83               156 	mov	dph,r7
   0967 88 F0               157 	mov	b,r0
   0969 12 0F D9            158 	lcall	__gptrget
   096C F5 1F               159 	mov	_T6963C_writeAt_PARM_2,a
   096E 75 20 95            160 	mov	_T6963C_writeAt_PARM_3,#0x95
   0971 8D 82               161 	mov	dpl,r5
   0973 02 03 0C            162 	ljmp	_T6963C_writeAt
   0976                     163 00114$:
                            164 ;	../fruit.c:28: if(T6963C_readFrom(position->x-1, position->y) == EMPTY){
   0976 8A 82               165 	mov	dpl,r2
   0978 8B 83               166 	mov	dph,r3
   097A 8C F0               167 	mov	b,r4
   097C 12 0F D9            168 	lcall	__gptrget
   097F FD                  169 	mov	r5,a
   0980 1D                  170 	dec	r5
   0981 8E 82               171 	mov	dpl,r6
   0983 8F 83               172 	mov	dph,r7
   0985 88 F0               173 	mov	b,r0
   0987 12 0F D9            174 	lcall	__gptrget
   098A F5 21               175 	mov	_T6963C_readFrom_PARM_2,a
   098C 8D 82               176 	mov	dpl,r5
   098E C0 02               177 	push	ar2
   0990 C0 03               178 	push	ar3
   0992 C0 04               179 	push	ar4
   0994 C0 06               180 	push	ar6
   0996 C0 07               181 	push	ar7
   0998 C0 00               182 	push	ar0
   099A 12 03 18            183 	lcall	_T6963C_readFrom
   099D E5 82               184 	mov	a,dpl
   099F D0 00               185 	pop	ar0
   09A1 D0 07               186 	pop	ar7
   09A3 D0 06               187 	pop	ar6
   09A5 D0 04               188 	pop	ar4
   09A7 D0 03               189 	pop	ar3
   09A9 D0 02               190 	pop	ar2
   09AB 70 18               191 	jnz	00111$
                            192 ;	../fruit.c:29: position->x--;
   09AD 8A 82               193 	mov	dpl,r2
   09AF 8B 83               194 	mov	dph,r3
   09B1 8C F0               195 	mov	b,r4
   09B3 12 0F D9            196 	lcall	__gptrget
   09B6 FD                  197 	mov	r5,a
   09B7 1D                  198 	dec	r5
   09B8 8A 82               199 	mov	dpl,r2
   09BA 8B 83               200 	mov	dph,r3
   09BC 8C F0               201 	mov	b,r4
   09BE ED                  202 	mov	a,r5
   09BF 12 0E D0            203 	lcall	__gptrput
   09C2 02 0A F3            204 	ljmp	00112$
   09C5                     205 00111$:
                            206 ;	../fruit.c:30: }else if(T6963C_readFrom(position->x+1, position->y) == EMPTY){
   09C5 8A 82               207 	mov	dpl,r2
   09C7 8B 83               208 	mov	dph,r3
   09C9 8C F0               209 	mov	b,r4
   09CB 12 0F D9            210 	lcall	__gptrget
   09CE FD                  211 	mov	r5,a
   09CF 0D                  212 	inc	r5
   09D0 8E 82               213 	mov	dpl,r6
   09D2 8F 83               214 	mov	dph,r7
   09D4 88 F0               215 	mov	b,r0
   09D6 12 0F D9            216 	lcall	__gptrget
   09D9 F5 21               217 	mov	_T6963C_readFrom_PARM_2,a
   09DB 8D 82               218 	mov	dpl,r5
   09DD C0 02               219 	push	ar2
   09DF C0 03               220 	push	ar3
   09E1 C0 04               221 	push	ar4
   09E3 C0 06               222 	push	ar6
   09E5 C0 07               223 	push	ar7
   09E7 C0 00               224 	push	ar0
   09E9 12 03 18            225 	lcall	_T6963C_readFrom
   09EC E5 82               226 	mov	a,dpl
   09EE D0 00               227 	pop	ar0
   09F0 D0 07               228 	pop	ar7
   09F2 D0 06               229 	pop	ar6
   09F4 D0 04               230 	pop	ar4
   09F6 D0 03               231 	pop	ar3
   09F8 D0 02               232 	pop	ar2
   09FA 70 18               233 	jnz	00108$
                            234 ;	../fruit.c:31: position->x++;
   09FC 8A 82               235 	mov	dpl,r2
   09FE 8B 83               236 	mov	dph,r3
   0A00 8C F0               237 	mov	b,r4
   0A02 12 0F D9            238 	lcall	__gptrget
   0A05 FD                  239 	mov	r5,a
   0A06 0D                  240 	inc	r5
   0A07 8A 82               241 	mov	dpl,r2
   0A09 8B 83               242 	mov	dph,r3
   0A0B 8C F0               243 	mov	b,r4
   0A0D ED                  244 	mov	a,r5
   0A0E 12 0E D0            245 	lcall	__gptrput
   0A11 02 0A F3            246 	ljmp	00112$
   0A14                     247 00108$:
                            248 ;	../fruit.c:32: }else if(T6963C_readFrom(position->x, position->y+1) == EMPTY){
   0A14 8A 82               249 	mov	dpl,r2
   0A16 8B 83               250 	mov	dph,r3
   0A18 8C F0               251 	mov	b,r4
   0A1A 12 0F D9            252 	lcall	__gptrget
   0A1D FD                  253 	mov	r5,a
   0A1E 8E 82               254 	mov	dpl,r6
   0A20 8F 83               255 	mov	dph,r7
   0A22 88 F0               256 	mov	b,r0
   0A24 12 0F D9            257 	lcall	__gptrget
   0A27 04                  258 	inc	a
   0A28 F5 21               259 	mov	_T6963C_readFrom_PARM_2,a
   0A2A 8D 82               260 	mov	dpl,r5
   0A2C C0 02               261 	push	ar2
   0A2E C0 03               262 	push	ar3
   0A30 C0 04               263 	push	ar4
   0A32 C0 06               264 	push	ar6
   0A34 C0 07               265 	push	ar7
   0A36 C0 00               266 	push	ar0
   0A38 12 03 18            267 	lcall	_T6963C_readFrom
   0A3B E5 82               268 	mov	a,dpl
   0A3D D0 00               269 	pop	ar0
   0A3F D0 07               270 	pop	ar7
   0A41 D0 06               271 	pop	ar6
   0A43 D0 04               272 	pop	ar4
   0A45 D0 03               273 	pop	ar3
   0A47 D0 02               274 	pop	ar2
   0A49 70 18               275 	jnz	00105$
                            276 ;	../fruit.c:33: position->y++;
   0A4B 8E 82               277 	mov	dpl,r6
   0A4D 8F 83               278 	mov	dph,r7
   0A4F 88 F0               279 	mov	b,r0
   0A51 12 0F D9            280 	lcall	__gptrget
   0A54 FD                  281 	mov	r5,a
   0A55 0D                  282 	inc	r5
   0A56 8E 82               283 	mov	dpl,r6
   0A58 8F 83               284 	mov	dph,r7
   0A5A 88 F0               285 	mov	b,r0
   0A5C ED                  286 	mov	a,r5
   0A5D 12 0E D0            287 	lcall	__gptrput
   0A60 02 0A F3            288 	ljmp	00112$
   0A63                     289 00105$:
                            290 ;	../fruit.c:34: }else if(T6963C_readFrom(position->x, position->y-1) == EMPTY){
   0A63 8A 82               291 	mov	dpl,r2
   0A65 8B 83               292 	mov	dph,r3
   0A67 8C F0               293 	mov	b,r4
   0A69 12 0F D9            294 	lcall	__gptrget
   0A6C FD                  295 	mov	r5,a
   0A6D 8E 82               296 	mov	dpl,r6
   0A6F 8F 83               297 	mov	dph,r7
   0A71 88 F0               298 	mov	b,r0
   0A73 12 0F D9            299 	lcall	__gptrget
   0A76 14                  300 	dec	a
   0A77 F5 21               301 	mov	_T6963C_readFrom_PARM_2,a
   0A79 8D 82               302 	mov	dpl,r5
   0A7B C0 02               303 	push	ar2
   0A7D C0 03               304 	push	ar3
   0A7F C0 04               305 	push	ar4
   0A81 C0 06               306 	push	ar6
   0A83 C0 07               307 	push	ar7
   0A85 C0 00               308 	push	ar0
   0A87 12 03 18            309 	lcall	_T6963C_readFrom
   0A8A E5 82               310 	mov	a,dpl
   0A8C D0 00               311 	pop	ar0
   0A8E D0 07               312 	pop	ar7
   0A90 D0 06               313 	pop	ar6
   0A92 D0 04               314 	pop	ar4
   0A94 D0 03               315 	pop	ar3
   0A96 D0 02               316 	pop	ar2
   0A98 70 17               317 	jnz	00102$
                            318 ;	../fruit.c:35: position->y--;
   0A9A 8E 82               319 	mov	dpl,r6
   0A9C 8F 83               320 	mov	dph,r7
   0A9E 88 F0               321 	mov	b,r0
   0AA0 12 0F D9            322 	lcall	__gptrget
   0AA3 FD                  323 	mov	r5,a
   0AA4 1D                  324 	dec	r5
   0AA5 8E 82               325 	mov	dpl,r6
   0AA7 8F 83               326 	mov	dph,r7
   0AA9 88 F0               327 	mov	b,r0
   0AAB ED                  328 	mov	a,r5
   0AAC 12 0E D0            329 	lcall	__gptrput
   0AAF 80 42               330 	sjmp	00112$
   0AB1                     331 00102$:
                            332 ;	../fruit.c:37: FRUIT_random(position);
   0AB1 8A 82               333 	mov	dpl,r2
   0AB3 8B 83               334 	mov	dph,r3
   0AB5 8C F0               335 	mov	b,r4
   0AB7 C0 02               336 	push	ar2
   0AB9 C0 03               337 	push	ar3
   0ABB C0 04               338 	push	ar4
   0ABD C0 06               339 	push	ar6
   0ABF C0 07               340 	push	ar7
   0AC1 C0 00               341 	push	ar0
   0AC3 12 0B 10            342 	lcall	_FRUIT_random
   0AC6 D0 00               343 	pop	ar0
   0AC8 D0 07               344 	pop	ar7
   0ACA D0 06               345 	pop	ar6
   0ACC D0 04               346 	pop	ar4
   0ACE D0 03               347 	pop	ar3
   0AD0 D0 02               348 	pop	ar2
                            349 ;	../fruit.c:38: FRUIT_placeInFreeSpace(position); 
   0AD2 8A 82               350 	mov	dpl,r2
   0AD4 8B 83               351 	mov	dph,r3
   0AD6 8C F0               352 	mov	b,r4
   0AD8 C0 02               353 	push	ar2
   0ADA C0 03               354 	push	ar3
   0ADC C0 04               355 	push	ar4
   0ADE C0 06               356 	push	ar6
   0AE0 C0 07               357 	push	ar7
   0AE2 C0 00               358 	push	ar0
   0AE4 12 09 1A            359 	lcall	_FRUIT_placeInFreeSpace
   0AE7 D0 00               360 	pop	ar0
   0AE9 D0 07               361 	pop	ar7
   0AEB D0 06               362 	pop	ar6
   0AED D0 04               363 	pop	ar4
   0AEF D0 03               364 	pop	ar3
   0AF1 D0 02               365 	pop	ar2
   0AF3                     366 00112$:
                            367 ;	../fruit.c:40: T6963C_writeAt(position->x, position->y, FRUIT);
   0AF3 8A 82               368 	mov	dpl,r2
   0AF5 8B 83               369 	mov	dph,r3
   0AF7 8C F0               370 	mov	b,r4
   0AF9 12 0F D9            371 	lcall	__gptrget
   0AFC FA                  372 	mov	r2,a
   0AFD 8E 82               373 	mov	dpl,r6
   0AFF 8F 83               374 	mov	dph,r7
   0B01 88 F0               375 	mov	b,r0
   0B03 12 0F D9            376 	lcall	__gptrget
   0B06 F5 1F               377 	mov	_T6963C_writeAt_PARM_2,a
   0B08 75 20 95            378 	mov	_T6963C_writeAt_PARM_3,#0x95
   0B0B 8A 82               379 	mov	dpl,r2
   0B0D 02 03 0C            380 	ljmp	_T6963C_writeAt
                            381 ;------------------------------------------------------------
                            382 ;Allocation info for local variables in function 'FRUIT_random'
                            383 ;------------------------------------------------------------
                            384 ;position                  Allocated to registers r2 r3 r4 
                            385 ;rx                        Allocated to registers r5 
                            386 ;ry                        Allocated to registers r6 
                            387 ;------------------------------------------------------------
                            388 ;	../fruit.c:51: void FRUIT_random(Position *position) {
                            389 ;	-----------------------------------------
                            390 ;	 function FRUIT_random
                            391 ;	-----------------------------------------
   0B10                     392 _FRUIT_random:
   0B10 AA 82               393 	mov	r2,dpl
   0B12 AB 83               394 	mov	r3,dph
   0B14 AC F0               395 	mov	r4,b
                            396 ;	../fruit.c:54: char rx = (char)(rand() % (SNAKE_LIMIT_X1-SNAKE_LIMIT_X0) + SNAKE_LIMIT_X0);
   0B16 C0 02               397 	push	ar2
   0B18 C0 03               398 	push	ar3
   0B1A C0 04               399 	push	ar4
   0B1C 12 0E 85            400 	lcall	_rand
   0B1F 75 3F 1D            401 	mov	__modsint_PARM_2,#0x1D
   0B22 75 40 00            402 	mov	(__modsint_PARM_2 + 1),#0x00
   0B25 12 0F F5            403 	lcall	__modsint
   0B28 AD 82               404 	mov	r5,dpl
                            405 ;	../fruit.c:55: char ry = (char)(rand() % (SNAKE_LIMIT_Y1-SNAKE_LIMIT_Y0) + SNAKE_LIMIT_Y0);	
   0B2A C0 05               406 	push	ar5
   0B2C 12 0E 85            407 	lcall	_rand
   0B2F 75 3F 0F            408 	mov	__modsint_PARM_2,#0x0F
   0B32 75 40 00            409 	mov	(__modsint_PARM_2 + 1),#0x00
   0B35 12 0F F5            410 	lcall	__modsint
   0B38 AE 82               411 	mov	r6,dpl
   0B3A AF 83               412 	mov	r7,dph
   0B3C D0 05               413 	pop	ar5
   0B3E D0 04               414 	pop	ar4
   0B40 D0 03               415 	pop	ar3
   0B42 D0 02               416 	pop	ar2
                            417 ;	../fruit.c:56: position->x = rx;
   0B44 8A 82               418 	mov	dpl,r2
   0B46 8B 83               419 	mov	dph,r3
   0B48 8C F0               420 	mov	b,r4
   0B4A ED                  421 	mov	a,r5
   0B4B 12 0E D0            422 	lcall	__gptrput
                            423 ;	../fruit.c:57: position->y = ry;
   0B4E 0A                  424 	inc	r2
   0B4F BA 00 01            425 	cjne	r2,#0x00,00103$
   0B52 0B                  426 	inc	r3
   0B53                     427 00103$:
   0B53 8A 82               428 	mov	dpl,r2
   0B55 8B 83               429 	mov	dph,r3
   0B57 8C F0               430 	mov	b,r4
   0B59 EE                  431 	mov	a,r6
   0B5A 02 0E D0            432 	ljmp	__gptrput
                            433 ;------------------------------------------------------------
                            434 ;Allocation info for local variables in function 'FRUIT_place'
                            435 ;------------------------------------------------------------
                            436 ;position                  Allocated with name '_FRUIT_place_position_1_1'
                            437 ;------------------------------------------------------------
                            438 ;	../fruit.c:65: void FRUIT_place() {
                            439 ;	-----------------------------------------
                            440 ;	 function FRUIT_place
                            441 ;	-----------------------------------------
   0B5D                     442 _FRUIT_place:
                            443 ;	../fruit.c:67: FRUIT_random(&position);
   0B5D 90 00 2D            444 	mov	dptr,#_FRUIT_place_position_1_1
   0B60 75 F0 40            445 	mov	b,#0x40
   0B63 12 0B 10            446 	lcall	_FRUIT_random
                            447 ;	../fruit.c:68: FRUIT_placeInFreeSpace(&position);
   0B66 90 00 2D            448 	mov	dptr,#_FRUIT_place_position_1_1
   0B69 75 F0 40            449 	mov	b,#0x40
   0B6C 02 09 1A            450 	ljmp	_FRUIT_placeInFreeSpace
                            451 	.area CSEG    (CODE)
                            452 	.area CONST   (CODE)
                            453 	.area XINIT   (CODE)
                            454 	.area CABS    (ABS,CODE)
