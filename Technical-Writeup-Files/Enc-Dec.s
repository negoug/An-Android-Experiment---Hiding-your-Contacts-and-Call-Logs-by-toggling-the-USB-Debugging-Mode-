	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"Enc-Dec.c"
	.text
	.align	2
	.global	encrypt
	.type	encrypt, %function
encrypt:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #184
	str	r0, [fp, #-168]
	str	r1, [fp, #-172]
	str	r2, [fp, #-176]
	str	r3, [fp, #-180]
	ldr	r0, [fp, #-168]
	mov	r1, #0
	mov	r2, #2
	bl	fseek(PLT)
	ldr	r0, [fp, #-168]
	bl	ftell(PLT)
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-168]
	mov	r1, #0
	mov	r2, #0
	bl	fseek(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #1
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-12]
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	fread(PLT)
	bl	EVP_aes_128_gcm(PLT)
	mov	r2, r0
	sub	r3, fp, #164
	mov	r0, r3
	mov	r1, r2
	ldr	r2, [fp, #-180]
	ldr	r3, [fp, #-176]
	bl	EVP_EncryptInit(PLT)
	sub	r1, fp, #164
	sub	r2, fp, #20
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	mov	r0, r1
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	bl	EVP_EncryptUpdate(PLT)
	ldr	r3, [fp, #-20]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	sub	r1, fp, #164
	sub	r3, fp, #24
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	EVP_EncryptFinal(PLT)
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r0, [fp, #-16]
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-172]
	bl	fwrite(PLT)
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	encrypt, .-encrypt
	.align	2
	.global	decrypt
	.type	decrypt, %function
decrypt:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #184
	str	r0, [fp, #-168]
	str	r1, [fp, #-172]
	str	r2, [fp, #-176]
	str	r3, [fp, #-180]
	ldr	r0, [fp, #-168]
	mov	r1, #0
	mov	r2, #2
	bl	fseek(PLT)
	ldr	r0, [fp, #-168]
	bl	ftell(PLT)
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-168]
	mov	r1, #0
	mov	r2, #0
	bl	fseek(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-12]
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	fread(PLT)
	bl	EVP_aes_128_gcm(PLT)
	mov	r2, r0
	sub	r3, fp, #164
	mov	r0, r3
	mov	r1, r2
	ldr	r2, [fp, #-180]
	ldr	r3, [fp, #-176]
	bl	EVP_DecryptInit(PLT)
	sub	r1, fp, #164
	sub	r2, fp, #20
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	mov	r0, r1
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	bl	EVP_DecryptUpdate(PLT)
	ldr	r3, [fp, #-20]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	sub	r1, fp, #164
	sub	r3, fp, #24
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	EVP_DecryptFinal(PLT)
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r0, [fp, #-16]
	mov	r1, #1
	mov	r2, r3
	ldr	r3, [fp, #-172]
	bl	fwrite(PLT)
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	decrypt, .-decrypt
	.section	.rodata
	.align	2
.LC0:
	.ascii	"1\000"
	.align	2
.LC1:
	.ascii	"rb\000"
	.align	2
.LC2:
	.ascii	"wb\000"
	.align	2
.LC3:
	.ascii	"2\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8
.LPIC0:
	add	r3, pc, r3
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8+4
.LPIC1:
	add	r3, pc, r3
	mov	r1, r3
	bl	fopen(PLT)
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8+8
.LPIC2:
	add	r3, pc, r3
	mov	r1, r3
	bl	fopen(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	encrypt(PLT)
	ldr	r0, [fp, #-8]
	bl	fclose(PLT)
	ldr	r0, [fp, #-12]
	bl	fclose(PLT)
	b	.L5
.L4:
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8+12
.LPIC3:
	add	r3, pc, r3
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8+16
.LPIC4:
	add	r3, pc, r3
	mov	r1, r3
	bl	fopen(PLT)
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L8+20
.LPIC5:
	add	r3, pc, r3
	mov	r1, r3
	bl	fopen(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	decrypt(PLT)
	ldr	r0, [fp, #-8]
	bl	fclose(PLT)
	ldr	r0, [fp, #-12]
	bl	fclose(PLT)
	b	.L5
.L6:
	mov	r0, #0
	bl	exit(PLT)
.L5:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC1-(.LPIC4+8)
	.word	.LC2-(.LPIC5+8)
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9 20150123 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
