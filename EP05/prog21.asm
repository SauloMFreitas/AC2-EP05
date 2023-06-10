# // programa 21
# y = x 3 + 1 se x > 0
# x 4 - 1 se x <= 0
# Os valores de x devem ser lidos da primeira posição livre da memória e o valor de y deverá ser
# escrito na segunda posição livre.
#associações:
# x ->  $s1
# y -> $s2

#inicio
.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16   # endereço inicial
	
	lw $s1, 0($s0)  # recupera x 
	
	beq $s1, $0, op2
	srl $t1, $s1, 31
	beq $t1, 1, op2
	j op1
		
	
	
op1:
	mult $s1, $s1
	mflo $t2      # x²
	mult $t2, $s1
	mflo $t2      # X³
	addi $s2, $t2, 1
	j fim

op2:
	mult $s1, $s1
	mflo $t2      # x²
	mult $t2, $t2
	mflo $t2      # X⁴
	sub $s2, $t2, 1
	j fim

fim:
	sw $s2, 4($s0)
#fim
	
.data
x: .word 2
# x: .word -2
# x: .word 0
y: .word 0
