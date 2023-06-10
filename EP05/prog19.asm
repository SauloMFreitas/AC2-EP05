# // programa 19
# Escrever um programa que leia dois números da memória, a primeira e segunda posições
# respectivamente (os coloque em $s0 e $s1) e determine a quantidade de bits significantes de cada
# um. Coloque as respostas em $t0 e $t1, a partir desse resultado faça a multiplicação. Caso o número
# de bits significantes de ambos seja menor do que 32 a resposta deverá estar apenas em $s2, caso
# contrário a resposta estará em $s2 e $s3 (LO e HI respectivamente).

#inicio
.text
.globl main

main: 
	ori $t7, $0, 0x1001
	sll $s7, $t7, 16    # endereço inicial
	
	lw $s0, 0($s7) # recupera x
	lw $s1, 4($s7) # recupera y
	
	mult $s0, $s1
	
	mflo $t0
	mfhi $t1
	
	beq $t1, 0, menor32bits
	j maior32bits


menor32bits:
	ori $s2, $t0, 0
	j fim

maior32bits:
	ori $s2, $t0, 0
	ori $s3, $t1, 0
	j fim
	
fim:
#fim


.data
x: .word 3000000000
y: .word 2
