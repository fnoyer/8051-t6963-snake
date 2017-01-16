                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Jan 13 02:12:09 2017
                              5 ;--------------------------------------------------------
                              6 	.module buffer
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _BUFFER_clear
                             13 	.globl _BUFFER_out
                             14 	.globl _BUFFER_in
                             15 	.globl _buffer
                             16 	.globl _out
                             17 	.globl _in
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (ABS,DATA)
   0000                      22 	.org 0x0000
                             23 ;--------------------------------------------------------
                             24 ; special function bits
                             25 ;--------------------------------------------------------
                             26 	.area RSEG    (ABS,DATA)
   0000                      27 	.org 0x0000
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
   0024                      37 _in::
   0024                      38 	.ds 1
   0025                      39 _out::
   0025                      40 	.ds 1
                             41 ;--------------------------------------------------------
                             42 ; overlayable items in internal ram 
                             43 ;--------------------------------------------------------
                             44 	.area	OSEG    (OVR,DATA)
                             45 	.area	OSEG    (OVR,DATA)
                             46 ;--------------------------------------------------------
                             47 ; indirectly addressable internal ram data
                             48 ;--------------------------------------------------------
                             49 	.area ISEG    (DATA)
                             50 ;--------------------------------------------------------
                             51 ; absolute internal ram data
                             52 ;--------------------------------------------------------
                             53 	.area IABS    (ABS,DATA)
                             54 	.area IABS    (ABS,DATA)
                             55 ;--------------------------------------------------------
                             56 ; bit data
                             57 ;--------------------------------------------------------
                             58 	.area BSEG    (BIT)
                             59 ;--------------------------------------------------------
                             60 ; paged external ram data
                             61 ;--------------------------------------------------------
                             62 	.area PSEG    (PAG,XDATA)
                             63 ;--------------------------------------------------------
                             64 ; external ram data
                             65 ;--------------------------------------------------------
                             66 	.area XSEG    (XDATA)
   0000                      67 _buffer::
   0000                      68 	.ds 250
                             69 ;--------------------------------------------------------
                             70 ; absolute external ram data
                             71 ;--------------------------------------------------------
                             72 	.area XABS    (ABS,XDATA)
                             73 ;--------------------------------------------------------
                             74 ; external initialized ram data
                             75 ;--------------------------------------------------------
                             76 	.area XISEG   (XDATA)
                             77 	.area HOME    (CODE)
                             78 	.area GSINIT0 (CODE)
                             79 	.area GSINIT1 (CODE)
                             80 	.area GSINIT2 (CODE)
                             81 	.area GSINIT3 (CODE)
                             82 	.area GSINIT4 (CODE)
                             83 	.area GSINIT5 (CODE)
                             84 	.area GSINIT  (CODE)
                             85 	.area GSFINAL (CODE)
                             86 	.area CSEG    (CODE)
                             87 ;--------------------------------------------------------
                             88 ; global & static initialisations
                             89 ;--------------------------------------------------------
                             90 	.area HOME    (CODE)
                             91 	.area GSINIT  (CODE)
                             92 	.area GSFINAL (CODE)
                             93 	.area GSINIT  (CODE)
                             94 ;	../buffer.c:12: unsigned char in = 0;
   006C 75 24 00             95 	mov	_in,#0x00
                             96 ;	../buffer.c:15: unsigned char out = 0;
   006F 75 25 00             97 	mov	_out,#0x00
                             98 ;--------------------------------------------------------
                             99 ; Home
                            100 ;--------------------------------------------------------
                            101 	.area HOME    (CODE)
                            102 	.area HOME    (CODE)
                            103 ;--------------------------------------------------------
                            104 ; code
                            105 ;--------------------------------------------------------
                            106 	.area CSEG    (CODE)
                            107 ;------------------------------------------------------------
                            108 ;Allocation info for local variables in function 'BUFFER_in'
                            109 ;------------------------------------------------------------
                            110 ;c                         Allocated to registers r2 
                            111 ;------------------------------------------------------------
                            112 ;	../buffer.c:21: void BUFFER_in(char c) {
                            113 ;	-----------------------------------------
                            114 ;	 function BUFFER_in
                            115 ;	-----------------------------------------
   0434                     116 _BUFFER_in:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
   0434 AA 82               125 	mov	r2,dpl
                            126 ;	../buffer.c:23: buffer[in] = c;
   0436 E5 24               127 	mov	a,_in
   0438 24 00               128 	add	a,#_buffer
   043A F5 82               129 	mov	dpl,a
   043C E4                  130 	clr	a
   043D 34 00               131 	addc	a,#(_buffer >> 8)
   043F F5 83               132 	mov	dph,a
   0441 EA                  133 	mov	a,r2
   0442 F0                  134 	movx	@dptr,a
                            135 ;	../buffer.c:24: in++;
   0443 05 24               136 	inc	_in
   0445 22                  137 	ret
                            138 ;------------------------------------------------------------
                            139 ;Allocation info for local variables in function 'BUFFER_out'
                            140 ;------------------------------------------------------------
                            141 ;ret                       Allocated to registers r2 
                            142 ;------------------------------------------------------------
                            143 ;	../buffer.c:31: char BUFFER_out() {
                            144 ;	-----------------------------------------
                            145 ;	 function BUFFER_out
                            146 ;	-----------------------------------------
   0446                     147 _BUFFER_out:
                            148 ;	../buffer.c:34: ret = buffer[out];
   0446 E5 25               149 	mov	a,_out
   0448 24 00               150 	add	a,#_buffer
   044A F5 82               151 	mov	dpl,a
   044C E4                  152 	clr	a
   044D 34 00               153 	addc	a,#(_buffer >> 8)
   044F F5 83               154 	mov	dph,a
   0451 E0                  155 	movx	a,@dptr
   0452 FA                  156 	mov	r2,a
                            157 ;	../buffer.c:35: out++;
   0453 05 25               158 	inc	_out
                            159 ;	../buffer.c:36: return ret;
   0455 8A 82               160 	mov	dpl,r2
   0457 22                  161 	ret
                            162 ;------------------------------------------------------------
                            163 ;Allocation info for local variables in function 'BUFFER_clear'
                            164 ;------------------------------------------------------------
                            165 ;------------------------------------------------------------
                            166 ;	../buffer.c:42: void BUFFER_clear() {
                            167 ;	-----------------------------------------
                            168 ;	 function BUFFER_clear
                            169 ;	-----------------------------------------
   0458                     170 _BUFFER_clear:
                            171 ;	../buffer.c:43: in = 0;
   0458 75 24 00            172 	mov	_in,#0x00
                            173 ;	../buffer.c:44: out = 0;
   045B 75 25 00            174 	mov	_out,#0x00
   045E 22                  175 	ret
                            176 	.area CSEG    (CODE)
                            177 	.area CONST   (CODE)
                            178 	.area XINIT   (CODE)
                            179 	.area CABS    (ABS,CODE)
