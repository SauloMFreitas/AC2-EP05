# // programa 10
# Considere o seguinte programa: y = 127x – 65z + 1
# Faça um programa que calcule o valor de y conhecendo os valores de x e z. Os valores de x e z
# estão armazenados na memória e, na posição imediatamente a seguir, o valor de y deverá ser
# escrito, ou seja:
# .data
# x: .word 5
# z: .word 7
# y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa

#inicio
.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16    # endereço inicial
	
	lw $s1, 0($s0) # recuperar x da memória
	lw $s2, 4($s0) # recuperar y da memória
	
	sll $t1, $s1, 7 # 128 x
	sub $t1, $t1, $s1 # 127x = 128x - x
	
	sll $t2, $s2, 6   # 64 z
	add $t2, $t2, $s2 # 65 z = 64z + z
	
	sub $t3, $t1, $t2 # 127x – 65z 
	
	addi $s3, $t3, 1 #y = 127x – 65z + 1
	
	sw $s3, 8($s0) #salva na memória
#fim
	

.data
x: .word 5
z: .word 7
y: .word 0
