	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.text
	.align	2
	.set	nomips16
	.ent	output_buffer_put
	.type	output_buffer_put, @function
output_buffer_put:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$2,%gp_rel(output_buffer_size)($28)
	lui	$7,%hi(output_buffer)
	addiu	$7,$7,%lo(output_buffer)
	addiu	$3,$2,1
	slt	$5,$3,1024
	addu	$2,$2,$7
	sw	$3,%gp_rel(output_buffer_size)($28)
	.set	noreorder
	.set	nomacro
	bne	$5,$0,$L4
	sb	$4,0($2)
	.set	macro
	.set	reorder

 #APP
 # 42 "././lib.c" 1
	li	$4,1
	move	$5,$7
	move	$6,$3
	li	$2,4004
	syscall
	move	$3,$2
	
 # 0 "" 2
 #NO_APP
	sw	$0,%gp_rel(output_buffer_size)($28)
$L4:
	j	$31
	.end	output_buffer_put
	.size	output_buffer_put, .-output_buffer_put
	.align	2
	.globl	mylib_wait
	.set	nomips16
	.ent	mylib_wait
	.type	mylib_wait, @function
mylib_wait:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-8
	move	$2,$0
	sw	$0,0($sp)
	li	$4,40			# 0x28
$L7:
	lw	$3,0($sp)
	#nop
	addu	$3,$3,$2
	addiu	$2,$2,1
	sw	$3,0($sp)
	bne	$2,$4,$L7
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

	.end	mylib_wait
	.size	mylib_wait, .-mylib_wait
	.align	2
	.globl	mylib_display_dec
	.set	nomips16
	.ent	mylib_display_dec
	.type	mylib_display_dec, @function
mylib_display_dec:
	.frame	$sp,1056,$31		# vars= 1024, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-1056
	sw	$31,1052($sp)
	sw	$18,1048($sp)
	sw	$17,1044($sp)
	.set	noreorder
	.set	nomacro
	bltz	$4,$L34
	sw	$16,1040($sp)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$4,$0,$L35
	li	$2,48			# 0x30
	.set	macro
	.set	reorder

	sw	$2,16($sp)
	li	$4,48			# 0x30
	move	$16,$0
	addiu	$9,$sp,16
	addiu	$16,$16,-1
$L37:
	sll	$17,$16,2
	addu	$17,$9,$17
	.set	noreorder
	.set	nomacro
	j	$L14
	li	$18,-1			# 0xffffffffffffffff
	.set	macro
	.set	reorder

$L18:
	lw	$4,0($17)
	addiu	$17,$17,-4
