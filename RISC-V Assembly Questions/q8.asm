seta_temperatura:
	lb x10, 0(x0)
	sb x10, 1030(x0)

	jal x16, le_temperatura

le_temperatura:
	lh x10, 1031(x0)

	addi x9, zero, 0xcc
	bge x9, x10, lessthan10 #x10 <= 10

	addi x9, zero, 0x132
	bge x9, x10, lessthan15if1 #x10 <= 15

	addi x9, zero, 0x199
	bge x9, x10, lessthan20if1 #x10 <= 20

	addi x9, zero, 0x1ff
	bge x9, x10, lessthan25if1 #x10 <= 25

	addi x9, zero, 0x265 
	bge x9, x10, lessthan30if1 #x10 <= 30

	addi x9, zero, 0x265
	blt x9, x10, gthan30 #x10 > 30

	jal x16, le_temperatura

gthan30:
	addi x10, zero, 3
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 6
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 9
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 10
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 11
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 5

	jal x16, seta_led

lessthan30if1:
	addi x9, zero, 0x213 #x10 >= 26
	bge x10, x9, lessthan30

lessthan30:
	addi x10, zero, 3
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 5
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 6
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 9
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 10
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 11

	jal x16, seta_led

lessthan25if1:
	addi x9, zero, 0x1ad #x10 >= 21
	bge x10, x9, lessthan25

lessthan25:
	addi x10, zero, 3
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 5
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 6
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 9
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 11
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 10

	jal x16, seta_led

lessthan20if1:
	addi x9, zero, 0x147 #x10 >= 16
	bge x10, x9, lessthan20

lessthan20:
	addi x10, zero, 3
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 5
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 6
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 10
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 11
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 9

	jal x16, seta_led

lessthan15if1:
	addi x9, zero, 0xe1 #x10 >= 11
	bge x10, x9, lessthan15

lessthan15:
	addi x10, zero, 3
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 5
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 9
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 10
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 11
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 6

	jal x16, seta_led

lessthan10:
	addi x10, zero, 5
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 6
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 9
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 10
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)

	addi x10, zero, 11
	addi x11, zero, 0
	sb x10, 1033(x0)
	sb x11, 1034(x0)
	
	addi x14, zero, 3

	jal x16, seta_led

seta_led:	
	add x10, zero, x14 #pino que vou utilizar
	addi x11, zero, 0xff #valor que eu vou escrever nesse pino
	sb x10, 1033(x0) #configurando o v-arduino para usar o pino

liga_led:
	sb x11, 1034(x0) #escreve o que eu tenho em x11 no pino
	jal x16, seta_temperatura
