	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 2
	.globl	__Z8generatemj                  ; -- Begin function _Z8generatemj
	.p2align	2
__Z8generatemj:                         ; @_Z8generatemj
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #2640
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x9, x29, #32
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	mov	x9, x8
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	str	x9, [x8, #8]
	str	x0, [x8]
	stur	w1, [x29, #-36]
	ldur	w1, [x29, #-36]
	add	x0, sp, #112
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	add	x0, sp, #96
	fmov	d0, #-1.00000000
	fmov	d1, #1.00000000
	bl	__ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	w9, #0                          ; =0x0
	and	w9, w9, #0x1
	and	w9, w9, #0x1
	strb	w9, [sp, #95]
	ldr	x1, [x8]
	ldr	x2, [x8]
	add	x3, sp, #80
	movi	d0, #0000000000000000
	str	d0, [sp, #80]
	bl	__ZN6MatrixIdEC1ExxRKd
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #72]
	ldr	x0, [sp, #72]
	bl	__ZN6MatrixIdE5beginEv
	str	x0, [sp, #64]
	ldr	x0, [sp, #72]
	bl	__ZN6MatrixIdE3endEv
	str	x0, [sp, #56]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #64]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	b.eq	LBB0_6
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	str	x8, [sp, #48]
Ltmp0:
	add	x0, sp, #96
	add	x1, sp, #112
	bl	__ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp1:
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #48]
	str	d0, [x8]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	add	x8, x8, #8
	str	x8, [sp, #64]
	b	LBB0_1
LBB0_5:
Ltmp2:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZN6MatrixIdED1Ev
	b	LBB0_9
LBB0_6:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #95]
	ldrb	w8, [sp, #95]
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN6MatrixIdED1Ev
	b	LBB0_8
LBB0_8:
	add	sp, sp, #2640
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_9:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1               ;   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd
	.globl	__ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd: ; @_ZNSt3__125uniform_real_distributionIdEC1B8ne200100Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEC1ExxRKd          ; -- Begin function _ZN6MatrixIdEC1ExxRKd
	.weak_def_can_be_hidden	__ZN6MatrixIdEC1ExxRKd
	.p2align	2
__ZN6MatrixIdEC1ExxRKd:                 ; @_ZN6MatrixIdEC1ExxRKd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZN6MatrixIdEC2ExxRKd
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdE5beginEv          ; -- Begin function _ZN6MatrixIdE5beginEv
	.weak_definition	__ZN6MatrixIdE5beginEv
	.p2align	2
__ZN6MatrixIdE5beginEv:                 ; @_ZN6MatrixIdE5beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdE3endEv            ; -- Begin function _ZN6MatrixIdE3endEv
	.weak_definition	__ZN6MatrixIdE3endEv
	.p2align	2
__ZN6MatrixIdE3endEv:                   ; @_ZN6MatrixIdE3endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x10, [sp, #8]
	ldr	x8, [x10, #16]
	ldr	x9, [x10, #8]
	ldr	x10, [x10]
	mul	x9, x9, x10
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_ ; -- Begin function _ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.weak_definition	__ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_: ; @_ZNSt3__125uniform_real_distributionIdEclB8ne200100INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x2, [sp, #8]
	ldr	x1, [sp]
	mov	x0, x2
	bl	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdED1Ev              ; -- Begin function _ZN6MatrixIdED1Ev
	.weak_def_can_be_hidden	__ZN6MatrixIdED1Ev
	.p2align	2
__ZN6MatrixIdED1Ev:                     ; @_ZN6MatrixIdED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN6MatrixIdED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #320
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	wzr, [x29, #-20]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, #128                        ; =0x80
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	w1, #2000                       ; =0x7d0
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	w1, #10                         ; =0xa
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movi	d0, #0000000000000000
	stur	d0, [x29, #-32]
	stur	d0, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	subs	w8, w8, #2000
	b.ge	LBB8_26
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	w9, [x29, #-44]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	mul	w8, w8, w9
	add	w1, w8, #1
	sub	x8, x29, #72
	mov	x0, #128                        ; =0x80
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__Z8generatemj
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	w9, [x29, #-44]
	mul	w8, w8, w9
	add	w1, w8, #2
Ltmp5:
	sub	x8, x29, #96
	bl	__Z8generatemj
Ltmp6:
	b	LBB8_3
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp8:
	add	x0, sp, #144
	sub	x1, x29, #72
	bl	__ZN6MatrixIdEC1ERKS0_
Ltmp9:
	b	LBB8_4
LBB8_4:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp11:
	sub	x8, x29, #136
	add	x0, sp, #144
	sub	x1, x29, #96
	bl	__Zml6MatrixIdERKS0_
Ltmp12:
	b	LBB8_5
LBB8_5:                                 ;   in Loop: Header=BB8_1 Depth=1
	add	x0, sp, #144
	bl	__ZN6MatrixIdED1Ev
Ltmp14:
	add	x0, sp, #72
	sub	x1, x29, #136
	bl	__ZN6MatrixIdEC1ERKS0_
Ltmp15:
	b	LBB8_6
LBB8_6:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp17:
	add	x8, sp, #48
	sub	x0, x29, #136
	bl	__ZNK6MatrixIdE10transposedEv
Ltmp18:
	b	LBB8_7
LBB8_7:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp20:
	add	x8, sp, #96
	add	x0, sp, #72
	add	x1, sp, #48
	bl	__Zpl6MatrixIdERKS0_
Ltmp21:
	b	LBB8_8
LBB8_8:                                 ;   in Loop: Header=BB8_1 Depth=1
	add	x1, sp, #40
	fmov	d0, #0.50000000
	str	d0, [sp, #40]
Ltmp23:
	add	x8, sp, #120
	add	x0, sp, #96
	bl	__Zml6MatrixIdERKd
Ltmp24:
	b	LBB8_9
LBB8_9:                                 ;   in Loop: Header=BB8_1 Depth=1
	add	x0, sp, #96
	bl	__ZN6MatrixIdED1Ev
	add	x0, sp, #48
	bl	__ZN6MatrixIdED1Ev
	add	x0, sp, #72
	bl	__ZN6MatrixIdED1Ev
Ltmp26:
	add	x0, sp, #120
	bl	__ZNK6MatrixIdE5traceEv
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp27:
	b	LBB8_10
LBB8_10:                                ;   in Loop: Header=BB8_1 Depth=1
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	ldur	d0, [x29, #-32]
	fadd	d0, d0, d1
	stur	d0, [x29, #-32]
Ltmp28:
	add	x0, sp, #120
	bl	__ZNK6MatrixIdE3detEv
	str	d0, [sp]                        ; 8-byte Folded Spill
Ltmp29:
	b	LBB8_11
LBB8_11:                                ;   in Loop: Header=BB8_1 Depth=1
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	stur	d0, [x29, #-40]
	add	x0, sp, #120
	bl	__ZN6MatrixIdED1Ev
	sub	x0, x29, #136
	bl	__ZN6MatrixIdED1Ev
	sub	x0, x29, #96
	bl	__ZN6MatrixIdED1Ev
	sub	x0, x29, #72
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_12
LBB8_12:                                ;   in Loop: Header=BB8_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	LBB8_1
LBB8_13:
Ltmp7:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB8_25
LBB8_14:
Ltmp10:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB8_24
LBB8_15:
Ltmp13:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	add	x0, sp, #144
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_24
LBB8_16:
Ltmp16:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB8_23
LBB8_17:
Ltmp19:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB8_21
LBB8_18:
Ltmp22:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB8_20
LBB8_19:
Ltmp25:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	add	x0, sp, #96
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_20
LBB8_20:
	add	x0, sp, #48
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_21
LBB8_21:
	add	x0, sp, #72
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_23
LBB8_22:
Ltmp30:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	add	x0, sp, #120
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_23
LBB8_23:
	sub	x0, x29, #136
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_24
LBB8_24:
	sub	x0, x29, #96
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_25
LBB8_25:
	sub	x0, x29, #72
	bl	__ZN6MatrixIdED1Ev
	b	LBB8_27
LBB8_26:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-32]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	d0, [x29, #-40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	mov	w1, #10                         ; =0xa
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #320
	ret
LBB8_27:
	ldur	x0, [x29, #-104]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin1             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ; >> Call Site 3 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin1            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin1            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp18-Ltmp17                  ;   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin1            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin1            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin1            ;     jumps to Ltmp25
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin1            ; >> Call Site 9 <<
	.uleb128 Ltmp29-Ltmp26                  ;   Call between Ltmp26 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin1            ;     jumps to Ltmp30
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp29              ;   Call between Ltmp29 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	str	x0, [sp, #8]
	add	x1, sp, #7
	strb	w8, [sp, #7]
	ldr	x0, [sp, #8]
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Zml6MatrixIdERKS0_            ; -- Begin function _Zml6MatrixIdERKS0_
	.weak_definition	__Zml6MatrixIdERKS0_
	.p2align	2
__Zml6MatrixIdERKS0_:                   ; @_Zml6MatrixIdERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	mov	x8, x0
	stur	x8, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x1, [sp, #24]
	bl	__ZNR6MatrixIdEmLERKS0_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN6MatrixIdEC1EOS0_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEC1ERKS0_          ; -- Begin function _ZN6MatrixIdEC1ERKS0_
	.weak_def_can_be_hidden	__ZN6MatrixIdEC1ERKS0_
	.p2align	2
__ZN6MatrixIdEC1ERKS0_:                 ; @_ZN6MatrixIdEC1ERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZN6MatrixIdEC2ERKS0_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Zml6MatrixIdERKd              ; -- Begin function _Zml6MatrixIdERKd
	.weak_definition	__Zml6MatrixIdERKd
	.p2align	2
__Zml6MatrixIdERKd:                     ; @_Zml6MatrixIdERKd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	mov	x8, x0
	stur	x8, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x1, [sp, #24]
	bl	__ZNR6MatrixIdEmLERKd
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN6MatrixIdEC1EOS0_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Zpl6MatrixIdERKS0_            ; -- Begin function _Zpl6MatrixIdERKS0_
	.weak_definition	__Zpl6MatrixIdERKS0_
	.p2align	2
__Zpl6MatrixIdERKS0_:                   ; @_Zpl6MatrixIdERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	mov	x8, x0
	stur	x8, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x1, [sp, #24]
	bl	__ZNR6MatrixIdEpLERKS0_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN6MatrixIdEC1EOS0_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdE10transposedEv   ; -- Begin function _ZNK6MatrixIdE10transposedEv
	.weak_definition	__ZNK6MatrixIdE10transposedEv
	.p2align	2
__ZNK6MatrixIdE10transposedEv:          ; @_ZNK6MatrixIdE10transposedEv
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	mov	w9, #0                          ; =0x0
	and	w9, w9, #0x1
	and	w9, w9, #0x1
	sturb	w9, [x29, #-17]
	ldr	x1, [x8, #8]
	ldr	x2, [x8]
	sub	x3, x29, #32
	movi	d0, #0000000000000000
	stur	d0, [x29, #-32]
	bl	__ZN6MatrixIdEC1ExxRKd
	stur	xzr, [x29, #-40]
	b	LBB15_1
LBB15_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_3 Depth 2
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.hs	LBB15_13
	b	LBB15_2
LBB15_2:                                ;   in Loop: Header=BB15_1 Depth=1
	stur	xzr, [x29, #-48]
	b	LBB15_3
LBB15_3:                                ;   Parent Loop BB15_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	LBB15_11
	b	LBB15_4
LBB15_4:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-40]
Ltmp31:
	bl	__ZNK6MatrixIdEixEm
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
Ltmp32:
	b	LBB15_5
LBB15_5:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x9, [x29, #-64]
	stur	x8, [x29, #-56]
	ldur	x1, [x29, #-48]
Ltmp33:
	bl	__ZNK6MatrixIdE13ConstRowProxyixEm
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp34:
	b	LBB15_6
LBB15_6:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-48]
Ltmp35:
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
Ltmp36:
	b	LBB15_7
LBB15_7:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, sp, #80
	str	x9, [sp, #80]
	str	x8, [sp, #88]
	ldur	x1, [x29, #-40]
Ltmp37:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp38:
	b	LBB15_8
LBB15_8:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	d0, [x8]
	b	LBB15_9
LBB15_9:                                ;   in Loop: Header=BB15_3 Depth=2
	ldur	x8, [x29, #-48]
	add	x8, x8, #1
	stur	x8, [x29, #-48]
	b	LBB15_3
LBB15_10:
Ltmp39:
	mov	x8, x0
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	bl	__ZN6MatrixIdED1Ev
	b	LBB15_16
LBB15_11:                               ;   in Loop: Header=BB15_1 Depth=1
	b	LBB15_12
LBB15_12:                               ;   in Loop: Header=BB15_1 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	LBB15_1
LBB15_13:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-17]
	ldurb	w8, [x29, #-17]
	tbnz	w8, #0, LBB15_15
	b	LBB15_14
LBB15_14:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZN6MatrixIdED1Ev
	b	LBB15_15
LBB15_15:
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB15_16:
	ldur	x0, [x29, #-72]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp31-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp31
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp38-Ltmp31                  ;   Call between Ltmp31 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin2            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp38              ;   Call between Ltmp38 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdE5traceEv         ; -- Begin function _ZNK6MatrixIdE5traceEv
	.weak_definition	__ZNK6MatrixIdE5traceEv
	.p2align	2
__ZNK6MatrixIdE5traceEv:                ; @_ZNK6MatrixIdE5traceEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	movi	d0, #0000000000000000
	stur	d0, [x29, #-16]
	str	xzr, [sp, #24]
	b	LBB16_1
LBB16_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.hs	LBB16_4
	b	LBB16_2
LBB16_2:                                ;   in Loop: Header=BB16_1 Depth=1
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #24]
	bl	__ZNK6MatrixIdEixEm
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	str	x1, [sp, #16]
	ldr	x1, [sp, #24]
	bl	__ZNK6MatrixIdE13ConstRowProxyixEm
	ldr	d1, [x0]
	ldur	d0, [x29, #-16]
	fadd	d0, d0, d1
	stur	d0, [x29, #-16]
	b	LBB16_3
LBB16_3:                                ;   in Loop: Header=BB16_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB16_1
LBB16_4:
	ldur	d0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdE3detEv           ; -- Begin function _ZNK6MatrixIdE3detEv
	.weak_definition	__ZNK6MatrixIdE3detEv
	.p2align	2
__ZNK6MatrixIdE3detEv:                  ; @_ZNK6MatrixIdE3detEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #592
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #280]                  ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #292]                  ; 4-byte Folded Spill
	b.ne	LBB17_2
	b	LBB17_1
LBB17_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #292]                  ; 4-byte Folded Spill
	b	LBB17_2
LBB17_2:
	ldr	w8, [sp, #292]                  ; 4-byte Folded Reload
	tbnz	w8, #0, LBB17_4
	b	LBB17_3
LBB17_3:
	adrp	x0, l___func__._ZNK6MatrixIdE3detEv@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdE3detEv@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #293                        ; =0x125
	adrp	x3, l_.str.16@PAGE
	add	x3, x3, l_.str.16@PAGEOFF
	bl	___assert_rtn
LBB17_4:
	b	LBB17_5
LBB17_5:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	cbnz	x8, LBB17_7
	b	LBB17_6
LBB17_6:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-24]
	b	LBB17_62
LBB17_7:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #1
	b.ne	LBB17_9
	b	LBB17_8
LBB17_8:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldr	d0, [x8]
	stur	d0, [x29, #-24]
	b	LBB17_62
LBB17_9:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #2
	b.ne	LBB17_11
	b	LBB17_10
LBB17_10:
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	bl	__ZNK6MatrixIdE6det2x2Ev
	stur	d0, [x29, #-24]
	b	LBB17_62
LBB17_11:
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #3
	b.ne	LBB17_13
	b	LBB17_12
LBB17_12:
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	bl	__ZNK6MatrixIdE6det3x3Ev
	stur	d0, [x29, #-24]
	b	LBB17_62
LBB17_13:
	ldr	x1, [sp, #280]                  ; 8-byte Folded Reload
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEC1ERKS0_
	ldr	x8, [sp, #280]                  ; 8-byte Folded Reload
	fmov	d0, #1.00000000
	stur	d0, [x29, #-64]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-72]
	stur	xzr, [x29, #-80]
	b	LBB17_14
LBB17_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB17_16 Depth 2
                                        ;     Child Loop BB17_28 Depth 2
                                        ;     Child Loop BB17_41 Depth 2
                                        ;       Child Loop BB17_47 Depth 3
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.hs	LBB17_60
	b	LBB17_15
LBB17_15:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-96]
	b	LBB17_16
LBB17_16:                               ;   Parent Loop BB17_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.hs	LBB17_26
	b	LBB17_17
LBB17_17:                               ;   in Loop: Header=BB17_16 Depth=2
	ldur	x1, [x29, #-96]
Ltmp72:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
	str	x1, [sp, #272]                  ; 8-byte Folded Spill
Ltmp73:
	b	LBB17_18
LBB17_18:                               ;   in Loop: Header=BB17_16 Depth=2
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x0, x29, #112
	stur	x9, [x29, #-112]
	stur	x8, [x29, #-104]
	ldur	x1, [x29, #-80]
Ltmp74:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
Ltmp75:
	b	LBB17_19
LBB17_19:                               ;   in Loop: Header=BB17_16 Depth=2
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	ldr	d0, [x8]
	bl	__Z3absB8ne200100d
	str	d0, [sp, #232]                  ; 8-byte Folded Spill
	ldur	x1, [x29, #-88]
Ltmp76:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
	str	x1, [sp, #248]                  ; 8-byte Folded Spill
Ltmp77:
	b	LBB17_20
LBB17_20:                               ;   in Loop: Header=BB17_16 Depth=2
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	sub	x0, x29, #144
	stur	x9, [x29, #-144]
	stur	x8, [x29, #-136]
	ldur	x1, [x29, #-80]
Ltmp78:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
Ltmp79:
	b	LBB17_21
LBB17_21:                               ;   in Loop: Header=BB17_16 Depth=2
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	ldr	d0, [x8]
	bl	__Z3absB8ne200100d
	fmov	d1, d0
	ldr	d0, [sp, #232]                  ; 8-byte Folded Reload
	fcmp	d0, d1
	b.le	LBB17_24
	b	LBB17_22
LBB17_22:                               ;   in Loop: Header=BB17_16 Depth=2
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-88]
	b	LBB17_24
LBB17_23:
Ltmp80:
	stur	x0, [x29, #-120]
	mov	x8, x1
	stur	w8, [x29, #-124]
	sub	x0, x29, #56
	bl	__ZN6MatrixIdED1Ev
	b	LBB17_63
LBB17_24:                               ;   in Loop: Header=BB17_16 Depth=2
	b	LBB17_25
LBB17_25:                               ;   in Loop: Header=BB17_16 Depth=2
	ldur	x8, [x29, #-96]
	add	x8, x8, #1
	stur	x8, [x29, #-96]
	b	LBB17_16
LBB17_26:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x8, [x29, #-88]
	ldur	x9, [x29, #-80]
	subs	x8, x8, x9
	b.eq	LBB17_36
	b	LBB17_27
LBB17_27:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-152]
	b	LBB17_28
LBB17_28:                               ;   Parent Loop BB17_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-152]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.hs	LBB17_35
	b	LBB17_29
LBB17_29:                               ;   in Loop: Header=BB17_28 Depth=2
	ldur	x1, [x29, #-80]
Ltmp64:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
	str	x1, [sp, #216]                  ; 8-byte Folded Spill
Ltmp65:
	b	LBB17_30
LBB17_30:                               ;   in Loop: Header=BB17_28 Depth=2
	ldr	x8, [sp, #216]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #208]                  ; 8-byte Folded Reload
	sub	x0, x29, #168
	stur	x9, [x29, #-168]
	stur	x8, [x29, #-160]
	ldur	x1, [x29, #-152]
Ltmp66:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp67:
	b	LBB17_31
LBB17_31:                               ;   in Loop: Header=BB17_28 Depth=2
	ldur	x1, [x29, #-88]
Ltmp68:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	str	x1, [sp, #192]                  ; 8-byte Folded Spill
Ltmp69:
	b	LBB17_32
LBB17_32:                               ;   in Loop: Header=BB17_28 Depth=2
	ldr	x8, [sp, #192]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #184]                  ; 8-byte Folded Reload
	sub	x0, x29, #184
	stur	x9, [x29, #-184]
	stur	x8, [x29, #-176]
	ldur	x1, [x29, #-152]
Ltmp70:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp71:
	b	LBB17_33
LBB17_33:                               ;   in Loop: Header=BB17_28 Depth=2
	ldr	x1, [sp, #176]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	bl	__ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	b	LBB17_34
LBB17_34:                               ;   in Loop: Header=BB17_28 Depth=2
	ldur	x8, [x29, #-152]
	add	x8, x8, #1
	stur	x8, [x29, #-152]
	b	LBB17_28
LBB17_35:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	d0, [x29, #-64]
	fmov	d1, #-1.00000000
	fmul	d0, d0, d1
	stur	d0, [x29, #-64]
	b	LBB17_36
LBB17_36:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x1, [x29, #-80]
Ltmp40:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	str	x1, [sp, #168]                  ; 8-byte Folded Spill
Ltmp41:
	b	LBB17_37
LBB17_37:                               ;   in Loop: Header=BB17_14 Depth=1
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #160]                  ; 8-byte Folded Reload
	sub	x0, x29, #200
	stur	x9, [x29, #-200]
	stur	x8, [x29, #-192]
	ldur	x1, [x29, #-80]
Ltmp42:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp43:
	b	LBB17_38
LBB17_38:                               ;   in Loop: Header=BB17_14 Depth=1
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	ldr	d0, [x8]
	bl	__Z3absB8ne200100d
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB17_40
	b	LBB17_39
LBB17_39:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-24]
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-204]
	b	LBB17_61
LBB17_40:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-216]
	b	LBB17_41
LBB17_41:                               ;   Parent Loop BB17_14 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB17_47 Depth 3
	ldur	x8, [x29, #-216]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.hs	LBB17_56
	b	LBB17_42
LBB17_42:                               ;   in Loop: Header=BB17_41 Depth=2
	ldur	x1, [x29, #-216]
Ltmp48:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
	str	x1, [sp, #144]                  ; 8-byte Folded Spill
Ltmp49:
	b	LBB17_43
LBB17_43:                               ;   in Loop: Header=BB17_41 Depth=2
	ldr	x8, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	sub	x0, x29, #240
	stur	x9, [x29, #-240]
	stur	x8, [x29, #-232]
	ldur	x1, [x29, #-80]
Ltmp50:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp51:
	b	LBB17_44
LBB17_44:                               ;   in Loop: Header=BB17_41 Depth=2
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #104]                  ; 8-byte Folded Spill
	ldur	x1, [x29, #-80]
Ltmp52:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	str	x1, [sp, #120]                  ; 8-byte Folded Spill
Ltmp53:
	b	LBB17_45
LBB17_45:                               ;   in Loop: Header=BB17_41 Depth=2
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #112]                  ; 8-byte Folded Reload
	sub	x0, x29, #256
	stur	x9, [x29, #-256]
	stur	x8, [x29, #-248]
	ldur	x1, [x29, #-80]
Ltmp54:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp55:
	b	LBB17_46
LBB17_46:                               ;   in Loop: Header=BB17_41 Depth=2
	ldr	d0, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	d1, [x8]
	fdiv	d0, d0, d1
	stur	d0, [x29, #-224]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #344]
	b	LBB17_47
LBB17_47:                               ;   Parent Loop BB17_14 Depth=1
                                        ;     Parent Loop BB17_41 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #344]
	ldur	x9, [x29, #-72]
	subs	x8, x8, x9
	b.hs	LBB17_54
	b	LBB17_48
LBB17_48:                               ;   in Loop: Header=BB17_47 Depth=3
	ldur	d0, [x29, #-224]
	str	d0, [sp, #72]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-80]
Ltmp56:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	str	x1, [sp, #88]                   ; 8-byte Folded Spill
Ltmp57:
	b	LBB17_49
LBB17_49:                               ;   in Loop: Header=BB17_47 Depth=3
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	add	x0, sp, #328
	str	x9, [sp, #328]
	str	x8, [sp, #336]
	ldr	x1, [sp, #344]
Ltmp58:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp59:
	b	LBB17_50
LBB17_50:                               ;   in Loop: Header=BB17_47 Depth=3
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x1, [x29, #-216]
Ltmp60:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
Ltmp61:
	b	LBB17_51
LBB17_51:                               ;   in Loop: Header=BB17_47 Depth=3
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, sp, #312
	str	x9, [sp, #312]
	str	x8, [sp, #320]
	ldr	x1, [sp, #344]
Ltmp62:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp63:
	b	LBB17_52
LBB17_52:                               ;   in Loop: Header=BB17_47 Depth=3
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	d2, [x8]
	fmsub	d0, d0, d1, d2
	str	d0, [x8]
	b	LBB17_53
LBB17_53:                               ;   in Loop: Header=BB17_47 Depth=3
	ldr	x8, [sp, #344]
	add	x8, x8, #1
	str	x8, [sp, #344]
	b	LBB17_47
LBB17_54:                               ;   in Loop: Header=BB17_41 Depth=2
	b	LBB17_55
LBB17_55:                               ;   in Loop: Header=BB17_41 Depth=2
	ldur	x8, [x29, #-216]
	add	x8, x8, #1
	stur	x8, [x29, #-216]
	b	LBB17_41
LBB17_56:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x1, [x29, #-80]
Ltmp44:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdEixEm
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
Ltmp45:
	b	LBB17_57
LBB17_57:                               ;   in Loop: Header=BB17_14 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #296
	str	x9, [sp, #296]
	str	x8, [sp, #304]
	ldur	x1, [x29, #-80]
Ltmp46:
	bl	__ZN6MatrixIdE8RowProxyixEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp47:
	b	LBB17_58
LBB17_58:                               ;   in Loop: Header=BB17_14 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d1, [x8]
	ldur	d0, [x29, #-64]
	fmul	d0, d0, d1
	stur	d0, [x29, #-64]
	b	LBB17_59
LBB17_59:                               ;   in Loop: Header=BB17_14 Depth=1
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-80]
	b	LBB17_14
LBB17_60:
	ldur	d0, [x29, #-64]
	stur	d0, [x29, #-24]
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-204]
	b	LBB17_61
LBB17_61:
	sub	x0, x29, #56
	bl	__ZN6MatrixIdED1Ev
	b	LBB17_62
LBB17_62:
	ldur	d0, [x29, #-24]
	add	sp, sp, #592
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB17_63:
	ldur	x0, [x29, #-120]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp72-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp72
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp47-Ltmp72                  ;   Call between Ltmp72 and Ltmp47
	.uleb128 Ltmp80-Lfunc_begin3            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp47              ;   Call between Ltmp47 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w10, #-1                        ; =0xffffffff
	and	w8, w8, w10
	str	w8, [x9]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	b	LBB19_1
LBB19_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #624
	b.hs	LBB19_4
	b	LBB19_2
LBB19_2:                                ;   in Loop: Header=BB19_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	eor	w10, w8, w0
	mov	w8, #35173                      ; =0x8965
	movk	w8, #27655, lsl #16
	mul	w8, w8, w10
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, x10, lsl #2]
	b	LBB19_3
LBB19_3:                                ;   in Loop: Header=BB19_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB19_1
LBB19_4:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x8, #2496]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm30ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #30
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd
	.globl	__ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd: ; @_ZNSt3__125uniform_real_distributionIdEC2B8ne200100Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd
	.globl	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd: ; @_ZNSt3__125uniform_real_distributionIdE10param_typeC1B8ne200100Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd
	.globl	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd: ; @_ZNSt3__125uniform_real_distributionIdE10param_typeC2B8ne200100Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	d0, [sp, #16]
	str	d0, [x0]
	ldr	d0, [sp, #8]
	str	d0, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEC2ExxRKd          ; -- Begin function _ZN6MatrixIdEC2ExxRKd
	.weak_def_can_be_hidden	__ZN6MatrixIdEC2ExxRKd
	.p2align	2
__ZN6MatrixIdEC2ExxRKd:                 ; @_ZN6MatrixIdEC2ExxRKd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZN6MatrixIdE9allocatorExxRKd
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdE9allocatorExxRKd  ; -- Begin function _ZN6MatrixIdE9allocatorExxRKd
	.weak_definition	__ZN6MatrixIdE9allocatorExxRKd
	.p2align	2
__ZN6MatrixIdE9allocatorExxRKd:         ; @_ZN6MatrixIdE9allocatorExxRKd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	b.le	LBB25_3
	b	LBB25_1
LBB25_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	b.le	LBB25_3
	b	LBB25_2
LBB25_2:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	mov	x10, #8                         ; =0x8
	umulh	x9, x8, x10
	mul	x8, x8, x10
	subs	x9, x9, #0
	csinv	x0, x8, xzr, eq
	bl	__Znam
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [x8, #16]
	ldr	x0, [x8, #16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x10, [sp, #24]
	mul	x9, x9, x10
	add	x1, x8, x9, lsl #3
	ldr	x2, [sp, #16]
	bl	__ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	str	x8, [x9, #8]
	b	LBB25_4
LBB25_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	str	xzr, [x8]
	str	xzr, [x8, #8]
	b	LBB25_4
LBB25_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_ ; -- Begin function _ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_
	.globl	__ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_
	.weak_definition	__ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_
	.p2align	2
__ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_: ; @_ZNSt3__14fillB8ne200100IPddEEvT_S2_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE
	.globl	__ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE: ; @_ZNSt3__16__fillB8ne200100IPddEEvT_S2_RKT0_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x1, x8, x9
	ldr	x2, [sp]
	bl	__ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_ ; -- Begin function _ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.globl	__ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.weak_definition	__ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.p2align	2
__ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_: ; @_ZNSt3__16fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__121__convert_to_integralB8ne200100El
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]
	bl	__ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_ ; -- Begin function _ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.globl	__ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.weak_definition	__ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.p2align	2
__ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_: ; @_ZNSt3__18__fill_nB8ne200100IPdldEET_S2_T0_RKT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	b	LBB29_1
LBB29_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.le	LBB29_4
	b	LBB29_2
LBB29_2:                                ;   in Loop: Header=BB29_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	ldr	x8, [sp, #24]
	str	d0, [x8]
	b	LBB29_3
LBB29_3:                                ;   in Loop: Header=BB29_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB29_1
LBB29_4:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__convert_to_integralB8ne200100El ; -- Begin function _ZNSt3__121__convert_to_integralB8ne200100El
	.globl	__ZNSt3__121__convert_to_integralB8ne200100El
	.weak_definition	__ZNSt3__121__convert_to_integralB8ne200100El
	.p2align	2
__ZNSt3__121__convert_to_integralB8ne200100El: ; @_ZNSt3__121__convert_to_integralB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdED2Ev              ; -- Begin function _ZN6MatrixIdED2Ev
	.weak_def_can_be_hidden	__ZN6MatrixIdED2Ev
	.p2align	2
__ZN6MatrixIdED2Ev:                     ; @_ZN6MatrixIdED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cbz	x8, LBB31_2
	b	LBB31_1
LBB31_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdaPv
	b	LBB31_2
LBB31_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.weak_definition	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE: ; @_ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev
	str	d0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	fmov	d1, d0
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	fsub	d0, d0, d1
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	fmov	d2, d0
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	fmadd	d0, d0, d1, d2
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev ; -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev
	.globl	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev
	.weak_definition	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev
	.p2align	2
__ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev: ; @_ZNKSt3__125uniform_real_distributionIdE10param_type1bB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev ; -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	.globl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	.weak_definition	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	.p2align	2
__ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev: ; @_ZNKSt3__125uniform_real_distributionIdE10param_type1aB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_ ; -- Begin function _ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.globl	__ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.weak_definition	__ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.p2align	2
__ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_: ; @_ZNSt3__118generate_canonicalB8ne200100IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x8, #53                         ; =0x35
	stur	x8, [x29, #-16]
	stur	x8, [x29, #-24]
	mov	x8, #32                         ; =0x20
	stur	x8, [x29, #-32]
	mov	x8, #2                          ; =0x2
	stur	x8, [x29, #-40]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev
	str	w0, [sp, #16]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	mov	x8, x0
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	str	d0, [sp, #48]
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d0, x8
	str	d0, [sp, #40]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	mov	x8, x0
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	str	d0, [sp, #32]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	b	LBB35_1
LBB35_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	b.hs	LBB35_4
	b	LBB35_2
LBB35_2:                                ;   in Loop: Header=BB35_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	mov	x8, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	ldr	d1, [sp, #40]
	ldr	d2, [sp, #32]
	fmadd	d0, d0, d1, d2
	str	d0, [sp, #32]
	b	LBB35_3
LBB35_3:                                ;   in Loop: Header=BB35_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	d0, [sp, #40]
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp, #40]
	b	LBB35_1
LBB35_4:
	ldr	d0, [sp, #32]
	ldr	d1, [sp, #40]
	fdiv	d0, d0, d1
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x9, [x8, #2496]
	add	x9, x9, #1
	mov	x11, #624                       ; =0x270
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	stur	x9, [x29, #-16]
	mov	w9, #2147483647                 ; =0x7fffffff
	stur	w9, [x29, #-20]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	and	w9, w9, #0x80000000
	ldur	x10, [x29, #-16]
	ldr	w10, [x8, x10, lsl #2]
	and	w10, w10, #0x7fffffff
	orr	w9, w9, w10
	stur	w9, [x29, #-24]
	ldr	x9, [x8, #2496]
	add	x9, x9, #397
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	str	x9, [sp, #32]
	ldr	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	eor	w9, w9, w0
	ldur	w10, [x29, #-24]
	and	w11, w10, #0x1
	mov	w10, #45279                     ; =0xb0df
	movk	w10, #39176, lsl #16
	mul	w10, w10, w11
	eor	w9, w9, w10
	ldr	x10, [x8, #2496]
	str	w9, [x8, x10, lsl #2]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [x8, #2496]
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	w10, #-1                        ; =0xffffffff
	and	w10, w0, w10
	eor	w8, w8, w10
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	str	x8, [x9, #2496]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	mov	w8, #22144                      ; =0x5680
	movk	w8, #40236, lsl #16
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	mov	w8, #-272236544                 ; =0xefc60000
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	eor	w0, w8, w0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm1ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm11ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #11
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm7ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #7
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB8ne200100ILm15ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #15
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB8ne200100ILm18ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #18
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp92:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp93:
	b	LBB44_1
LBB44_1:
Ltmp95:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp96:
	b	LBB44_2
LBB44_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB44_18
	b	LBB44_3
LBB44_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp97:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp98:
	b	LBB44_4
LBB44_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB44_6
	b	LBB44_5
LBB44_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB44_7
LBB44_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB44_7
LBB44_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp99:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp100:
	b	LBB44_8
LBB44_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp101:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp102:
	b	LBB44_9
LBB44_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB44_17
	b	LBB44_10
LBB44_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp103:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp104:
	b	LBB44_11
LBB44_11:
	b	LBB44_17
LBB44_12:
Ltmp94:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB44_14
LBB44_13:
Ltmp105:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB44_14
LBB44_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp106:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp107:
	b	LBB44_15
LBB44_15:
	bl	___cxa_end_catch
	b	LBB44_16
LBB44_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB44_17:
	b	LBB44_18
LBB44_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB44_16
LBB44_19:
Ltmp108:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp109:
	bl	___cxa_end_catch
Ltmp110:
	b	LBB44_20
LBB44_20:
	b	LBB44_21
LBB44_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB44_22:
Ltmp111:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp92-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin4            ;     jumps to Ltmp94
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp95-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp104-Ltmp95                 ;   Call between Ltmp95 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin4           ;     jumps to Ltmp105
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp104-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp106-Ltmp104                ;   Call between Ltmp104 and Ltmp106
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin4           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp109-Ltmp107                ;   Call between Ltmp107 and Ltmp109
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin4           ;     jumps to Ltmp111
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp110-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Lfunc_end4-Ltmp110             ;   Call between Ltmp110 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
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
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB47_2
	b	LBB47_1
LBB47_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB47_23
LBB47_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB47_4
	b	LBB47_3
LBB47_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB47_5
LBB47_4:
	str	xzr, [sp, #72]
	b	LBB47_5
LBB47_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB47_9
	b	LBB47_6
LBB47_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB47_8
	b	LBB47_7
LBB47_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB47_23
LBB47_8:
	b	LBB47_9
LBB47_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB47_18
	b	LBB47_10
LBB47_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp113:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp114:
	b	LBB47_11
LBB47_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB47_14
	b	LBB47_12
LBB47_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB47_15
LBB47_13:
Ltmp115:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB47_24
LBB47_14:
	str	wzr, [sp, #24]
	b	LBB47_15
LBB47_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB47_17
	b	LBB47_16
LBB47_16:
	b	LBB47_23
LBB47_17:
	b	LBB47_18
LBB47_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB47_22
	b	LBB47_19
LBB47_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB47_21
	b	LBB47_20
LBB47_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB47_23
LBB47_21:
	b	LBB47_22
LBB47_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB47_23
LBB47_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB47_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table47:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp113-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp113
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp113-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp114-Ltmp113                ;   Call between Ltmp113 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin5           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp114             ;   Call between Ltmp114 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne200100Ev: ; @_ZNKSt3__18ios_base5flagsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	tbnz	w0, #0, LBB50_2
	b	LBB50_1
LBB50_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB50_2
LBB50_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
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
	.private_extern	__ZNKSt3__18ios_base5widthB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne200100Ev: ; @_ZNKSt3__18ios_base5widthB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	bl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne200100El ; -- Begin function _ZNSt3__18ios_base5widthB8ne200100El
	.globl	__ZNSt3__18ios_base5widthB8ne200100El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne200100El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne200100El:  ; @_ZNSt3__18ios_base5widthB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC1B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB64_2
	b	LBB64_1
LBB64_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB64_3
LBB64_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB64_3
LBB64_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp125:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp126:
	b	LBB69_1
LBB69_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB69_2:
Ltmp127:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table69:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp125-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin6           ;     jumps to Ltmp127
	.byte	1                               ;   On action: 1
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne200100Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp129:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp130:
	b	LBB73_1
LBB73_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp131:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp132:
	b	LBB73_2
LBB73_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB73_3:
Ltmp133:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB73_4
LBB73_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table73:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp129-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp129
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp129-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp132-Ltmp129                ;   Call between Ltmp129 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin7           ;     jumps to Ltmp133
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp132             ;   Call between Ltmp132 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne200100Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne200100Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne200100Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne200100Ej: ; @_ZNSt3__18ios_base8setstateB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB8ne200100IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEC2ERKS0_          ; -- Begin function _ZN6MatrixIdEC2ERKS0_
	.weak_def_can_be_hidden	__ZN6MatrixIdEC2ERKS0_
	.p2align	2
__ZN6MatrixIdEC2ERKS0_:                 ; @_ZN6MatrixIdEC2ERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	str	x9, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, LBB81_2
	b	LBB81_1
LBB81_1:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	mul	x8, x8, x9
	mov	x10, #8                         ; =0x8
	umulh	x9, x8, x10
	mul	x8, x8, x10
	subs	x9, x9, #0
	csinv	x0, x8, xzr, eq
	bl	__Znam
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x0, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	x0, [x9, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldr	x10, [x8]
	ldr	x11, [x8, #8]
	mul	x10, x10, x11
	add	x1, x9, x10, lsl #3
	ldr	x2, [x8, #16]
	bl	__ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_
	b	LBB81_2
LBB81_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne200100IPdS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.globl	__ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: ; @_ZNSt3__16__copyB8ne200100IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPdS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPdS1_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__111__copy_implclB8ne200100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.globl	__ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_: ; @_ZNSt3__19make_pairB8ne200100IPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPdS1_S1_EET0_S2_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp136:
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp137:
	b	LBB90_1
LBB90_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB90_2:
Ltmp138:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table90:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp136-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp137-Ltmp136                ;   Call between Ltmp136 and Ltmp137
	.uleb128 Ltmp138-Lfunc_begin8           ;     jumps to Ltmp138
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_
	.globl	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_: ; @_ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne200100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #16
	str	x0, [sp, #16]
	sub	x0, x29, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB95_2
	b	LBB95_1
LBB95_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #3
	add	x2, x8, #8
	bl	_memmove
	b	LBB95_2
LBB95_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IRPdS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne200100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne200100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne200100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne200100IdEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNR6MatrixIdEmLERKS0_         ; -- Begin function _ZNR6MatrixIdEmLERKS0_
	.weak_definition	__ZNR6MatrixIdEmLERKS0_
	.p2align	2
__ZNR6MatrixIdEmLERKS0_:                ; @_ZNR6MatrixIdEmLERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNR6MatrixIdE8multiplyERKS0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEC1EOS0_           ; -- Begin function _ZN6MatrixIdEC1EOS0_
	.weak_def_can_be_hidden	__ZN6MatrixIdEC1EOS0_
	.p2align	2
__ZN6MatrixIdEC1EOS0_:                  ; @_ZN6MatrixIdEC1EOS0_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x3, sp, #8
	movi	d0, #0000000000000000
	str	d0, [sp, #8]
Ltmp142:
	mov	x2, #0                          ; =0x0
	mov	x1, x2
	bl	__ZN6MatrixIdEC1ExxRKd
Ltmp143:
	b	LBB104_1
LBB104_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__Z4swapR6MatrixIdES1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB104_2:
Ltmp144:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table104:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp142-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp143-Ltmp142                ;   Call between Ltmp142 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin9           ;     jumps to Ltmp144
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNR6MatrixIdE8multiplyERKS0_  ; -- Begin function _ZNR6MatrixIdE8multiplyERKS0_
	.weak_definition	__ZNR6MatrixIdE8multiplyERKS0_
	.p2align	2
__ZNR6MatrixIdE8multiplyERKS0_:         ; @_ZNR6MatrixIdE8multiplyERKS0_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldur	x8, [x29, #-16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	b.ne	LBB105_2
	b	LBB105_1
LBB105_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	b	LBB105_2
LBB105_2:
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB105_4
	b	LBB105_3
LBB105_3:
	adrp	x0, l___func__._ZNR6MatrixIdE8multiplyERKS0_@PAGE
	add	x0, x0, l___func__._ZNR6MatrixIdE8multiplyERKS0_@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #262                        ; =0x106
	adrp	x3, l_.str.7@PAGE
	add	x3, x3, l_.str.7@PAGEOFF
	bl	___assert_rtn
LBB105_4:
	b	LBB105_5
LBB105_5:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x1, [x9]
	ldr	x2, [x8, #8]
	sub	x3, x29, #48
	movi	d0, #0000000000000000
	stur	d0, [x29, #-48]
	sub	x0, x29, #40
	bl	__ZN6MatrixIdEC1ExxRKd
	stur	xzr, [x29, #-56]
	b	LBB105_6
LBB105_6:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB105_8 Depth 2
                                        ;       Child Loop BB105_12 Depth 3
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-56]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.hs	LBB105_22
	b	LBB105_7
LBB105_7:                               ;   in Loop: Header=BB105_6 Depth=1
	stur	xzr, [x29, #-64]
	b	LBB105_8
LBB105_8:                               ;   Parent Loop BB105_6 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB105_12 Depth 3
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-64]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	LBB105_20
	b	LBB105_9
LBB105_9:                               ;   in Loop: Header=BB105_8 Depth=2
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x8, [x10, #16]
	ldur	x9, [x29, #-56]
	ldr	x10, [x10]
	mul	x9, x9, x10
	ldur	x10, [x29, #-64]
	add	x9, x9, x10
	ldr	d0, [x8, x9, lsl #3]
	str	d0, [sp, #72]
	ldr	d0, [sp, #72]
	fcmp	d0, #0.0
	b.ne	LBB105_11
	b	LBB105_10
LBB105_10:                              ;   in Loop: Header=BB105_8 Depth=2
	b	LBB105_19
LBB105_11:                              ;   in Loop: Header=BB105_8 Depth=2
	str	xzr, [sp, #64]
	b	LBB105_12
LBB105_12:                              ;   Parent Loop BB105_6 Depth=1
                                        ;     Parent Loop BB105_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	LBB105_18
	b	LBB105_13
LBB105_13:                              ;   in Loop: Header=BB105_12 Depth=3
	ldr	d0, [sp, #72]
	str	d0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-64]
	ldr	x2, [sp, #64]
Ltmp145:
	bl	__ZNK6MatrixIdEclEmm
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp146:
	b	LBB105_14
LBB105_14:                              ;   in Loop: Header=BB105_12 Depth=3
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
Ltmp147:
	sub	x0, x29, #40
	bl	__ZN6MatrixIdEclEmm
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp148:
	b	LBB105_15
LBB105_15:                              ;   in Loop: Header=BB105_12 Depth=3
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d2, [x8]
	fmadd	d0, d0, d1, d2
	str	d0, [x8]
	b	LBB105_16
LBB105_16:                              ;   in Loop: Header=BB105_12 Depth=3
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	LBB105_12
LBB105_17:
Ltmp149:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	sub	x0, x29, #40
	bl	__ZN6MatrixIdED1Ev
	b	LBB105_23
LBB105_18:                              ;   in Loop: Header=BB105_8 Depth=2
	b	LBB105_19
LBB105_19:                              ;   in Loop: Header=BB105_8 Depth=2
	ldur	x8, [x29, #-64]
	add	x8, x8, #1
	stur	x8, [x29, #-64]
	b	LBB105_8
LBB105_20:                              ;   in Loop: Header=BB105_6 Depth=1
	b	LBB105_21
LBB105_21:                              ;   in Loop: Header=BB105_6 Depth=1
	ldur	x8, [x29, #-56]
	add	x8, x8, #1
	stur	x8, [x29, #-56]
	b	LBB105_6
LBB105_22:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	sub	x1, x29, #40
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__Z4swapR6MatrixIdES1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZN6MatrixIdED1Ev
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB105_23:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table105:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp145-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp145
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp148-Ltmp145                ;   Call between Ltmp145 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin10          ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp148            ;   Call between Ltmp148 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdEclEmm            ; -- Begin function _ZNK6MatrixIdEclEmm
	.weak_definition	__ZNK6MatrixIdEclEmm
	.p2align	2
__ZNK6MatrixIdEclEmm:                   ; @_ZNK6MatrixIdEclEmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #24]
	ldr	x10, [x8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.hs	LBB106_3
	b	LBB106_1
LBB106_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.hs	LBB106_3
	b	LBB106_2
LBB106_2:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB106_3
LBB106_3:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB106_5
	b	LBB106_4
LBB106_4:
	adrp	x0, l___func__._ZNK6MatrixIdEclEmm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEclEmm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #692                        ; =0x2b4
	adrp	x3, l_.str.9@PAGE
	add	x3, x3, l_.str.9@PAGEOFF
	bl	___assert_rtn
LBB106_5:
	b	LBB106_6
LBB106_6:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #16]
	ldur	x9, [x29, #-16]
	ldr	x10, [x10]
	mul	x9, x9, x10
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEclEmm             ; -- Begin function _ZN6MatrixIdEclEmm
	.weak_definition	__ZN6MatrixIdEclEmm
	.p2align	2
__ZN6MatrixIdEclEmm:                    ; @_ZN6MatrixIdEclEmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #24]
	ldr	x10, [x8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.hs	LBB107_3
	b	LBB107_1
LBB107_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.hs	LBB107_3
	b	LBB107_2
LBB107_2:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB107_3
LBB107_3:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB107_5
	b	LBB107_4
LBB107_4:
	adrp	x0, l___func__._ZNK6MatrixIdEclEmm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEclEmm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #686                        ; =0x2ae
	adrp	x3, l_.str.9@PAGE
	add	x3, x3, l_.str.9@PAGEOFF
	bl	___assert_rtn
LBB107_5:
	b	LBB107_6
LBB107_6:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #16]
	ldur	x9, [x29, #-16]
	ldr	x10, [x10]
	mul	x9, x9, x10
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z4swapR6MatrixIdES1_          ; -- Begin function _Z4swapR6MatrixIdES1_
	.weak_definition	__Z4swapR6MatrixIdES1_
	.p2align	2
__Z4swapR6MatrixIdES1_:                 ; @_Z4swapR6MatrixIdES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	ldr	x9, [sp, #8]
	ldr	x8, [sp]
	add	x0, x9, #8
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	ldr	x9, [sp, #8]
	ldr	x8, [sp]
	add	x0, x9, #16
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_ ; -- Begin function _ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.globl	__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.weak_definition	__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.p2align	2
__ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_: ; @_ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB8ne200100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdEixEm             ; -- Begin function _ZNK6MatrixIdEixEm
	.weak_definition	__ZNK6MatrixIdEixEm
	.p2align	2
__ZNK6MatrixIdEixEm:                    ; @_ZNK6MatrixIdEixEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.hs	LBB111_2
	b	LBB111_1
LBB111_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB111_2
LBB111_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB111_4
	b	LBB111_3
LBB111_3:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #768                        ; =0x300
	adrp	x3, l_.str.11@PAGE
	add	x3, x3, l_.str.11@PAGEOFF
	bl	___assert_rtn
LBB111_4:
	b	LBB111_5
LBB111_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldr	x10, [sp, #16]
	ldr	x11, [x8]
	mul	x10, x10, x11
	add	x9, x9, x10, lsl #3
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdE13ConstRowProxyixEm ; -- Begin function _ZNK6MatrixIdE13ConstRowProxyixEm
	.weak_definition	__ZNK6MatrixIdE13ConstRowProxyixEm
	.p2align	2
__ZNK6MatrixIdE13ConstRowProxyixEm:     ; @_ZNK6MatrixIdE13ConstRowProxyixEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.hs	LBB112_2
	b	LBB112_1
LBB112_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB112_2
LBB112_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB112_4
	b	LBB112_3
LBB112_3:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #761                        ; =0x2f9
	adrp	x3, l_.str.12@PAGE
	add	x3, x3, l_.str.12@PAGEOFF
	bl	___assert_rtn
LBB112_4:
	b	LBB112_5
LBB112_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdEixEm              ; -- Begin function _ZN6MatrixIdEixEm
	.weak_definition	__ZN6MatrixIdEixEm
	.p2align	2
__ZN6MatrixIdEixEm:                     ; @_ZN6MatrixIdEixEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.hs	LBB113_2
	b	LBB113_1
LBB113_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB113_2
LBB113_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB113_4
	b	LBB113_3
LBB113_3:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #750                        ; =0x2ee
	adrp	x3, l_.str.11@PAGE
	add	x3, x3, l_.str.11@PAGEOFF
	bl	___assert_rtn
LBB113_4:
	b	LBB113_5
LBB113_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldr	x10, [sp, #16]
	ldr	x11, [x8]
	mul	x10, x10, x11
	add	x9, x9, x10, lsl #3
	stur	x9, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6MatrixIdE8RowProxyixEm     ; -- Begin function _ZN6MatrixIdE8RowProxyixEm
	.weak_definition	__ZN6MatrixIdE8RowProxyixEm
	.p2align	2
__ZN6MatrixIdE8RowProxyixEm:            ; @_ZN6MatrixIdE8RowProxyixEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.hs	LBB114_2
	b	LBB114_1
LBB114_1:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB114_2
LBB114_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB114_4
	b	LBB114_3
LBB114_3:
	adrp	x0, l___func__._ZNK6MatrixIdEixEm@PAGE
	add	x0, x0, l___func__._ZNK6MatrixIdEixEm@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #743                        ; =0x2e7
	adrp	x3, l_.str.12@PAGE
	add	x3, x3, l_.str.12@PAGEOFF
	bl	___assert_rtn
LBB114_4:
	b	LBB114_5
LBB114_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNR6MatrixIdEpLERKS0_         ; -- Begin function _ZNR6MatrixIdEpLERKS0_
	.weak_definition	__ZNR6MatrixIdEpLERKS0_
	.p2align	2
__ZNR6MatrixIdEpLERKS0_:                ; @_ZNR6MatrixIdEpLERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNR6MatrixIdE3addERKS0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNR6MatrixIdE3addERKS0_       ; -- Begin function _ZNR6MatrixIdE3addERKS0_
	.weak_definition	__ZNR6MatrixIdE3addERKS0_
	.p2align	2
__ZNR6MatrixIdE3addERKS0_:              ; @_ZNR6MatrixIdE3addERKS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldur	x8, [x29, #-16]
	ldr	x10, [x8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.ne	LBB116_3
	b	LBB116_1
LBB116_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x10, [x8, #8]
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.ne	LBB116_3
	b	LBB116_2
LBB116_2:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB116_3
LBB116_3:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB116_5
	b	LBB116_4
LBB116_4:
	adrp	x0, l___func__._ZNR6MatrixIdE3addERKS0_@PAGE
	add	x0, x0, l___func__._ZNR6MatrixIdE3addERKS0_@PAGEOFF
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #229                        ; =0xe5
	adrp	x3, l_.str.14@PAGE
	add	x3, x3, l_.str.14@PAGEOFF
	bl	___assert_rtn
LBB116_5:
	b	LBB116_6
LBB116_6:
	str	xzr, [sp, #24]
	b	LBB116_7
LBB116_7:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x10]
	ldr	x10, [x10, #8]
	mul	x9, x9, x10
	subs	x8, x8, x9
	b.hs	LBB116_10
	b	LBB116_8
LBB116_8:                               ;   in Loop: Header=BB116_7 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldr	x10, [sp, #24]
	ldr	d1, [x9, x10, lsl #3]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #24]
	ldr	d0, [x8, x9, lsl #3]
	fadd	d0, d0, d1
	str	d0, [x8, x9, lsl #3]
	b	LBB116_9
LBB116_9:                               ;   in Loop: Header=BB116_7 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB116_7
LBB116_10:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNR6MatrixIdEmLERKd           ; -- Begin function _ZNR6MatrixIdEmLERKd
	.weak_definition	__ZNR6MatrixIdEmLERKd
	.p2align	2
__ZNR6MatrixIdEmLERKd:                  ; @_ZNR6MatrixIdEmLERKd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	xzr, [sp, #8]
	b	LBB117_1
LBB117_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x10, [sp]                       ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	x9, [x10, #8]
	ldr	x10, [x10]
	mul	x9, x9, x10
	subs	x8, x8, x9
	b.hs	LBB117_4
	b	LBB117_2
LBB117_2:                               ;   in Loop: Header=BB117_1 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #16]
	ldr	d1, [x9]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	d0, [x8, x9, lsl #3]
	fmul	d0, d0, d1
	str	d0, [x8, x9, lsl #3]
	b	LBB117_3
LBB117_3:                               ;   in Loop: Header=BB117_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB117_1
LBB117_4:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdE6det2x2Ev        ; -- Begin function _ZNK6MatrixIdE6det2x2Ev
	.weak_definition	__ZNK6MatrixIdE6det2x2Ev
	.p2align	2
__ZNK6MatrixIdE6det2x2Ev:               ; @_ZNK6MatrixIdE6det2x2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #16]
	ldr	d0, [x9]
	ldr	x9, [x8, #16]
	ldr	d1, [x9, #24]
	ldr	x9, [x8, #16]
	ldr	d2, [x9, #8]
	ldr	x8, [x8, #16]
	ldr	d3, [x8, #16]
	fmul	d2, d2, d3
	fnmsub	d0, d0, d1, d2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK6MatrixIdE6det3x3Ev        ; -- Begin function _ZNK6MatrixIdE6det3x3Ev
	.weak_definition	__ZNK6MatrixIdE6det3x3Ev
	.p2align	2
__ZNK6MatrixIdE6det3x3Ev:               ; @_ZNK6MatrixIdE6det3x3Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #16]
	ldr	d0, [x9]
	ldr	x9, [x8, #16]
	ldr	d1, [x9, #32]
	ldr	x9, [x8, #16]
	ldr	d2, [x9, #64]
	ldr	x9, [x8, #16]
	ldr	d3, [x9, #40]
	ldr	x9, [x8, #16]
	ldr	d4, [x9, #56]
	fmul	d3, d3, d4
	fnmsub	d1, d1, d2, d3
	ldr	x9, [x8, #16]
	ldr	d2, [x9, #8]
	ldr	x9, [x8, #16]
	ldr	d3, [x9, #24]
	ldr	x9, [x8, #16]
	ldr	d4, [x9, #64]
	ldr	x9, [x8, #16]
	ldr	d5, [x9, #40]
	ldr	x9, [x8, #16]
	ldr	d6, [x9, #48]
	fmul	d5, d5, d6
	fnmsub	d3, d3, d4, d5
	fmul	d2, d2, d3
	fnmsub	d2, d0, d1, d2
	ldr	x9, [x8, #16]
	ldr	d0, [x9, #16]
	ldr	x9, [x8, #16]
	ldr	d1, [x9, #24]
	ldr	x9, [x8, #16]
	ldr	d3, [x9, #56]
	ldr	x9, [x8, #16]
	ldr	d4, [x9, #32]
	ldr	x8, [x8, #16]
	ldr	d5, [x8, #48]
	fmul	d4, d4, d5
	fnmsub	d1, d1, d3, d4
	fmadd	d0, d0, d1, d2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__Z3absB8ne200100d      ; -- Begin function _Z3absB8ne200100d
	.globl	__Z3absB8ne200100d
	.weak_definition	__Z3absB8ne200100d
	.p2align	2
__Z3absB8ne200100d:                     ; @_Z3absB8ne200100d
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	fabs	d0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_ ; -- Begin function _ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.globl	__ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.weak_definition	__ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.p2align	2
__ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_: ; @_ZNSt3__14swapB8ne200100IdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	d0, [x8]
	ldr	x8, [sp, #24]
	str	d0, [x8]
	ldr	d0, [sp, #8]
	ldr	x8, [sp, #16]
	str	d0, [x8]
	add	sp, sp, #32
	ret
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
	.asciz	"Matrix dimensions must match for multiplication"

l___func__._ZNR6MatrixIdE8multiplyERKS0_: ; @__func__._ZNR6MatrixIdE8multiplyERKS0_
	.asciz	"multiply"

l_.str.6:                               ; @.str.6
	.asciz	"matrix.hpp"

l_.str.7:                               ; @.str.7
	.asciz	"cols_ == other.rows_ && \"Matrix dimensions must match for multiplication\""

l_.str.8:                               ; @.str.8
	.asciz	"Matrix index out of bounds"

l___func__._ZNK6MatrixIdEclEmm:         ; @__func__._ZNK6MatrixIdEclEmm
	.asciz	"operator()"

l_.str.9:                               ; @.str.9
	.asciz	"col < cols_ && row < rows_ && \"Matrix index out of bounds\""

l_.str.10:                              ; @.str.10
	.asciz	"Row index out of bounds"

l___func__._ZNK6MatrixIdEixEm:          ; @__func__._ZNK6MatrixIdEixEm
	.asciz	"operator[]"

l_.str.11:                              ; @.str.11
	.asciz	"j < rows_ && \"Row index out of bounds\""

l_.str.12:                              ; @.str.12
	.asciz	"i < limit && \"Row index out of bounds\""

l_.str.13:                              ; @.str.13
	.asciz	"Matrix dimensions must match for addition"

l___func__._ZNR6MatrixIdE3addERKS0_:    ; @__func__._ZNR6MatrixIdE3addERKS0_
	.asciz	"add"

l_.str.14:                              ; @.str.14
	.asciz	"cols_ == other.cols_ && rows_ == other.rows_ && \"Matrix dimensions must match for addition\""

l_.str.15:                              ; @.str.15
	.asciz	"Matrix must be square to calculate determinant"

l___func__._ZNK6MatrixIdE3detEv:        ; @__func__._ZNK6MatrixIdE3detEv
	.asciz	"det"

l_.str.16:                              ; @.str.16
	.asciz	"cols_ == rows_ && \"Matrix must be square to calculate determinant\""

.subsections_via_symbols
