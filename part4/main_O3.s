	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	__Z8generatemj                  ; -- Begin function _Z8generatemj
	.p2align	2
__Z8generatemj:                         ; @_Z8generatemj
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #2512
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	mov	x20, x0
	mov	x21, x8
	str	w1, [sp, #8]
	mov	w8, #1                          ; =0x1
	mov	w9, #35173                      ; =0x8965
	movk	w9, #27655, lsl #16
	add	x10, sp, #8
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	eor	w11, w1, w1, lsr #30
	madd	w1, w11, w9, w8
	str	w1, [x10, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, #624
	b.ne	LBB0_1
; %bb.2:
	cmp	x20, #1
	b.lt	LBB0_4
; %bb.3:
	mul	x8, x20, x20
	lsl	x22, x8, #3
	lsr	x8, x8, #61
	cmp	x8, #0
	csinv	x0, x22, xzr, eq
	bl	__Znam
	mov	x19, x0
	str	x0, [x21, #16]
	mov	x1, x22
	bl	_bzero
	stp	x20, x20, [x21]
	mul	x11, x20, x20
	cbnz	x11, LBB0_5
	b	LBB0_7
LBB0_4:
	mov	x20, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	stp	xzr, xzr, [x21]
	str	xzr, [x21, #16]
	mul	x11, x20, x20
	cbz	x11, LBB0_7
LBB0_5:
	mov	x14, #0                         ; =0x0
	mov	w8, #-272236544                 ; =0xefc60000
	mov	w9, #22144                      ; =0x5680
	movk	w9, #40236, lsl #16
	mov	w10, #45279                     ; =0xb0df
	movk	w10, #39176, lsl #16
	lsl	x11, x11, #3
	mov	x12, #3361                      ; =0xd21
	movk	x12, #8402, lsl #16
	movk	x12, #53773, lsl #32
	movk	x12, #3360, lsl #48
	mov	w13, #624                       ; =0x270
	add	x15, sp, #8
	mov	w16, #397                       ; =0x18d
	mov	x17, #4751297606875873280       ; =0x41f0000000000000
	fmov	d0, x17
	mov	x17, #4318952042648305664       ; =0x3bf0000000000000
	fmov	d1, #-1.00000000
	fmov	d2, x17
	fmov	d3, #2.00000000
	mov	x17, #-227                      ; =0xffffffffffffff1d
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	add	x0, x14, #1
	lsr	x1, x0, #4
	umulh	x1, x1, x12
	lsr	x1, x1, #1
	ldr	w2, [x15, x14, lsl #2]
	and	w2, w2, #0x80000000
	msub	x0, x1, x13, x0
	ldr	w1, [x15, x0, lsl #2]
	add	x3, x14, #397
	lsr	x4, x3, #4
	umulh	x4, x4, x12
	and	w5, w1, #0x7ffffffe
	lsr	x4, x4, #1
	msub	x3, x4, x13, x3
	ldr	w3, [x15, x3, lsl #2]
	tst	w1, #0x1
	orr	w1, w5, w2
	csel	w2, w10, wzr, ne
	eor	w2, w2, w3
	eor	w1, w2, w1, lsr #1
	str	w1, [x15, x14, lsl #2]
	eor	w14, w1, w1, lsr #11
	and	w1, w9, w14, lsl #7
	eor	w1, w1, w14
	add	x14, x0, #1
	cmp	x14, #624
	csinc	x14, xzr, x0, eq
	and	w2, w8, w1, lsl #15
	ldr	w3, [x15, x0, lsl #2]
	and	w3, w3, #0x80000000
	ldr	w4, [x15, x14, lsl #2]
	and	w5, w4, #0x7ffffffe
	cmp	x0, #227
	csel	x6, x16, x17, lo
	add	x6, x6, x0
	ldr	w6, [x15, x6, lsl #2]
	eor	w1, w2, w1
	orr	w2, w5, w3
	tst	w4, #0x1
	csel	w3, w10, wzr, ne
	eor	w3, w3, w6
	eor	w2, w3, w2, lsr #1
	eor	w1, w1, w1, lsr #18
	eor	w3, w2, w2, lsr #11
	and	w4, w9, w3, lsl #7
	eor	w3, w4, w3
	and	w4, w8, w3, lsl #15
	ucvtf	d4, w1
	eor	w1, w4, w3
	eor	w1, w1, w1, lsr #18
	ucvtf	d5, w1
	str	w2, [x15, x0, lsl #2]
	fmadd	d4, d5, d0, d4
	fmul	d4, d4, d2
	fmadd	d4, d4, d3, d1
	str	d4, [x19], #8
	subs	x11, x11, #8
	b.ne	LBB0_6
LBB0_7:
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #288
	stp	d11, d10, [sp, #160]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #176]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #192]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
Lloh0:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #128                        ; =0x80
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #128                        ; =0x80
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w19, #10                        ; =0xa
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w1, #2000                       ; =0x7d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	strb	w19, [sp, #136]
	add	x1, sp, #136
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w23, #0                         ; =0x0
	movi	d8, #0000000000000000
	fmov	d10, #0.50000000
	fmov.2d	v0, #0.50000000
	str	q0, [sp]                        ; 16-byte Folded Spill
	b	LBB1_2
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	fadd	d8, d8, d11
	add	w23, w23, #1
	cmp	w23, #2000
	b.eq	LBB1_49
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_47 Depth 2
                                        ;     Child Loop BB1_22 Depth 2
                                        ;     Child Loop BB1_26 Depth 2
                                        ;     Child Loop BB1_29 Depth 2
                                        ;     Child Loop BB1_35 Depth 2
	lsl	w19, w23, #1
	mov	w1, #1                          ; =0x1
	bfi	w1, w23, #1, #30
	add	x8, sp, #136
	mov	w0, #128                        ; =0x80
	bl	__Z8generatemj
Ltmp0:
	add	x8, sp, #112
	add	w1, w19, #2
	mov	w0, #128                        ; =0x80
	bl	__Z8generatemj
Ltmp1:
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	ldp	x8, x9, [sp, #136]
	stp	x8, x9, [sp, #64]
	str	xzr, [sp, #80]
	ldr	x19, [sp, #152]
	cbz	x19, LBB1_7
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	mul	x21, x9, x8
	lsl	x20, x21, #3
	lsr	x8, x21, #61
	cmp	x8, #0
	csinv	x0, x20, xzr, eq
Ltmp3:
	bl	__Znam
Ltmp4:
; %bb.5:                                ;   in Loop: Header=BB1_2 Depth=1
	str	x0, [sp, #80]
	cbz	x21, LBB1_7
; %bb.6:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x1, x19
	mov	x2, x20
	bl	_memmove
LBB1_7:                                 ;   in Loop: Header=BB1_2 Depth=1
Ltmp6:
	add	x0, sp, #64
	add	x1, sp, #112
	bl	__ZNR6MatrixIdE8multiplyERKS0_
Ltmp7:
; %bb.8:                                ;   in Loop: Header=BB1_2 Depth=1
	ldp	x25, x24, [sp, #64]
	stp	x25, x24, [sp, #88]
	stp	xzr, xzr, [sp, #64]
	ldr	x21, [sp, #80]
	str	x21, [sp, #104]
	str	xzr, [sp, #80]
	cbz	x21, LBB1_12
; %bb.9:                                ;   in Loop: Header=BB1_2 Depth=1
	mul	x26, x24, x25
	lsl	x22, x26, #3
	lsr	x8, x26, #61
	cmp	x8, #0
	csinv	x0, x22, xzr, eq
Ltmp9:
	bl	__Znam
Ltmp10:
; %bb.10:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	x20, x0
	cbz	x26, LBB1_13
; %bb.11:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	x0, x20
	mov	x1, x21
	mov	x2, x22
	bl	_memmove
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x20, #0                         ; =0x0
LBB1_13:                                ;   in Loop: Header=BB1_2 Depth=1
Ltmp12:
	add	x8, sp, #16
	add	x0, sp, #88
	bl	__ZNK6MatrixIdE10transposedEv
Ltmp13:
; %bb.14:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	x8, [sp, #16]
	cmp	x25, x8
	b.ne	LBB1_50
; %bb.15:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	x8, [sp, #24]
	cmp	x24, x8
	b.ne	LBB1_50
; %bb.16:                               ;   in Loop: Header=BB1_2 Depth=1
	mul	x8, x24, x25
	ldr	x0, [sp, #32]
	cbz	x8, LBB1_30
; %bb.17:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x8, #7
	b.ls	LBB1_20
; %bb.18:                               ;   in Loop: Header=BB1_2 Depth=1
	lsl	x9, x8, #3
	add	x10, x0, x9
	cmp	x20, x10
	b.hs	LBB1_46
; %bb.19:                               ;   in Loop: Header=BB1_2 Depth=1
	add	x9, x20, x9
	cmp	x0, x9
	b.hs	LBB1_46
LBB1_20:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x9, #0                          ; =0x0
LBB1_21:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	x10, x8, x9
	lsl	x11, x9, #3
	add	x9, x20, x11
	add	x11, x0, x11
LBB1_22:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x11], #8
	ldr	d1, [x9]
	fadd	d0, d0, d1
	str	d0, [x9], #8
	subs	x10, x10, #1
	b.ne	LBB1_22
LBB1_23:                                ;   in Loop: Header=BB1_2 Depth=1
	cmp	x8, #8
	b.hs	LBB1_25
; %bb.24:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	x9, #0                          ; =0x0
	b	LBB1_28
LBB1_25:                                ;   in Loop: Header=BB1_2 Depth=1
	and	x9, x8, #0xfffffffffffffff8
	add	x10, x20, #32
	mov	x11, x9
	ldr	q4, [sp]                        ; 16-byte Folded Reload
LBB1_26:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x10, #-32]
	ldp	q2, q3, [x10]
	fmul.2d	v0, v0, v4
	fmul.2d	v1, v1, v4
	fmul.2d	v2, v2, v4
	fmul.2d	v3, v3, v4
	stp	q0, q1, [x10, #-32]
	stp	q2, q3, [x10], #64
	subs	x11, x11, #8
	b.ne	LBB1_26
; %bb.27:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x8, x9
	b.eq	LBB1_30
LBB1_28:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	x8, x8, x9
	add	x9, x20, x9, lsl #3
LBB1_29:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x9]
	fmul	d0, d0, d10
	str	d0, [x9], #8
	subs	x8, x8, #1
	b.ne	LBB1_29
LBB1_30:                                ;   in Loop: Header=BB1_2 Depth=1
	stp	x25, x24, [sp, #40]
	str	x20, [sp, #56]
	cbz	x0, LBB1_32
; %bb.31:                               ;   in Loop: Header=BB1_2 Depth=1
	bl	__ZdaPv
	ldr	x24, [sp, #48]
LBB1_32:                                ;   in Loop: Header=BB1_2 Depth=1
	cbz	x24, LBB1_36
; %bb.33:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	x9, [sp, #40]
	sub	x8, x24, #1
	cmp	x9, x8
	b.ls	LBB1_51
; %bb.34:                               ;   in Loop: Header=BB1_2 Depth=1
	ldr	x8, [sp, #56]
	lsl	x9, x9, #3
	add	x9, x9, #8
	movi	d11, #0000000000000000
LBB1_35:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x8]
	fadd	d11, d11, d0
	add	x8, x8, x9
	subs	x24, x24, #1
	b.ne	LBB1_35
	b	LBB1_37
LBB1_36:                                ;   in Loop: Header=BB1_2 Depth=1
	movi	d11, #0000000000000000
LBB1_37:                                ;   in Loop: Header=BB1_2 Depth=1
Ltmp21:
	add	x0, sp, #40
	bl	__ZNK6MatrixIdE3detEv
Ltmp22:
; %bb.38:                               ;   in Loop: Header=BB1_2 Depth=1
	fmov	d9, d0
	ldr	x0, [sp, #56]
	cbz	x0, LBB1_40
; %bb.39:                               ;   in Loop: Header=BB1_2 Depth=1
	bl	__ZdaPv
LBB1_40:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	x0, [sp, #104]
	cbz	x0, LBB1_42
; %bb.41:                               ;   in Loop: Header=BB1_2 Depth=1
	bl	__ZdaPv
LBB1_42:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	x0, [sp, #128]
	cbz	x0, LBB1_44
; %bb.43:                               ;   in Loop: Header=BB1_2 Depth=1
	bl	__ZdaPv
LBB1_44:                                ;   in Loop: Header=BB1_2 Depth=1
	cbz	x19, LBB1_1
; %bb.45:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	x0, x19
	bl	__ZdaPv
	b	LBB1_1
LBB1_46:                                ;   in Loop: Header=BB1_2 Depth=1
	and	x9, x8, #0xfffffffffffffff8
	add	x10, x20, #32
	add	x11, x0, #32
	mov	x12, x9
LBB1_47:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x11, #-32]
	ldp	q2, q3, [x11], #64
	ldp	q4, q5, [x10, #-32]
	ldp	q6, q7, [x10]
	fadd.2d	v0, v0, v4
	fadd.2d	v1, v1, v5
	fadd.2d	v2, v2, v6
	fadd.2d	v3, v3, v7
	stp	q0, q1, [x10, #-32]
	stp	q2, q3, [x10], #64
	subs	x12, x12, #8
	b.ne	LBB1_47
; %bb.48:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x8, x9
	b.ne	LBB1_21
	b	LBB1_23
LBB1_49:
Lloh8:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh9:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh10:
	adrp	x1, l_.str.3@PAGE
Lloh11:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh12:
	adrp	x1, l_.str.4@PAGE
Lloh13:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	mov	w8, #10                         ; =0xa
	strb	w8, [sp, #136]
	add	x1, sp, #136
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #176]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB1_50:
Ltmp15:
Lloh14:
	adrp	x0, l___func__._ZNR6MatrixIdE3addERKS0_@PAGE
Lloh15:
	add	x0, x0, l___func__._ZNR6MatrixIdE3addERKS0_@PAGEOFF
Lloh16:
	adrp	x1, l_.str.7@PAGE
Lloh17:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh18:
	adrp	x3, l_.str.15@PAGE
Lloh19:
	add	x3, x3, l_.str.15@PAGEOFF
	mov	w2, #229                        ; =0xe5
	bl	___assert_rtn
Ltmp16:
	b	LBB1_52
LBB1_51:
Ltmp18:
Lloh20:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
Lloh21:
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
Lloh22:
	adrp	x1, l_.str.7@PAGE
Lloh23:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh24:
	adrp	x3, l_.str.13@PAGE
Lloh25:
	add	x3, x3, l_.str.13@PAGEOFF
	mov	w2, #761                        ; =0x2f9
	bl	___assert_rtn
Ltmp19:
LBB1_52:
	brk	#0x1
LBB1_53:
Ltmp5:
	mov	x21, x0
	b	LBB1_68
LBB1_54:
Ltmp11:
	mov	x21, x0
	b	LBB1_66
LBB1_55:
Ltmp23:
	b	LBB1_60
LBB1_56:
Ltmp14:
	mov	x21, x0
	b	LBB1_63
LBB1_57:
Ltmp8:
	mov	x21, x0
	ldr	x0, [sp, #80]
	cbnz	x0, LBB1_67
	b	LBB1_68
LBB1_58:
Ltmp2:
	mov	x21, x0
	ldr	x19, [sp, #152]
	cbz	x19, LBB1_70
	b	LBB1_72
LBB1_59:
Ltmp20:
LBB1_60:
	mov	x21, x0
	ldr	x0, [sp, #56]
	cbnz	x0, LBB1_65
	b	LBB1_66
LBB1_61:
Ltmp17:
	mov	x21, x0
	ldr	x0, [sp, #32]
	cbz	x0, LBB1_63
; %bb.62:
	bl	__ZdaPv
LBB1_63:
	cbz	x20, LBB1_66
; %bb.64:
	mov	x0, x20
LBB1_65:
	bl	__ZdaPv
LBB1_66:
	ldr	x0, [sp, #104]
	cbz	x0, LBB1_68
LBB1_67:
	bl	__ZdaPv
LBB1_68:
	ldr	x0, [sp, #128]
	cbnz	x0, LBB1_71
; %bb.69:
	cbnz	x19, LBB1_72
LBB1_70:
	mov	x0, x21
	bl	__Unwind_Resume
LBB1_71:
	bl	__ZdaPv
	cbz	x19, LBB1_70
LBB1_72:
	mov	x0, x19
	bl	__ZdaPv
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp4                    ;   Call between Ltmp4 and Ltmp6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp12-Ltmp10                  ;   Call between Ltmp10 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp15-Ltmp22                  ;   Call between Ltmp22 and Ltmp15
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp19-Ltmp18                  ;   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Lfunc_end0-Ltmp19              ;   Call between Ltmp19 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdE10transposedEv   ; -- Begin function _ZNK6MatrixIdE10transposedEv
	.weak_def_can_be_hidden	__ZNK6MatrixIdE10transposedEv
	.p2align	2
__ZNK6MatrixIdE10transposedEv:          ; @_ZNK6MatrixIdE10transposedEv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x0
	mov	x21, x8
	ldp	x24, x23, [x0]
	subs	x25, x23, #1
	ccmp	x24, #1, #8, ge
	b.ge	LBB2_3
; %bb.1:
	stp	xzr, xzr, [x21]
	str	xzr, [x21, #16]
	cmp	x23, #0
	ccmp	x24, #0, #4, ne
	b.eq	LBB2_32
; %bb.2:
	mov	x19, #0                         ; =0x0
	mov	x9, #0                          ; =0x0
	mov	x8, #0                          ; =0x0
	b	LBB2_4
LBB2_3:
	mul	x8, x24, x23
	lsl	x22, x8, #3
	lsr	x8, x8, #61
	cmp	x8, #0
	csinv	x0, x22, xzr, eq
	bl	__Znam
	mov	x19, x0
	str	x0, [x21, #16]
	mov	x1, x22
	bl	_bzero
	stp	x23, x24, [x21]
	mov	x9, x23
	mov	x8, x24
LBB2_4:
	ldr	x10, [x20, #16]
	sub	x11, x24, #1
	cmp	x8, x11
	csel	x0, x8, x11, lo
	add	x11, x23, x0
	add	x11, x19, x11, lsl #3
	madd	x12, x24, x25, x0
	add	x12, x10, x12, lsl #3
	add	x13, x12, #8
	add	x12, x0, #1
	cmp	x19, x13
	ccmp	x10, x11, #2, lo
	ubfx	x11, x24, #60, #1
	csinc	w11, w11, wzr, hs
	ands	x13, x12, #0x7
	mov	w14, #8                         ; =0x8
	csel	x1, x14, x13, eq
	cmp	x0, #7
	b.hi	LBB2_11
; %bb.5:
	mov	x11, #0                         ; =0x0
	lsl	x12, x9, #3
	lsl	x13, x24, #3
	mov	x14, x19
Lloh26:
	adrp	x3, l_.str.12@PAGE
Lloh27:
	add	x3, x3, l_.str.12@PAGEOFF
LBB2_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_8 Depth 2
	cmp	x9, x11
	b.ls	LBB2_36
; %bb.7:                                ;   in Loop: Header=BB2_6 Depth=1
	mov	x15, x8
	mov	x16, x10
	mov	x17, x14
	mov	x0, x24
LBB2_8:                                 ;   Parent Loop BB2_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x15, LBB2_33
; %bb.9:                                ;   in Loop: Header=BB2_8 Depth=2
	ldr	d0, [x16], #8
	str	d0, [x17]
	add	x17, x17, x12
	sub	x15, x15, #1
	sub	x0, x0, #1
	cbnz	x0, LBB2_8
; %bb.10:                               ;   in Loop: Header=BB2_6 Depth=1
	add	x11, x11, #1
	add	x14, x14, #8
	add	x10, x10, x13
	cmp	x11, x23
	b.ne	LBB2_6
	b	LBB2_32
LBB2_11:
	cmp	x9, #1
	b.ne	LBB2_19
; %bb.12:
	tbz	w11, #0, LBB2_25
; %bb.13:
	mov	x11, #0                         ; =0x0
	lsl	x12, x9, #3
	lsl	x13, x24, #3
	mov	x14, x19
Lloh28:
	adrp	x3, l_.str.12@PAGE
Lloh29:
	add	x3, x3, l_.str.12@PAGEOFF
LBB2_14:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_16 Depth 2
	cmp	x9, x11
	b.ls	LBB2_36
; %bb.15:                               ;   in Loop: Header=BB2_14 Depth=1
	mov	x15, x8
	mov	x16, x10
	mov	x17, x14
	mov	x0, x24
LBB2_16:                                ;   Parent Loop BB2_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x15, LBB2_33
; %bb.17:                               ;   in Loop: Header=BB2_16 Depth=2
	ldr	d0, [x16], #8
	str	d0, [x17]
	add	x17, x17, x12
	sub	x15, x15, #1
	sub	x0, x0, #1
	cbnz	x0, LBB2_16
; %bb.18:                               ;   in Loop: Header=BB2_14 Depth=1
	add	x11, x11, #1
	add	x14, x14, #8
	add	x10, x10, x13
	cmp	x11, x23
	b.ne	LBB2_14
	b	LBB2_32
LBB2_19:
	mov	x11, #0                         ; =0x0
	lsl	x12, x9, #3
	lsl	x13, x24, #3
	mov	x14, x19
Lloh30:
	adrp	x3, l_.str.12@PAGE
Lloh31:
	add	x3, x3, l_.str.12@PAGEOFF
LBB2_20:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_22 Depth 2
	cmp	x9, x11
	b.ls	LBB2_36
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=1
	mov	x15, x10
	mov	x16, x14
	mov	x17, x24
	mov	x0, x8
LBB2_22:                                ;   Parent Loop BB2_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x0, LBB2_33
; %bb.23:                               ;   in Loop: Header=BB2_22 Depth=2
	ldr	d0, [x15], #8
	str	d0, [x16]
	sub	x0, x0, #1
	add	x16, x16, x12
	subs	x17, x17, #1
	b.ne	LBB2_22
; %bb.24:                               ;   in Loop: Header=BB2_20 Depth=1
	add	x11, x11, #1
	add	x14, x14, #8
	add	x10, x10, x13
	cmp	x11, x23
	b.ne	LBB2_20
	b	LBB2_32
LBB2_25:
	mov	x11, #0                         ; =0x0
	sub	x12, x12, x1
	add	x13, x10, #32
	lsl	x14, x24, #3
	add	x15, x19, #32
	mvn	x2, x0
	add	x16, x1, x24
	add	x16, x2, x16
	mul	x17, x9, x12
	add	x17, x19, x17, lsl #3
	sub	x10, x10, x1, lsl #3
	add	x0, x10, x0, lsl #3
	lsl	x10, x9, #3
	add	x0, x0, #8
	add	x1, x1, x8
	add	x1, x2, x1
Lloh32:
	adrp	x3, l_.str.12@PAGE
Lloh33:
	add	x3, x3, l_.str.12@PAGEOFF
LBB2_26:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_27 Depth 2
                                        ;     Child Loop BB2_29 Depth 2
	mov	x2, x15
	mov	x4, x13
	mov	x5, x12
	cmp	x9, x11
	b.ls	LBB2_36
LBB2_27:                                ;   Parent Loop BB2_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x4, #-32]
	ldp	q2, q3, [x4], #64
	stp	q0, q1, [x2, #-32]
	stp	q2, q3, [x2], #64
	subs	x5, x5, #8
	b.ne	LBB2_27
; %bb.28:                               ;   in Loop: Header=BB2_26 Depth=1
	mov	x2, x1
	mov	x4, x0
	mov	x5, x17
	mov	x6, x16
LBB2_29:                                ;   Parent Loop BB2_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x2, LBB2_33
; %bb.30:                               ;   in Loop: Header=BB2_29 Depth=2
	ldr	d0, [x4], #8
	str	d0, [x5]
	add	x5, x5, x10
	sub	x2, x2, #1
	sub	x6, x6, #1
	cbnz	x6, LBB2_29
; %bb.31:                               ;   in Loop: Header=BB2_26 Depth=1
	add	x11, x11, #1
	add	x13, x13, x14
	add	x15, x15, #8
	add	x17, x17, #8
	add	x0, x0, x14
	cmp	x11, x23
	b.ne	LBB2_26
LBB2_32:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB2_33:
	mov	w2, #750                        ; =0x2ee
LBB2_34:
Ltmp24:
Lloh34:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
Lloh35:
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
Lloh36:
	adrp	x1, l_.str.7@PAGE
Lloh37:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	___assert_rtn
Ltmp25:
; %bb.35:
	brk	#0x1
LBB2_36:
	mov	w9, #743                        ; =0x2e7
Lloh38:
	adrp	x10, l_.str.13@PAGE
Lloh39:
	add	x10, x10, l_.str.13@PAGEOFF
	mov	w11, #750                       ; =0x2ee
Lloh40:
	adrp	x12, l_.str.12@PAGE
Lloh41:
	add	x12, x12, l_.str.12@PAGEOFF
	cmp	x8, #0
	csel	x3, x12, x10, eq
	csel	w2, w11, w9, eq
	b	LBB2_34
LBB2_37:
Ltmp26:
	cbz	x19, LBB2_39
; %bb.38:
	mov	x20, x0
	mov	x0, x19
	bl	__ZdaPv
	mov	x0, x20
LBB2_39:
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp24-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin1            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp25              ;   Call between Ltmp25 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdE3detEv           ; -- Begin function _ZNK6MatrixIdE3detEv
	.weak_def_can_be_hidden	__ZNK6MatrixIdE3detEv
	.p2align	2
__ZNK6MatrixIdE3detEv:                  ; @_ZNK6MatrixIdE3detEv
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	ldp	x22, x8, [x0]
	cmp	x22, x8
	b.ne	LBB3_45
; %bb.1:
	mov	x23, x22
	cmp	x22, #1
	b.gt	LBB3_5
; %bb.2:
	cbz	x23, LBB3_11
; %bb.3:
	cmp	x22, #1
	b.ne	LBB3_8
; %bb.4:
	ldr	x8, [x0, #16]
	ldr	d0, [x8]
	b	LBB3_43
LBB3_5:
	cmp	x22, #2
	b.eq	LBB3_12
; %bb.6:
	cmp	x22, #3
	b.ne	LBB3_8
; %bb.7:
	ldr	x8, [x0, #16]
	ldp	d3, d0, [x8, #56]
	ldp	d1, d2, [x8, #32]
	ldr	d4, [x8, #48]
	fnmul	d5, d2, d3
	fmadd	d5, d1, d0, d5
	fnmul	d2, d2, d4
	ldp	d7, d6, [x8, #16]
	fmadd	d0, d6, d0, d2
	ldp	d2, d16, [x8]
	fnmul	d0, d16, d0
	fmadd	d0, d2, d5, d0
	fnmul	d1, d1, d4
	fmadd	d1, d6, d3, d1
	fmadd	d0, d7, d1, d0
	b	LBB3_43
LBB3_8:
	ldr	x20, [x0, #16]
	cbz	x20, LBB3_13
; %bb.9:
	mul	x24, x22, x22
	lsl	x21, x24, #3
	lsr	x8, x24, #61
	cmp	x8, #0
	csinv	x0, x21, xzr, eq
	bl	__Znam
	mov	x19, x0
	cbz	x24, LBB3_14
; %bb.10:
	mov	x0, x19
	mov	x1, x20
	mov	x2, x21
	bl	_memmove
	b	LBB3_14
LBB3_11:
	movi	d0, #0000000000000000
	b	LBB3_43
LBB3_12:
	ldr	x8, [x0, #16]
	ldp	d0, d1, [x8]
	ldp	d3, d2, [x8, #16]
	fnmul	d1, d1, d3
	fmadd	d0, d0, d2, d1
	b	LBB3_43
LBB3_13:
	mov	x19, #0                         ; =0x0
LBB3_14:
	mov	x2, #0                          ; =0x0
	lsl	x8, x22, #3
	add	x9, x8, #8
	mul	x10, x22, x22
	add	x10, x19, x10, lsl #3
	add	x11, x19, #16
	add	x12, x19, #32
	add	x13, x12, x8
	add	x14, x19, x8
	fmov	d0, #1.00000000
	mov	x15, #54933                     ; =0xd695
	movk	x15, #59430, lsl #16
	movk	x15, #11787, lsl #32
	movk	x15, #15889, lsl #48
	mov	x16, x14
	mov	x17, x19
	mov	x0, x11
	mov	x1, x8
	b	LBB3_17
LBB3_15:                                ;   in Loop: Header=BB3_17 Depth=1
	ldr	d1, [x21, x2, lsl #3]
LBB3_16:                                ;   in Loop: Header=BB3_17 Depth=1
	add	x1, x1, x9
	sub	x23, x23, #1
	fmul	d0, d0, d1
	add	x0, x0, #8
	add	x11, x11, x9
	add	x17, x17, x8
	add	x13, x13, x9
	add	x12, x12, x9
	add	x16, x16, x8
	mov	x2, x3
	cmp	x3, x22
	b.eq	LBB3_41
LBB3_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_19 Depth 2
                                        ;     Child Loop BB3_26 Depth 2
                                        ;     Child Loop BB3_29 Depth 2
                                        ;     Child Loop BB3_34 Depth 2
                                        ;       Child Loop BB3_36 Depth 3
                                        ;       Child Loop BB3_38 Depth 3
	add	x3, x2, #1
	cmp	x3, x22
	b.hs	LBB3_39
; %bb.18:                               ;   in Loop: Header=BB3_17 Depth=1
	and	x4, x23, #0xfffffffffffffff8
	and	x24, x23, #0xfffffffffffffffc
	sub	x5, x22, x2
	mul	x20, x9, x2
	add	x6, x19, x20
	add	x25, x19, x2, lsl #3
	madd	x7, x8, x3, x19
	add	x20, x14, x20
	mov	x26, x1
	mov	x27, x3
	mov	x21, x2
LBB3_19:                                ;   Parent Loop BB3_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x22, x21
	b.ls	LBB3_44
; %bb.20:                               ;   in Loop: Header=BB3_19 Depth=2
	ldr	d1, [x19, x26]
	fabs	d1, d1
	mul	x28, x21, x22
	ldr	d2, [x25, x28, lsl #3]
	fabs	d2, d2
	fcmp	d1, d2
	csel	x21, x27, x21, gt
	add	x27, x27, #1
	add	x26, x26, x8
	cmp	x22, x27
	b.ne	LBB3_19
; %bb.21:                               ;   in Loop: Header=BB3_17 Depth=1
	cmp	x21, x2
	b.eq	LBB3_31
; %bb.22:                               ;   in Loop: Header=BB3_17 Depth=1
	cmp	x22, x21
	b.ls	LBB3_46
; %bb.23:                               ;   in Loop: Header=BB3_17 Depth=1
	mov	x26, x2
	cmp	x5, #3
	b.ls	LBB3_28
; %bb.24:                               ;   in Loop: Header=BB3_17 Depth=1
	madd	x25, x8, x21, x25
	lsl	x26, x21, #3
	add	x26, x26, #8
	madd	x26, x22, x26, x19
	cmp	x6, x26
	ccmp	x25, x7, #2, lo
	mov	x26, x2
	b.lo	LBB3_28
; %bb.25:                               ;   in Loop: Header=BB3_17 Depth=1
	and	x25, x5, #0xfffffffffffffffc
	add	x26, x2, x25
	madd	x27, x8, x21, x0
	mov	x28, x11
LBB3_26:                                ;   Parent Loop BB3_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q2, [x28, #-16]
	ldp	q3, q4, [x27, #-16]
	stp	q3, q4, [x28, #-16]
	stp	q1, q2, [x27, #-16]
	add	x27, x27, #32
	add	x28, x28, #32
	subs	x24, x24, #4
	b.ne	LBB3_26
; %bb.27:                               ;   in Loop: Header=BB3_17 Depth=1
	cmp	x5, x25
	b.eq	LBB3_30
LBB3_28:                                ;   in Loop: Header=BB3_17 Depth=1
	sub	x24, x22, x26
	lsl	x26, x26, #3
	add	x25, x17, x26
	mul	x21, x8, x21
	add	x26, x19, x26
	add	x21, x26, x21
LBB3_29:                                ;   Parent Loop BB3_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d1, [x25]
	ldr	d2, [x21]
	str	d2, [x25], #8
	str	d1, [x21], #8
	subs	x24, x24, #1
	b.ne	LBB3_29
LBB3_30:                                ;   in Loop: Header=BB3_17 Depth=1
	fneg	d0, d0
LBB3_31:                                ;   in Loop: Header=BB3_17 Depth=1
	mul	x21, x2, x22
	add	x21, x19, x21, lsl #3
	ldr	d1, [x21, x2, lsl #3]
	fabs	d1, d1
	fmov	d2, x15
	fcmp	d1, d2
	b.mi	LBB3_40
; %bb.32:                               ;   in Loop: Header=BB3_17 Depth=1
	cmp	x20, x7
	ccmp	x6, x10, #2, lo
	ccmp	x8, #0, #8, hs
	and	x6, x5, #0xfffffffffffffff8
	add	x7, x2, x6
	ccmp	x5, #8, #0, ge
	cset	w20, lo
	mov	x24, x16
	mov	x25, x13
	mov	x26, x3
	b	LBB3_34
LBB3_33:                                ;   in Loop: Header=BB3_34 Depth=2
	add	x26, x26, #1
	add	x25, x25, x8
	add	x24, x24, x8
	cmp	x26, x22
	b.eq	LBB3_15
LBB3_34:                                ;   Parent Loop BB3_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB3_36 Depth 3
                                        ;       Child Loop BB3_38 Depth 3
	mul	x27, x26, x22
	add	x27, x19, x27, lsl #3
	ldr	d1, [x27, x2, lsl #3]
	ldr	d2, [x21, x2, lsl #3]
	fneg	d1, d1
	fdiv	d1, d1, d2
	mov	x27, x2
	tbnz	w20, #0, LBB3_38
; %bb.35:                               ;   in Loop: Header=BB3_34 Depth=2
	dup.2d	v2, v1[0]
	mov	x27, x12
	mov	x28, x25
	mov	x30, x4
LBB3_36:                                ;   Parent Loop BB3_17 Depth=1
                                        ;     Parent Loop BB3_34 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q3, q4, [x27, #-32]
	ldp	q5, q6, [x27], #64
	ldp	q7, q16, [x28, #-32]
	ldp	q17, q18, [x28]
	fmla.2d	v7, v3, v2
	fmla.2d	v16, v4, v2
	fmla.2d	v17, v5, v2
	fmla.2d	v18, v6, v2
	stp	q7, q16, [x28, #-32]
	stp	q17, q18, [x28], #64
	subs	x30, x30, #8
	b.ne	LBB3_36
; %bb.37:                               ;   in Loop: Header=BB3_34 Depth=2
	mov	x27, x7
	cmp	x5, x6
	b.eq	LBB3_33
LBB3_38:                                ;   Parent Loop BB3_17 Depth=1
                                        ;     Parent Loop BB3_34 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	d2, [x17, x27, lsl #3]
	ldr	d3, [x24, x27, lsl #3]
	fmadd	d2, d1, d2, d3
	str	d2, [x24, x27, lsl #3]
	add	x27, x27, #1
	cmp	x27, x22
	b.lo	LBB3_38
	b	LBB3_33
LBB3_39:                                ;   in Loop: Header=BB3_17 Depth=1
	mul	x4, x2, x22
	add	x4, x19, x4, lsl #3
	ldr	d1, [x4, x2, lsl #3]
	fabs	d2, d1
	fmov	d3, x15
	fcmp	d2, d3
	b.pl	LBB3_16
LBB3_40:
	movi	d0, #0000000000000000
	b	LBB3_42
LBB3_41:
	cbz	x19, LBB3_43
LBB3_42:
	mov	x0, x19
	fmov	d8, d0
	bl	__ZdaPv
	fmov	d0, d8
LBB3_43:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB3_44:
Ltmp27:
Lloh42:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
Lloh43:
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
Lloh44:
	adrp	x1, l_.str.7@PAGE
Lloh45:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh46:
	adrp	x3, l_.str.12@PAGE
Lloh47:
	add	x3, x3, l_.str.12@PAGEOFF
	mov	w2, #750                        ; =0x2ee
	bl	___assert_rtn
Ltmp28:
	b	LBB3_47
LBB3_45:
	bl	__ZNK6MatrixIdE3detEv.cold.1
LBB3_46:
Ltmp30:
Lloh48:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
Lloh49:
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
Lloh50:
	adrp	x1, l_.str.7@PAGE
Lloh51:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh52:
	adrp	x3, l_.str.12@PAGE
Lloh53:
	add	x3, x3, l_.str.12@PAGEOFF
	mov	w2, #750                        ; =0x2ee
	bl	___assert_rtn
Ltmp31:
LBB3_47:
	brk	#0x1
LBB3_48:
Ltmp32:
	mov	x20, x0
	mov	x0, x19
	bl	__ZdaPv
	mov	x0, x20
	bl	__Unwind_Resume
LBB3_49:
Ltmp29:
	mov	x20, x0
	mov	x0, x19
	bl	__ZdaPv
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp27-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin2            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp30-Ltmp28                  ;   Call between Ltmp28 and Ltmp30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin2            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp31              ;   Call between Ltmp31 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp33:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp34:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB4_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB4_7
; %bb.3:
Ltmp36:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp37:
; %bb.4:
Ltmp38:
Lloh54:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh55:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp39:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp40:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp41:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB4_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp43:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp44:
; %bb.8:
	cbnz	x0, LBB4_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp46:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp47:
LBB4_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB4_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB4_12:
Ltmp48:
	b	LBB4_15
LBB4_13:
Ltmp42:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB4_16
LBB4_14:
Ltmp45:
LBB4_15:
	mov	x20, x0
LBB4_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB4_18
LBB4_17:
Ltmp35:
	mov	x20, x0
LBB4_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp49:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp50:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB4_11
LBB4_20:
Ltmp51:
	mov	x19, x0
Ltmp52:
	bl	___cxa_end_catch
Ltmp53:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_22:
Ltmp54:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh54, Lloh55
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp33-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin3            ;     jumps to Ltmp35
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp36-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp45-Lfunc_begin3            ;     jumps to Ltmp45
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp38-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp41-Ltmp38                  ;   Call between Ltmp38 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin3            ;     jumps to Ltmp42
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp43-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin3            ;     jumps to Ltmp45
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp46-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin3            ;     jumps to Ltmp48
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp47-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp49-Ltmp47                  ;   Call between Ltmp47 and Ltmp49
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin3            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp52-Ltmp50                  ;   Call between Ltmp50 and Ltmp52
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin3            ;     jumps to Ltmp54
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp53-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp53              ;   Call between Ltmp53 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB5_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB5_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB5_15
LBB5_3:
	cmp	x23, #1
	b.lt	LBB5_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB5_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB5_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB5_8
LBB5_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB5_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp55:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp56:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB5_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB5_15
	b	LBB5_12
LBB5_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB5_15
LBB5_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB5_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB5_15
LBB5_14:
	str	xzr, [x20, #24]
	b	LBB5_16
LBB5_15:
	mov	x19, #0                         ; =0x0
LBB5_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB5_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB5_18:
Ltmp57:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB5_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB5_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp55-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp55
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp56-Ltmp55                  ;   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp57-Lfunc_begin4            ;     jumps to Ltmp57
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp56              ;   Call between Ltmp56 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh56:
	adrp	x0, l_.str.5@PAGE
Lloh57:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh56, Lloh57
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp58:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp59:
; %bb.1:
Lloh58:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh59:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh60:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh61:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB8_2:
Ltmp60:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh58, Lloh59
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp58-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp58
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp59-Ltmp58                  ;   Call between Ltmp58 and Ltmp59
	.uleb128 Ltmp60-Lfunc_begin5            ;     jumps to Ltmp60
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp59              ;   Call between Ltmp59 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne200100EPKc
	.globl	__ZNSt12length_errorC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne200100EPKc:   ; @_ZNSt12length_errorC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh62:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh63:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh62, Lloh63
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNR6MatrixIdE8multiplyERKS0_  ; -- Begin function _ZNR6MatrixIdE8multiplyERKS0_
	.weak_def_can_be_hidden	__ZNR6MatrixIdE8multiplyERKS0_
	.p2align	2
__ZNR6MatrixIdE8multiplyERKS0_:         ; @_ZNR6MatrixIdE8multiplyERKS0_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldr	x24, [x0]
	ldr	x8, [x1, #8]
	cmp	x24, x8
	b.ne	LBB10_32
; %bb.1:
	mov	x21, x1
	mov	x19, x0
	ldr	x25, [x1]
	ldr	x23, [x0, #8]
	subs	x26, x25, #1
	ccmp	x23, #1, #8, ge
	b.ge	LBB10_3
; %bb.2:
	mov	x8, #0                          ; =0x0
	mov	x20, #0                         ; =0x0
	mov	x9, #0                          ; =0x0
	cbnz	x23, LBB10_4
	b	LBB10_29
LBB10_3:
	mul	x8, x23, x25
	lsl	x22, x8, #3
	lsr	x8, x8, #61
	cmp	x8, #0
	csinv	x0, x22, xzr, eq
	bl	__Znam
	mov	x20, x0
	mov	x1, x22
	bl	_bzero
	mov	x8, x23
	mov	x9, x25
	cbz	x23, LBB10_29
LBB10_4:
	cmp	x9, x26
	csel	x10, x9, x26, lo
	add	x15, x10, #1
	ands	x11, x15, #0x7
	mov	w12, #8                         ; =0x8
	csel	x16, x12, x11, eq
	cbz	x24, LBB10_7
; %bb.5:
	cbz	x25, LBB10_25
; %bb.6:
	mov	x11, #0                         ; =0x0
	ldr	x12, [x21, #16]
	lsl	x13, x9, #3
	lsl	x14, x10, #3
	add	x4, x14, #8
	sub	x14, x24, #1
	madd	x14, x25, x14, x10
	add	x14, x12, x14, lsl #3
	add	x14, x14, #8
	sub	x0, x15, x16
	ldr	x6, [x19, #16]
	lsl	x17, x24, #3
	add	x15, x12, #32
	stp	x15, x6, [sp]                   ; 16-byte Folded Spill
	lsl	x1, x25, #3
	add	x2, x20, #32
	ubfx	x3, x25, #60, #1
	add	x4, x20, x4
	mov	x5, x20
	b	LBB10_9
LBB10_7:                                ; =>This Inner Loop Header: Depth=1
	subs	x23, x23, #1
	b.ne	LBB10_7
	b	LBB10_29
LBB10_8:                                ;   in Loop: Header=BB10_9 Depth=1
	add	x11, x11, #1
	add	x6, x6, x17
	add	x2, x2, x13
	add	x5, x5, x13
	cmp	x11, x23
	b.eq	LBB10_29
LBB10_9:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB10_11 Depth 2
                                        ;     Child Loop BB10_14 Depth 2
                                        ;       Child Loop BB10_18 Depth 3
                                        ;       Child Loop BB10_21 Depth 3
	mul	x15, x13, x11
	add	x16, x4, x15
	add	x15, x20, x15
	cmp	x15, x14
	ccmp	x12, x16, #2, lo
	csinc	w22, w3, wzr, hs
	mov	x15, x6
	mov	x16, x24
	cmp	x8, x11
	b.ls	LBB10_11
; %bb.10:                               ;   in Loop: Header=BB10_9 Depth=1
	mov	x7, #0                          ; =0x0
	mul	x15, x11, x24
	ldp	x27, x16, [sp]                  ; 16-byte Folded Reload
	add	x21, x16, x15, lsl #3
	cmp	x10, #8
	cset	w15, lo
	orr	w22, w15, w22
	mov	x26, x12
	b	LBB10_14
LBB10_11:                               ;   Parent Loop BB10_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x15]
	fcmp	d0, #0.0
	b.ne	LBB10_23
; %bb.12:                               ;   in Loop: Header=BB10_11 Depth=2
	add	x15, x15, #8
	subs	x16, x16, #1
	b.ne	LBB10_11
	b	LBB10_8
LBB10_13:                               ;   in Loop: Header=BB10_14 Depth=2
	add	x7, x7, #1
	add	x27, x27, x1
	add	x26, x26, x1
	cmp	x7, x24
	b.eq	LBB10_8
LBB10_14:                               ;   Parent Loop BB10_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB10_18 Depth 3
                                        ;       Child Loop BB10_21 Depth 3
	ldr	d0, [x21, x7, lsl #3]
	fcmp	d0, #0.0
	b.eq	LBB10_13
; %bb.15:                               ;   in Loop: Header=BB10_14 Depth=2
	tbz	w22, #0, LBB10_17
; %bb.16:                               ;   in Loop: Header=BB10_14 Depth=2
	mov	x16, #0                         ; =0x0
	b	LBB10_20
LBB10_17:                               ;   in Loop: Header=BB10_14 Depth=2
	dup.2d	v1, v0[0]
	mov	x28, x2
	mov	x30, x27
	mov	x15, x0
LBB10_18:                               ;   Parent Loop BB10_9 Depth=1
                                        ;     Parent Loop BB10_14 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q2, q3, [x30, #-32]
	ldp	q4, q5, [x30], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.2d	v6, v2, v1
	fmla.2d	v7, v3, v1
	fmla.2d	v16, v4, v1
	fmla.2d	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x15, x15, #8
	b.ne	LBB10_18
; %bb.19:                               ;   in Loop: Header=BB10_14 Depth=2
	mov	x16, x0
LBB10_20:                               ;   in Loop: Header=BB10_14 Depth=2
	sub	x28, x25, x16
	lsl	x15, x16, #3
	add	x30, x5, x15
	add	x15, x26, x15
	sub	x16, x9, x16
LBB10_21:                               ;   Parent Loop BB10_9 Depth=1
                                        ;     Parent Loop BB10_14 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cbz	x16, LBB10_23
; %bb.22:                               ;   in Loop: Header=BB10_21 Depth=3
	ldr	d1, [x15], #8
	ldr	d2, [x30]
	fmadd	d1, d0, d1, d2
	str	d1, [x30], #8
	sub	x16, x16, #1
	sub	x28, x28, #1
	cbnz	x28, LBB10_21
	b	LBB10_13
LBB10_23:
Ltmp61:
Lloh64:
	adrp	x0, l___func__._ZNK6MatrixIdEclEmm@PAGE
Lloh65:
	add	x0, x0, l___func__._ZNK6MatrixIdEclEmm@PAGEOFF
Lloh66:
	adrp	x1, l_.str.7@PAGE
Lloh67:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh68:
	adrp	x3, l_.str.10@PAGE
Lloh69:
	add	x3, x3, l_.str.10@PAGEOFF
	mov	w2, #686                        ; =0x2ae
	bl	___assert_rtn
Ltmp62:
; %bb.24:
	brk	#0x1
LBB10_25:
	mov	x10, #0                         ; =0x0
LBB10_26:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB10_27 Depth 2
	mov	x11, x24
LBB10_27:                               ;   Parent Loop BB10_26 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	subs	x11, x11, #1
	b.ne	LBB10_27
; %bb.28:                               ;   in Loop: Header=BB10_26 Depth=1
	add	x10, x10, #1
	cmp	x10, x23
	b.ne	LBB10_26
LBB10_29:
	stp	x9, x8, [x19]
	ldr	x0, [x19, #16]
	str	x20, [x19, #16]
	cbz	x0, LBB10_31
; %bb.30:
	bl	__ZdaPv
LBB10_31:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB10_32:
	bl	__ZNR6MatrixIdE8multiplyERKS0_.cold.1
LBB10_33:
Ltmp63:
	cbz	x20, LBB10_35
; %bb.34:
	mov	x19, x0
	mov	x0, x20
	bl	__ZdaPv
	mov	x0, x19
LBB10_35:
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table10:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp61-Lfunc_begin6            ;   Call between Lfunc_begin6 and Ltmp61
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp62-Ltmp61                  ;   Call between Ltmp61 and Ltmp62
	.uleb128 Ltmp63-Lfunc_begin6            ;     jumps to Ltmp63
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp62              ;   Call between Ltmp62 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNK6MatrixIdE3detEv.cold.1
__ZNK6MatrixIdE3detEv.cold.1:           ; @_ZNK6MatrixIdE3detEv.cold.1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh70:
	adrp	x0, l___func__._ZNK6MatrixIdE3detEv@PAGE
Lloh71:
	add	x0, x0, l___func__._ZNK6MatrixIdE3detEv@PAGEOFF
Lloh72:
	adrp	x1, l_.str.7@PAGE
Lloh73:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh74:
	adrp	x3, l_.str.17@PAGE
Lloh75:
	add	x3, x3, l_.str.17@PAGEOFF
	mov	w2, #293                        ; =0x125
	bl	___assert_rtn
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNR6MatrixIdE8multiplyERKS0_.cold.1
__ZNR6MatrixIdE8multiplyERKS0_.cold.1:  ; @_ZNR6MatrixIdE8multiplyERKS0_.cold.1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh76:
	adrp	x0, l___func__._ZNR6MatrixIdE8multiplyERKS0_@PAGE
Lloh77:
	add	x0, x0, l___func__._ZNR6MatrixIdE8multiplyERKS0_@PAGEOFF
Lloh78:
	adrp	x1, l_.str.7@PAGE
Lloh79:
	add	x1, x1, l_.str.7@PAGEOFF
Lloh80:
	adrp	x3, l_.str.8@PAGE
Lloh81:
	add	x3, x3, l_.str.8@PAGEOFF
	mov	w2, #262                        ; =0x106
	bl	___assert_rtn
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh76, Lloh77
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Matrix size: "

l_.str.1:                               ; @.str.1
	.asciz	"x"

l_.str.2:                               ; @.str.2
	.asciz	", rounds: "

l_.str.3:                               ; @.str.3
	.asciz	"Trace sum: "

l_.str.4:                               ; @.str.4
	.asciz	", last det: "

l_.str.5:                               ; @.str.5
	.asciz	"basic_string"

l___func__._ZNR6MatrixIdE8multiplyERKS0_: ; @__func__._ZNR6MatrixIdE8multiplyERKS0_
	.asciz	"multiply"

l_.str.7:                               ; @.str.7
	.asciz	"matrix.hpp"

l_.str.8:                               ; @.str.8
	.asciz	"cols_ == other.rows_ && \"Matrix dimensions must match for multiplication\""

l___func__._ZNK6MatrixIdEclEmm:         ; @__func__._ZNK6MatrixIdEclEmm
	.asciz	"operator()"

l_.str.10:                              ; @.str.10
	.asciz	"col < cols_ && row < rows_ && \"Matrix index out of bounds\""

l___func__._ZNK6MatrixIdEixEm:          ; @__func__._ZNK6MatrixIdEixEm
	.asciz	"operator[]"

l_.str.12:                              ; @.str.12
	.asciz	"j < rows_ && \"Row index out of bounds\""

l_.str.13:                              ; @.str.13
	.asciz	"i < limit && \"Row index out of bounds\""

l___func__._ZNR6MatrixIdE3addERKS0_:    ; @__func__._ZNR6MatrixIdE3addERKS0_
	.asciz	"add"

l_.str.15:                              ; @.str.15
	.asciz	"cols_ == other.cols_ && rows_ == other.rows_ && \"Matrix dimensions must match for addition\""

l___func__._ZNK6MatrixIdE3detEv:        ; @__func__._ZNK6MatrixIdE3detEv
	.asciz	"det"

l_.str.17:                              ; @.str.17
	.asciz	"cols_ == rows_ && \"Matrix must be square to calculate determinant\""

.subsections_via_symbols
