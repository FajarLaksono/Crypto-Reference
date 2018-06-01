	.file	"DEKHash.c"
	.intel_syntax noprefix
	.text
	.globl	_DEKHash
	.def	_DEKHash;	.scl	2;	.type	32;	.endef
_DEKHash:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-8], 0
	jmp	L2
L3:
	mov	eax, DWORD PTR [ebp-4]
	rol	eax, 5
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	xor	eax, edx
	mov	DWORD PTR [ebp-4], eax
	add	DWORD PTR [ebp+8], 1
	add	DWORD PTR [ebp-8], 1
L2:
	mov	eax, DWORD PTR [ebp-8]
	cmp	eax, DWORD PTR [ebp+12]
	jb	L3
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.ident	"GCC: (tdm64-1) 5.1.0"
