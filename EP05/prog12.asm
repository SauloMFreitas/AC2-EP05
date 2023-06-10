# // programa 12
# Considere a seguinte situação:
# int ***x;
# onde x contem um ponteiro para um ponteiro para um ponteiro para um inteiro.
# Nessa situação, considere que a posição inicial de memória contenha o inteiro em questão.
# Coloque todos os outros valores em registradores, use os endereços de memória que quiser dentro
# do espaço de endereçamento do Mips.
# Resumo do problema:
# k = MEM [ MEM [MEM [ x ] ] ].
# Crie um programa que implemente a estrutura de dados acima, leia o valor de K, o multiplique por
# 2 e o reescreva no local correto conhecendo-se apenas o valor de x.

#associações:
# x    -> $s4
# *x   -> $s3
# **x - > $s2
# ***x -> $s1

# inicio
.text
.globl main

main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16
	lw $s1, 0($s0) # recupera o endereço ***x
	lw $s2, 0($s1) # recupera o endereço **x
	lw $s3, 0($s2) # recupera o endereço *x
	lw $s4, 0($s3) # recupera x
	ori $t2, $0, 2
	mult $s4, $t2 # multiplica x
	mflo $s5
	sw $s5, 0($s3) # salva x novamente em sua memória corretamente
# fim
.data
pppx: .word 0x10010004
ppx:  .word 0x10010008
px:   .word 0x1001000c
x:    .word 3
