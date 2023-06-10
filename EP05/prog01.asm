# programa 1 (add, addi, sub, l�gicas)
# {
# a =2;
# b =3; 
# c =4; 
# d =5; 
# x = (a+b) - (c+d);
# y = a - b + x; 
# b = x - y;
# }
# Associações:
# a -> $s0
# b -> $s1
# c -> $s2
# d -> $s3
# x -> $s4
# y -> $s5


# inicio
.text
.globl main

main:
	ori $s0, $zero, 2 # a =2; a -> $s0
	ori $s1, $zero, 3 # b =3; b -> $s1
	ori $s2, $zero, 4 # c =4; C -> $s2
	ori $s3, $zero, 5 # d =5; d -> $s3
	
	add $t0, $s0, $s1 # a + b
	add $t1, $s2, $s3 # c + d
	sub $s4, $t0, $t1 # x = (a+b) - (c+d);
	sub $s5, $s0, $s1 # y = a - b + x;
	sub $s1, $s4, $s5 # b = x - y;

# fim
