;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Jan 13 02:12:09 2017
;--------------------------------------------------------
	.module buffer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BUFFER_clear
	.globl _BUFFER_out
	.globl _BUFFER_in
	.globl _buffer
	.globl _out
	.globl _in
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
_in::
	.ds 1
_out::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_buffer::
	.ds 250
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
;	../buffer.c:12: unsigned char in = 0;
	mov	_in,#0x00
;	../buffer.c:15: unsigned char out = 0;
	mov	_out,#0x00
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
;Allocation info for local variables in function 'BUFFER_in'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	../buffer.c:21: void BUFFER_in(char c) {
;	-----------------------------------------
;	 function BUFFER_in
;	-----------------------------------------
_BUFFER_in:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	../buffer.c:23: buffer[in] = c;
	mov	a,_in
	add	a,#_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_buffer >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
;	../buffer.c:24: in++;
	inc	_in
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUFFER_out'
;------------------------------------------------------------
;ret                       Allocated to registers r2 
;------------------------------------------------------------
;	../buffer.c:31: char BUFFER_out() {
;	-----------------------------------------
;	 function BUFFER_out
;	-----------------------------------------
_BUFFER_out:
;	../buffer.c:34: ret = buffer[out];
	mov	a,_out
	add	a,#_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
;	../buffer.c:35: out++;
	inc	_out
;	../buffer.c:36: return ret;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUFFER_clear'
;------------------------------------------------------------
;------------------------------------------------------------
;	../buffer.c:42: void BUFFER_clear() {
;	-----------------------------------------
;	 function BUFFER_clear
;	-----------------------------------------
_BUFFER_clear:
;	../buffer.c:43: in = 0;
	mov	_in,#0x00
;	../buffer.c:44: out = 0;
	mov	_out,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
