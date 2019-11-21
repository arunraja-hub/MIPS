	.file	1 ""
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	read_char
	.set	nomips16
	.set	nomicromips
	.ent	read_char
	.type	read_char, @function
read_char:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	lw	$2,%call16(getchar)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,getchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	read_char
	.size	read_char, .-read_char
	.rdata
	.align	2
$LC0:
	.ascii	"%i\000"
	.text
	.align	2
	.globl	read_int
	.set	nomips16
	.set	nomicromips
	.ent	read_int
	.type	read_int, @function
read_int:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	addiu	$2,$fp,24
	move	$5,$2
	lw	$2,%got($LC0)($28)
	nop
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(__isoc99_scanf)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	read_int
	.size	read_int, .-read_int
	.align	2
	.globl	read_string
	.set	nomips16
	.set	nomicromips
	.ent	read_string
	.type	read_string, @function
read_string:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,%got(stdin)($28)
	nop
	lw	$2,0($2)
	nop
	move	$6,$2
	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(fgets)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	read_string
	.size	read_string, .-read_string
	.align	2
	.globl	print_char
	.set	nomips16
	.set	nomicromips
	.ent	print_char
	.type	print_char, @function
print_char:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$4,32($fp)
	lw	$4,32($fp)
	lw	$2,%call16(putchar)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	print_char
	.size	print_char, .-print_char
	.align	2
	.globl	print_int
	.set	nomips16
	.set	nomicromips
	.ent	print_int
	.type	print_int, @function
print_int:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$4,32($fp)
	lw	$5,32($fp)
	lw	$2,%got($LC0)($28)
	nop
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	print_int
	.size	print_int, .-print_int
	.rdata
	.align	2
$LC1:
	.ascii	"%s\000"
	.text
	.align	2
	.globl	print_string
	.set	nomips16
	.set	nomicromips
	.ent	print_string
	.type	print_string, @function
print_string:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$4,32($fp)
	lw	$5,32($fp)
	lw	$2,%got($LC1)($28)
	nop
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	print_string
	.size	print_string, .-print_string
	.align	2
	.globl	output
	.set	nomips16
	.set	nomicromips
	.ent	output
	.type	output, @function
output:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$4,32($fp)
	lw	$4,32($fp)
	lw	$2,%got(print_string)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_string
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	output
	.size	output, .-output
	.globl	dictionary_file_name
	.data
	.align	2
	.type	dictionary_file_name, @object
	.size	dictionary_file_name, 15
dictionary_file_name:
	.ascii	"dictionary.txt\000"
	.globl	input_file_name
	.align	2
	.type	input_file_name, @object
	.size	input_file_name, 10
input_file_name:
	.ascii	"input.txt\000"

	.comm	content,2049,4
	.globl	punctuations
	.align	2
	.type	punctuations, @object
	.size	punctuations, 5
punctuations:
	.ascii	",.!?\000"

	.comm	tokens,4198401,4
	.globl	tokens_number
	.section	.bss,"aw",@nobits
	.align	2
	.type	tokens_number, @object
	.size	tokens_number, 4
tokens_number:
	.space	4

	.comm	dictionary,200001,4
	.globl	dict_number
	.align	2
	.type	dict_number, @object
	.size	dict_number, 4
dict_number:
	.space	4

	.comm	dict_token,210000,4
	.text
	.align	2
	.globl	dict_tokenizer
	.set	nomips16
	.set	nomicromips
	.ent	dict_tokenizer
	.type	dict_tokenizer, @function
dict_tokenizer:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$0,12($fp)
	movz	$31,$31,$0
	lw	$3,%got(dictionary)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
$L16:
	lb	$2,8($fp)
	nop
	beq	$2,$0,$L17
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L13
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	beq	$2,$0,$L13
	nop

	sw	$0,16($fp)
$L15:
	lw	$2,%got(dict_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dict_token)($28)
	move	$2,$3
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,16($fp)
	nop
	addiu	$2,$2,1
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(dictionary)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L14
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	bne	$2,$0,$L15
	nop

