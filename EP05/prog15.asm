# // programa 15:
# Escrever um programa que crie um vetor de 100 elementos na memória onde vetor[i] = 2*i +
# 1. Após a última posição do vetor criado, escrever a soma de todos os valores armazenados
# do vetor.
# Use o MARS para verificar a quantidade de instruções conforme o tipo (ULA, Desvios, Mem ou
# Outras)

#associações:
# x -> $s1

#incio

.text
.globl main
main:
	ori $t0, $0, 0x1001
	sll $s0, $t0, 16   #endereço inicial
	ori $s1, $0, 0x0   # inicializa um registrador como 0
	
	j continue
	
continue:#repetição

	beq $s1, 100, end
	
	add $t1, $s1, $s1
	addi $s2, $t1, 1
	sw $s2, 0($s0)
	
	addi $s0, $s0, 4 #soma o endereco de memoria
	addi $s1, $s1, 1 #soma o contador
	j continue
	
end:
#fim
