	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 26, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function _Z8generatemj
LCPI0_0:
	.quad	0x41f0000000000000              ## double 4294967296
LCPI0_1:
	.quad	0x3bf0000000000000              ## double 5.4210108624275222E-20
LCPI0_2:
	.quad	0x4000000000000000              ## double 2
LCPI0_3:
	.quad	0xbff0000000000000              ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z8generatemj
	.p2align	4, 0x90
__Z8generatemj:                         ## @_Z8generatemj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2520, %rsp                     ## imm = 0x9D8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $edx killed $edx def $rdx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%edx, -2552(%rbp)
	movl	$1, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	shrl	$30, %esi
	xorl	%edx, %esi
	imull	$1812433253, %esi, %edx         ## imm = 0x6C078965
	addl	%ecx, %edx
	incl	%edx
	movl	%edx, -2548(%rbp,%rcx,4)
	movl	%edx, %esi
	shrl	$30, %esi
	xorl	%edx, %esi
	imull	$1812433253, %esi, %edx         ## imm = 0x6C078965
	addl	%ecx, %edx
	addl	$2, %edx
	movl	%edx, -2544(%rbp,%rcx,4)
	movl	%edx, %esi
	shrl	$30, %esi
	xorl	%edx, %esi
	imull	$1812433253, %esi, %edx         ## imm = 0x6C078965
	leaq	(%rcx,%rdx), %rsi
	addq	$3, %rsi
	movl	%esi, -2540(%rbp,%rcx,4)
	cmpq	$620, %rcx                      ## imm = 0x26C
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	3(%rax), %rdx
	movl	%esi, %edi
	shrl	$30, %edi
	xorl	%esi, %edi
	imull	$1812433253, %edi, %esi         ## imm = 0x6C078965
	addl	%esi, %edx
	addl	%ecx, %esi
	addl	$4, %esi
	movl	%esi, -2536(%rbp,%rcx,4)
	addq	$4, %rax
	addq	$4, %rcx
	jmp	LBB0_1
LBB0_3:
	testq	%r14, %r14
	movq	%rbx, -48(%rbp)                 ## 8-byte Spill
	jle	LBB0_5
## %bb.4:
	movq	%r14, %r12
	imulq	%r14, %r12
	movq	%r12, %rax
	shrq	$61, %rax
	shlq	$3, %r12
	xorl	%edi, %edi
	negq	%rax
	sbbq	%rdi, %rdi
	orq	%r12, %rdi
	callq	__Znam
	movq	%rax, %r15
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	%r14, (%rbx)
	movq	%r14, 8(%rbx)
	imulq	%r14, %r14
	testq	%r14, %r14
	jne	LBB0_7
	jmp	LBB0_9
LBB0_5:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	imulq	%r14, %r14
	testq	%r14, %r14
	je	LBB0_9
