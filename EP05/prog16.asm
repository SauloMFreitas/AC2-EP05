# // programa 16
# Escreva um programa que avalie a expressão: (x*y)/z.
# Use x = 1600000 (=0x186A00), y = 80000 (=0x13880), e z = 400000 (=0x61A80). Inicializar os
# registradores com os valores acima.

#associações:
# x -> $s1
# y -> $s2
# z -> $s3

#inicio
.text
.globl main
main: 
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16    # endereço inicial
	
	lw $s1, 0($s0) # recupera x
	lw $s2, 4($s0) # recupera y
	lw $s3, 8($s0) # recupera z
	
	div $s1, $s3
	mflo $t1
	
	mult $t1, $s2
	mflo $s4
	
	sw $s4, 12($s0) # salva a
#fim
.data
x: .word 0x186A00
y: .word 0x13880
z: .word 0x61A80
a: .word 0
