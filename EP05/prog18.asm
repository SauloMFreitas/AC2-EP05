# // programa 18
# Para a expressão a seguir, escreva um programa que calcule o valor de k:
# k=x^y
# obs: Você poderá utilizar o exercício anterior.
# O valor de x deve ser lido da primeira posição livre da memória e o valor de y deverá lido da
# segunda posição livre. O valor de k, após calculado, deverá ainda ser escrito na terceira posição
# livre da memória.
# Dê um valor para x e y (dê valores pequenos !!) e use o MARS para verificar a quantidade de
# instruções conforme o tipo (ULA, Desvios, Mem ou Outras)

#associações:
# x-> $s1
# y -> $s2

#inicio
.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16
	lw $s1, 0($s0)
	lw $s2, 4($s0)
	or $t3, $0, $s2
	or $t7, $0, $s1
	j pow
	
multi:
	add $t1, $t1, $t7
	sub $t2, $t2, 1
	beq $t2, 0, volta
	j multi

volta:
	ori $t7, $t1, 0
	ori $t1, $0, 0
	j pow
pow:
	sub $t3, $t3, 1
	beq $t3, 0, fim
	ori $t2, $s1, 0
	j multi
	
	
fim:
	or $s3, $0, $t7
	sw $s3, 8($s0)	
#fim

.data
x: .word 3
y: .word 3
k: .word 0
