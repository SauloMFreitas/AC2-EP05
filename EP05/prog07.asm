# //Programa 7
# Considere a seguinte instrução iniciando um programa:
# ori $8, $0, 0x01
# Usando apenas instruções reg-reg lógicas e/ou instruções de deslocamento (sll, srl e
# sra), continuar o programa de forma que ao final, tenhamos o seguinte conteúdo no
# registrador $8:
# $8 = 0xFFFFFFFF

#inicio

.text
.globl main
main:
	ori $8, $0, 0x01 # $8 -> $t0 = 0x01
	ori $9, $0, 0x02 # $9 -> $t1 = 0x02
	sub $8, $8, $9   # 1 - 2 = -1 -> -1 = 0xffffffff
#fim

