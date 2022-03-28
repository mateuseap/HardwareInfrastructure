primeiro_input:
	lb x10, 1028(x0)
	andi x10, x10, 0x1

	addi x9, zero, 0x1
	beq x10, x9, printa_zero

	addi x9, zero, 0x2
	beq x10, x9, printa_um

	jal x11, primeiro_input

printa_zero:
	lb x10, 20(x0)
	sb x10, 1027(x0)
	lb x10, 20(x0)
	sb x10, 1027(x0)

	lb x12, 1028(x0) #lendo a entrada digital
	andi x12, x12, 0x1

	addi x9, zero, 0x2
	beq x12, x9, printa_um

	jal x11, printa_zero

printa_um:
	lb x10, 21(x0)
	sb x10, 1027(x0)
	lb x10, 21(x0)
	sb x10, 1027(x0)

	lb x12, 1028(x0) #lendo a entrada digital
	andi x12, x12, 0x1

	addi x9, zero, 0x1
	beq x12, x9, printa_zero

	jal x11, printa_um

printa_sete:
	lb x10, 22(x0)
	sb x10, 1027(x0)
	lb x10, 22(x0)
	sb x10, 1027(x0)

	lb x12, 1028(x0) #lendo a entrada digital
	andi x12, x12, 0x1

	addi x9, zero, 0x1
	beq x12, x9, printa_zero

	jal x11, printa_um	

zero: .byte b111111
um: .byte b000110
#dois: 
#tres:
#quatro:
#quinto:
#seis: 
sete: .byte b000111
#oito 
#nove:



