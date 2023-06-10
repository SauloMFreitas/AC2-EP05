# // programa 11
# Considere o seguinte programa: y = x – z + 300000
# Faça um programa que calcule o valor de y conhecendo os valores de x e z. Os valores de x e z
# estão armazenados na memória e, na posição imediatamente a seguir, o valor de y deverá ser
# escrito, ou seja:
# .data
# x: .word 100000
# z: .word 200000
# y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa.
#associações:
# x -> $s1
# y -> $s3
# z -> $s2

# inicio
.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16    # endereço de memória inicial
	
	lw $s1, 0($s0) # recupera x da memória
	lw $s2, 4($s0) # recurera z da memória
	
	ori $t1, $zero, 0x493e
	sll $t1, $t1, 4 # $t1 =  300000
	
	sub $t2, $s1, $s2 # x - z
	add $s3, $t2, $t1 #  y = x – z + 300000
	
	sw $s3, 8($s0) 
#fim
.data
x: .word 100000
z: .word 200000
y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa.
