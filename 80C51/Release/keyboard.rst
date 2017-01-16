                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:10 2017
                              5 ;--------------------------------------------------------
                              6 	.module keyboard
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _KEYBOARD_readArrows
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 	.area RSEG    (ABS,DATA)
   0000                      17 	.org 0x0000
                             18 ;--------------------------------------------------------
                             19 ; special function bits
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (ABS,DATA)
   0000                      22 	.org 0x0000
                             23 ;--------------------------------------------------------
                             24 ; overlayable register banks
                             25 ;--------------------------------------------------------
                             26 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      27 	.ds 8
                             28 ;--------------------------------------------------------
                             29 ; internal ram data
                             30 ;--------------------------------------------------------
                             31 	.area DSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable items in internal ram 
                             34 ;--------------------------------------------------------
                             35 	.area	OSEG    (OVR,DATA)
                             36 ;--------------------------------------------------------
                             37 ; indirectly addressable internal ram data
                             38 ;--------------------------------------------------------
                             39 	.area ISEG    (DATA)
                             40 ;--------------------------------------------------------
                             41 ; absolute internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area IABS    (ABS,DATA)
                             44 	.area IABS    (ABS,DATA)
                             45 ;--------------------------------------------------------
                             46 ; bit data
                             47 ;--------------------------------------------------------
                             48 	.area BSEG    (BIT)
                             49 ;--------------------------------------------------------
                             50 ; paged external ram data
                             51 ;--------------------------------------------------------
                             52 	.area PSEG    (PAG,XDATA)
                             53 ;--------------------------------------------------------
                             54 ; external ram data
                             55 ;--------------------------------------------------------
                             56 	.area XSEG    (XDATA)
                             57 ;--------------------------------------------------------
                             58 ; absolute external ram data
                             59 ;--------------------------------------------------------
                             60 	.area XABS    (ABS,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external initialized ram data
                             63 ;--------------------------------------------------------
                             64 	.area XISEG   (XDATA)
                             65 	.area HOME    (CODE)
                             66 	.area GSINIT0 (CODE)
                             67 	.area GSINIT1 (CODE)
                             68 	.area GSINIT2 (CODE)
                             69 	.area GSINIT3 (CODE)
                             70 	.area GSINIT4 (CODE)
                             71 	.area GSINIT5 (CODE)
                             72 	.area GSINIT  (CODE)
                             73 	.area GSFINAL (CODE)
                             74 	.area CSEG    (CODE)
                             75 ;--------------------------------------------------------
                             76 ; global & static initialisations
                             77 ;--------------------------------------------------------
                             78 	.area HOME    (CODE)
                             79 	.area GSINIT  (CODE)
                             80 	.area GSFINAL (CODE)
                             81 	.area GSINIT  (CODE)
                             82 ;--------------------------------------------------------
                             83 ; Home
                             84 ;--------------------------------------------------------
                             85 	.area HOME    (CODE)
                             86 	.area HOME    (CODE)
                             87 ;--------------------------------------------------------
                             88 ; code
                             89 ;--------------------------------------------------------
                             90 	.area CSEG    (CODE)
                             91 ;------------------------------------------------------------
                             92 ;Allocation info for local variables in function 'KEYBOARD_readArrows'
                             93 ;------------------------------------------------------------
                             94 ;keyboard                  Allocated to registers r2 r3 r4 
                             95 ;myReturnValue             Allocated to registers r5 
                             96 ;------------------------------------------------------------
                             97 ;	../keyboard.c:20: Arrow KEYBOARD_readArrows(unsigned char *keyboard) {
                             98 ;	-----------------------------------------
                             99 ;	 function KEYBOARD_readArrows
                            100 ;	-----------------------------------------
   08CB                     101 _KEYBOARD_readArrows:
                    0002    102 	ar2 = 0x02
                    0003    103 	ar3 = 0x03
                    0004    104 	ar4 = 0x04
                    0005    105 	ar5 = 0x05
                    0006    106 	ar6 = 0x06
                    0007    107 	ar7 = 0x07
                    0000    108 	ar0 = 0x00
                    0001    109 	ar1 = 0x01
                            110 ;	../keyboard.c:23: if(keyboard[0] == KEY_8){
   08CB AA 82               111 	mov	r2,dpl
   08CD AB 83               112 	mov	r3,dph
   08CF AC F0               113 	mov	r4,b
   08D1 12 0F D9            114 	lcall	__gptrget
   08D4 FD                  115 	mov	r5,a
   08D5 BD FD 04            116 	cjne	r5,#0xFD,00111$
                            117 ;	../keyboard.c:24: myReturnValue = ARROW_UP;
   08D8 7D 01               118 	mov	r5,#0x01
   08DA 80 3B               119 	sjmp	00112$
   08DC                     120 00111$:
                            121 ;	../keyboard.c:25: } else if(keyboard[1] == KEY_4){
   08DC 74 01               122 	mov	a,#0x01
   08DE 2A                  123 	add	a,r2
   08DF FE                  124 	mov	r6,a
   08E0 E4                  125 	clr	a
   08E1 3B                  126 	addc	a,r3
   08E2 FF                  127 	mov	r7,a
   08E3 8C 00               128 	mov	ar0,r4
   08E5 8E 82               129 	mov	dpl,r6
   08E7 8F 83               130 	mov	dph,r7
   08E9 88 F0               131 	mov	b,r0
   08EB 12 0F D9            132 	lcall	__gptrget
   08EE FE                  133 	mov	r6,a
   08EF BE FE 04            134 	cjne	r6,#0xFE,00108$
                            135 ;	../keyboard.c:26: myReturnValue = ARROW_LEFT;
   08F2 7D 03               136 	mov	r5,#0x03
   08F4 80 21               137 	sjmp	00112$
   08F6                     138 00108$:
                            139 ;	../keyboard.c:27: } else if(keyboard[1] == KEY_6){
   08F6 BE FB 04            140 	cjne	r6,#0xFB,00105$
                            141 ;	../keyboard.c:28: myReturnValue = ARROW_RIGHT;
   08F9 7D 04               142 	mov	r5,#0x04
   08FB 80 1A               143 	sjmp	00112$
   08FD                     144 00105$:
                            145 ;	../keyboard.c:29: } else if(keyboard[2] == KEY_2) {
   08FD 74 02               146 	mov	a,#0x02
   08FF 2A                  147 	add	a,r2
   0900 FA                  148 	mov	r2,a
   0901 E4                  149 	clr	a
   0902 3B                  150 	addc	a,r3
   0903 FB                  151 	mov	r3,a
   0904 8A 82               152 	mov	dpl,r2
   0906 8B 83               153 	mov	dph,r3
   0908 8C F0               154 	mov	b,r4
   090A 12 0F D9            155 	lcall	__gptrget
   090D FA                  156 	mov	r2,a
   090E BA FD 04            157 	cjne	r2,#0xFD,00102$
                            158 ;	../keyboard.c:30: myReturnValue = ARROW_DOWN;
   0911 7D 02               159 	mov	r5,#0x02
   0913 80 02               160 	sjmp	00112$
   0915                     161 00102$:
                            162 ;	../keyboard.c:32: myReturnValue = ARROW_NEUTRAL;
   0915 7D 00               163 	mov	r5,#0x00
   0917                     164 00112$:
                            165 ;	../keyboard.c:34: return myReturnValue;
   0917 8D 82               166 	mov	dpl,r5
   0919 22                  167 	ret
                            168 	.area CSEG    (CODE)
                            169 	.area CONST   (CODE)
                            170 	.area XINIT   (CODE)
                            171 	.area CABS    (ABS,CODE)