LBB0_7:
	shlq	$3, %r14
	xorl	%eax, %eax
	movabsq	$945986875574848801, %rcx       ## imm = 0xD20D20D20D20D21
	movl	$-2147483648, %esi              ## imm = 0x80000000
	movl	$-1727483681, %edi              ## imm = 0x9908B0DF
	vmovsd	LCPI0_0(%rip), %xmm0            ## xmm0 = [4.294967296E+9,0.0E+0]
	vmovsd	LCPI0_1(%rip), %xmm1            ## xmm1 = [5.4210108624275222E-20,0.0E+0]
	vmovsd	LCPI0_2(%rip), %xmm2            ## xmm2 = [2.0E+0,0.0E+0]
	vmovsd	LCPI0_3(%rip), %xmm3            ## xmm3 = [-1.0E+0,0.0E+0]
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	leaq	1(%r8), %r10
	movq	%r10, %rdx
	shrq	$4, %rdx
	mulxq	%rcx, %rdx, %rdx
	shrq	%rdx
	imulq	$624, %rdx, %r11                ## imm = 0x270
	movl	-2552(%rbp,%r8,4), %edx
	andl	%esi, %edx
	subq	%r11, %r10
	movl	%r10d, %r9d
	movl	-2552(%rbp,%r9,4), %r12d
	movl	%r12d, %r13d
	andl	$2147483646, %r13d              ## imm = 0x7FFFFFFE
	orl	%edx, %r13d
	leaq	397(%r8), %rbx
	movq	%rbx, %rdx
	shrq	$4, %rdx
	mulxq	%rcx, %rdx, %rdx
	shrl	%edx
	imull	$624, %edx, %edx                ## imm = 0x270
	subl	%edx, %ebx
	shrl	%r13d
	testb	$1, %r12b
	movl	$0, %edx
	cmovnel	%edi, %edx
	xorl	-2552(%rbp,%rbx,4), %edx
	xorl	%r13d, %edx
	movl	%edx, %ebx
	shrl	$11, %ebx
	xorl	%edx, %ebx
	movl	%ebx, %r12d
	shll	$7, %r12d
	andl	$-1658038656, %r12d             ## imm = 0x9D2C5680
	movl	%edx, -2552(%rbp,%r8,4)
	xorl	%ebx, %r12d
	movl	%r12d, %ebx
	shll	$15, %ebx
	andl	$-272236544, %ebx               ## imm = 0xEFC60000
	xorl	%r12d, %ebx
	movl	%ebx, %edx
	shrl	$18, %edx
	negq	%r11
	addq	%r8, %r11
	addq	$2, %r11
	xorl	%ebx, %edx
	cmpq	$624, %r11                      ## imm = 0x270
	movl	$0, %r8d
	cmovneq	%r11, %r8
	movl	-2552(%rbp,%r9,4), %r11d
	movl	%r8d, %ebx
	andl	%esi, %r11d
	movl	-2552(%rbp,%rbx,4), %ebx
	movl	%ebx, %r12d
	andl	$2147483646, %r12d              ## imm = 0x7FFFFFFE
	orl	%r11d, %r12d
	leaq	-227(%r10), %r11
	cmpq	$227, %r10
	leaq	397(%r10), %r10
	cmovbq	%r10, %r11
	shrl	%r12d
	testb	$1, %bl
	movl	$0, %r10d
	cmovnel	%edi, %r10d
	xorl	-2552(%rbp,%r11,4), %r10d
	xorl	%r12d, %r10d
	movl	%r10d, %r11d
	shrl	$11, %r11d
	xorl	%r10d, %r11d
	movl	%r11d, %ebx
	shll	$7, %ebx
	andl	$-1658038656, %ebx              ## imm = 0x9D2C5680
	xorl	%r11d, %ebx
	movl	%ebx, %r11d
	shll	$15, %r11d
	andl	$-272236544, %r11d              ## imm = 0xEFC60000
	xorl	%ebx, %r11d
	vcvtsi2sd	%rdx, %xmm6, %xmm4
	movl	%r11d, %edx
	shrl	$18, %edx
	xorl	%r11d, %edx
	vcvtsi2sd	%rdx, %xmm6, %xmm5
	movl	%r10d, -2552(%rbp,%r9,4)
	vfmadd132sd	%xmm0, %xmm4, %xmm5     ## xmm5 = (xmm5 * xmm0) + xmm4
	vmulsd	%xmm1, %xmm5, %xmm4
	vfmadd213sd	%xmm3, %xmm2, %xmm4     ## xmm4 = (xmm2 * xmm4) + xmm3
	vmovsd	%xmm4, (%r15,%rax)
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	LBB0_8
LBB0_9:
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	addq	$2520, %rsp                     ## imm = 0x9D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI1_0:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI1_1:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$13, %edx
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movl	$128, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	leaq	L_.str.1(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movl	$128, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	leaq	L_.str.2(%rip), %rsi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rdi
	movl	$2000, %esi                     ## imm = 0x7D0
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movb	$10, -144(%rbp)
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	xorl	%r14d, %r14d
	leaq	-192(%rbp), %r13
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_1:                                 ##   in Loop: Header=BB1_2 Depth=1
	vmovsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vaddsd	-56(%rbp), %xmm0, %xmm0         ## 8-byte Folded Reload
	vmovsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	incl	%r14d
	cmpl	$2000, %r14d                    ## imm = 0x7D0
	je	LBB1_70
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_26 Depth 2
                                        ##     Child Loop BB1_30 Depth 2
                                        ##     Child Loop BB1_34 Depth 2
                                        ##     Child Loop BB1_36 Depth 2
                                        ##     Child Loop BB1_42 Depth 2
                                        ##     Child Loop BB1_46 Depth 2
                                        ##     Child Loop BB1_48 Depth 2
                                        ##     Child Loop BB1_57 Depth 2
                                        ##     Child Loop BB1_60 Depth 2
	leal	1(,%r14,2), %edx
	movl	$128, %esi
	leaq	-144(%rbp), %rdi
	callq	__Z8generatemj
	leal	2(,%r14,2), %edx
Ltmp0:
	movl	$128, %esi
	movq	%r13, %rdi
	callq	__Z8generatemj
Ltmp1:
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rbx
	movq	%rax, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	-128(%rbp), %r15
	testq	%r15, %r15
	je	LBB1_7
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=1
	imulq	%rax, %rbx
	leaq	(,%rbx,8), %r12
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	movq	%r12, %rdi
	movq	$-1, %rax
	cmovaq	%rax, %rdi
Ltmp3:
	callq	__Znam
Ltmp4:
## %bb.5:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	%rax, -72(%rbp)
	testq	%rbx, %rbx
	je	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_memmove
LBB1_7:                                 ##   in Loop: Header=BB1_2 Depth=1
Ltmp6:
	leaq	-88(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNR6MatrixIdE8multiplyERKS0_
Ltmp7:
## %bb.8:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rbx
	movq	%rax, -168(%rbp)
	movq	$0, -88(%rbp)
	movq	%rbx, -160(%rbp)
	movq	-72(%rbp), %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -80(%rbp)
	movq	%r13, -152(%rbp)
	testq	%r13, %r13
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	je	LBB1_13
## %bb.9:                               ##   in Loop: Header=BB1_2 Depth=1
	movq	%r14, -96(%rbp)                 ## 8-byte Spill
	movq	%r15, -48(%rbp)                 ## 8-byte Spill
	movq	%rbx, %r15
	imulq	%rax, %r15
	leaq	(,%r15,8), %r14
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r15
	movq	%r14, %rdi
	movq	$-1, %rax
	cmovaq	%rax, %rdi
Ltmp9:
	callq	__Znam
Ltmp10:
## %bb.10:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %r12
	testq	%r15, %r15
	je	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_memmove
LBB1_12:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movq	-96(%rbp), %r14                 ## 8-byte Reload
	jmp	LBB1_14
	.p2align	4, 0x90
LBB1_13:                                ##   in Loop: Header=BB1_2 Depth=1
	xorl	%r12d, %r12d
LBB1_14:                                ##   in Loop: Header=BB1_2 Depth=1
	leaq	-192(%rbp), %r13
Ltmp12:
	leaq	-216(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	__ZNK6MatrixIdE10transposedEv
Ltmp13:
## %bb.15:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	cmpq	-216(%rbp), %rax
	jne	LBB1_71
## %bb.16:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	-208(%rbp), %rbx
	jne	LBB1_71
## %bb.17:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rax
	imulq	-56(%rbp), %rax                 ## 8-byte Folded Reload
	movq	-200(%rbp), %rdi
	testq	%rax, %rax
	je	LBB1_49
## %bb.18:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	$4, %rax
	jb	LBB1_19
## %bb.20:                              ##   in Loop: Header=BB1_2 Depth=1
	leaq	(%rdi,%rax,8), %rcx
	cmpq	%rcx, %r12
	jae	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_2 Depth=1
	leaq	(%r12,%rax,8), %rcx
	cmpq	%rcx, %rdi
	jae	LBB1_23
LBB1_19:                                ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
LBB1_32:                                ##   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %esi
	subl	%ecx, %esi
	movq	%rcx, %rdx
	andl	$7, %esi
	je	LBB1_35
## %bb.33:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB1_34:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdi,%rdx,8), %xmm0            ## xmm0 = mem[0],zero
	vaddsd	(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rdx,8)
	incq	%rdx
	decq	%rsi
	jne	LBB1_34
LBB1_35:                                ##   in Loop: Header=BB1_2 Depth=1
	subq	%rax, %rcx
	cmpq	$-8, %rcx
	ja	LBB1_37
	.p2align	4, 0x90
LBB1_36:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdi,%rdx,8), %xmm0            ## xmm0 = mem[0],zero
	vaddsd	(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rdx,8)
	vmovsd	8(%rdi,%rdx,8), %xmm0           ## xmm0 = mem[0],zero
	vaddsd	8(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r12,%rdx,8)
	vmovsd	16(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	16(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r12,%rdx,8)
	vmovsd	24(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	24(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 24(%r12,%rdx,8)
	vmovsd	32(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	32(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 32(%r12,%rdx,8)
	vmovsd	40(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	40(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%r12,%rdx,8)
	vmovsd	48(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	48(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%r12,%rdx,8)
	vmovsd	56(%rdi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	56(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 56(%r12,%rdx,8)
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	LBB1_36
LBB1_37:                                ##   in Loop: Header=BB1_2 Depth=1
	cmpq	$4, %rax
	jae	LBB1_39
## %bb.38:                              ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	vmovsd	LCPI1_0(%rip), %xmm1            ## xmm1 = [5.0E-1,0.0E+0]
	jmp	LBB1_48
	.p2align	4, 0x90
LBB1_39:                                ##   in Loop: Header=BB1_2 Depth=1
	cmpq	$16, %rax
	jae	LBB1_41
## %bb.40:                              ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	jmp	LBB1_45
LBB1_23:                                ##   in Loop: Header=BB1_2 Depth=1
	cmpq	$16, %rax
	jae	LBB1_25
## %bb.24:                              ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	jmp	LBB1_29
LBB1_41:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	andq	$-16, %rcx
	xorl	%edx, %edx
	vbroadcastsd	LCPI1_0(%rip), %ymm4    ## ymm4 = [5.0E-1,5.0E-1,5.0E-1,5.0E-1]
	.p2align	4, 0x90
LBB1_42:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulpd	(%r12,%rdx,8), %ymm4, %ymm0
	vmulpd	32(%r12,%rdx,8), %ymm4, %ymm1
	vmulpd	64(%r12,%rdx,8), %ymm4, %ymm2
	vmulpd	96(%r12,%rdx,8), %ymm4, %ymm3
	vmovupd	%ymm0, (%r12,%rdx,8)
	vmovupd	%ymm1, 32(%r12,%rdx,8)
	vmovupd	%ymm2, 64(%r12,%rdx,8)
	vmovupd	%ymm3, 96(%r12,%rdx,8)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_42
## %bb.43:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	%rcx, %rax
	vmovsd	LCPI1_0(%rip), %xmm1            ## xmm1 = [5.0E-1,0.0E+0]
	je	LBB1_49
## %bb.44:                              ##   in Loop: Header=BB1_2 Depth=1
	testb	$12, %al
	je	LBB1_48
LBB1_45:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	%rax, %rcx
	andq	$-4, %rcx
	vbroadcastsd	LCPI1_0(%rip), %ymm1    ## ymm1 = [5.0E-1,5.0E-1,5.0E-1,5.0E-1]
	.p2align	4, 0x90
LBB1_46:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulpd	(%r12,%rdx,8), %ymm1, %ymm0
	vmovupd	%ymm0, (%r12,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_46
## %bb.47:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	%rcx, %rax
	vmovsd	LCPI1_0(%rip), %xmm1            ## xmm1 = [5.0E-1,0.0E+0]
	je	LBB1_49
	.p2align	4, 0x90
LBB1_48:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	(%r12,%rcx,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	LBB1_48
LBB1_49:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r12, -104(%rbp)
	testq	%rdi, %rdi
	je	LBB1_51
## %bb.50:                              ##   in Loop: Header=BB1_2 Depth=1
	vzeroupper
	callq	__ZdaPv
	movq	-112(%rbp), %rbx
LBB1_51:                                ##   in Loop: Header=BB1_2 Depth=1
	testq	%rbx, %rbx
	je	LBB1_55
## %bb.52:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rcx
	leaq	-1(%rbx), %rax
	cmpq	%rax, %rcx
	jbe	LBB1_72
## %bb.53:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$8, %rbx
	jae	LBB1_56
## %bb.54:                              ##   in Loop: Header=BB1_2 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	andl	$7, %ebx
	jne	LBB1_59
	jmp	LBB1_61
	.p2align	4, 0x90
LBB1_55:                                ##   in Loop: Header=BB1_2 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	LBB1_61
	.p2align	4, 0x90
LBB1_56:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rsi
	shlq	$6, %rsi
	addq	$64, %rsi
	movq	%rbx, %rdi
	andq	$-8, %rdi
	negq	%rdi
	leaq	8(,%rcx,8), %r8
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$7, %edx
	movq	%rax, %r9
	.p2align	4, 0x90
LBB1_57:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r9,%rcx,8), %r10
	vaddsd	8(%r9,%rcx,8), %xmm0, %xmm0
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%r8, %r10
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%r8, %r10
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%r8, %r10
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%r8, %r10
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%r8, %r10
	vaddsd	8(%r8,%r10), %xmm0, %xmm0
	addq	%rsi, %r9
	leaq	(%rdi,%rdx), %r10
	addq	$8, %r10
	addq	$8, %rdx
	cmpq	$7, %r10
	jne	LBB1_57
## %bb.58:                              ##   in Loop: Header=BB1_2 Depth=1
	addq	$-7, %rdx
	andl	$7, %ebx
	je	LBB1_61
LBB1_59:                                ##   in Loop: Header=BB1_2 Depth=1
	leaq	8(,%rcx,8), %rcx
	imulq	%rcx, %rdx
	addq	%rdx, %rax
	.p2align	4, 0x90
LBB1_60:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vaddsd	(%rax), %xmm0, %xmm0
	addq	%rcx, %rax
	decq	%rbx
	jne	LBB1_60
LBB1_61:                                ##   in Loop: Header=BB1_2 Depth=1
Ltmp21:
	vmovsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	leaq	-120(%rbp), %rdi
	vzeroupper
	callq	__ZNK6MatrixIdE3detEv
	vmovsd	%xmm0, -48(%rbp)                ## 8-byte Spill
Ltmp22:
## %bb.62:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_64
## %bb.63:                              ##   in Loop: Header=BB1_2 Depth=1
	callq	__ZdaPv
LBB1_64:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	-152(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_66
## %bb.65:                              ##   in Loop: Header=BB1_2 Depth=1
	callq	__ZdaPv
LBB1_66:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_68
## %bb.67:                              ##   in Loop: Header=BB1_2 Depth=1
	callq	__ZdaPv
LBB1_68:                                ##   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	je	LBB1_1
## %bb.69:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	callq	__ZdaPv
	jmp	LBB1_1
LBB1_25:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	andq	$-16, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB1_26:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	(%rdi,%rdx,8), %ymm0
	vmovupd	32(%rdi,%rdx,8), %ymm1
	vmovupd	64(%rdi,%rdx,8), %ymm2
	vmovupd	96(%rdi,%rdx,8), %ymm3
	vaddpd	(%r12,%rdx,8), %ymm0, %ymm0
	vaddpd	32(%r12,%rdx,8), %ymm1, %ymm1
	vaddpd	64(%r12,%rdx,8), %ymm2, %ymm2
	vaddpd	96(%r12,%rdx,8), %ymm3, %ymm3
	vmovupd	%ymm0, (%r12,%rdx,8)
	vmovupd	%ymm1, 32(%r12,%rdx,8)
	vmovupd	%ymm2, 64(%r12,%rdx,8)
	vmovupd	%ymm3, 96(%r12,%rdx,8)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_26
## %bb.27:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	%rcx, %rax
	je	LBB1_37
## %bb.28:                              ##   in Loop: Header=BB1_2 Depth=1
	testb	$12, %al
	je	LBB1_32
LBB1_29:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	%rax, %rcx
	andq	$-4, %rcx
	.p2align	4, 0x90
LBB1_30:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	(%rdi,%rdx,8), %ymm0
	vaddpd	(%r12,%rdx,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%r12,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_30
## %bb.31:                              ##   in Loop: Header=BB1_2 Depth=1
	cmpq	%rcx, %rax
	je	LBB1_37
	jmp	LBB1_32
LBB1_70:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	movl	$11, %edx
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rdi
	vmovsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	leaq	L_.str.4(%rip), %rsi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %rdi
	vmovsd	-48(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	$10, -144(%rbp)
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	xorl	%eax, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_71:
Ltmp15:
	leaq	L___func__._ZNR6MatrixIdE3addERKS0_(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.15(%rip), %rcx
	movl	$229, %edx
	callq	___assert_rtn
Ltmp16:
	jmp	LBB1_73
LBB1_72:
Ltmp18:
	leaq	L___func__._ZNK6MatrixIdEixEm(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.13(%rip), %rcx
	movl	$761, %edx                      ## imm = 0x2F9
	vzeroupper
	callq	___assert_rtn
Ltmp19:
LBB1_73:
	ud2
LBB1_74:
Ltmp5:
	movq	%rax, %r14
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_90
	jmp	LBB1_93
LBB1_75:
Ltmp11:
	movq	%rax, %r14
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	jmp	LBB1_87
LBB1_76:
Ltmp23:
	jmp	LBB1_81
LBB1_77:
Ltmp14:
	movq	%rax, %r14
	jmp	LBB1_84
LBB1_78:
Ltmp8:
	movq	%rax, %r14
	movq	-72(%rbp), %rdi
	jmp	LBB1_88
LBB1_79:
Ltmp2:
	movq	%rax, %r14
	movq	-128(%rbp), %r15
	testq	%r15, %r15
	je	LBB1_91
	jmp	LBB1_94
LBB1_80:
Ltmp20:
LBB1_81:
	movq	%rax, %r14
	movq	-104(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_86
	jmp	LBB1_87
LBB1_82:
Ltmp17:
	movq	%rax, %r14
	movq	-200(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_84
## %bb.83:
	callq	__ZdaPv
LBB1_84:
	testq	%r12, %r12
	je	LBB1_87
## %bb.85:
	movq	%r12, %rdi
LBB1_86:
	callq	__ZdaPv
LBB1_87:
	movq	-152(%rbp), %rdi
LBB1_88:
	testq	%rdi, %rdi
	jne	LBB1_92
## %bb.89:
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_93
LBB1_90:
	testq	%r15, %r15
	jne	LBB1_94
LBB1_91:
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB1_92:
	callq	__ZdaPv
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_90
LBB1_93:
	callq	__ZdaPv
	testq	%r15, %r15
	je	LBB1_91
LBB1_94:
	movq	%r15, %rdi
	callq	__ZdaPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ##     jumps to Ltmp5
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ## >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp4                    ##   Call between Ltmp4 and Ltmp6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ## >> Call Site 5 <<
	.uleb128 Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ##     jumps to Ltmp8
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ## >> Call Site 6 <<
	.uleb128 Ltmp10-Ltmp9                   ##   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ##     jumps to Ltmp11
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ## >> Call Site 7 <<
	.uleb128 Ltmp12-Ltmp10                  ##   Call between Ltmp10 and Ltmp12
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ## >> Call Site 8 <<
	.uleb128 Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ##     jumps to Ltmp14
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ## >> Call Site 9 <<
	.uleb128 Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ##     jumps to Ltmp23
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ## >> Call Site 10 <<
	.uleb128 Ltmp15-Ltmp22                  ##   Call between Ltmp22 and Ltmp15
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ## >> Call Site 11 <<
	.uleb128 Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ##     jumps to Ltmp17
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ## >> Call Site 12 <<
	.uleb128 Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ##     jumps to Ltmp20
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ## >> Call Site 13 <<
	.uleb128 Lfunc_end0-Ltmp19              ##   Call between Ltmp19 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdE10transposedEv   ## -- Begin function _ZNK6MatrixIdE10transposedEv
	.weak_def_can_be_hidden	__ZNK6MatrixIdE10transposedEv
	.p2align	4, 0x90
__ZNK6MatrixIdE10transposedEv:          ## @_ZNK6MatrixIdE10transposedEv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r12
	movabsq	$2305843009213693951, %rbx      ## imm = 0x1FFFFFFFFFFFFFFF
	movq	(%rsi), %r13
	movq	8(%rsi), %r14
	testq	%r14, %r14
	setle	%al
	testq	%r13, %r13
	setle	%cl
	orb	%al, %cl
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	jne	LBB2_2
## %bb.1:
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	cmpq	%rbx, %rax
	movq	$-1, %rdi
	cmovbeq	%rcx, %rdi
	callq	__Znam
	movq	%rax, 16(%r12)
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	callq	___bzero
	movq	%r14, (%r12)
	movq	%r13, 8(%r12)
	movq	%r14, %r12
	movq	%r13, %rdx
	jmp	LBB2_3
LBB2_2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r12)
	movq	$0, 16(%r12)
	testq	%r14, %r14
	sete	%al
	testq	%r13, %r13
	sete	%cl
	movq	$0, -48(%rbp)                   ## 8-byte Folded Spill
	orb	%al, %cl
	movl	$0, %r12d
	movl	$0, %edx
	jne	LBB2_18
LBB2_3:
	movq	16(%r15), %rsi
	leaq	-1(%r13), %rcx
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	leaq	(%r14,%rcx), %rax
	movq	-48(%rbp), %r10                 ## 8-byte Reload
	leaq	(%r10,%rax,8), %rax
	addq	%r14, %rbx
	imulq	%r13, %rbx
	addq	%rcx, %rbx
	leaq	(%rsi,%rbx,8), %rdi
	addq	$8, %rdi
	leaq	1(%rcx), %r9
	cmpq	%rdi, %r10
	setb	%dil
	cmpq	%rax, %rsi
	setb	%al
	movq	%r9, -56(%rbp)                  ## 8-byte Spill
                                        ## kill: def $r9d killed $r9d killed $r9 def $r9
	andl	$15, %r9d
	movl	$16, %r8d
	cmovneq	%r9, %r8
	cmpq	$15, %rcx
	ja	LBB2_11
## %bb.4:
	leaq	(,%r12,8), %rcx
	leaq	(,%r13,8), %rdi
	xorl	%r8d, %r8d
	leaq	L_.str.12(%rip), %r11
	movq	%r10, %r9
	.p2align	4, 0x90
LBB2_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_7 Depth 2
	cmpq	%r8, %r12
	jbe	LBB2_35
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movq	%r9, %r10
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_7:                                 ##   Parent Loop BB2_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %rdx
	je	LBB2_8
## %bb.9:                               ##   in Loop: Header=BB2_7 Depth=2
	vmovsd	(%rsi,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r10)
	incq	%rax
	addq	%rcx, %r10
	cmpq	%rax, %r13
	jne	LBB2_7
## %bb.10:                              ##   in Loop: Header=BB2_5 Depth=1
	incq	%r8
	addq	$8, %r9
	addq	%rdi, %rsi
	cmpq	%r14, %r8
	jne	LBB2_5
	jmp	LBB2_18
LBB2_11:
	cmpq	$1, %r12
	jne	LBB2_12
## %bb.19:
	andb	%al, %dil
	movq	%r13, %rax
	shrq	$60, %rax
	andl	$1, %eax
	orb	%dil, %al
	je	LBB2_20
## %bb.27:
	leaq	(,%r12,8), %rcx
	leaq	(,%r13,8), %rdi
	xorl	%r8d, %r8d
	leaq	L_.str.12(%rip), %r11
	movq	-48(%rbp), %r9                  ## 8-byte Reload
	.p2align	4, 0x90
LBB2_28:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_30 Depth 2
	cmpq	%r8, %r12
	jbe	LBB2_35
## %bb.29:                              ##   in Loop: Header=BB2_28 Depth=1
	movq	%r9, %r10
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_30:                                ##   Parent Loop BB2_28 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %rdx
	je	LBB2_8
## %bb.31:                              ##   in Loop: Header=BB2_30 Depth=2
	vmovsd	(%rsi,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r10)
	incq	%rax
	addq	%rcx, %r10
	cmpq	%rax, %r13
	jne	LBB2_30
## %bb.32:                              ##   in Loop: Header=BB2_28 Depth=1
	incq	%r8
	addq	$8, %r9
	addq	%rdi, %rsi
	cmpq	%r14, %r8
	jne	LBB2_28
	jmp	LBB2_18
LBB2_12:
	leaq	(,%r12,8), %rcx
	leaq	(,%r13,8), %rdi
	xorl	%r8d, %r8d
	leaq	L_.str.12(%rip), %r11
	movq	-48(%rbp), %r9                  ## 8-byte Reload
	.p2align	4, 0x90
LBB2_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_15 Depth 2
	cmpq	%r8, %r12
	jbe	LBB2_35
## %bb.14:                              ##   in Loop: Header=BB2_13 Depth=1
	movq	%r9, %rax
	xorl	%r10d, %r10d
	.p2align	4, 0x90
LBB2_15:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%r10, %rdx
	je	LBB2_8
## %bb.16:                              ##   in Loop: Header=BB2_15 Depth=2
	vmovsd	(%rsi,%r10,8), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax)
	incq	%r10
	addq	%rcx, %rax
	cmpq	%r10, %r13
	jne	LBB2_15
## %bb.17:                              ##   in Loop: Header=BB2_13 Depth=1
	incq	%r8
	addq	$8, %r9
	addq	%rdi, %rsi
	cmpq	%r14, %r8
	jne	LBB2_13
	jmp	LBB2_18
LBB2_8:
	movl	$750, %edx                      ## imm = 0x2EE
	movq	%r11, %rcx
LBB2_38:
Ltmp24:
	leaq	L___func__._ZNK6MatrixIdEixEm(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	vzeroupper
	callq	___assert_rtn
Ltmp25:
## %bb.39:
	ud2
LBB2_20:
	movq	-56(%rbp), %r9                  ## 8-byte Reload
	subq	%r8, %r9
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	leaq	96(%rcx), %r10
	leaq	96(%rsi), %r11
	leaq	(%r8,%r13), %r15
	shlq	$3, %r13
	movq	%r12, %rax
	imulq	%r9, %rax
	leaq	(%rcx,%rax,8), %rcx
	leaq	(,%r12,8), %rbx
	leal	(,%r8,8), %eax
	subq	%rax, %rsi
	addq	%rdx, %r8
	xorl	%edi, %edi
	movq	%r12, -72(%rbp)                 ## 8-byte Spill
	.p2align	4, 0x90
LBB2_21:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_23 Depth 2
                                        ##     Child Loop BB2_25 Depth 2
	cmpq	%rdi, %r12
	jbe	LBB2_35
## %bb.22:                              ##   in Loop: Header=BB2_21 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_23:                                ##   Parent Loop BB2_21 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovups	-96(%r11,%rax,8), %ymm0
	vmovups	-64(%r11,%rax,8), %ymm1
	vmovups	-32(%r11,%rax,8), %ymm2
	vmovups	(%r11,%rax,8), %ymm3
	vmovups	%ymm0, -96(%r10,%rax,8)
	vmovups	%ymm1, -64(%r10,%rax,8)
	vmovups	%ymm2, -32(%r10,%rax,8)
	vmovups	%ymm3, (%r10,%rax,8)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	LBB2_23
## %bb.24:                              ##   in Loop: Header=BB2_21 Depth=1
	movq	%rcx, %r12
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	.p2align	4, 0x90
LBB2_25:                                ##   Parent Loop BB2_21 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %r8
	je	LBB2_26
## %bb.33:                              ##   in Loop: Header=BB2_25 Depth=2
	vmovsd	(%rsi,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12)
	incq	%rax
	addq	%rbx, %r12
	cmpq	%rax, %r15
	jne	LBB2_25
## %bb.34:                              ##   in Loop: Header=BB2_21 Depth=1
	incq	%rdi
	addq	$8, %r10
	addq	%r13, %r11
	addq	$8, %rcx
	addq	%r13, %rsi
	cmpq	%r14, %rdi
	movq	-72(%rbp), %r12                 ## 8-byte Reload
	jne	LBB2_21
LBB2_18:
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB2_26:
	movl	$750, %edx                      ## imm = 0x2EE
	leaq	L_.str.12(%rip), %rcx
	jmp	LBB2_38
LBB2_35:
	testq	%rdx, %rdx
	je	LBB2_36
## %bb.37:
	leaq	L_.str.13(%rip), %rcx
	movl	$743, %edx                      ## imm = 0x2E7
	jmp	LBB2_38
LBB2_36:
	leaq	L_.str.12(%rip), %rcx
	movl	$750, %edx                      ## imm = 0x2EE
	jmp	LBB2_38
LBB2_40:
Ltmp26:
	movq	%rax, %r14
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB2_42
## %bb.41:
	callq	__ZdaPv
LBB2_42:
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception1:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.uleb128 Ltmp24-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp24
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1            ## >> Call Site 2 <<
	.uleb128 Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin1            ##     jumps to Ltmp26
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin1            ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp25              ##   Call between Ltmp25 and Lfunc_end1
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function _ZNK6MatrixIdE3detEv
LCPI3_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI3_2:
	.quad	0x3e112e0be826d695              ## double 1.0000000000000001E-9
LCPI3_4:
	.quad	0x7fffffffffffffff              ## double NaN
LCPI3_5:
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
LCPI3_1:
	.quad	0x7fffffffffffffff              ## double NaN
	.quad	0x7fffffffffffffff              ## double NaN
LCPI3_3:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK6MatrixIdE3detEv
	.weak_def_can_be_hidden	__ZNK6MatrixIdE3detEv
	.p2align	4, 0x90
__ZNK6MatrixIdE3detEv:                  ## @_ZNK6MatrixIdE3detEv
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	(%rdi), %r12
	cmpq	8(%rdi), %r12
	jne	LBB3_54
## %bb.1:
	cmpq	$3, %r12
	ja	LBB3_7
## %bb.2:
	leaq	LJTI3_0(%rip), %rax
	movslq	(%rax,%r12,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB3_3:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	LBB3_52
LBB3_4:
	movq	16(%rdi), %rax
	vmovsd	(%rax), %xmm1                   ## xmm1 = mem[0],zero
	vmovsd	16(%rax), %xmm0                 ## xmm0 = mem[0],zero
	vmulsd	8(%rax), %xmm0, %xmm0
	vfmsub231sd	24(%rax), %xmm1, %xmm0  ## xmm0 = (xmm1 * mem) - xmm0
	jmp	LBB3_52
LBB3_5:
	movq	16(%rdi), %rax
	vmovsd	24(%rax), %xmm1                 ## xmm1 = mem[0],zero
	vmovsd	32(%rax), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	64(%rax), %xmm2                 ## xmm2 = mem[0],zero
	vmovsd	40(%rax), %xmm3                 ## xmm3 = mem[0],zero
	vmovsd	56(%rax), %xmm4                 ## xmm4 = mem[0],zero
	vmulsd	%xmm3, %xmm4, %xmm5
	vfmsub231sd	%xmm2, %xmm0, %xmm5     ## xmm5 = (xmm0 * xmm2) - xmm5
	vmovsd	48(%rax), %xmm6                 ## xmm6 = mem[0],zero
	vmulsd	%xmm3, %xmm6, %xmm3
	vfmsub231sd	%xmm2, %xmm1, %xmm3     ## xmm3 = (xmm1 * xmm2) - xmm3
	vmulsd	8(%rax), %xmm3, %xmm2
	vfmsub231sd	(%rax), %xmm5, %xmm2    ## xmm2 = (xmm5 * mem) - xmm2
	vmulsd	%xmm0, %xmm6, %xmm0
	vfmsub231sd	%xmm4, %xmm1, %xmm0     ## xmm0 = (xmm1 * xmm4) - xmm0
	vfmadd132sd	16(%rax), %xmm2, %xmm0  ## xmm0 = (xmm0 * mem) + xmm2
	jmp	LBB3_52
LBB3_6:
	movq	16(%rdi), %rax
	vmovsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	jmp	LBB3_52
LBB3_7:
	movq	16(%rdi), %r14
	testq	%r14, %r14
	je	LBB3_10
## %bb.8:
	movq	%r12, %rbx
	imulq	%r12, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	leaq	(,%rbx,8), %r15
	xorl	%edi, %edi
	negq	%rax
	sbbq	%rdi, %rdi
	orq	%r15, %rdi
	callq	__Znam
	testq	%rbx, %rbx
	je	LBB3_11
## %bb.9:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rax, %rbx
	callq	_memmove
	movq	%rbx, %rdi
	jmp	LBB3_12
LBB3_10:
	xorl	%edi, %edi
	jmp	LBB3_12
LBB3_11:
	movq	%rax, %rdi
LBB3_12:
	leaq	(,%r12,8), %rax
	leaq	8(,%r12,8), %rcx
	movq	%rcx, -112(%rbp)                ## 8-byte Spill
	movq	%r12, %rcx
	imulq	%r12, %rcx
	leaq	(%rdi,%rcx,8), %rcx
	movq	%rcx, -184(%rbp)                ## 8-byte Spill
	leaq	(%rdi,%r12,8), %rsi
	leaq	32(%rdi), %rcx
	movq	%rcx, -168(%rbp)                ## 8-byte Spill
	leaq	96(%rdi), %r8
	leaq	(%rdi,%r12,8), %r9
	addq	$96, %r9
	vmovsd	LCPI3_0(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0]
	xorl	%edx, %edx
	leaq	(%rdi,%rax), %rcx
	movq	%rcx, -192(%rbp)                ## 8-byte Spill
	vmovddup	LCPI3_4(%rip), %xmm10           ## xmm10 = [NaN,NaN]
                                        ## xmm10 = mem[0,0]
	vmovddup	LCPI3_4(%rip), %xmm1            ## xmm1 = [NaN,NaN]
                                        ## xmm1 = mem[0,0]
	vmovsd	LCPI3_2(%rip), %xmm2            ## xmm2 = [1.0000000000000001E-9,0.0E+0]
	vmovddup	LCPI3_5(%rip), %xmm3            ## xmm3 = [-0.0E+0,-0.0E+0]
                                        ## xmm3 = mem[0,0]
	movq	%rdi, %r11
	movq	%rdi, %r14
	movq	%rdi, %r10
	movq	%r12, %rbx
	movq	%rsi, %r15
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB3_15
	.p2align	4, 0x90
LBB3_13:                                ##   in Loop: Header=BB3_15 Depth=1
	movq	-176(%rbp), %rcx                ## 8-byte Reload
	vmovsd	(%rcx,%r15,8), %xmm4            ## xmm4 = mem[0],zero
	movq	-112(%rbp), %rcx                ## 8-byte Reload
	movq	-152(%rbp), %rsi                ## 8-byte Reload
	movq	-144(%rbp), %r9                 ## 8-byte Reload
	movq	-128(%rbp), %r10                ## 8-byte Reload
	movq	-200(%rbp), %rbx                ## 8-byte Reload
	movq	-160(%rbp), %r15                ## 8-byte Reload
	movq	-136(%rbp), %r13                ## 8-byte Reload
LBB3_14:                                ##   in Loop: Header=BB3_15 Depth=1
	vmulsd	%xmm4, %xmm0, %xmm0
	addq	%rcx, %r15
	decq	%rbx
	addq	%rcx, -168(%rbp)                ## 8-byte Folded Spill
	addq	$8, %r10
	addq	%rax, %r14
	addq	%rcx, %r8
	addq	%rcx, %r9
	addq	%rcx, %r11
	addq	%rax, %rsi
	movq	%r13, %rdx
	cmpq	%r12, %r13
	je	LBB3_48
LBB3_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_18 Depth 2
                                        ##     Child Loop BB3_29 Depth 2
                                        ##     Child Loop BB3_32 Depth 2
                                        ##     Child Loop BB3_37 Depth 2
                                        ##       Child Loop BB3_41 Depth 3
                                        ##       Child Loop BB3_45 Depth 3
                                        ##       Child Loop BB3_47 Depth 3
	leaq	1(%rdx), %r13
	cmpq	%r12, %r13
	jae	LBB3_21
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=1
	movq	%r10, -128(%rbp)                ## 8-byte Spill
	movq	%r9, -144(%rbp)                 ## 8-byte Spill
	movq	%rsi, -152(%rbp)                ## 8-byte Spill
	movq	%r13, %rsi
	movq	%rbx, %r13
	andq	$-4, %r13
	movq	%rbx, %rcx
	andq	$-16, %rcx
	movq	%rbx, -200(%rbp)                ## 8-byte Spill
	movq	%rbx, %r10
	andq	$-8, %r10
	movq	%r12, %r9
	subq	%rdx, %r9
	movq	%r9, -96(%rbp)                  ## 8-byte Spill
	movq	-112(%rbp), %rbx                ## 8-byte Reload
	imulq	%rdx, %rbx
	leaq	(%rdi,%rbx), %r9
	movq	%r9, -104(%rbp)                 ## 8-byte Spill
	movq	%rax, %r9
	imulq	%rsi, %r9
	addq	%rdi, %r9
	movq	%r9, -64(%rbp)                  ## 8-byte Spill
	leaq	(%rdi,%rdx,8), %r9
	addq	-192(%rbp), %rbx                ## 8-byte Folded Reload
	movq	%rbx, -120(%rbp)                ## 8-byte Spill
	movq	%r15, -160(%rbp)                ## 8-byte Spill
	movq	%r15, %rbx
	movq	%rsi, -136(%rbp)                ## 8-byte Spill
	movq	%rsi, %r15
	movq	%rdx, -72(%rbp)                 ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-168(%rbp), %rsi                ## 8-byte Reload
	jmp	LBB3_18
	.p2align	4, 0x90
LBB3_17:                                ##   in Loop: Header=BB3_18 Depth=2
	incq	%r15
	addq	%rax, %rbx
	movq	%rdx, %rdi
	cmpq	%r12, %r15
	jae	LBB3_22
LBB3_18:                                ##   Parent Loop BB3_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %r12
	jbe	LBB3_53
## %bb.19:                              ##   in Loop: Header=BB3_18 Depth=2
	vmovsd	(%rbx), %xmm4                   ## xmm4 = mem[0],zero
	vandpd	%xmm4, %xmm10, %xmm4
	movq	%rdi, %rdx
	imulq	%r12, %rdx
	vmovsd	(%r9,%rdx,8), %xmm5             ## xmm5 = mem[0],zero
	vandpd	%xmm5, %xmm10, %xmm5
	vucomisd	%xmm5, %xmm4
	movq	%r15, %rdx
	ja	LBB3_17
## %bb.20:                              ##   in Loop: Header=BB3_18 Depth=2
	movq	%rdi, %rdx
	jmp	LBB3_17
	.p2align	4, 0x90
LBB3_21:                                ##   in Loop: Header=BB3_15 Depth=1
	movq	%rdx, %rcx
	imulq	%r12, %rcx
	leaq	(%rdi,%rcx,8), %rcx
	vmovsd	(%rcx,%rdx,8), %xmm4            ## xmm4 = mem[0],zero
	vandpd	%xmm1, %xmm4, %xmm5
	vucomisd	%xmm5, %xmm2
	movq	-112(%rbp), %rcx                ## 8-byte Reload
	jbe	LBB3_14
	jmp	LBB3_50
	.p2align	4, 0x90
LBB3_22:                                ##   in Loop: Header=BB3_15 Depth=1
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	cmpq	%r15, %rdx
	jne	LBB3_24
## %bb.23:                              ##   in Loop: Header=BB3_15 Depth=1
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	jmp	LBB3_34
	.p2align	4, 0x90
LBB3_24:                                ##   in Loop: Header=BB3_15 Depth=1
	cmpq	%rdx, %r12
	jbe	LBB3_55
## %bb.25:                              ##   in Loop: Header=BB3_15 Depth=1
	movq	%r15, %rbx
	cmpq	$7, -96(%rbp)                   ## 8-byte Folded Reload
	jbe	LBB3_31
## %bb.26:                              ##   in Loop: Header=BB3_15 Depth=1
	movq	%rax, %r15
	imulq	%rdx, %r15
	leaq	8(,%rdx,8), %rdi
	imulq	%r12, %rdi
	addq	-56(%rbp), %rdi                 ## 8-byte Folded Reload
	cmpq	%rdi, -104(%rbp)                ## 8-byte Folded Reload
	jae	LBB3_28
## %bb.27:                              ##   in Loop: Header=BB3_15 Depth=1
	addq	%r15, %r9
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	cmpq	-64(%rbp), %r9                  ## 8-byte Folded Reload
	jb	LBB3_31
LBB3_28:                                ##   in Loop: Header=BB3_15 Depth=1
	movq	-96(%rbp), %r9                  ## 8-byte Reload
	andq	$-8, %r9
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	leaq	(%rdi,%r9), %rbx
	addq	-128(%rbp), %r15                ## 8-byte Folded Reload
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB3_29:                                ##   Parent Loop BB3_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	-32(%rsi,%rdi,8), %ymm4
	vmovupd	(%rsi,%rdi,8), %ymm5
	vmovupd	(%r15,%rdi,8), %ymm6
	vmovupd	32(%r15,%rdi,8), %ymm7
	vmovupd	%ymm6, -32(%rsi,%rdi,8)
	vmovupd	%ymm7, (%rsi,%rdi,8)
	vmovupd	%ymm4, (%r15,%rdi,8)
	vmovupd	%ymm5, 32(%r15,%rdi,8)
	addq	$8, %rdi
	cmpq	%rdi, %r10
	jne	LBB3_29
## %bb.30:                              ##   in Loop: Header=BB3_15 Depth=1
	cmpq	%r9, -96(%rbp)                  ## 8-byte Folded Reload
	je	LBB3_33
	.p2align	4, 0x90
LBB3_31:                                ##   in Loop: Header=BB3_15 Depth=1
	imulq	%r12, %rdx
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	leaq	(%rsi,%rdx,8), %rdx
	.p2align	4, 0x90
LBB3_32:                                ##   Parent Loop BB3_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rbx,8), %xmm4            ## xmm4 = mem[0],zero
	vmovsd	(%rdx,%rbx,8), %xmm5            ## xmm5 = mem[0],zero
	vmovsd	%xmm5, (%r14,%rbx,8)
	vmovsd	%xmm4, (%rdx,%rbx,8)
	incq	%rbx
	cmpq	%r12, %rbx
	jb	LBB3_32
LBB3_33:                                ##   in Loop: Header=BB3_15 Depth=1
	vxorpd	%xmm3, %xmm0, %xmm0
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	-72(%rbp), %r15                 ## 8-byte Reload
LBB3_34:                                ##   in Loop: Header=BB3_15 Depth=1
	movq	%r15, %rdx
	imulq	%r12, %rdx
	leaq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)                ## 8-byte Spill
	vmovsd	(%rdx,%r15,8), %xmm4            ## xmm4 = mem[0],zero
	vandpd	%xmm1, %xmm4, %xmm4
	vucomisd	%xmm4, %xmm2
	movq	-160(%rbp), %r10                ## 8-byte Reload
	ja	LBB3_50
## %bb.35:                              ##   in Loop: Header=BB3_15 Depth=1
	testq	%rax, %rax
	sets	-41(%rbp)                       ## 1-byte Folded Spill
	movq	-96(%rbp), %rbx                 ## 8-byte Reload
	cmpq	$4, %rbx
	setb	%dl
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	cmpq	%rsi, -120(%rbp)                ## 8-byte Folded Reload
	setb	%sil
	movq	-104(%rbp), %r9                 ## 8-byte Reload
	cmpq	-184(%rbp), %r9                 ## 8-byte Folded Reload
	setb	%r9b
	andb	%sil, %r9b
	movq	%rbx, %rsi
	andq	$-16, %rsi
	movq	%rsi, -64(%rbp)                 ## 8-byte Spill
	addq	%r15, %rsi
	movq	%rsi, -208(%rbp)                ## 8-byte Spill
	andq	$-4, %rbx
	movq	%rbx, -120(%rbp)                ## 8-byte Spill
	leaq	(%r15,%rbx), %rsi
	movq	%rsi, -216(%rbp)                ## 8-byte Spill
	orb	-41(%rbp), %dl                  ## 1-byte Folded Reload
	orb	%r9b, %dl
	movb	%dl, -104(%rbp)                 ## 1-byte Spill
	movq	-152(%rbp), %rbx                ## 8-byte Reload
	movq	%r10, %rsi
	movq	-144(%rbp), %rdx                ## 8-byte Reload
	movq	-136(%rbp), %r9                 ## 8-byte Reload
	jmp	LBB3_37
	.p2align	4, 0x90
LBB3_36:                                ##   in Loop: Header=BB3_37 Depth=2
	incq	%r9
	addq	%rax, %rdx
	addq	%rax, %rsi
	addq	%rax, %rbx
	cmpq	%r12, %r9
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	jae	LBB3_13
LBB3_37:                                ##   Parent Loop BB3_15 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB3_41 Depth 3
                                        ##       Child Loop BB3_45 Depth 3
                                        ##       Child Loop BB3_47 Depth 3
	movq	%r9, %r10
	imulq	%r12, %r10
	leaq	(%rdi,%r10,8), %r10
	vmovsd	(%r10,%r15,8), %xmm4            ## xmm4 = mem[0],zero
	vxorpd	%xmm3, %xmm4, %xmm4
	movq	-176(%rbp), %rdi                ## 8-byte Reload
	vdivsd	(%rdi,%r15,8), %xmm4, %xmm4
	movq	%r15, %r10
	cmpb	$0, -104(%rbp)                  ## 1-byte Folded Reload
	jne	LBB3_47
## %bb.38:                              ##   in Loop: Header=BB3_37 Depth=2
	cmpq	$16, -96(%rbp)                  ## 8-byte Folded Reload
	jae	LBB3_40
## %bb.39:                              ##   in Loop: Header=BB3_37 Depth=2
	xorl	%r15d, %r15d
	jmp	LBB3_44
	.p2align	4, 0x90
LBB3_40:                                ##   in Loop: Header=BB3_37 Depth=2
	vbroadcastsd	%xmm4, %ymm5
	xorl	%r10d, %r10d
	.p2align	4, 0x90
LBB3_41:                                ##   Parent Loop BB3_15 Depth=1
                                        ##     Parent Loop BB3_37 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	-96(%r8,%r10,8), %ymm6
	vmovupd	-64(%r8,%r10,8), %ymm7
	vmovupd	-32(%r8,%r10,8), %ymm8
	vmovupd	(%r8,%r10,8), %ymm9
	vfmadd213pd	-96(%rdx,%r10,8), %ymm5, %ymm6 ## ymm6 = (ymm5 * ymm6) + mem
	vfmadd213pd	-64(%rdx,%r10,8), %ymm5, %ymm7 ## ymm7 = (ymm5 * ymm7) + mem
	vfmadd213pd	-32(%rdx,%r10,8), %ymm5, %ymm8 ## ymm8 = (ymm5 * ymm8) + mem
	vfmadd213pd	(%rdx,%r10,8), %ymm5, %ymm9 ## ymm9 = (ymm5 * ymm9) + mem
	vmovupd	%ymm6, -96(%rdx,%r10,8)
	vmovupd	%ymm7, -64(%rdx,%r10,8)
	vmovupd	%ymm8, -32(%rdx,%r10,8)
	vmovupd	%ymm9, (%rdx,%r10,8)
	addq	$16, %r10
	cmpq	%r10, %rcx
	jne	LBB3_41
## %bb.42:                              ##   in Loop: Header=BB3_37 Depth=2
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	cmpq	%rdi, -96(%rbp)                 ## 8-byte Folded Reload
	je	LBB3_36
## %bb.43:                              ##   in Loop: Header=BB3_37 Depth=2
	movq	-64(%rbp), %r15                 ## 8-byte Reload
	movq	-208(%rbp), %r10                ## 8-byte Reload
	testb	$12, -96(%rbp)                  ## 1-byte Folded Reload
	je	LBB3_47
LBB3_44:                                ##   in Loop: Header=BB3_37 Depth=2
	vbroadcastsd	%xmm4, %ymm5
	.p2align	4, 0x90
LBB3_45:                                ##   Parent Loop BB3_15 Depth=1
                                        ##     Parent Loop BB3_37 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	(%r11,%r15,8), %ymm6
	vfmadd213pd	(%rsi,%r15,8), %ymm5, %ymm6 ## ymm6 = (ymm5 * ymm6) + mem
	vmovupd	%ymm6, (%rsi,%r15,8)
	addq	$4, %r15
	cmpq	%r15, %r13
	jne	LBB3_45
## %bb.46:                              ##   in Loop: Header=BB3_37 Depth=2
	movq	-216(%rbp), %r10                ## 8-byte Reload
	movq	-120(%rbp), %rdi                ## 8-byte Reload
	cmpq	%rdi, -96(%rbp)                 ## 8-byte Folded Reload
	je	LBB3_36
	.p2align	4, 0x90
LBB3_47:                                ##   Parent Loop BB3_15 Depth=1
                                        ##     Parent Loop BB3_37 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%r14,%r10,8), %xmm5            ## xmm5 = mem[0],zero
	vfmadd213sd	(%rbx,%r10,8), %xmm4, %xmm5 ## xmm5 = (xmm4 * xmm5) + mem
	vmovsd	%xmm5, (%rbx,%r10,8)
	incq	%r10
	cmpq	%r12, %r10
	jb	LBB3_47
	jmp	LBB3_36
LBB3_50:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	LBB3_51
LBB3_48:
	testq	%rdi, %rdi
	je	LBB3_52
LBB3_51:
	vmovapd	%xmm0, -96(%rbp)                ## 16-byte Spill
	vzeroupper
	callq	__ZdaPv
	vmovapd	-96(%rbp), %xmm0                ## 16-byte Reload
LBB3_52:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB3_53:
Ltmp27:
	leaq	L___func__._ZNK6MatrixIdEixEm(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.12(%rip), %rcx
	movl	$750, %edx                      ## imm = 0x2EE
	vzeroupper
	callq	___assert_rtn
Ltmp28:
	jmp	LBB3_56
LBB3_54:
	callq	__ZNK6MatrixIdE3detEv.cold.1
LBB3_55:
Ltmp30:
	leaq	L___func__._ZNK6MatrixIdEixEm(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.12(%rip), %rcx
	movl	$750, %edx                      ## imm = 0x2EE
	vzeroupper
	callq	___assert_rtn
Ltmp31:
LBB3_56:
	ud2
LBB3_57:
Ltmp32:
	jmp	LBB3_59
LBB3_58:
Ltmp29:
LBB3_59:
	movq	%rax, %r14
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZdaPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L3_0_set_3, LBB3_3-LJTI3_0
.set L3_0_set_6, LBB3_6-LJTI3_0
.set L3_0_set_4, LBB3_4-LJTI3_0
.set L3_0_set_5, LBB3_5-LJTI3_0
LJTI3_0:
	.long	L3_0_set_3
	.long	L3_0_set_6
	.long	L3_0_set_4
	.long	L3_0_set_5
	.end_data_region
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception2:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.uleb128 Ltmp27-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp27
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin2            ## >> Call Site 2 <<
	.uleb128 Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin2            ##     jumps to Ltmp29
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin2            ## >> Call Site 3 <<
	.uleb128 Ltmp30-Ltmp28                  ##   Call between Ltmp28 and Ltmp30
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin2            ## >> Call Site 4 <<
	.uleb128 Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin2            ##     jumps to Ltmp32
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin2            ## >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp31              ##   Call between Ltmp31 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp33:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp34:
## %bb.1:
	cmpb	$1, -80(%rbp)
	jne	LBB4_10
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r8
	movq	40(%rbx,%rax), %r12
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB4_7
## %bb.3:
Ltmp36:
	leaq	-56(%rbp), %rdi
	movq	%r8, -64(%rbp)                  ## 8-byte Spill
	movq	%r8, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp37:
## %bb.4:
Ltmp38:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp39:
## %bb.5:
	movq	(%rax), %rcx
Ltmp40:
	movq	%rax, %rdi
	movl	$32, %esi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)                  ## 1-byte Spill
Ltmp41:
## %bb.6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax                 ## 1-byte Folded Reload
	movq	-64(%rbp), %r8                  ## 8-byte Reload
	movl	%eax, 144(%r8)
LBB4_7:
	andl	$176, %r13d
	addq	%r15, %r14
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp43:
	movsbl	%al, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp44:
## %bb.8:
	testq	%rax, %rax
	jne	LBB4_10
## %bb.9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp46:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp47:
LBB4_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB4_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_12:
Ltmp48:
	jmp	LBB4_15
LBB4_13:
Ltmp42:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB4_16
LBB4_14:
Ltmp45:
LBB4_15:
	movq	%rax, %r14
LBB4_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB4_18
LBB4_17:
Ltmp35:
	movq	%rax, %r14
LBB4_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
Ltmp49:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp50:
## %bb.19:
	callq	___cxa_end_catch
	jmp	LBB4_11
LBB4_20:
Ltmp51:
	movq	%rax, %rbx
Ltmp52:
	callq	___cxa_end_catch
Ltmp53:
## %bb.21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_22:
Ltmp54:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception3:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp33-Lfunc_begin3            ## >> Call Site 1 <<
	.uleb128 Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin3            ##     jumps to Ltmp35
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp36-Lfunc_begin3            ## >> Call Site 2 <<
	.uleb128 Ltmp37-Ltmp36                  ##   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp45-Lfunc_begin3            ##     jumps to Ltmp45
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp38-Lfunc_begin3            ## >> Call Site 3 <<
	.uleb128 Ltmp41-Ltmp38                  ##   Call between Ltmp38 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin3            ##     jumps to Ltmp42
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp43-Lfunc_begin3            ## >> Call Site 4 <<
	.uleb128 Ltmp44-Ltmp43                  ##   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin3            ##     jumps to Ltmp45
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp46-Lfunc_begin3            ## >> Call Site 5 <<
	.uleb128 Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin3            ##     jumps to Ltmp48
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp47-Lfunc_begin3            ## >> Call Site 6 <<
	.uleb128 Ltmp49-Ltmp47                  ##   Call between Ltmp47 and Ltmp49
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin3            ## >> Call Site 7 <<
	.uleb128 Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin3            ##     jumps to Ltmp51
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin3            ## >> Call Site 8 <<
	.uleb128 Ltmp52-Ltmp50                  ##   Call between Ltmp50 and Ltmp52
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin3            ## >> Call Site 9 <<
	.uleb128 Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin3            ##     jumps to Ltmp54
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp53-Lfunc_begin3            ## >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp53              ##   Call between Ltmp53 and Lfunc_end3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end3:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2, 0x0
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB5_20
## %bb.1:
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdi, %rbx
	movl	%r9d, -68(%rbp)                 ## 4-byte Spill
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r13d, %r13d
	subq	%rax, %rcx
	cmovgq	%rcx, %r13
	movq	%rdx, -88(%rbp)                 ## 8-byte Spill
	movq	%rdx, %r14
	subq	%rsi, %r14
	testq	%r14, %r14
	jle	LBB5_3
## %bb.2:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*96(%rax)
	cmpq	%r14, %rax
	jne	LBB5_20
LBB5_3:
	testq	%r13, %r13
	jle	LBB5_16
## %bb.4:
	cmpq	$23, %r13
	jae	LBB5_8
## %bb.5:
	leal	(,%r13,2), %eax
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %r14
	jmp	LBB5_9
LBB5_8:
	movq	%r13, %rax
	orq	$7, %rax
	leaq	1(%rax), %rcx
	cmpq	$23, %rax
	movq	%r12, -80(%rbp)                 ## 8-byte Spill
	movl	$26, %r12d
	cmovneq	%rcx, %r12
	movq	%r12, %rdi
	callq	__Znwm
	movq	%rax, %r14
	movq	%rax, -48(%rbp)
	incq	%r12
	movq	%r12, -64(%rbp)
	movq	-80(%rbp), %r12                 ## 8-byte Reload
	movq	%r13, -56(%rbp)
LBB5_9:
	movzbl	-68(%rbp), %esi                 ## 1-byte Folded Reload
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	_memset
	movb	$0, (%r14,%r13)
	testb	$1, -64(%rbp)
	je	LBB5_11
## %bb.10:
	movq	-48(%rbp), %rsi
	jmp	LBB5_12
LBB5_11:
	leaq	-63(%rbp), %rsi
LBB5_12:
	movq	(%rbx), %rax
Ltmp55:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*96(%rax)
Ltmp56:
## %bb.13:
	movq	%rax, %r14
	testb	$1, -64(%rbp)
	je	LBB5_15
## %bb.14:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB5_15:
	cmpq	%r13, %r14
	jne	LBB5_20
LBB5_16:
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB5_18
## %bb.17:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB5_20
LBB5_18:
	movq	$0, 24(%r12)
	jmp	LBB5_21
LBB5_20:
	xorl	%ebx, %ebx
LBB5_21:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_22:
Ltmp57:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB5_24
## %bb.23:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB5_24:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception4:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ## >> Call Site 1 <<
	.uleb128 Ltmp55-Lfunc_begin4            ##   Call between Lfunc_begin4 and Ltmp55
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin4            ## >> Call Site 2 <<
	.uleb128 Ltmp56-Ltmp55                  ##   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp57-Lfunc_begin4            ##     jumps to Ltmp57
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin4            ## >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp56              ##   Call between Ltmp56 and Lfunc_end4
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNR6MatrixIdE8multiplyERKS0_  ## -- Begin function _ZNR6MatrixIdE8multiplyERKS0_
	.weak_def_can_be_hidden	__ZNR6MatrixIdE8multiplyERKS0_
	.p2align	4, 0x90
__ZNR6MatrixIdE8multiplyERKS0_:         ## @_ZNR6MatrixIdE8multiplyERKS0_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	(%rdi), %r13
	cmpq	8(%rsi), %r13
	jne	LBB7_56
## %bb.1:
	movq	%rsi, %r15
	movabsq	$2305843009213693951, %r10      ## imm = 0x1FFFFFFFFFFFFFFF
	movq	(%rsi), %rbx
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	movq	8(%rdi), %rsi
	testq	%rbx, %rbx
	setle	%al
	testq	%rsi, %rsi
	setle	%cl
	xorl	%edi, %edi
	orb	%al, %cl
	movl	$0, %r14d
	movl	$0, %ecx
	movq	%rsi, -48(%rbp)                 ## 8-byte Spill
	jne	LBB7_3
## %bb.2:
	movq	%rsi, %rax
	imulq	%rbx, %rax
	leaq	(,%rax,8), %r12
	cmpq	%r10, %rax
	movq	$-1, %rdi
	cmovbeq	%r12, %rdi
	callq	__Znam
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	___bzero
	movabsq	$2305843009213693951, %r10      ## imm = 0x1FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movq	%rsi, %rdi
	movq	%rbx, %rcx
LBB7_3:
	testq	%rsi, %rsi
	je	LBB7_38
## %bb.4:
	leaq	-1(%rbx), %rax
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	leaq	1(%rax), %rdx
	andl	$15, %edx
	movl	$16, %eax
	cmovneq	%rdx, %rax
	testq	%r13, %r13
	je	LBB7_5
## %bb.10:
	testq	%rbx, %rbx
	movq	-72(%rbp), %rdx                 ## 8-byte Reload
	je	LBB7_17
## %bb.11:
	movq	16(%r15), %r15
	leaq	(,%rcx,8), %r8
	movq	-56(%rbp), %rsi                 ## 8-byte Reload
	leaq	8(,%rsi,8), %r9
	addq	%r13, %r10
	imulq	%rbx, %r10
	addq	%rsi, %r10
	leaq	(%r15,%r10,8), %r10
	addq	$8, %r10
	movq	%r10, -136(%rbp)                ## 8-byte Spill
	negq	%rax
	leaq	(%rsi,%rax), %r10
	incq	%r10
	movq	16(%rdx), %rdx
	leaq	(,%r13,8), %rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	leaq	96(%r14), %r12
	leaq	96(%r15), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	(,%rbx,8), %r11
	movq	%rbx, %rax
	shrq	$60, %rax
	andl	$1, %eax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	addq	%r14, %r9
	movq	%r9, -144(%rbp)                 ## 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rax
	movq	%rdx, -96(%rbp)                 ## 8-byte Spill
	movq	%rdx, %r9
	xorl	%edx, %edx
	movq	%r15, -120(%rbp)                ## 8-byte Spill
	movq	%r14, -64(%rbp)                 ## 8-byte Spill
	movq	%rdi, -128(%rbp)                ## 8-byte Spill
	movq	%r8, -112(%rbp)                 ## 8-byte Spill
	jmp	LBB7_12
	.p2align	4, 0x90
LBB7_55:                                ##   in Loop: Header=BB7_12 Depth=1
	movq	-152(%rbp), %rdx                ## 8-byte Reload
	incq	%rdx
	addq	-104(%rbp), %r9                 ## 8-byte Folded Reload
	movq	-112(%rbp), %r8                 ## 8-byte Reload
	addq	%r8, %r12
	addq	%r8, %rax
	cmpq	-48(%rbp), %rdx                 ## 8-byte Folded Reload
	movq	-64(%rbp), %r14                 ## 8-byte Reload
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	-120(%rbp), %r15                ## 8-byte Reload
	je	LBB7_38
LBB7_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_14 Depth 2
                                        ##     Child Loop BB7_42 Depth 2
                                        ##       Child Loop BB7_49 Depth 3
                                        ##       Child Loop BB7_45 Depth 3
	movq	%r8, %rsi
	imulq	%rdx, %rsi
	movq	%rdx, %r8
	leaq	(%r14,%rsi), %rdx
	addq	-144(%rbp), %rsi                ## 8-byte Folded Reload
	cmpq	-136(%rbp), %rdx                ## 8-byte Folded Reload
	setb	%dl
	cmpq	%rsi, %r15
	setb	%sil
	cmpq	%r8, %rdi
	movq	%r8, -152(%rbp)                 ## 8-byte Spill
	jbe	LBB7_13
## %bb.41:                              ##   in Loop: Header=BB7_12 Depth=1
	movq	%r8, %rdi
	imulq	%r13, %rdi
	andb	%sil, %dl
	orb	-80(%rbp), %dl                  ## 1-byte Folded Reload
	movq	-96(%rbp), %rsi                 ## 8-byte Reload
	leaq	(%rsi,%rdi,8), %r8
	cmpq	$16, -56(%rbp)                  ## 8-byte Folded Reload
	setb	%sil
	orb	%dl, %sil
	movq	%r15, %rdx
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	xorl	%r15d, %r15d
	jmp	LBB7_42
	.p2align	4, 0x90
LBB7_47:                                ##   in Loop: Header=BB7_42 Depth=2
	incq	%r15
	addq	%r11, %rdi
	addq	%r11, %rdx
	cmpq	%r13, %r15
	je	LBB7_55
LBB7_42:                                ##   Parent Loop BB7_12 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB7_49 Depth 3
                                        ##       Child Loop BB7_45 Depth 3
	vmovsd	(%r8,%r15,8), %xmm1             ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jne	LBB7_43
	jnp	LBB7_47
LBB7_43:                                ##   in Loop: Header=BB7_42 Depth=2
	testb	$1, %sil
	je	LBB7_48
## %bb.44:                              ##   in Loop: Header=BB7_42 Depth=2
	xorl	%r14d, %r14d
	jmp	LBB7_45
LBB7_48:                                ##   in Loop: Header=BB7_42 Depth=2
	vbroadcastsd	%xmm1, %ymm2
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB7_49:                                ##   Parent Loop BB7_12 Depth=1
                                        ##     Parent Loop BB7_42 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	-96(%rdi,%r14,8), %ymm3
	vmovupd	-64(%rdi,%r14,8), %ymm4
	vmovupd	-32(%rdi,%r14,8), %ymm5
	vmovupd	(%rdi,%r14,8), %ymm6
	vfmadd213pd	-96(%r12,%r14,8), %ymm2, %ymm3 ## ymm3 = (ymm2 * ymm3) + mem
	vfmadd213pd	-64(%r12,%r14,8), %ymm2, %ymm4 ## ymm4 = (ymm2 * ymm4) + mem
	vfmadd213pd	-32(%r12,%r14,8), %ymm2, %ymm5 ## ymm5 = (ymm2 * ymm5) + mem
	vfmadd213pd	(%r12,%r14,8), %ymm2, %ymm6 ## ymm6 = (ymm2 * ymm6) + mem
	vmovupd	%ymm3, -96(%r12,%r14,8)
	vmovupd	%ymm4, -64(%r12,%r14,8)
	vmovupd	%ymm5, -32(%r12,%r14,8)
	vmovupd	%ymm6, (%r12,%r14,8)
	addq	$16, %r14
	cmpq	%r14, %r10
	jne	LBB7_49
## %bb.50:                              ##   in Loop: Header=BB7_42 Depth=2
	movq	%r10, %r14
	.p2align	4, 0x90
LBB7_45:                                ##   Parent Loop BB7_12 Depth=1
                                        ##     Parent Loop BB7_42 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpq	%r14, %rcx
	je	LBB7_15
## %bb.46:                              ##   in Loop: Header=BB7_45 Depth=3
	vmovsd	(%rdx,%r14,8), %xmm2            ## xmm2 = mem[0],zero
	vfmadd213sd	(%rax,%r14,8), %xmm1, %xmm2 ## xmm2 = (xmm1 * xmm2) + mem
	vmovsd	%xmm2, (%rax,%r14,8)
	incq	%r14
	cmpq	%r14, %rbx
	jne	LBB7_45
	jmp	LBB7_47
	.p2align	4, 0x90
LBB7_13:                                ##   in Loop: Header=BB7_12 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB7_14:                                ##   Parent Loop BB7_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r9,%rdx,8), %xmm1             ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jne	LBB7_15
	jp	LBB7_15
## %bb.54:                              ##   in Loop: Header=BB7_14 Depth=2
	incq	%rdx
	cmpq	%rdx, %r13
	jne	LBB7_14
	jmp	LBB7_55
LBB7_5:
	movl	%esi, %eax
	andl	$7, %eax
	cmpq	$8, %rsi
	jb	LBB7_8
## %bb.6:
	andq	$-8, %rsi
	.p2align	4, 0x90
LBB7_7:                                 ## =>This Inner Loop Header: Depth=1
	addq	$-8, %rsi
	jne	LBB7_7
LBB7_8:
	testq	%rax, %rax
	je	LBB7_38
	.p2align	4, 0x90
LBB7_9:                                 ## =>This Inner Loop Header: Depth=1
	decq	%rax
	jne	LBB7_9
	jmp	LBB7_38
LBB7_15:
Ltmp58:
	leaq	L___func__._ZNK6MatrixIdEclEmm(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.10(%rip), %rcx
	movl	$686, %edx                      ## imm = 0x2AE
	vzeroupper
	callq	___assert_rtn
Ltmp59:
## %bb.16:
	ud2
LBB7_17:
	movq	%rdi, %r9
	cmpq	$1, %rsi
	jne	LBB7_18
LBB7_32:
	testb	$1, -48(%rbp)                   ## 1-byte Folded Reload
	movq	%r9, %rdi
	je	LBB7_38
## %bb.33:
	movl	%r13d, %eax
	andl	$7, %eax
	cmpq	$8, %r13
	jb	LBB7_36
## %bb.34:
	andq	$-8, %r13
	.p2align	4, 0x90
LBB7_35:                                ## =>This Inner Loop Header: Depth=1
	addq	$-8, %r13
	jne	LBB7_35
LBB7_36:
	testq	%rax, %rax
	je	LBB7_38
	.p2align	4, 0x90
LBB7_37:                                ## =>This Inner Loop Header: Depth=1
	decq	%rax
	jne	LBB7_37
LBB7_38:
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	movq	%rcx, (%rbx)
	movq	%rdi, 8(%rbx)
	movq	16(%rbx), %rdi
	movq	%r14, 16(%rbx)
	testq	%rdi, %rdi
	je	LBB7_40
## %bb.39:
	vzeroupper
	callq	__ZdaPv
LBB7_40:
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB7_18:
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	andq	$-2, %rax
	movl	%r13d, %edx
	andl	$7, %edx
	movq	%r13, %rsi
	andq	$-8, %rsi
	xorl	%edi, %edi
	jmp	LBB7_19
	.p2align	4, 0x90
LBB7_31:                                ##   in Loop: Header=BB7_19 Depth=1
	addq	$2, %rdi
	cmpq	%rax, %rdi
	je	LBB7_32
LBB7_19:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_21 Depth 2
                                        ##     Child Loop BB7_24 Depth 2
                                        ##     Child Loop BB7_27 Depth 2
                                        ##     Child Loop BB7_30 Depth 2
	cmpq	$8, %r13
	jb	LBB7_22
## %bb.20:                              ##   in Loop: Header=BB7_19 Depth=1
	movq	%rsi, %r8
	.p2align	4, 0x90
LBB7_21:                                ##   Parent Loop BB7_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addq	$-8, %r8
	jne	LBB7_21
LBB7_22:                                ##   in Loop: Header=BB7_19 Depth=1
	testq	%rdx, %rdx
	je	LBB7_25
## %bb.23:                              ##   in Loop: Header=BB7_19 Depth=1
	movq	%rdx, %r8
	.p2align	4, 0x90
LBB7_24:                                ##   Parent Loop BB7_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decq	%r8
	jne	LBB7_24
LBB7_25:                                ##   in Loop: Header=BB7_19 Depth=1
	cmpq	$8, %r13
	jb	LBB7_28
## %bb.26:                              ##   in Loop: Header=BB7_19 Depth=1
	movq	%rsi, %r8
	.p2align	4, 0x90
LBB7_27:                                ##   Parent Loop BB7_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addq	$-8, %r8
	jne	LBB7_27
LBB7_28:                                ##   in Loop: Header=BB7_19 Depth=1
	testb	$7, %r13b
	je	LBB7_31
## %bb.29:                              ##   in Loop: Header=BB7_19 Depth=1
	movq	%rdx, %r8
	.p2align	4, 0x90
LBB7_30:                                ##   Parent Loop BB7_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decq	%r8
	jne	LBB7_30
	jmp	LBB7_31
LBB7_56:
	callq	__ZNR6MatrixIdE8multiplyERKS0_.cold.1
LBB7_51:
Ltmp60:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB7_53
## %bb.52:
	callq	__ZdaPv
LBB7_53:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception5:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.uleb128 Ltmp58-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp58
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin5            ## >> Call Site 2 <<
	.uleb128 Ltmp59-Ltmp58                  ##   Call between Ltmp58 and Ltmp59
	.uleb128 Ltmp60-Lfunc_begin5            ##     jumps to Ltmp60
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin5            ## >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp59              ##   Call between Ltmp59 and Lfunc_end5
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNK6MatrixIdE3detEv.cold.1
__ZNK6MatrixIdE3detEv.cold.1:           ## @_ZNK6MatrixIdE3detEv.cold.1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L___func__._ZNK6MatrixIdE3detEv(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.17(%rip), %rcx
	movl	$293, %edx                      ## imm = 0x125
	callq	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNR6MatrixIdE8multiplyERKS0_.cold.1
__ZNR6MatrixIdE8multiplyERKS0_.cold.1:  ## @_ZNR6MatrixIdE8multiplyERKS0_.cold.1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L___func__._ZNR6MatrixIdE8multiplyERKS0_(%rip), %rdi
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.8(%rip), %rcx
	movl	$262, %edx                      ## imm = 0x106
	callq	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Matrix size: "

L_.str.1:                               ## @.str.1
	.asciz	"x"

L_.str.2:                               ## @.str.2
	.asciz	", rounds: "

L_.str.3:                               ## @.str.3
	.asciz	"Trace sum: "

L_.str.4:                               ## @.str.4
	.asciz	", last det: "

L___func__._ZNR6MatrixIdE8multiplyERKS0_: ## @__func__._ZNR6MatrixIdE8multiplyERKS0_
	.asciz	"multiply"

L_.str.7:                               ## @.str.7
	.asciz	"matrix.hpp"

L_.str.8:                               ## @.str.8
	.asciz	"cols_ == other.rows_ && \"Matrix dimensions must match for multiplication\""

L___func__._ZNK6MatrixIdEclEmm:         ## @__func__._ZNK6MatrixIdEclEmm
	.asciz	"operator()"

L_.str.10:                              ## @.str.10
	.asciz	"col < cols_ && row < rows_ && \"Matrix index out of bounds\""

L___func__._ZNK6MatrixIdEixEm:          ## @__func__._ZNK6MatrixIdEixEm
	.asciz	"operator[]"

L_.str.12:                              ## @.str.12
	.asciz	"j < rows_ && \"Row index out of bounds\""

L_.str.13:                              ## @.str.13
	.asciz	"i < limit && \"Row index out of bounds\""

L___func__._ZNR6MatrixIdE3addERKS0_:    ## @__func__._ZNR6MatrixIdE3addERKS0_
	.asciz	"add"

L_.str.15:                              ## @.str.15
	.asciz	"cols_ == other.cols_ && rows_ == other.rows_ && \"Matrix dimensions must match for addition\""

L___func__._ZNK6MatrixIdE3detEv:        ## @__func__._ZNK6MatrixIdE3detEv
	.asciz	"det"

L_.str.17:                              ## @.str.17
	.asciz	"cols_ == rows_ && \"Matrix must be square to calculate determinant\""

.subsections_via_symbols
