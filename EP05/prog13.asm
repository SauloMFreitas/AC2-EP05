# // programa 13:
# Escreva um programa que leia um valor A da memória, identifique se o número é negativo ou
# não e encontre o seu módulo. O valor deverá ser reescrito sobre A.

#associações:
# x -> $s1

#inicio
.text
.globl main

main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16   # endereço inicial
	
	lw $s1, 0($s0)   # recupera x
	srl $t1, $s1, 31 # pega o ultimo bit do conjunto
	
	beq $t1, $zero, end # verifica se é positivo
	j negativo          # pula negativo

negativo: # inverte o numero para positivo
	sub $t2, $s1, 1 
	ori $t3, $zero, 0xffff
	sll $t3, $t3, 16
	ori $t3, $t3, 0xffff
	xor $s2, $t2, $t3
	sw $s2, 0($s0)
	j end
	

end:
#fim programa

.data

x: .word -7
