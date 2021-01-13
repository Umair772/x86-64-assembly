	.file	"fp.c"
	.text
	.section	.rodata
.LC3:
	.string	"a = %f\n"
.LC4:
	.string	"b = %f\n"
.LC5:
	.string	"c = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	cvtss2sd	-8(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	cvtss2sd	-12(%rbp), %xmm0
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1249902594
	.align 4
.LC1:
	.long	1258291201
	.align 4
.LC2:
	.long	1266679808
	.ident	"GCC: (GNU) 7.3.1 20180303 (Red Hat 7.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
