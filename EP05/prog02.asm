# //programa 2 (add, addi, sub, l�gicas)
# {
# x = 1;
# y = 5*x + 15;
# }

# associações:
# x -> $s0
# y -> $s1

# inicio
.text
.globl main

main:
	ori $s0, $zero, 1 # x = 1; x -> $s0
	add $t0, $s0, $s0 # x + x
	add $t0, $t0, $t0 # 2x + 2x
	add $t0, $t0, $s0 # 4x + x
	addi $s1, $t0, 15 # y = 5x + 15
	
# fim