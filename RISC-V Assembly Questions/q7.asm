readnumber:
	lb x10, 1025(x0) #o resultado da soma do valor fatorial de cada digito será armazenado no registrador x12

	addi x9, zero, 13 #x9 = enter
	beq x10, x9, end
	
	addi x9, zero, 48 #x9 = '0'
	beq x10, x9, fat0

	addi x9, zero, 49 #x9 = '1'
	beq x10, x9, fat1

	addi x9, zero, 50 #x9 = '2'
	beq x10, x9, fat2

	addi x9, zero, 51 #x9 = '3'
	beq x10, x9, fat3

	addi x9, zero, 52 #x9 = '4'
	beq x10, x9, fat4

	addi x9, zero, 53 #x9 = '5'
	beq x10, x9, fat5

	addi x9, zero, 54 #x9 = '6'
 	beq x10, x9, fat6

	addi x9, zero, 55 #x9 = '7'
	beq x10, x9, fat7

	addi x9, zero, 56 #x9 = '8'
	beq x10, x9, fat8

	addi x9, zero, 57 #x9 = '9'
	beq x10, x9, fat9

	jal x16, readnumber

fat0:
	addi x12, x12, 0x1 #somando 0! = 1
	jal x16, readnumber

fat1:
	addi x12, x12, 0x1 #somando 1! = 1
	jal x16, readnumber

fat2:
	addi x12, x12, 0x2 #somando 2! = 2
	jal x16, readnumber

fat3:
	addi x12, x12, 0x6 #somando 3! = 6
	jal x16, readnumber

fat4:
	addi x12, x12, 0x18 #somando 4! = 24
	jal x16, readnumber

fat5:
	addi x12, x12, 0x78 #somando 5! = 120
	jal x16, readnumber 

fat6:
	addi x12, x12, 0x2d0 #somando 6! = 720
	jal x16, readnumber	

fat7:
	addi x12, x12, 0x13b0 #somando 7! = 5040
	jal x16, readnumber

fat8:
	addi x12, x12, 0x9d80 #somando 8! = 40320
	jal x16, readnumber

fat9:
	addi x12, x12, 0x58980 #somando 9! = 362880
	jal x16, readnumber

end:
	halt

