;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Jan 13 02:12:10 2017
;--------------------------------------------------------
	.module gameboard
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GMB_copyFromRomToCg
	.globl _GMB_display_PARM_3
	.globl _GMB_display_PARM_2
	.globl _GMB_clear_PARM_4
	.globl _GMB_clear_PARM_3
	.globl _GMB_clear_PARM_2
	.globl _GMB_draw_PARM_4
	.globl _GMB_draw_PARM_3
	.globl _GMB_draw_PARM_2
	.globl _GMB_copyFromRomToCg_PARM_2
	.globl _GMB_initialize
	.globl _GMB_draw
	.globl _GMB_clear
	.globl _GMB_display
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
_GMB_copyFromRomToCg_PARM_2:
	.ds 1
_GMB_draw_PARM_2:
	.ds 1
_GMB_draw_PARM_3:
	.ds 1
_GMB_draw_PARM_4:
	.ds 1
_GMB_clear_PARM_2:
	.ds 1
_GMB_clear_PARM_3:
	.ds 1
_GMB_clear_PARM_4:
	.ds 1
_GMB_display_PARM_2:
	.ds 1
_GMB_display_PARM_3:
	.ds 3
_GMB_display_taille_1_1:
	.ds 1
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
;Allocation info for local variables in function 'GMB_copyFromRomToCg'
;------------------------------------------------------------
;cgCode                    Allocated with name '_GMB_copyFromRomToCg_PARM_2'
;positionInRom             Allocated to registers r2 
;rom_cg_address            Allocated to registers 
;video_cg_address          Allocated to registers 
;------------------------------------------------------------
;	../gameboard.c:15: void GMB_copyFromRomToCg(unsigned char positionInRom, unsigned char cgCode) {
;	-----------------------------------------
;	 function GMB_copyFromRomToCg
;	-----------------------------------------
_GMB_copyFromRomToCg:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	../gameboard.c:16: unsigned char *rom_cg_address = (unsigned char __xdata *) (ROM_CG_ADDRESS + positionInRom * 8);
	mov	a,dpl
	mov	b,#0x08
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	_T6963C_autoWrite_PARM_2,r2
	mov	(_T6963C_autoWrite_PARM_2 + 1),r3
	mov	(_T6963C_autoWrite_PARM_2 + 2),#0x00
;	../gameboard.c:17: unsigned int video_cg_address = cgCode * 8 + T6963C_ZONE_CG;
	mov	a,_GMB_copyFromRomToCg_PARM_2
	mov	b,#0x08
	mul	ab
	mov	dpl,a
	mov	a,#0x18
	add	a,b
	mov	dph,a
;	../gameboard.c:18: T6963C_autoWrite(video_cg_address, rom_cg_address, 8);
	mov	_T6963C_autoWrite_PARM_3,#0x08
	mov	(_T6963C_autoWrite_PARM_3 + 1),#0x00
	ljmp	_T6963C_autoWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'GMB_initialize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../gameboard.c:24: void GMB_initialize() {
;	-----------------------------------------
;	 function GMB_initialize
;	-----------------------------------------
_GMB_initialize:
;	../gameboard.c:25: GMB_copyFromRomToCg( 0, OBSTACLE_A);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA1
	mov	dpl,#0x00
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:26: GMB_copyFromRomToCg( 1, OBSTACLE_B);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA2
	mov	dpl,#0x01
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:27: GMB_copyFromRomToCg( 2, OBSTACLE_C);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA3
	mov	dpl,#0x02
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:28: GMB_copyFromRomToCg( 3, OBSTACLE_D);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA4
	mov	dpl,#0x03
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:29: GMB_copyFromRomToCg( 4, OBSTACLE_E);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA5
	mov	dpl,#0x04
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:30: GMB_copyFromRomToCg( 5, OBSTACLE_F);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA6
	mov	dpl,#0x05
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:31: GMB_copyFromRomToCg( 6, OBSTACLE_G);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA7
	mov	dpl,#0x06
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:32: GMB_copyFromRomToCg( 7, OBSTACLE_H);
	mov	_GMB_copyFromRomToCg_PARM_2,#0xA8
	mov	dpl,#0x07
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:34: GMB_copyFromRomToCg( 8, SNAKE_BODY);
	mov	_GMB_copyFromRomToCg_PARM_2,#0x91
	mov	dpl,#0x08
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:35: GMB_copyFromRomToCg( 9, SNAKE_SWALLOW);
	mov	_GMB_copyFromRomToCg_PARM_2,#0x92
	mov	dpl,#0x09
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:36: GMB_copyFromRomToCg(10, SNAKE_HEAD);
	mov	_GMB_copyFromRomToCg_PARM_2,#0x93
	mov	dpl,#0x0A
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:37: GMB_copyFromRomToCg(11, SNAKE_DEAD);
	mov	_GMB_copyFromRomToCg_PARM_2,#0x94
	mov	dpl,#0x0B
	lcall	_GMB_copyFromRomToCg
;	../gameboard.c:39: GMB_copyFromRomToCg(12, FRUIT);
	mov	_GMB_copyFromRomToCg_PARM_2,#0x95
	mov	dpl,#0x0C
	ljmp	_GMB_copyFromRomToCg
;------------------------------------------------------------
;Allocation info for local variables in function 'GMB_draw'
;------------------------------------------------------------
;y0                        Allocated with name '_GMB_draw_PARM_2'
;x1                        Allocated with name '_GMB_draw_PARM_3'
;y1                        Allocated with name '_GMB_draw_PARM_4'
;x0                        Allocated to registers r2 
;i                         Allocated to registers r3 
;j                         Allocated with name '_GMB_draw_j_1_1'
;------------------------------------------------------------
;	../gameboard.c:49: void GMB_draw(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
;	-----------------------------------------
;	 function GMB_draw
;	-----------------------------------------
_GMB_draw:
	mov	r2,dpl
;	../gameboard.c:58: for(i = x0; i <= x1; i++){
	mov	ar3,r2
00113$:
	mov	a,_GMB_draw_PARM_3
	cjne	a,ar3,00140$
00140$:
	jc	00116$
;	../gameboard.c:59: if(i == x0){
	mov	a,r3
	cjne	a,ar2,00105$
;	../gameboard.c:60: T6963C_writeAt(x0, y0, OBSTACLE_A);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA1
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
	sjmp	00115$
00105$:
;	../gameboard.c:62: else if (i < x1){
	mov	a,r3
	cjne	a,_GMB_draw_PARM_3,00144$
00144$:
	jnc	00102$
;	../gameboard.c:63: T6963C_writeAt(i, y0, OBSTACLE_B);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA2
	mov	dpl,r3
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
	sjmp	00115$
00102$:
;	../gameboard.c:66: T6963C_writeAt(x1, y0, OBSTACLE_C);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA3
	mov	dpl,_GMB_draw_PARM_3
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
00115$:
;	../gameboard.c:58: for(i = x0; i <= x1; i++){
	inc	r3
	sjmp	00113$
00116$:
;	../gameboard.c:71: for(i = x0; i <= x1; i++){
	mov	ar3,r2
00117$:
	mov	a,_GMB_draw_PARM_3
	cjne	a,ar3,00146$
00146$:
	jc	00120$
;	../gameboard.c:72: if(i == x0){
	mov	a,r3
	cjne	a,ar2,00111$
;	../gameboard.c:73: T6963C_writeAt(x0, y1, OBSTACLE_F);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
	mov	_T6963C_writeAt_PARM_3,#0xA6
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
	sjmp	00119$
00111$:
;	../gameboard.c:75: else if (i < x1){
	mov	a,r3
	cjne	a,_GMB_draw_PARM_3,00150$
00150$:
	jnc	00108$
;	../gameboard.c:76: T6963C_writeAt(i, y1, OBSTACLE_G);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
	mov	_T6963C_writeAt_PARM_3,#0xA7
	mov	dpl,r3
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
	sjmp	00119$
00108$:
;	../gameboard.c:79: T6963C_writeAt(x1, y1, OBSTACLE_H);
	mov	_T6963C_writeAt_PARM_2,_GMB_draw_PARM_4
	mov	_T6963C_writeAt_PARM_3,#0xA8
	mov	dpl,_GMB_draw_PARM_3
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
00119$:
;	../gameboard.c:71: for(i = x0; i <= x1; i++){
	inc	r3
	sjmp	00117$
00120$:
;	../gameboard.c:84: for(i = y0+1; i <= y1-1; i++){
	mov	a,_GMB_draw_PARM_2
	inc	a
	mov	r3,a
00121$:
	mov	r4,_GMB_draw_PARM_4
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xff,00152$
	dec	r5
00152$:
	mov	ar6,r3
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00125$
;	../gameboard.c:85: T6963C_writeAt(x0, i, OBSTACLE_D);
	mov	_T6963C_writeAt_PARM_2,r3
	mov	_T6963C_writeAt_PARM_3,#0xA4
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
;	../gameboard.c:86: T6963C_writeAt(x1, i, OBSTACLE_E);	   
	mov	_T6963C_writeAt_PARM_2,r3
	mov	_T6963C_writeAt_PARM_3,#0xA5
	mov	dpl,_GMB_draw_PARM_3
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
;	../gameboard.c:84: for(i = y0+1; i <= y1-1; i++){
	inc	r3
	sjmp	00121$
00125$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GMB_clear'
;------------------------------------------------------------
;y0                        Allocated with name '_GMB_clear_PARM_2'
;x1                        Allocated with name '_GMB_clear_PARM_3'
;y1                        Allocated with name '_GMB_clear_PARM_4'
;x0                        Allocated to registers r2 
;i                         Allocated to registers r2 
;j                         Allocated to registers r3 
;------------------------------------------------------------
;	../gameboard.c:97: void GMB_clear(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
;	-----------------------------------------
;	 function GMB_clear
;	-----------------------------------------
_GMB_clear:
	mov	r2,dpl
;	../gameboard.c:102: for(i = x0; i <= x1; i++){
00105$:
	mov	a,_GMB_clear_PARM_3
	cjne	a,ar2,00117$
00117$:
	jc	00109$
;	../gameboard.c:103: for(j = y0; j <= y1; j++){
	mov	r3,_GMB_clear_PARM_2
00101$:
	mov	a,_GMB_clear_PARM_4
	cjne	a,ar3,00119$
00119$:
	jc	00107$
;	../gameboard.c:104: T6963C_writeAt(i, j, EMPTY);
	mov	_T6963C_writeAt_PARM_2,r3
	mov	_T6963C_writeAt_PARM_3,#0x00
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_T6963C_writeAt
	pop	ar3
	pop	ar2
;	../gameboard.c:103: for(j = y0; j <= y1; j++){
	inc	r3
	sjmp	00101$
00107$:
;	../gameboard.c:102: for(i = x0; i <= x1; i++){
	inc	r2
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GMB_display'
;------------------------------------------------------------
;y0                        Allocated with name '_GMB_display_PARM_2'
;text                      Allocated with name '_GMB_display_PARM_3'
;x0                        Allocated to registers r2 
;x1                        Allocated to registers r4 
;y1                        Allocated to registers 
;taille                    Allocated with name '_GMB_display_taille_1_1'
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	../gameboard.c:116: void GMB_display(unsigned char x0, unsigned char y0, char *text) {
;	-----------------------------------------
;	 function GMB_display
;	-----------------------------------------
_GMB_display:
	mov	r2,dpl
;	../gameboard.c:126: taille = strlen(text);
	mov	dpl,_GMB_display_PARM_3
	mov	dph,(_GMB_display_PARM_3 + 1)
	mov	b,(_GMB_display_PARM_3 + 2)
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	pop	ar2
;	../gameboard.c:127: x1 = x0 + taille + 1;
	mov	a,r3
	mov	_GMB_display_taille_1_1,a
	add	a,r2
	inc	a
	mov	r4,a
;	../gameboard.c:136: for(i = 0; i < 3; i++){
	mov	r5,#0x00
00109$:
	cjne	r5,#0x03,00128$
00128$:
	jc	00129$
	ljmp	00112$
00129$:
;	../gameboard.c:137: if(i == 0){
	mov	a,r5
	jnz	00107$
;	../gameboard.c:138: T6963C_writeAt(x0, y0, OBSTACLE_A);
	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA1
	mov	dpl,r2
	push	ar2
	push	ar4
	push	ar5
	lcall	_T6963C_writeAt
	pop	ar5
	pop	ar4
;	../gameboard.c:139: T6963C_writeAt(x1, y0, OBSTACLE_C);
	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA3
	mov	dpl,r4
	push	ar4
	push	ar5
	lcall	_T6963C_writeAt
	pop	ar5
	pop	ar4
	pop	ar2
	sjmp	00111$
00107$:
;	../gameboard.c:140: }else if(i == 1){
	cjne	r5,#0x01,00104$
;	../gameboard.c:141: T6963C_writeAt(x0, y0+i, OBSTACLE_D);
	mov	a,r5
	add	a,_GMB_display_PARM_2
	mov	r6,a
	mov	_T6963C_writeAt_PARM_2,r6
	mov	_T6963C_writeAt_PARM_3,#0xA4
	mov	dpl,r2
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	lcall	_T6963C_writeAt
	pop	ar6
	pop	ar5
	pop	ar4
;	../gameboard.c:142: T6963C_writeAt(x1, y0+i, OBSTACLE_E);
	mov	_T6963C_writeAt_PARM_2,r6
	mov	_T6963C_writeAt_PARM_3,#0xA5
	mov	dpl,r4
	push	ar4
	push	ar5
	lcall	_T6963C_writeAt
	pop	ar5
	pop	ar4
	pop	ar2
	sjmp	00111$
00104$:
;	../gameboard.c:143: } else if(i == 2){
	cjne	r5,#0x02,00111$
;	../gameboard.c:144: T6963C_writeAt(x0, y0+i, OBSTACLE_F);
	mov	a,r5
	add	a,_GMB_display_PARM_2
	mov	r6,a
	mov	_T6963C_writeAt_PARM_2,r6
	mov	_T6963C_writeAt_PARM_3,#0xA6
	mov	dpl,r2
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	lcall	_T6963C_writeAt
	pop	ar6
	pop	ar5
	pop	ar4
;	../gameboard.c:145: T6963C_writeAt(x1, y0+i, OBSTACLE_H);
	mov	_T6963C_writeAt_PARM_2,r6
	mov	_T6963C_writeAt_PARM_3,#0xA8
	mov	dpl,r4
	push	ar4
	push	ar5
	lcall	_T6963C_writeAt
	pop	ar5
	pop	ar4
	pop	ar2
00111$:
;	../gameboard.c:136: for(i = 0; i < 3; i++){
	inc	r5
	ljmp	00109$
00112$:
;	../gameboard.c:151: for(i = 0; i < taille; i++){
	inc	r2
	mov	a,_GMB_display_PARM_2
	inc	a
	mov	r4,a
	mov	a,#0x02
	add	a,_GMB_display_PARM_2
	mov	r5,a
	mov	r6,#0x00
00113$:
	mov	a,r6
	cjne	a,_GMB_display_taille_1_1,00135$
00135$:
	jnc	00117$
;	../gameboard.c:152: T6963C_writeAt(x0+1+i, y0,   OBSTACLE_B);
	mov	a,r6
	add	a,r2
	mov	r7,a
	mov	_T6963C_writeAt_PARM_2,_GMB_display_PARM_2
	mov	_T6963C_writeAt_PARM_3,#0xA2
	mov	dpl,r7
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_T6963C_writeAt
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	../gameboard.c:153: T6963C_writeAt(x0+1+i, y0+1, text[i]-32);
	mov	a,r6
	add	a,_GMB_display_PARM_3
	mov	r0,a
	clr	a
	addc	a,(_GMB_display_PARM_3 + 1)
	mov	r1,a
	mov	r3,(_GMB_display_PARM_3 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	add	a,#0xe0
	mov	_T6963C_writeAt_PARM_3,a
	mov	_T6963C_writeAt_PARM_2,r4
	mov	dpl,r7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_T6963C_writeAt
	pop	ar7
	pop	ar6
	pop	ar5
;	../gameboard.c:154: T6963C_writeAt(x0+1+i, y0+2, OBSTACLE_G);
	mov	_T6963C_writeAt_PARM_2,r5
	mov	_T6963C_writeAt_PARM_3,#0xA7
	mov	dpl,r7
	push	ar5
	push	ar6
	lcall	_T6963C_writeAt
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar2
;	../gameboard.c:151: for(i = 0; i < taille; i++){
	inc	r6
	sjmp	00113$
00117$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
