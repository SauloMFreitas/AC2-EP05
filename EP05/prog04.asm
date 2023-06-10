# // programa 4
# {
# x = 3;  
# y = 4 ;
# z = ( 15*x + 67*y)*4; 
# }
# associações:
# x -> $s0
# y -> $s1
# z -> $S2

# inicio

.text
.globl main

main:
	ori $s0, $zero, 3 # x = 3;  x -> $s0
	ori $s1, $zero, 4 # y = 4 ; y -> $s1
	sll $t0, $s0, 4   #  x * 16 = 16x
	sub $t0, $t0, $s0 # 16x - 1 = 15x
	
	sll $t1, $s1, 6   # y * 64  = 64y
	add $t1, $t1, $s1 # 64y+y   = 65y
	add $t1, $t1, $s1 # 65y+y   = 66y
	add $t1, $t1, $s1 # 66y+y   = 67y
	
	add $t2, $t0, $t1 #  15*x + 67*y
	
	sll $s2, $t2, 2 # ( 15*x + 67*y)*4
# fim
