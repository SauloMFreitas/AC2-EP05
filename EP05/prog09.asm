#// programa 9
# Considere a memória inicial da seguinte forma:
# .text
# .data
# x1: .word 15
# x2: .word 25
# x3: .word 13
# x4: .word 17
# soma: .word -1
# Escrever um programa que leia todos os números, calcule e substitua o valor da variável soma por
# este valor.

#inicio
.text
.globl main

main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16 # endereço de memória inicial
	
	lw $s1, 0($s0)  # recuperar x1
	lw $s2, 4($s0)  # recuperar x2
	lw $s3, 8($s0)  # recuperar x3
	lw $s4, 12($s0) # recuperar x4
	
	add $t1, $s1, $s2
	add $t1, $t1, $s3
	add $s5, $t1, $s4
	
	sw $s5, 16($s0)
# fim
	

.data

x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1
