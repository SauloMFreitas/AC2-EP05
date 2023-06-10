# // programa 14:
# Escreva um programa que leia um valor A da memória, identifique se o número é par ou não.
# Um valor deverá ser escrito na segunda posição livre da memória (0 para par e 1 para ímpar).

# associaçoes:
# x -> $s1

#inicio
.text
.globl main

main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16    # endereço inicial 
	
	lw $s1, 0($s0)   #recupera x
	sll $t1, $s1, 31
	srl $s2, $s1, 31
	
	sw $s2, 4($s0)
#fim
.data

x: .word 2