$L14:
	lw	$2,%got(dict_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dict_token)($28)
	move	$2,$3
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(dict_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(dict_number)($28)
	nop
	sw	$3,0($2)
$L13:
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(dictionary)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lw	$3,%got(dictionary)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L16
	nop

	b	$L12
	nop

$L17:
	nop
$L12:
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	dict_tokenizer
	.size	dict_tokenizer, .-dict_tokenizer
	.globl	alph_number
	.section	.bss
	.align	2
	.type	alph_number, @object
	.size	alph_number, 4
alph_number:
	.space	4

	.comm	alph_token,4198401,4
	.text
	.align	2
	.globl	alph_tokenizer
	.set	nomips16
	.set	nomicromips
	.ent	alph_tokenizer
	.type	alph_tokenizer, @function
alph_tokenizer:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$0,12($fp)
	movz	$31,$31,$0
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
$L27:
	lb	$2,8($fp)
	nop
	beq	$2,$0,$L28
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L21
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	bne	$2,$0,$L22
	nop

$L21:
	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L23
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	beq	$2,$0,$L23
	nop

$L22:
	sw	$0,16($fp)
$L25:
	lw	$2,%got(alph_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(alph_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,16($fp)
	nop
	addiu	$2,$2,1
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L24
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	bne	$2,$0,$L25
	nop

$L24:
	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L26
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	bne	$2,$0,$L25
	nop

$L26:
	lw	$2,%got(alph_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(alph_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(alph_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(alph_number)($28)
	nop
	sw	$3,0($2)
$L23:
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L27
	nop

	b	$L20
	nop

$L28:
	nop
$L20:
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	alph_tokenizer
	.size	alph_tokenizer, .-alph_tokenizer
	.align	2
	.globl	lower
	.set	nomips16
	.set	nomicromips
	.ent	lower
	.type	lower, @function
lower:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,24($fp)
	movz	$31,$31,$0
	lb	$2,24($fp)
	nop
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L30
	nop

	lw	$2,8($fp)
	nop
	slt	$2,$2,91
	beq	$2,$0,$L30
	nop

	lw	$2,8($fp)
	nop
	addiu	$2,$2,32
	sw	$2,8($fp)
	lw	$2,8($fp)
	nop
	sb	$2,12($fp)
	lb	$2,12($fp)
	b	$L31
	nop

$L30:
	lb	$2,24($fp)
$L31:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	lower
	.size	lower, .-lower
	.align	2
	.globl	my_strcmp
	.set	nomips16
	.set	nomicromips
	.ent	my_strcmp
	.type	my_strcmp, @function
my_strcmp:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	movz	$31,$31,$0
	sw	$0,8($fp)
$L36:
	lw	$2,8($fp)
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,8($fp)
	lw	$4,28($fp)
	nop
	addu	$2,$4,$2
	lb	$2,0($2)
	nop
	beq	$3,$2,$L33
	nop

	move	$2,$0
	b	$L34
	nop

$L33:
	lw	$2,8($fp)
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	bne	$2,$0,$L35
	nop

	li	$2,1			# 0x1
	b	$L34
	nop

$L35:
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
	b	$L36
	nop

$L34:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	my_strcmp
	.size	my_strcmp, .-my_strcmp
	.globl	dup_number
	.section	.bss
	.align	2
	.type	dup_number, @object
	.size	dup_number, 4
dup_number:
	.space	4

	.comm	dup_token,4198401,4
	.text
	.align	2
	.globl	dup_tokenizer
	.set	nomips16
	.set	nomicromips
	.ent	dup_tokenizer
	.type	dup_tokenizer, @function
dup_tokenizer:
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$0,12($fp)
	movz	$31,$31,$0
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
$L51:
	lb	$2,8($fp)
	nop
	beq	$2,$0,$L53
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L40
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	bne	$2,$0,$L41
	nop

$L40:
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L42
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	beq	$2,$0,$L42
	nop

$L41:
	sw	$0,16($fp)
$L44:
	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,16($fp)
	nop
	addiu	$2,$2,1
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L43
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	bne	$2,$0,$L44
	nop

$L43:
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L45
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	bne	$2,$0,$L44
	nop

$L45:
	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(dup_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(dup_number)($28)
	nop
	sw	$3,0($2)
	b	$L46
	nop

$L42:
	lb	$3,8($fp)
	li	$2,44			# 0x2c
	beq	$3,$2,$L47
	nop

	lb	$3,8($fp)
	li	$2,46			# 0x2e
	beq	$3,$2,$L47
	nop

	lb	$3,8($fp)
	li	$2,33			# 0x21
	beq	$3,$2,$L47
	nop

	lb	$3,8($fp)
	li	$2,63			# 0x3f
	bne	$3,$2,$L48
	nop

$L47:
	sw	$0,20($fp)
$L49:
	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,20($fp)
	nop
	addiu	$2,$2,1
	sw	$2,20($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$3,8($fp)
	li	$2,44			# 0x2c
	beq	$3,$2,$L49
	nop

	lb	$3,8($fp)
	li	$2,46			# 0x2e
	beq	$3,$2,$L49
	nop

	lb	$3,8($fp)
	li	$2,33			# 0x21
	beq	$3,$2,$L49
	nop

	lb	$3,8($fp)
	li	$2,63			# 0x3f
	beq	$3,$2,$L49
	nop

	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(dup_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(dup_number)($28)
	nop
	sw	$3,0($2)
	b	$L46
	nop

$L48:
	lb	$3,8($fp)
	li	$2,32			# 0x20
	bne	$3,$2,$L51
	nop

	sw	$0,24($fp)
$L50:
	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$3,8($fp)
	li	$2,32			# 0x20
	beq	$3,$2,$L50
	nop

	lw	$2,%got(dup_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(dup_token)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(dup_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(dup_number)($28)
	nop
	sw	$3,0($2)
$L46:
	b	$L51
	nop

$L53:
	nop
	nop
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	dup_tokenizer
	.size	dup_tokenizer, .-dup_tokenizer
	.rdata
	.align	2
$LC2:
	.ascii	"_%s_ \000"
	.text
	.align	2
	.globl	spell_checker
	.set	nomips16
	.set	nomicromips
	.ent	spell_checker
	.type	spell_checker, @function
spell_checker:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$0,24($fp)
	b	$L55
	nop

$L59:
	sw	$0,28($fp)
	b	$L56
	nop

$L58:
	lw	$4,%got(tokens)($28)
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L57
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	slt	$2,$2,91
	beq	$2,$0,$L57
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	lb	$2,0($2)
	nop
	move	$4,$2
	lw	$2,%got(lower)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,lower
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$5,$2
	lw	$4,%got(tokens)($28)
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,28($fp)
	nop
	addu	$2,$3,$2
	sb	$5,0($2)
$L57:
	lw	$2,28($fp)
	nop
	addiu	$2,$2,1
	sw	$2,28($fp)
$L56:
	lw	$2,28($fp)
	nop
	slt	$2,$2,2049
	bne	$2,$0,$L58
	nop

	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L55:
	lw	$2,24($fp)
	nop
	slt	$2,$2,2049
	bne	$2,$0,$L59
	nop

	sw	$0,32($fp)
	sw	$0,36($fp)
	b	$L60
	nop

$L68:
	sw	$0,40($fp)
	b	$L61
	nop

$L64:
	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$2,0($2)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L62
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$2,0($2)
	nop
	slt	$2,$2,123
	beq	$2,$0,$L62
	nop

	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	lw	$3,%got(tokens)($28)
	nop
	addu	$6,$2,$3
	lw	$3,40($fp)
	nop
	move	$2,$3
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$2,$3
	lw	$3,%got(dict_token)($28)
	nop
	addu	$2,$2,$3
	move	$5,$2
	move	$4,$6
	lw	$2,%got(my_strcmp)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,my_strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L69
	nop

$L62:
	lw	$2,40($fp)
	nop
	addiu	$2,$2,1
	sw	$2,40($fp)
$L61:
	lw	$2,40($fp)
	nop
	slt	$2,$2,10000
	bne	$2,$0,$L64
	nop

	b	$L63
	nop

$L69:
	nop
$L63:
	lw	$3,32($fp)
	li	$2,1			# 0x1
	beq	$3,$2,$L65
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$3,0($2)
	li	$2,44			# 0x2c
	beq	$3,$2,$L65
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$3,0($2)
	li	$2,46			# 0x2e
	beq	$3,$2,$L65
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$3,0($2)
	li	$2,33			# 0x21
	beq	$3,$2,$L65
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$3,0($2)
	li	$2,63			# 0x3f
	beq	$3,$2,$L65
	nop

	lw	$4,%got(tokens)($28)
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$2,$4,$2
	lb	$3,0($2)
	li	$2,32			# 0x20
	bne	$3,$2,$L66
	nop

$L65:
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	lw	$3,%got(dup_token)($28)
	nop
	addu	$2,$2,$3
	move	$5,$2
	lw	$2,%got($LC1)($28)
	nop
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	b	$L67
	nop

$L66:
	lw	$3,36($fp)
	nop
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	lw	$3,%got(dup_token)($28)
	nop
	addu	$2,$2,$3
	move	$5,$2
	lw	$2,%got($LC2)($28)
	nop
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(printf)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L67:
	lw	$2,36($fp)
	nop
	addiu	$2,$2,1
	sw	$2,36($fp)
$L60:
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$2,0($2)
	lw	$3,36($fp)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L68
	nop

	nop
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	spell_checker
	.size	spell_checker, .-spell_checker
	.align	2
	.globl	tokenizer
	.set	nomips16
	.set	nomicromips
	.ent	tokenizer
	.type	tokenizer, @function
tokenizer:
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$0,12($fp)
	movz	$31,$31,$0
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
$L84:
	lb	$2,8($fp)
	nop
	beq	$2,$0,$L86
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L73
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	bne	$2,$0,$L74
	nop

$L73:
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L75
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	beq	$2,$0,$L75
	nop

$L74:
	sw	$0,16($fp)
$L77:
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,16($fp)
	nop
	addiu	$2,$2,1
	sw	$2,16($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$2,8($fp)
	nop
	slt	$2,$2,65
	bne	$2,$0,$L76
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,91
	bne	$2,$0,$L77
	nop

$L76:
	lb	$2,8($fp)
	nop
	slt	$2,$2,97
	bne	$2,$0,$L78
	nop

	lb	$2,8($fp)
	nop
	slt	$2,$2,123
	bne	$2,$0,$L77
	nop

$L78:
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(tokens_number)($28)
	nop
	sw	$3,0($2)
	b	$L79
	nop

$L75:
	lb	$3,8($fp)
	li	$2,44			# 0x2c
	beq	$3,$2,$L80
	nop

	lb	$3,8($fp)
	li	$2,46			# 0x2e
	beq	$3,$2,$L80
	nop

	lb	$3,8($fp)
	li	$2,33			# 0x21
	beq	$3,$2,$L80
	nop

	lb	$3,8($fp)
	li	$2,63			# 0x3f
	bne	$3,$2,$L81
	nop

$L80:
	sw	$0,20($fp)
$L82:
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,20($fp)
	nop
	addiu	$2,$2,1
	sw	$2,20($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$3,8($fp)
	li	$2,44			# 0x2c
	beq	$3,$2,$L82
	nop

	lb	$3,8($fp)
	li	$2,46			# 0x2e
	beq	$3,$2,$L82
	nop

	lb	$3,8($fp)
	li	$2,33			# 0x21
	beq	$3,$2,$L82
	nop

	lb	$3,8($fp)
	li	$2,63			# 0x3f
	beq	$3,$2,$L82
	nop

	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(tokens_number)($28)
	nop
	sw	$3,0($2)
	b	$L79
	nop

$L81:
	lb	$3,8($fp)
	li	$2,32			# 0x20
	bne	$3,$2,$L84
	nop

	sw	$0,24($fp)
$L83:
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$3,8($fp)
	nop
	sb	$3,0($2)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,12($fp)
	nop
	addiu	$2,$2,1
	sw	$2,12($fp)
	lw	$3,%got(content)($28)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sb	$2,8($fp)
	lb	$3,8($fp)
	li	$2,32			# 0x20
	beq	$3,$2,$L83
	nop

	lw	$2,%got(tokens_number)($28)
	nop
	lw	$3,0($2)
	lw	$4,%got(tokens)($28)
	move	$2,$3
	sll	$2,$2,11
	addu	$2,$2,$3
	addu	$3,$4,$2
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,%got(tokens_number)($28)
	nop
	lw	$2,0($2)
	nop
	addiu	$3,$2,1
	lw	$2,%got(tokens_number)($28)
	nop
	sw	$3,0($2)
$L79:
	b	$L84
	nop

$L86:
	nop
	nop
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	tokenizer
	.size	tokenizer, .-tokenizer
	.rdata
	.align	2
$LC3:
	.ascii	"r\000"
	.align	2
$LC4:
	.ascii	"Error in opening input file.\012\000"
	.align	2
$LC5:
	.ascii	"Error in opening dictionary file.\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	sw	$0,24($fp)
	lw	$2,%got($LC3)($28)
	nop
	addiu	$5,$2,%lo($LC3)
	lw	$4,%got(input_file_name)($28)
	lw	$2,%call16(fopen)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,%got($LC3)($28)
	nop
	addiu	$5,$2,%lo($LC3)
	lw	$4,%got(dictionary_file_name)($28)
	lw	$2,%call16(fopen)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$2,28($fp)
	nop
	bne	$2,$0,$L88
	nop

	lw	$2,%got($LC4)($28)
	nop
	addiu	$4,$2,%lo($LC4)
	lw	$2,%got(print_string)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_string
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L89
	nop

$L88:
	lw	$2,32($fp)
	nop
	bne	$2,$0,$L90
	nop

	lw	$2,%got($LC5)($28)
	nop
	addiu	$4,$2,%lo($LC5)
	lw	$2,%got(print_string)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,print_string
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L89
	nop

$L90:
	lw	$4,28($fp)
	lw	$2,%call16(fgetc)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$4,28($fp)
	lw	$2,%call16(feof)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L91
	nop

	lw	$3,%got(content)($28)
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	nop
	lw	$4,28($fp)
	lw	$2,%call16(fclose)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$0,24($fp)
	b	$L96
	nop

$L91:
	lw	$2,36($fp)
	nop
	sll	$3,$2,24
	sra	$3,$3,24
	lw	$4,%got(content)($28)
	lw	$2,24($fp)
	nop
	addu	$2,$4,$2
	sb	$3,0($2)
	lw	$3,36($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L93
	nop

	lw	$3,%got(content)($28)
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
$L93:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L90
	nop

$L96:
	lw	$4,32($fp)
	lw	$2,%call16(fgetc)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(feof)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L94
	nop

	lw	$3,%got(dictionary)($28)
	lw	$2,24($fp)
	nop
	addu	$2,$3,$2
	sb	$0,0($2)
	nop
	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(tokenizer)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tokenizer
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(dup_tokenizer)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,dup_tokenizer
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(dict_tokenizer)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,dict_tokenizer
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(spell_checker)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,spell_checker
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	b	$L89
	nop

$L94:
	lw	$2,36($fp)
	nop
	sll	$3,$2,24
	sra	$3,$3,24
	lw	$4,%got(dictionary)($28)
	lw	$2,24($fp)
	nop
	addu	$2,$4,$2
	sb	$3,0($2)
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L96
	nop

$L89:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"