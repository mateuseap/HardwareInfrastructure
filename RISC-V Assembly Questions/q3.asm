addi x10, zero, 0xffff0000
addi x11, zero, 0x0000ffff

andi x9, x10, 0x7f8 #todos os bits, exceto os de 4 até 11, serão zerados
slli x9, x9, 16 #deslocando os bits de 4 até 11 para 20 até 27

andi x11, x11, 0xf807ffff #zerando apenas os bits de 20 até 27
or x11, x11, x9
