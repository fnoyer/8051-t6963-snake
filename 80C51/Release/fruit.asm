;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Jan 13 02:12:10 2017
;--------------------------------------------------------
	.module fruit
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FRUIT_placeInFreeSpace
	.globl _FRUIT_random
	.globl _FRUIT_place
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
_FRUIT_place_position_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'FRUIT_placeInFreeSpace'
;------------------------------------------------------------
;position                  Allocated to registers r2 r3 r4 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../fruit.c:17: void FRUIT_placeInFreeSpace(Position *position) {
;	-----------------------------------------
;	 function FRUIT_placeInFreeSpace
;	-----------------------------------------
_FRUIT_placeInFreeSpace:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	../fruit.c:20: char c = T6963C_readFrom(position->x, position->y);
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov	r5,a
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
	mov	_T6963C_readFrom_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_T6963C_readFrom
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	../fruit.c:23: if(c == EMPTY){
	jnz	00114$
;	../fruit.c:24: T6963C_writeAt(position->x, position->y, FRUIT);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x95
	mov	dpl,r5
	ljmp	_T6963C_writeAt
00114$:
;	../fruit.c:28: if(T6963C_readFrom(position->x-1, position->y) == EMPTY){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	dec	r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_readFrom_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_T6963C_readFrom
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00111$
;	../fruit.c:29: position->x--;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	dec	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	ljmp	00112$
00111$:
;	../fruit.c:30: }else if(T6963C_readFrom(position->x+1, position->y) == EMPTY){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_readFrom_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_T6963C_readFrom
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00108$
;	../fruit.c:31: position->x++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	ljmp	00112$
00108$:
;	../fruit.c:32: }else if(T6963C_readFrom(position->x, position->y+1) == EMPTY){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	inc	a
	mov	_T6963C_readFrom_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_T6963C_readFrom
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00105$
;	../fruit.c:33: position->y++;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r5
	lcall	__gptrput
	ljmp	00112$
00105$:
;	../fruit.c:34: }else if(T6963C_readFrom(position->x, position->y-1) == EMPTY){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	dec	a
	mov	_T6963C_readFrom_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_T6963C_readFrom
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00102$
;	../fruit.c:35: position->y--;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r5,a
	dec	r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r5
	lcall	__gptrput
	sjmp	00112$
00102$:
;	../fruit.c:37: FRUIT_random(position);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_FRUIT_random
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	../fruit.c:38: FRUIT_placeInFreeSpace(position); 
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	lcall	_FRUIT_placeInFreeSpace
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
00112$:
;	../fruit.c:40: T6963C_writeAt(position->x, position->y, FRUIT);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x95
	mov	dpl,r2
	ljmp	_T6963C_writeAt
;------------------------------------------------------------
;Allocation info for local variables in function 'FRUIT_random'
;------------------------------------------------------------
;position                  Allocated to registers r2 r3 r4 
;rx                        Allocated to registers r5 
;ry                        Allocated to registers r6 
;------------------------------------------------------------
;	../fruit.c:51: void FRUIT_random(Position *position) {
;	-----------------------------------------
;	 function FRUIT_random
;	-----------------------------------------
_FRUIT_random:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../fruit.c:54: char rx = (char)(rand() % (SNAKE_LIMIT_X1-SNAKE_LIMIT_X0) + SNAKE_LIMIT_X0);
	push	ar2
	push	ar3
	push	ar4
	lcall	_rand
	mov	__modsint_PARM_2,#0x1D
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
;	../fruit.c:55: char ry = (char)(rand() % (SNAKE_LIMIT_Y1-SNAKE_LIMIT_Y0) + SNAKE_LIMIT_Y0);	
	push	ar5
	lcall	_rand
	mov	__modsint_PARM_2,#0x0F
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	../fruit.c:56: position->x = rx;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../fruit.c:57: position->y = ry;
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'FRUIT_place'
;------------------------------------------------------------
;position                  Allocated with name '_FRUIT_place_position_1_1'
;------------------------------------------------------------
;	../fruit.c:65: void FRUIT_place() {
;	-----------------------------------------
;	 function FRUIT_place
;	-----------------------------------------
_FRUIT_place:
;	../fruit.c:67: FRUIT_random(&position);
	mov	dptr,#_FRUIT_place_position_1_1
	mov	b,#0x40
	lcall	_FRUIT_random
;	../fruit.c:68: FRUIT_placeInFreeSpace(&position);
	mov	dptr,#_FRUIT_place_position_1_1
	mov	b,#0x40
	ljmp	_FRUIT_placeInFreeSpace
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
