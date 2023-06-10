# // programa 20
#    x⁴ + x³ -2x² se x for par
# y= 
#    x⁵ – x³ + 1 se x for impar
# Os valores de x devem ser lidos da primeira posição livre da memória e o valor de y deverá ser
# escrito na segunda posição livre.

#associações:
# x -> $s1
# y -> $s2

#inicio
.text
.globl main

main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16   # endereço inicial
	
	lw $s1, 0($s0)  # recupera x 
	
	sll $t1, $s1, 31
	srl $t1, $t1, 31
	
	beq $t1, $0, par
	j impar
	
	
par:
	mult $s1, $s1
	mflo $t2 # x²
	
	mult $t2, $s1
	mflo $t3 # x³
	
	mult $t3, $s1
	mflo $t4 # x⁴
	
	ori $t5, $0, 2
	mult $t2, $t5
	mflo $t6
	
	add $t7, $t4, $t3
	sub $s2, $t7, $t6
	
	j fim
	
		
	
impar:
	mult $s1, $s1
	mflo $t2 # x²
	
	mult $t2, $s1
	mflo $t3 # x³
	
	mult $t3, $s1
	mflo $t4 # x⁴
	
	mult $t4, $s1
	mflo $t5 # x⁵
	
	sub $t6, $t5, $t3
	addi, $s2, $t6, 1
	
	j fim
	
fim:
	sw $s2, 4($s0)
#fim
.data
x: .word 2
