#/ programa 5
# {
# x = 100000; 
# y = 200000; 
# z = x + y; 
# }
#associações:
# x -> $s0
# y -> $s1
# z -> $s2

# inicio

.text
.globl main
main:
	ori $t0, $zero, 0x186a 
	sll $s0, $t0, 4        # x = 100000; x -> $s0
	
	ori $t1, $zero, 0x30d4
	sll $s1, $t1, 4        # y = 200000; y -> $s1
	
	add $s2, $s0, $s1
# fim

