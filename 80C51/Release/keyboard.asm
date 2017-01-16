;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Jan 13 02:12:10 2017
;--------------------------------------------------------
	.module keyboard
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _KEYBOARD_readArrows
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'KEYBOARD_readArrows'
;------------------------------------------------------------
;keyboard                  Allocated to registers r2 r3 r4 
;myReturnValue             Allocated to registers r5 
;------------------------------------------------------------
;	../keyboard.c:20: Arrow KEYBOARD_readArrows(unsigned char *keyboard) {
;	-----------------------------------------
;	 function KEYBOARD_readArrows
;	-----------------------------------------
_KEYBOARD_readArrows:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	../keyboard.c:23: if(keyboard[0] == KEY_8){
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xFD,00111$
;	../keyboard.c:24: myReturnValue = ARROW_UP;
	mov	r5,#0x01
	sjmp	00112$
00111$:
;	../keyboard.c:25: } else if(keyboard[1] == KEY_4){
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0xFE,00108$
;	../keyboard.c:26: myReturnValue = ARROW_LEFT;
	mov	r5,#0x03
	sjmp	00112$
00108$:
;	../keyboard.c:27: } else if(keyboard[1] == KEY_6){
	cjne	r6,#0xFB,00105$
;	../keyboard.c:28: myReturnValue = ARROW_RIGHT;
	mov	r5,#0x04
	sjmp	00112$
00105$:
;	../keyboard.c:29: } else if(keyboard[2] == KEY_2) {
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFD,00102$
;	../keyboard.c:30: myReturnValue = ARROW_DOWN;
	mov	r5,#0x02
	sjmp	00112$
00102$:
;	../keyboard.c:32: myReturnValue = ARROW_NEUTRAL;
	mov	r5,#0x00
00112$:
;	../keyboard.c:34: return myReturnValue;
	mov	dpl,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
