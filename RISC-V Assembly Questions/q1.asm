addi x10, zero, 10 #a = 10
addi x11, zero, 10 #b = 10
addi x12, zero, 12 #m = 12

#m = a
addi x12, x10, 0

#if b == m
beq x11, x12, b_a

sub x12, x10, x11
halt

b_a:
sub x12, x11, x10
halt
