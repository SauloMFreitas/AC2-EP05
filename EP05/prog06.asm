# // programa 6
# {
# x = o maior inteiro possível; maior inteiro = 0x7fffffff | 
# y = 300000; 
# z = x - 4y  
# }
#associações:
# x -> $s0
# y -> $s1
# z -> $s2

#iniicio
.text
.globl main
main:
	ori $t0, $zero, 0x7fff
	sll $t0, $t0, 16
	ori $s0, $t0, 0xffff # x = 0x7fffffff
	
	ori $t1, $zero, 0x493e
	sll $s1, $t1, 4 # y =  300000
	
	sll $t2, $s1, 2
	sub $s2, $s0, $t2
	
#fim

