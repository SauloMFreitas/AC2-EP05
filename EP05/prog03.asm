 # // programa 3 (add, addi, sub, l�gicas)
# {
# x = 3;  
# y = 4 ; 
# z = ( 15*x + 67*y)*4; 
# }
#associações:
# x -> $s0
# y -> $s1
# z -> $S2

#inicio

.text
.globl main

main:
	ori $s0, $zero, 3 # x = 3;  x -> $s0
	ori $s1, $zero, 4 # y = 4 ; y -> $s1
	add $t0, $s0, $s0 # 6 = x + x    =  2x
	add $t0, $t0, $t0 # 12 = 2x + 2x =  4x
	add $t0, $t0, $t0 # 24 = 4x + 4x =  8x
	add $t0, $t0, $t0 # 48 = 8x + 8x = 16x
	sub $t0, $t0, $s0 # 45 = 16x - x = 15x
	
	add $t1, $s1, $s1 # y+y     =  2y
	add $t1, $t1, $t1 # 2y+2y   =  4y
	add $t1, $t1, $t1 # 4y+4y   =  8y
	add $t1, $t1, $t1 # 8y+8y   = 16y
	add $t1, $t1, $t1 # 16y+16y = 32y
	add $t1, $t1, $t1 # 32y+32y = 64y
	add $t1, $t1, $s1 # 64y+y   = 65y
	add $t1, $t1, $s1 # 65y+y   = 66y
	add $t1, $t1, $s1 # 66y+y   = 67y
	
	add $t2, $t0, $t1 #  15*x + 67*y
	
	add $t2, $t2, $t2 # ( 15*x + 67*y)*2
	add $s2, $t2, $t2 # ( 15*x + 67*y)*4	
#fim