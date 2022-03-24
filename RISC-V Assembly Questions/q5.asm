loop:
lb x10, 1025(x0)

addi x9, zero, 13 
beq x10, x9, end #if x10 == enter (final da string)

addi x9, zero, 97
beq x10, x9, sum #if x10 == a

addi x9, zero, 101
beq x10, x9, sum #if x10 == e

addi x9, zero, 105
beq x10, x9, sum #if x10 == i

addi x9, zero, 111
beq x10, x9, sum #if x10 == o

addi x9, zero, 117
beq x10, x9, sum #if x10 == u

jal x0, loop

sum:
addi x11, x11, 1
jal x0, loop

end:
addi x11, x11, 48
sb x11, 1024(x0)
halt
