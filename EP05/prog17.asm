# // programa 17
# Para a expressão a seguir, escreva um programa que calcule o valor de k:
# k = x * y (Você deverá realizar a multiplicação através de somas!)
# O valor de x deve ser lido da primeira posição livre da memória e o valor de y deverá lido da
# segunda posição livre. O valor de k, após calculado, deverá ainda ser escrito na terceira posição
# livre da memória.

#associações:
# x -> $s1
# y -> $s2

.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16    # endereço inicial
	lw $s1, 0($s0) # recupera x
	lw $s2, 4($s0) # recupera y
	or $t2, $0, $s2
	j multi
	
multi: # multiplicação
	add $t1, $t1, $s1
	sub $t2, $t2, 1
	beq $t2, 0, fim # verifica fim da repetição
	j multi # não fim da repetição, volta para inicio da label
	
fim:
	or $s3, $0, $t1
	sw $s3, 8($s0)
	
.data
x: .word 3
y: .word 8
k: .word 0
