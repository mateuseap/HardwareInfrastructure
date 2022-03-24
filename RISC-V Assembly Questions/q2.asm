addi x10, zero, 0 #a = 0
addi x11, zero, 32 #b = 32
addi x12, zero, 26 #c = 26
addi x13, zero, 50 #x = 50 (um valor qualquer)
addi x14, zero, 32 #salvando o valor 32 nesse reg para futuras comparações
addi x15, zero, 25 #salvando o valor 25 nesse reg para futuras comparações
addi x13, zero, 0 #atualizando o valor de x para 0

bge x10, zero, condition2 #if a >= 0 go to condition2
jal x0, end #else go to end

condition2:
	bge x14, x11, condition3 #if b <= 32 go to condition3
    jal x0, end #else go to end
condition3:
	blt x15, x12, change_X_value #if c > 25 go to change_X_value
    jal x0, end #else go to end
change_X_value:
	addi x13, zero, 1 #atualizando o valor de x para 1
	halt
end: 
halt



