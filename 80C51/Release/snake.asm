;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Jan 13 02:12:10 2017
;--------------------------------------------------------
	.module snake
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SNAKE_turn_PARM_2
	.globl _SNAKE_showBody
	.globl _SNAKE_showHead
	.globl _SNAKE_iterate_PARM_2
	.globl _SNAKE_move
	.globl _SNAKE_liveOrDie
	.globl _SNAKE_turn
	.globl _SNAKE_iterate
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
_SNAKE_move_sloc0_1_0:
	.ds 3
_SNAKE_liveOrDie_sloc0_1_0:
	.ds 3
_SNAKE_iterate_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_SNAKE_turn_PARM_2::
	.ds 1
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
;Allocation info for local variables in function 'SNAKE_move'
;------------------------------------------------------------
;snake                     Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_SNAKE_move_sloc0_1_0'
;------------------------------------------------------------
;	../snake.c:14: void SNAKE_move(Snake *snake) {
;	-----------------------------------------
;	 function SNAKE_move
;	-----------------------------------------
_SNAKE_move:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../snake.c:17: BUFFER_in(snake->position.x);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_BUFFER_in
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:18: BUFFER_in(snake->position.y);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x01
	add	a,r5
	mov	_SNAKE_move_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_SNAKE_move_sloc0_1_0 + 1),a
	mov	(_SNAKE_move_sloc0_1_0 + 2),r7
	mov	dpl,_SNAKE_move_sloc0_1_0
	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_BUFFER_in
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:20: switch(snake->direction){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x03
	cjne	a,ar2,00110$
00110$:
	jnc	00111$
	ret
00111$:
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00112$
	jmp	@a+dptr
00112$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../snake.c:21: case(MOVES_UP): 
00101$:
;	../snake.c:22: snake->position.y--; 
	mov	dpl,_SNAKE_move_sloc0_1_0
	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	dpl,_SNAKE_move_sloc0_1_0
	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
	mov	a,r2
;	../snake.c:23: break;
;	../snake.c:24: case(MOVES_DOWN):
	ljmp	__gptrput
00102$:
;	../snake.c:25: snake->position.y++; 
	mov	dpl,_SNAKE_move_sloc0_1_0
	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	r2
	mov	dpl,_SNAKE_move_sloc0_1_0
	mov	dph,(_SNAKE_move_sloc0_1_0 + 1)
	mov	b,(_SNAKE_move_sloc0_1_0 + 2)
	mov	a,r2
;	../snake.c:26: break;
;	../snake.c:27: case(MOVES_LEFT):
	ljmp	__gptrput
00103$:
;	../snake.c:28: snake->position.x--;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
;	../snake.c:29: break;
;	../snake.c:30: case(MOVES_RIGHT):
	ljmp	__gptrput
00104$:
;	../snake.c:31: snake->position.x++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
;	../snake.c:34: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'SNAKE_liveOrDie'
;------------------------------------------------------------
;snake                     Allocated to registers r2 r3 r4 
;c                         Allocated to registers r5 
;sloc0                     Allocated with name '_SNAKE_liveOrDie_sloc0_1_0'
;------------------------------------------------------------
;	../snake.c:42: void SNAKE_liveOrDie(Snake *snake) {
;	-----------------------------------------
;	 function SNAKE_liveOrDie
;	-----------------------------------------
_SNAKE_liveOrDie:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../snake.c:43: unsigned char c = T6963C_readFrom(snake->position.x, snake->position.y);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	a,#0x01
	add	a,r6
	mov	_SNAKE_liveOrDie_sloc0_1_0,a
	clr	a
	addc	a,r7
	mov	(_SNAKE_liveOrDie_sloc0_1_0 + 1),a
	mov	(_SNAKE_liveOrDie_sloc0_1_0 + 2),r0
	mov	dpl,_SNAKE_liveOrDie_sloc0_1_0
	mov	dph,(_SNAKE_liveOrDie_sloc0_1_0 + 1)
	mov	b,(_SNAKE_liveOrDie_sloc0_1_0 + 2)
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
	mov	r5,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:47: if(snake->position.x > SNAKE_LIMIT_X0 && snake->position.y > SNAKE_LIMIT_Y0 && 
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	jnz	00134$
	ljmp	00114$
00134$:
	mov	dpl,_SNAKE_liveOrDie_sloc0_1_0
	mov	dph,(_SNAKE_liveOrDie_sloc0_1_0 + 1)
	mov	b,(_SNAKE_liveOrDie_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	jnz	00135$
	ljmp	00114$
00135$:
;	../snake.c:48: snake->position.x < SNAKE_LIMIT_X1 && snake->position.y < SNAKE_LIMIT_Y1){	
	cjne	r6,#0x1D,00136$
00136$:
	jc	00137$
	ljmp	00114$
00137$:
	cjne	r7,#0x0F,00138$
00138$:
	jc	00139$
	ljmp	00114$
00139$:
;	../snake.c:50: switch(c){
	cjne	r5,#0x91,00140$
	sjmp	00109$
00140$:
	cjne	r5,#0x95,00141$
	sjmp	00110$
00141$:
	cjne	r5,#0xA1,00142$
	sjmp	00109$
00142$:
	cjne	r5,#0xA2,00143$
	sjmp	00109$
00143$:
	cjne	r5,#0xA3,00144$
	sjmp	00109$
00144$:
	cjne	r5,#0xA4,00145$
	sjmp	00109$
00145$:
	cjne	r5,#0xA5,00146$
	sjmp	00109$
00146$:
	cjne	r5,#0xA6,00147$
	sjmp	00109$
00147$:
	cjne	r5,#0xA7,00148$
	sjmp	00109$
00148$:
	cjne	r5,#0xA8,00111$
;	../snake.c:59: case(SNAKE_BODY):
00109$:
;	../snake.c:60: snake->status = DEAD;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
;	../snake.c:61: break;
;	../snake.c:62: case(FRUIT):
	ljmp	__gptrput
00110$:
;	../snake.c:63: snake->status = EATING;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
;	../snake.c:64: snake->caloriesLeft+= FRUIT_CALORIES;
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
;	../snake.c:65: break;
;	../snake.c:66: default:
	ljmp	__gptrput
00111$:
;	../snake.c:67: snake->status = ALIVE;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../snake.c:69: }
	ljmp	__gptrput
00114$:
;	../snake.c:71: snake->status = DEAD;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'SNAKE_showHead'
;------------------------------------------------------------
;snake                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../snake.c:79: void SNAKE_showHead(Snake *snake) {
;	-----------------------------------------
;	 function SNAKE_showHead
;	-----------------------------------------
_SNAKE_showHead:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../snake.c:83: if(snake->status == DEAD){
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x01,00102$
;	../snake.c:84: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_DEAD);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x94
	mov	dpl,r5
	ljmp	_T6963C_writeAt
00102$:
;	../snake.c:87: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_HEAD);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
00110$:
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
00111$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x93
	mov	dpl,r5
	ljmp	_T6963C_writeAt
;------------------------------------------------------------
;Allocation info for local variables in function 'SNAKE_showBody'
;------------------------------------------------------------
;snake                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../snake.c:97: void SNAKE_showBody(Snake *snake) {
;	-----------------------------------------
;	 function SNAKE_showBody
;	-----------------------------------------
_SNAKE_showBody:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../snake.c:100: if(snake->status == EATING){
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x02,00102$
;	../snake.c:101: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_SWALLOW);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
00113$:
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x92
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_T6963C_writeAt
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00103$
00102$:
;	../snake.c:104: T6963C_writeAt(snake->position.x, snake->position.y, SNAKE_BODY);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
00114$:
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_T6963C_writeAt_PARM_2,a
	mov	_T6963C_writeAt_PARM_3,#0x91
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_T6963C_writeAt
	pop	ar4
	pop	ar3
	pop	ar2
00103$:
;	../snake.c:107: if(snake->caloriesLeft == 0){
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jnz	00105$
;	../snake.c:108: T6963C_writeAt(BUFFER_out(), BUFFER_out(), EMPTY);
	lcall	_BUFFER_out
	mov	r6,dpl
	push	ar6
	lcall	_BUFFER_out
	mov	_T6963C_writeAt_PARM_2,dpl
	pop	ar6
	mov	_T6963C_writeAt_PARM_3,#0x00
	mov	dpl,r6
	ljmp	_T6963C_writeAt
00105$:
;	../snake.c:110: snake->caloriesLeft--;
	dec	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'SNAKE_turn'
;------------------------------------------------------------
;arrow                     Allocated with name '_SNAKE_turn_PARM_2'
;snake                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../snake.c:120: void SNAKE_turn(Snake *snake, Arrow arrow) {
;	-----------------------------------------
;	 function SNAKE_turn
;	-----------------------------------------
_SNAKE_turn:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../snake.c:122: switch(arrow){
	mov	a,#0x01
	cjne	a,_SNAKE_turn_PARM_2,00125$
	sjmp	00101$
00125$:
	mov	a,#0x02
	cjne	a,_SNAKE_turn_PARM_2,00126$
	sjmp	00104$
00126$:
	mov	a,#0x03
	cjne	a,_SNAKE_turn_PARM_2,00127$
	sjmp	00107$
00127$:
	mov	a,#0x04
;	../snake.c:123: case(ARROW_UP): 
	cjne	a,_SNAKE_turn_PARM_2,00115$
	sjmp	00110$
00101$:
;	../snake.c:124: if(snake->direction != MOVES_DOWN){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x01,00129$
	ret
00129$:
;	../snake.c:125: snake->direction = MOVES_UP;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	../snake.c:127: break;
;	../snake.c:128: case(ARROW_DOWN):
	ljmp	__gptrput
00104$:
;	../snake.c:129: if(snake->direction != MOVES_UP){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	r6,#0x00
	orl	a,r6
	jz	00115$
;	../snake.c:130: snake->direction = MOVES_DOWN;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
;	../snake.c:132: break;
;	../snake.c:133: case(ARROW_LEFT):
	ljmp	__gptrput
00107$:
;	../snake.c:134: if(snake->direction != MOVES_RIGHT){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x03,00131$
	ret
00131$:
;	../snake.c:135: snake->direction = MOVES_LEFT;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
;	../snake.c:137: break;
;	../snake.c:138: case(ARROW_RIGHT):
	ljmp	__gptrput
00110$:
;	../snake.c:139: if(snake->direction != MOVES_LEFT){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x02,00132$
	ret
00132$:
;	../snake.c:140: snake->direction = MOVES_RIGHT;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x03
;	../snake.c:145: }
	ljmp	__gptrput
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SNAKE_iterate'
;------------------------------------------------------------
;arrow                     Allocated with name '_SNAKE_iterate_PARM_2'
;snake                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../snake.c:155: Status SNAKE_iterate(Snake *snake, Arrow arrow) {
;	-----------------------------------------
;	 function SNAKE_iterate
;	-----------------------------------------
_SNAKE_iterate:
;	../snake.c:156: SNAKE_showBody(snake);
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	push	ar2
	push	ar3
	push	ar4
	lcall	_SNAKE_showBody
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:157: SNAKE_turn(snake, arrow);
	mov	_SNAKE_turn_PARM_2,_SNAKE_iterate_PARM_2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_SNAKE_turn
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:158: SNAKE_move(snake);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_SNAKE_move
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:159: SNAKE_liveOrDie(snake);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_SNAKE_liveOrDie
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:160: SNAKE_showHead(snake);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_SNAKE_showHead
	pop	ar4
	pop	ar3
	pop	ar2
;	../snake.c:162: return snake->status;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