$L14:
	jal	output_buffer_put
	.set	noreorder
	.set	nomacro
	bne	$16,$18,$L18
	addiu	$16,$16,-1
	.set	macro
	.set	reorder

	lw	$31,1052($sp)
	lw	$18,1048($sp)
	lw	$17,1044($sp)
	lw	$16,1040($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,1056
	.set	macro
	.set	reorder

$L34:
	subu	$4,$0,$4
	li	$11,1			# 0x1
$L11:
	li	$6,1717960704			# 0x66660000
	addiu	$6,$6,26215
	mult	$4,$6
	sra	$5,$4,31
	addiu	$9,$sp,16
	move	$3,$9
	move	$8,$0
	li	$10,1			# 0x1
	li	$12,2			# 0x2
	li	$13,3			# 0x3
	li	$14,4			# 0x4
	li	$15,5			# 0x5
	li	$17,6			# 0x6
	mfhi	$2
	sra	$2,$2,2
	subu	$2,$2,$5
	sll	$7,$2,1
	sll	$2,$2,3
	addu	$2,$7,$2
	subu	$2,$4,$2
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L20
	li	$18,7			# 0x7
	.set	macro
	.set	reorder

$L36:
	beq	$2,$10,$L21
	beq	$2,$12,$L22
	beq	$2,$13,$L23
	beq	$2,$14,$L24
	beq	$2,$15,$L25
	beq	$2,$17,$L26
	beq	$2,$18,$L27
	xori	$2,$2,0x8
	sltu	$2,$0,$2
	addiu	$2,$2,56
$L15:
	mult	$4,$6
	sw	$2,0($3)
	addiu	$16,$8,1
	mfhi	$4
	sra	$4,$4,2
	subu	$4,$4,$5
	.set	noreorder
	.set	nomacro
	bne	$4,$0,$L16
	addiu	$3,$3,4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$11,$0,$L17
	sll	$2,$16,2
	.set	macro
	.set	reorder

	addu	$2,$9,$2
	li	$3,45			# 0x2d
	sw	$3,0($2)
	addiu	$16,$8,2
$L17:
	addiu	$16,$16,-1
	sll	$2,$16,2
	addu	$2,$9,$2
	lw	$4,0($2)
	.set	noreorder
	.set	nomacro
	j	$L37
	addiu	$16,$16,-1
	.set	macro
	.set	reorder

$L16:
	mult	$4,$6
	sra	$5,$4,31
	mfhi	$2
	sra	$2,$2,2
	subu	$2,$2,$5
	sll	$7,$2,1
	sll	$2,$2,3
	addu	$2,$7,$2
	subu	$2,$4,$2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L36
	move	$8,$16
	.set	macro
	.set	reorder

$L20:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,48			# 0x30
	.set	macro
	.set	reorder

$L21:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,49			# 0x31
	.set	macro
	.set	reorder

$L22:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,50			# 0x32
	.set	macro
	.set	reorder

$L23:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,51			# 0x33
	.set	macro
	.set	reorder

$L24:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,52			# 0x34
	.set	macro
	.set	reorder

$L35:
	.set	noreorder
	.set	nomacro
	j	$L11
	move	$11,$0
	.set	macro
	.set	reorder

$L25:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,53			# 0x35
	.set	macro
	.set	reorder

$L26:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,54			# 0x36
	.set	macro
	.set	reorder

$L27:
	.set	noreorder
	.set	nomacro
	j	$L15
	li	$2,55			# 0x37
	.set	macro
	.set	reorder

	.end	mylib_display_dec
	.size	mylib_display_dec, .-mylib_display_dec
	.align	2
	.globl	mylib_display_hex
	.set	nomips16
	.ent	mylib_display_hex
	.type	mylib_display_hex, @function
mylib_display_hex:
	.frame	$sp,64,$31		# vars= 32, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-64
	addiu	$2,$sp,16
	sw	$17,56($sp)
	sw	$16,52($sp)
	sw	$31,60($sp)
	move	$17,$2
	addiu	$5,$sp,48
	li	$6,1			# 0x1
	li	$7,2			# 0x2
	li	$8,3			# 0x3
	li	$9,4			# 0x4
	li	$10,5			# 0x5
	li	$11,6			# 0x6
	li	$12,7			# 0x7
	li	$13,8			# 0x8
	li	$14,9			# 0x9
	li	$15,10			# 0xa
	li	$16,11			# 0xb
	li	$24,12			# 0xc
	li	$25,13			# 0xd
$L41:
	andi	$3,$4,0xf
	beq	$3,$0,$L44
	beq	$3,$6,$L45
	beq	$3,$7,$L46
	beq	$3,$8,$L47
	beq	$3,$9,$L48
	beq	$3,$10,$L49
	beq	$3,$11,$L50
	beq	$3,$12,$L51
	beq	$3,$13,$L52
	beq	$3,$14,$L53
	beq	$3,$15,$L54
	beq	$3,$16,$L55
	beq	$3,$24,$L56
	beq	$3,$25,$L57
	xori	$3,$3,0xe
	sltu	$3,$0,$3
	.set	noreorder
	.set	nomacro
	j	$L39
	addiu	$3,$3,101
	.set	macro
	.set	reorder

$L44:
	li	$3,48			# 0x30
$L39:
	sw	$3,0($2)
	addiu	$2,$2,4
	.set	noreorder
	.set	nomacro
	bne	$2,$5,$L41
	sra	$4,$4,4
	.set	macro
	.set	reorder

	addiu	$16,$sp,44
	addiu	$17,$17,-4
$L43:
	lw	$4,0($16)
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	addiu	$16,$16,-4
	.set	macro
	.set	reorder

	bne	$16,$17,$L43
	lw	$31,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,64
	.set	macro
	.set	reorder

$L45:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,49			# 0x31
	.set	macro
	.set	reorder

$L46:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,50			# 0x32
	.set	macro
	.set	reorder

$L47:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,51			# 0x33
	.set	macro
	.set	reorder

$L48:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,52			# 0x34
	.set	macro
	.set	reorder

$L49:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,53			# 0x35
	.set	macro
	.set	reorder

$L50:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,54			# 0x36
	.set	macro
	.set	reorder

$L51:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,55			# 0x37
	.set	macro
	.set	reorder

$L54:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,97			# 0x61
	.set	macro
	.set	reorder

$L52:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,56			# 0x38
	.set	macro
	.set	reorder

$L53:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,57			# 0x39
	.set	macro
	.set	reorder

$L55:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,98			# 0x62
	.set	macro
	.set	reorder

$L56:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,99			# 0x63
	.set	macro
	.set	reorder

$L57:
	.set	noreorder
	.set	nomacro
	j	$L39
	li	$3,100			# 0x64
	.set	macro
	.set	reorder

	.end	mylib_display_hex
	.size	mylib_display_hex, .-mylib_display_hex
	.align	2
	.globl	mylib_display_char
	.set	nomips16
	.ent	mylib_display_char
	.type	mylib_display_char, @function
mylib_display_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	j	output_buffer_put
	.end	mylib_display_char
	.size	mylib_display_char, .-mylib_display_char
	.align	2
	.globl	mylib_display_newline
	.set	nomips16
	.ent	mylib_display_newline
	.type	mylib_display_newline, @function
mylib_display_newline:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	lw	$31,20($sp)
	li	$4,13			# 0xd
	.set	noreorder
	.set	nomacro
	j	output_buffer_put
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	mylib_display_newline
	.size	mylib_display_newline, .-mylib_display_newline
	.align	2
	.globl	mylib_flush
	.set	nomips16
	.ent	mylib_flush
	.type	mylib_flush, @function
mylib_flush:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lui	$3,%hi(output_buffer)
	lw	$7,%gp_rel(output_buffer_size)($28)
	addiu	$3,$3,%lo(output_buffer)
 #APP
 # 42 "././lib.c" 1
	li	$4,1
	move	$5,$3
	move	$6,$7
	li	$2,4004
	syscall
	move	$3,$2
	
 # 0 "" 2
 #NO_APP
	.set	noreorder
	.set	nomacro
	j	$31
	sw	$0,%gp_rel(output_buffer_size)($28)
	.set	macro
	.set	reorder

	.end	mylib_flush
	.size	mylib_flush, .-mylib_flush
	.align	2
	.globl	mylib_finalize
	.set	nomips16
	.ent	mylib_finalize
	.type	mylib_finalize, @function
mylib_finalize:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,69			# 0x45
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,78			# 0x4e
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,68			# 0x44
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lui	$3,%hi(output_buffer)
	lw	$7,%gp_rel(output_buffer_size)($28)
	addiu	$3,$3,%lo(output_buffer)
 #APP
 # 42 "././lib.c" 1
	li	$4,1
	move	$5,$3
	move	$6,$7
	li	$2,4004
	syscall
	move	$3,$2
	
 # 0 "" 2
 #NO_APP
	sw	$0,%gp_rel(output_buffer_size)($28)
 #APP
 # 201 "././lib.c" 1
	li	$4,0
	li	$2,4001
	syscall
	
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	#nop
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	mylib_finalize
	.size	mylib_finalize, .-mylib_finalize
	.align	2
	.globl	radix_sort
	.set	nomips16
	.ent	radix_sort
	.type	radix_sort, @function
radix_sort:
	.frame	$sp,24,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x003f0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-24
	sw	$21,20($sp)
	sw	$20,16($sp)
	sw	$19,12($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
 #APP
 # 714 "./main.c" 1
	.set    noat
 # 0 "" 2
 #NO_APP
	lui	$2,%hi(BUFtbl)
	addiu	$2,$2,%lo(BUFtbl)
 #APP
 # 716 "./main.c" 1
	cache   0x0d,($2)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(BUFtbl)
	lui	$2,%hi(dummy_mem)
	addiu	$3,$3,%lo(BUFtbl)
	addiu	$2,$2,%lo(dummy_mem)
 #APP
 # 717 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(BUFtbl+4)
	lui	$2,%hi(dummy_mem+2097152)
	addiu	$3,$3,%lo(BUFtbl+4)
	addiu	$2,$2,%lo(dummy_mem+2097152)
 #APP
 # 718 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(BUFtbl+8)
	lui	$2,%hi(dummy_mem)
	addiu	$3,$3,%lo(BUFtbl+8)
	addiu	$2,$2,%lo(dummy_mem)
 #APP
 # 719 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(BUFtbl+12)
	lui	$2,%hi(dummy_mem+2097152)
	addiu	$3,$3,%lo(BUFtbl+12)
	addiu	$2,$2,%lo(dummy_mem+2097152)
 #APP
 # 720 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 # 721 "./main.c" 1
	.set    at
 # 0 "" 2
 #NO_APP
	lw	$2,%gp_rel(curBUFptr)($28)
	lui	$24,%hi(BUFtbl)
	addiu	$24,$24,%lo(BUFtbl)
	sll	$2,$2,2
	addu	$2,$24,$2
	lw	$8,0($2)
 #APP
 # 733 "./main.c" 1
	.set    noat
 # 0 "" 2
 #NO_APP
	lui	$2,%hi(masktab.1439)
	addiu	$2,$2,%lo(masktab.1439)
 #APP
 # 735 "./main.c" 1
	cache   0x0d,($2)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(masktab.1439)
	addiu	$3,$3,%lo(masktab.1439)
	li	$2,8191			# 0x1fff
 #APP
 # 736 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(masktab.1439+4)
	addiu	$3,$3,%lo(masktab.1439+4)
 #APP
 # 737 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(masktab.1439+8)
	addiu	$3,$3,%lo(masktab.1439+8)
 #APP
 # 738 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(masktab.1439+12)
	addiu	$3,$3,%lo(masktab.1439+12)
 #APP
 # 739 "./main.c" 1
	sw      $2,($3)
 # 0 "" 2
 # 740 "./main.c" 1
	.set    at
 # 0 "" 2
 #NO_APP
	lui	$2,%hi(masktab.1439)
	addiu	$2,$2,%lo(masktab.1439)
 #APP
 # 743 "./main.c" 1
	lq      $31,($2)
	
 # 0 "" 2
 #NO_APP
	lw	$16,%gp_rel(niterations)($28)
	#nop
	.set	noreorder
	.set	nomacro
	blez	$16,$L66
	move	$17,$4
	.set	macro
	.set	reorder

	lui	$3,%hi(count)
	sll	$15,$5,2
	addiu	$3,$3,%lo(count)
	lui	$7,%hi(count+32768)
	addiu	$15,$15,-64
	move	$12,$0
	move	$13,$0
	move	$14,$3
	addiu	$7,$7,%lo(count+32768)
$L79:
	move	$2,$14
$L69:
 #APP
 # 756 "./main.c" 1
	.set     noat
	cache    0x0c,($2)
	cache    0x0c,16($2)
	cache    0x0c,32($2)
	cache    0x0c,48($2)
	.set     at
	
 # 0 "" 2
 # 763 "./main.c" 1
	.set    noat
	sq      $0,($2)
	sq      $0,16($2)
	sq      $0,32($2)
	sq      $0,48($2)
	.set    at
	
 # 0 "" 2
 #NO_APP
	addiu	$2,$2,64
	bne	$2,$7,$L69
	.set	noreorder
	.set	nomacro
	blez	$5,$L70
	move	$9,$17
	.set	macro
	.set	reorder

	move	$2,$0
$L71:
 #APP
 # 775 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 # 782 "./main.c" 1
	lq      $1,($9)
	lq      $2,16($9)
	lq      $3,32($9)
	lq      $4,48($9)
	
 # 0 "" 2
 # 788 "./main.c" 1
	psravw  $1,$1,$12
	psravw  $2,$2,$12
	psravw  $3,$3,$12
	psravw  $4,$4,$12
	
 # 0 "" 2
 # 794 "./main.c" 1
	pand    $1,$1,$31
	pand    $2,$2,$31
	pand    $3,$3,$31
	pand    $4,$4,$31
	
 # 0 "" 2
 # 799 "./main.c" 1
	pextw   $25,$1,0
	pextw   $11,$1,1
	pextw   $10,$1,2
	pextw   $6,$1,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$18,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$18,$18,1
	sw	$18,0($25)
	lw	$18,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$18,$18,1
	sw	$18,0($11)
	lw	$11,0($10)
	sll	$6,$6,2
	addu	$6,$3,$6
	addiu	$11,$11,1
	sw	$11,0($10)
	lw	$10,0($6)
	#nop
	addiu	$10,$10,1
	sw	$10,0($6)
 #APP
 # 809 "./main.c" 1
	pextw   $25,$2,0
	pextw   $11,$2,1
	pextw   $10,$2,2
	pextw   $6,$2,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$18,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$18,$18,1
	sw	$18,0($25)
	lw	$18,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$18,$18,1
	sw	$18,0($11)
	lw	$11,0($10)
	sll	$6,$6,2
	addu	$6,$3,$6
	addiu	$11,$11,1
	sw	$11,0($10)
	lw	$10,0($6)
	#nop
	addiu	$10,$10,1
	sw	$10,0($6)
 #APP
 # 819 "./main.c" 1
	pextw   $25,$3,0
	pextw   $11,$3,1
	pextw   $6,$3,2
	pextw   $10,$3,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$18,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$18,$18,1
	sw	$18,0($25)
	lw	$18,0($11)
	sll	$6,$6,2
	addu	$6,$3,$6
	addiu	$18,$18,1
	sw	$18,0($11)
	lw	$11,0($6)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$11,$11,1
	sw	$11,0($6)
	lw	$6,0($10)
	#nop
	addiu	$6,$6,1
	sw	$6,0($10)
 #APP
 # 829 "./main.c" 1
	pextw   $6,$4,0
	pextw   $25,$4,1
	pextw   $11,$4,2
	pextw   $10,$4,3
	
 # 0 "" 2
 #NO_APP
	sll	$6,$6,2
	addu	$6,$3,$6
	lw	$18,0($6)
	sll	$25,$25,2
	addu	$25,$3,$25
	addiu	$18,$18,1
	sw	$18,0($6)
	lw	$6,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$6,$6,1
	sw	$6,0($25)
	lw	$6,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$6,$6,1
	sw	$6,0($11)
	lw	$6,0($10)
	#nop
	addiu	$6,$6,1
	sw	$6,0($10)
 #APP
 # 839 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	addiu	$2,$2,16
	slt	$6,$2,$5
	.set	noreorder
	.set	nomacro
	bne	$6,$0,$L71
	addiu	$9,$9,64
	.set	macro
	.set	reorder

$L70:
	move	$2,$14
	move	$6,$0
$L80:
 #APP
 # 857 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 # 864 "./main.c" 1
	lq      $1,($2)
	lq      $2,16($2)
	lq      $3,32($2)
	lq      $4,48($2)
	
 # 0 "" 2
 # 870 "./main.c" 1
	paddw   $5,$1,$0
	paddw   $6,$2,$0
	paddw   $7,$3,$0
	paddw   $8,$4,$0
	psllww  $1,$1,$0
	psllww  $2,$2,$0
	psllww  $3,$3,$0
	psllww  $4,$4,$0
	paddw   $5,$5,$1
	paddw   $6,$6,$2
	paddw   $7,$7,$3
	paddw   $8,$8,$4
	psllww  $1,$1,$0
	psllww  $2,$2,$0
	psllww  $3,$3,$0
	psllww  $4,$4,$0
	paddw   $5,$5,$1
	paddw   $6,$6,$2
	paddw   $7,$7,$3
	paddw   $8,$8,$4
	psllww  $1,$1,$0
	psllww  $2,$2,$0
	psllww  $3,$3,$0
	psllww  $4,$4,$0
	paddw   $5,$5,$1
	paddw   $6,$6,$2
	paddw   $7,$7,$3
	paddw   $8,$8,$4
	pextw   $9,$5,3
	nop
	nop
	paddsw  $6,$6,$9
	nop
	nop
	pextw   $10,$6,3
	nop
	nop
	paddsw  $7,$7,$10
	nop
	nop
	pextw   $11,$7,3
	nop
	nop
	paddsw  $8,$8,$11
	
 # 0 "" 2
 # 920 "./main.c" 1
	paddsw  $5,$5,$6
	paddsw  $6,$6,$6
	paddsw  $7,$7,$6
	paddsw  $8,$8,$6
	
 # 0 "" 2
 # 926 "./main.c" 1
	sq      $5,($2)
	sq      $6,16($2)
	sq      $7,32($2)
	sq      $8,48($2)
	
 # 0 "" 2
 # 933 "./main.c" 1
	pextw   $6,$8,3
	
 # 0 "" 2
 # 935 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	addiu	$2,$2,64
	bne	$2,$7,$L80
	.set	noreorder
	.set	nomacro
	blez	$5,$L76
	addu	$6,$17,$15
	.set	macro
	.set	reorder

	move	$2,$5
$L77:
 #APP
 # 944 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 # 952 "./main.c" 1
	lq      $1,($6)
	lq      $2,16($6)
	lq      $3,32($6)
	lq      $4,48($6)
	
 # 0 "" 2
 # 958 "./main.c" 1
	psravw  $5,$1,$12
	psravw  $6,$2,$12
	psravw  $7,$3,$12
	psravw  $8,$4,$12
	
 # 0 "" 2
 # 964 "./main.c" 1
	pand    $5,$5,$31
	pand    $6,$6,$31
	pand    $7,$7,$31
	pand    $8,$8,$31
	
 # 0 "" 2
 # 970 "./main.c" 1
	pextw   $16,$4,0
	pextw   $18,$4,1
	pextw   $19,$4,2
	pextw   $21,$4,3
	
 # 0 "" 2
 # 977 "./main.c" 1
	pextw   $17,$8,0
	pextw   $10,$8,1
	pextw   $11,$8,2
	pextw   $25,$8,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$9,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$9,$9,-1
	sll	$20,$9,2
	addu	$20,$8,$20
	sw	$9,0($25)
	sw	$21,0($20)
	lw	$25,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$25,$25,-1
	sll	$9,$25,2
	addu	$9,$8,$9
	sw	$25,0($11)
	sw	$19,0($9)
	lw	$11,0($10)
	sll	$9,$17,2
	addu	$9,$3,$9
	addiu	$11,$11,-1
	sll	$17,$11,2
	addu	$17,$8,$17
	sw	$11,0($10)
	sw	$18,0($17)
	lw	$10,0($9)
	#nop
	addiu	$10,$10,-1
	sll	$11,$10,2
	addu	$11,$8,$11
	sw	$10,0($9)
	sw	$16,0($11)
 #APP
 # 993 "./main.c" 1
	pextw   $16,$3,0
	pextw   $18,$3,1
	pextw   $19,$3,2
	pextw   $21,$3,3
	
 # 0 "" 2
 # 1000 "./main.c" 1
	pextw   $17,$7,0
	pextw   $10,$7,1
	pextw   $11,$7,2
	pextw   $25,$7,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$9,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$9,$9,-1
	sll	$20,$9,2
	addu	$20,$8,$20
	sw	$9,0($25)
	sw	$21,0($20)
	lw	$25,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$25,$25,-1
	sll	$9,$25,2
	addu	$9,$8,$9
	sw	$25,0($11)
	sw	$19,0($9)
	lw	$11,0($10)
	sll	$9,$17,2
	addu	$9,$3,$9
	addiu	$11,$11,-1
	sll	$17,$11,2
	addu	$17,$8,$17
	sw	$11,0($10)
	sw	$18,0($17)
	lw	$10,0($9)
	#nop
	addiu	$10,$10,-1
	sll	$11,$10,2
	addu	$11,$8,$11
	sw	$10,0($9)
	sw	$16,0($11)
 #APP
 # 1016 "./main.c" 1
	pextw   $16,$2,0
	pextw   $18,$2,1
	pextw   $19,$2,2
	pextw   $21,$2,3
	
 # 0 "" 2
 # 1023 "./main.c" 1
	pextw   $17,$6,0
	pextw   $10,$6,1
	pextw   $11,$6,2
	pextw   $25,$6,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$9,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$9,$9,-1
	sll	$20,$9,2
	addu	$20,$8,$20
	sw	$9,0($25)
	sw	$21,0($20)
	lw	$25,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$25,$25,-1
	sll	$9,$25,2
	addu	$9,$8,$9
	sw	$25,0($11)
	sw	$19,0($9)
	lw	$11,0($10)
	sll	$9,$17,2
	addu	$9,$3,$9
	addiu	$11,$11,-1
	sll	$17,$11,2
	addu	$17,$8,$17
	sw	$11,0($10)
	sw	$18,0($17)
	lw	$10,0($9)
	#nop
	addiu	$10,$10,-1
	sll	$11,$10,2
	addu	$11,$8,$11
	sw	$10,0($9)
	sw	$16,0($11)
 #APP
 # 1039 "./main.c" 1
	pextw   $16,$1,0
	pextw   $18,$1,1
	pextw   $19,$1,2
	pextw   $21,$1,3
	
 # 0 "" 2
 # 1046 "./main.c" 1
	pextw   $17,$5,0
	pextw   $10,$5,1
	pextw   $11,$5,2
	pextw   $25,$5,3
	
 # 0 "" 2
 #NO_APP
	sll	$25,$25,2
	addu	$25,$3,$25
	lw	$9,0($25)
	sll	$11,$11,2
	addu	$11,$3,$11
	addiu	$9,$9,-1
	sll	$20,$9,2
	addu	$20,$8,$20
	sw	$9,0($25)
	sw	$21,0($20)
	lw	$25,0($11)
	sll	$10,$10,2
	addu	$10,$3,$10
	addiu	$25,$25,-1
	sll	$9,$25,2
	addu	$9,$8,$9
	sw	$25,0($11)
	sw	$19,0($9)
	lw	$11,0($10)
	sll	$9,$17,2
	addu	$9,$3,$9
	addiu	$11,$11,-1
	sll	$17,$11,2
	addu	$17,$8,$17
	sw	$11,0($10)
	sw	$18,0($17)
	lw	$10,0($9)
	#nop
	addiu	$10,$10,-1
	sll	$11,$10,2
	addu	$11,$8,$11
	sw	$10,0($9)
	sw	$16,0($11)
 #APP
 # 1061 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	addiu	$2,$2,-16
	.set	noreorder
	.set	nomacro
	bgtz	$2,$L77
	addiu	$6,$6,-64
	.set	macro
	.set	reorder

	lw	$16,%gp_rel(niterations)($28)
	#nop
$L76:
	addiu	$2,$16,-2
	.set	noreorder
	.set	nomacro
	beq	$2,$13,$L85
	move	$6,$4
	.set	macro
	.set	reorder

	lw	$2,%gp_rel(curBUFptr)($28)
	addiu	$13,$13,1
	addiu	$2,$2,1
	sll	$6,$2,2
	addu	$6,$24,$6
	sw	$2,%gp_rel(curBUFptr)($28)
	slt	$2,$13,$16
	lw	$6,0($6)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L66
	addiu	$12,$12,13
	.set	macro
	.set	reorder

$L86:
	move	$17,$8
	.set	noreorder
	.set	nomacro
	j	$L79
	move	$8,$6
	.set	macro
	.set	reorder

$L85:
	addiu	$13,$13,1
	slt	$2,$13,$16
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L86
	addiu	$12,$12,13
	.set	macro
	.set	reorder

$L66:
	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	radix_sort
	.size	radix_sort, .-radix_sort
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	lui	$2,%hi(_binary_310sort_dat_start)
	addiu	$2,$2,%lo(_binary_310sort_dat_start)
	li	$3,262144			# 0x40000
	addu	$3,$3,$2
	sw	$2,%gp_rel(init_data)($28)
	lui	$2,%hi(_binary_310sort_dat_start+262140)
	addiu	$sp,$sp,-56
	addiu	$2,$2,%lo(_binary_310sort_dat_start+262140)
	li	$4,115			# 0x73
	sw	$31,52($sp)
	sw	$2,%gp_rel(init_n)($28)
	sw	$17,20($sp)
	sw	$16,16($sp)
	lw	$17,-4($3)
	sw	$fp,48($sp)
	sw	$23,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	sw	$18,24($sp)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,111			# 0x6f
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,114			# 0x72
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,116			# 0x74
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,110			# 0x6e
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,61			# 0x3d
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$17
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	lui	$16,%hi(BUFtbl)
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lw	$4,%lo(BUFtbl)($16)
	.set	noreorder
	.set	nomacro
	jal	mylib_display_hex
	addiu	$16,$16,%lo(BUFtbl)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lw	$4,4($16)
	jal	mylib_display_hex
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lw	$4,8($16)
	jal	mylib_display_hex
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lw	$4,12($16)
	jal	mylib_display_hex
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

 #APP
 # 1241 "./main.c" 1
	.set   noat
	pinsw  $0,$0,$0,0
	nop
	nop
	pinsw  $0,$0,$0,1
	nop
	nop
	pinsw  $0,$0,$0,2
	nop
	nop
	pinsw  $0,$0,$0,3
	.set   at
 # 0 "" 2
 # 1255 "./main.c" 1
	.set   noat
	li     $1,1
	pinsw  $5,$5,$0,0
	nop
	addiu  $1,$1,1
	pinsw  $5,$5,$1,1
	nop
	addiu  $1,$1,1
	pinsw  $5,$5,$1,2
	nop
	nop
	pinsw  $5,$5,$1,3
	.set   at
 # 0 "" 2
 # 1273 "./main.c" 1
	.set   noat
	paddw  $10,$0,$0
	paddw  $11,$0,$0
	paddw  $12,$0,$0
	paddw  $13,$0,$0
	.set   at
 # 0 "" 2
 #NO_APP
	lw	$4,%gp_rel(data)($28)
	.set	noreorder
	.set	nomacro
	blez	$17,$L89
	move	$2,$0
	.set	macro
	.set	reorder

	lw	$8,%gp_rel(init_data)($28)
	move	$3,$4
$L90:
 #APP
 # 1283 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 #NO_APP
	andi	$5,$2,0xffff
	sll	$5,$5,2
	addu	$5,$8,$5
 #APP
 # 1290 "./main.c" 1
	lq      $1,($5)
	lq      $2,16($5)
	lq      $3,32($5)
	lq      $4,48($5)
	
 # 0 "" 2
 #NO_APP
	addiu	$5,$2,4
	addiu	$6,$2,8
	addiu	$7,$2,12
 #APP
 # 1296 "./main.c" 1
	paddsw  $1,$1,$2
	paddsw  $2,$2,$5
	paddsw  $3,$3,$6
	paddsw  $4,$4,$7
	
 # 0 "" 2
 # 1302 "./main.c" 1
	paddw   $1,$1,$5
	paddw   $2,$2,$5
	paddw   $3,$3,$5
	paddw   $4,$4,$5
	
 # 0 "" 2
 # 1307 "./main.c" 1
	sq      $1,($3)
	sq      $2,16($3)
	sq      $3,32($3)
	sq      $4,48($3)
	
 # 0 "" 2
 # 1314 "./main.c" 1
	por     $10,$10,$1
	por     $11,$11,$2
	por     $12,$12,$3
	por     $13,$13,$4
	
 # 0 "" 2
 # 1319 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	addiu	$2,$2,16
	slt	$5,$2,$17
	.set	noreorder
	.set	nomacro
	bne	$5,$0,$L90
	addiu	$3,$3,64
	.set	macro
	.set	reorder

$L89:
 #APP
 # 1322 "./main.c" 1
	por     $10,$10,$11
	por     $12,$12,$13
	nop
	nop
	por     $10,$10,$12
	
 # 0 "" 2
 # 1332 "./main.c" 1
	pextw   $2,$5,0
	pextw   $6,$5,1
	pextw   $5,$5,2
	pextw   $3,$5,3
	
 # 0 "" 2
 #NO_APP
	or	$2,$6,$2
	or	$2,$2,$5
	or	$2,$2,$3
	li	$3,-67108864			# 0xfffffffffc000000
	and	$2,$2,$3
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L91
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	li	$2,2			# 0x2
	sw	$2,%gp_rel(niterations)($28)
$L92:
	.set	noreorder
	.set	nomacro
	j	$L94
	move	$16,$0
	.set	macro
	.set	reorder

$L100:
	lw	$4,%gp_rel(data)($28)
$L94:
 #APP
 # 1404 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 #NO_APP
	addu	$4,$4,$16
 #APP
 # 1410 "./main.c" 1
	lq      $1,($4)
	lq      $2,16($4)
	
 # 0 "" 2
 # 1414 "./main.c" 1
	nop
	pextw   $4,$1,0
	pextw   $23,$1,1
	pextw   $fp,$1,2
	pextw   $22,$1,3
	pextw   $21,$2,0
	pextw   $20,$2,1
	pextw   $19,$2,2
	pextw   $18,$2,3
	
 # 0 "" 2
 # 1428 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	addiu	$16,$16,32
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$23
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$fp
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$22
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$21
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$18
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	li	$2,384			# 0x180
	bne	$16,$2,$L100
 #APP
 # 1444 "./main.c" 1
	.set    noat
	
 # 0 "" 2
 #NO_APP
	lw	$2,%gp_rel(data)($28)
	#nop
	addiu	$2,$2,384
 #APP
 # 1446 "./main.c" 1
	lq      $1,($2)
	
 # 0 "" 2
 # 1449 "./main.c" 1
	nop
	nop
	pextw   $4,$1,0
	pextw   $19,$1,1
	pextw   $18,$1,2
	pextw   $16,$1,3
	
 # 0 "" 2
 # 1457 "./main.c" 1
	.set    at
	
 # 0 "" 2
 #NO_APP
	jal	mylib_display_dec
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$18
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	move	$4,$16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	lw	$4,%gp_rel(data)($28)
	.set	noreorder
	.set	nomacro
	jal	radix_sort
	move	$5,$17
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	blez	$17,$L96
	li	$2,1374355456			# 0x51eb0000
	.set	macro
	.set	reorder

	ori	$2,$2,0x851f
	mult	$17,$2
	sra	$18,$17,31
	move	$16,$0
	mfhi	$2
	sra	$2,$2,5
	subu	$18,$2,$18
$L97:
	lw	$3,%gp_rel(data)($28)
	sll	$2,$16,2
	addu	$2,$3,$2
	lw	$4,0($2)
	.set	noreorder
	.set	nomacro
	jal	mylib_display_dec
	addu	$16,$16,$18
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,32			# 0x20
	.set	macro
	.set	reorder

	slt	$2,$16,$17
	bne	$2,$0,$L97
$L96:
	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	output_buffer_put
	li	$4,13			# 0xd
	.set	macro
	.set	reorder

	jal	mylib_finalize
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$23,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,56
	.set	macro
	.set	reorder

$L91:
	.set	noreorder
	.set	nomacro
	j	$L92
	sw	$2,%gp_rel(niterations)($28)
	.set	macro
	.set	reorder

	.end	main
	.size	main, .-main
	.local	masktab.1439
	.comm	masktab.1439,16,16
	.local	count
	.comm	count,32768,16
	.globl	curBUFptr
	.section	.sbss,"aw",@nobits
	.align	2
	.type	curBUFptr, @object
	.size	curBUFptr, 4
curBUFptr:
	.space	4
	.globl	BUFtbl
	.data
	.align	2
	.type	BUFtbl, @object
	.size	BUFtbl, 16
BUFtbl:
	.word	dummy_mem
	.word	dummy_mem+2097152
	.word	dummy_mem
	.word	dummy_mem+2097152
	.globl	data
	.section	.sdata,"aw",@progbits
	.align	2
	.type	data, @object
	.size	data, 4
data:
	.word	buf
	.globl	buf
	.section	.dummy_space2,"aw",@progbits
	.align	4
	.type	buf, @object
	.size	buf, 2097152
buf:
	.space	2097152

	.comm	niterations,4,4

	.comm	init_n,4,4

	.comm	init_data,4,16
	.globl	dummy_mem
	.section	.dummy_space,"aw",@progbits
	.align	4
	.type	dummy_mem, @object
	.size	dummy_mem, 5767168
dummy_mem:
	.space	5767168
	.local	output_buffer_size
	.comm	output_buffer_size,4,4
	.local	output_buffer
	.comm	output_buffer,1024,4
	.ident	"GCC: (GNU) 4.8.3"
