palavra1:
lb x10, 1025(x0)

addi x9, zero, 13
beq x10, x9, palavra2 #if x10 == enter (final da string)

addi x9, zero, 65
beq x10, x9, p1_1point #if x10 == A

addi x9, zero, 69
beq x10, x9, p1_1point #if x10 == E

addi x9, zero, 73 
beq x10, x9, p1_1point #if x10 == I

addi x9, zero, 79
beq x10, x9, p1_1point #if x10 == O

addi x9, zero, 85
beq x10, x9, p1_1point #if x10 == U

addi x9, zero, 68
beq x10, x9, p1_2points #if x10 == D

addi x9, zero, 71
beq x10, x9, p1_2points #if x10 == G

addi x9, zero, 84
beq x10, x9, p1_2points #if x10 == T

addi x9, zero, 66
beq x10, x9, p1_3points #if x10 == B

addi x9, zero, 67
beq x10, x9, p1_3points #if x10 == C

addi x9, zero, 77
beq x10, x9, p1_3points #if x10 == M

addi x9, zero, 78
beq x10, x9, p1_3points #if x10 == N

addi x9, zero, 80
beq x10, x9, p1_3points #if x10 == P

addi x9, zero, 70
beq x10, x9, p1_4points #if x10 == F

addi x9, zero, 72
beq x10, x9, p1_4points #if x10 == H

addi x9, zero, 86
beq x10, x9, p1_4points #if x10 == V

addi x9, zero, 87
beq x10, x9, p1_4points #if x10 == W

addi x9, zero, 89
beq x10, x9, p1_4points #if x10 == Y

addi x9, zero, 75
beq x10, x9, p1_5points #if x10 == K

addi x9, zero, 82
beq x10, x9, p1_5points #if x10 == R

addi x9, zero, 83
beq x10, x9, p1_5points #if x10 == S

addi x9, zero, 74
beq x10, x9, p1_8points #if x10 == J

addi x9, zero, 76
beq x10, x9, p1_8points #if x10 == L

addi x9, zero, 88
beq x10, x9, p1_8points #if x10 == X

addi x9, zero, 81
beq x10, x9, p1_10points #if x10 == Q

addi x9, zero, 90
beq x10, x9, p1_10points #if x10 == Z

jal x0, palavra1

palavra2:
lb x10, 1025(x0)

addi x9, zero, 13
beq x10, x9, end #if x10 == enter (final da string)

addi x9, zero, 65
beq x10, x9, p2_1point #if x10 == A

addi x9, zero, 69
beq x10, x9, p2_1point #if x10 == E

addi x9, zero, 73 
beq x10, x9, p2_1point #if x10 == I

addi x9, zero, 79
beq x10, x9, p2_1point #if x10 == O

addi x9, zero, 85
beq x10, x9, p2_1point #if x10 == U

addi x9, zero, 68
beq x10, x9, p2_2points #if x10 == D

addi x9, zero, 71
beq x10, x9, p2_2points #if x10 == G

addi x9, zero, 84
beq x10, x9, p2_2points #if x10 == T

addi x9, zero, 66
beq x10, x9, p2_3points #if x10 == B

addi x9, zero, 67
beq x10, x9, p2_3points #if x10 == C

addi x9, zero, 77
beq x10, x9, p2_3points #if x10 == M

addi x9, zero, 78
beq x10, x9, p2_3points #if x10 == N

addi x9, zero, 80
beq x10, x9, p2_3points #if x10 == P

addi x9, zero, 70
beq x10, x9, p2_4points #if x10 == F

addi x9, zero, 72
beq x10, x9, p2_4points #if x10 == H

addi x9, zero, 86
beq x10, x9, p2_4points #if x10 == V

addi x9, zero, 87
beq x10, x9, p2_4points #if x10 == W

addi x9, zero, 89
beq x10, x9, p2_4points #if x10 == Y

addi x9, zero, 75
beq x10, x9, p2_5points #if x10 == K

addi x9, zero, 82
beq x10, x9, p2_5points #if x10 == R

addi x9, zero, 83
beq x10, x9, p2_5points #if x10 == S

addi x9, zero, 74
beq x10, x9, p2_8points #if x10 == J

addi x9, zero, 76
beq x10, x9, p2_8points #if x10 == L

addi x9, zero, 88
beq x10, x9, p2_8points #if x10 == X

addi x9, zero, 81
beq x10, x9, p2_10points #if x10 == Q

addi x9, zero, 90
beq x10, x9, p2_10points #if x10 == Z

jal x0, palavra2

p1_1point:
	addi x11, x11, 1
	jal x0, palavra1

p2_1point:
	addi x13, x13, 1
	jal x0, palavra2

p1_2points:
	addi x11, x11, 2
	jal x0, palavra1

p2_2points:
	addi x13, x13, 2
	jal x0, palavra2

p1_3points:
	addi x11, x11, 3
	jal x0, palavra1

p2_3points:
	addi x13, x13, 3
	jal x0, palavra2

p1_4points:
	addi x11, x11, 4
	jal x0, palavra1

p2_4points:
	addi x13, x13, 4
	jal x0, palavra2

p1_5points:
	addi x11, x11, 5
	jal x0, palavra1

p2_5points:
	addi x13, x13, 5
	jal x0, palavra2

p1_8points:
	addi x11, x11, 8
	jal x0, palavra1

p2_8points:
	addi x13, x13, 8
	jal x0, palavra2

p1_10points:
	addi x11, x11, 10
	jal x0, palavra1

p2_10points:
	addi x13, x13, 10
	jal x0, palavra2

end:
	addi x9, zero, 10
	bge x11, x9, divide	

	addi x11, x11, 48
	addi x13, x13, 48
	
	addi x9, zero, 74 #x9 == J
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 103 #x9 == g
	sb x9, 1024(x0)
	addi x9, zero, 97 #x9 == a
	sb x9, 1024(x0)
	addi x9, zero, 100 #x9 == d
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 114 #x9 == r
	sb x9, 1024(x0)
	addi x9, zero, 32 #x9 == espaço
	sb x9, 1024(x0) 
	addi x9, zero, 49 #x9 == 1
	sb x9, 1024(x0)
	addi x9, zero, 13
	sb x9, 1024(x0)
	sb x11, 1024(x0) #Pontuação do Jogador 1

	addi x9, zero, 13
	sb x9, 1024(x0)

	addi x9, zero, 74 #x9 == J
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 103 #x9 == g
	sb x9, 1024(x0)
	addi x9, zero, 97 #x9 == a
	sb x9, 1024(x0)
	addi x9, zero, 100 #x9 == d
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 114 #x9 == r
	sb x9, 1024(x0)
	addi x9, zero, 32 #x9 == espaço
	sb x9, 1024(x0) 
	addi x9, zero, 50 #x9 == 2
	sb x9, 1024(x0)
	addi x9, zero, 13
	sb x9, 1024(x0)
	sb x13, 1024(x0) #Pontuação do Jogador 2

	addi x9, zero, 13
	sb x9, 1024(x0)

	beq x11, x13, empate	
	
	addi x9, zero, 74 #x9 == J
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 103 #x9 == g
	sb x9, 1024(x0)
	addi x9, zero, 97 #x9 == a
	sb x9, 1024(x0)
	addi x9, zero, 100 #x9 == d
	sb x9, 1024(x0)
	addi x9, zero, 111 #x9 == o
	sb x9, 1024(x0)
	addi x9, zero, 114 #x9 == r
	sb x9, 1024(x0)
	addi x9, zero, 32 #x9 == espaço
	sb x9, 1024(x0)
	
	blt x11, x13, p2_win #Se o Jogador 2 fez mais pontos que o Jogador 1

	addi x9, zero, 49 #x9 == 1
	sb x9, 1024(x0)

	addi x9, zero, 32 #x9 == espaço
	sb x9, 1024(x0) 
	
	addi x9, zero, 118 #x9 == v
	sb x9, 1024(x0)
	addi x9, zero, 101 #x9 == e
	sb x9, 1024(x0)
	addi x9, zero, 110 #x9 == n
	sb x9, 1024(x0)
	addi x9, zero, 99 #x9 == c
	sb x9, 1024(x0)
	addi x9, zero, 101 #x9 == e
	sb x9, 1024(x0)
	addi x9, zero, 117 #x9 == u
	sb x9, 1024(x0) 
	addi x9, zero, 33 #x9 == !
	sb x9, 1024(x0)

	halt

divide:
	halt

empate:
	addi x9, zero, 69 #x9 == E
	sb x9, 1024(x0)
	addi x9, zero, 109 #x9 == m
	sb x9, 1024(x0)
	addi x9, zero, 112 #x9 == p
	sb x9, 1024(x0)
	addi x9, zero, 97 #x9 == a
	sb x9, 1024(x0)
	addi x9, zero, 116 #x9 == t
	sb x9, 1024(x0)
	addi x9, zero, 101 #x9 == e
	sb x9, 1024(x0)
	addi x9, zero, 33 #x9 == !
	sb x9, 1024(x0)

	halt

p2_win:
	addi x9, zero, 50 #x9 == 2
	sb x9, 1024(x0)

	addi x9, zero, 32 #x9 == espaço
	sb x9, 1024(x0) 
	
	addi x9, zero, 118 #x9 == v
	sb x9, 1024(x0)
	addi x9, zero, 101 #x9 == e
	sb x9, 1024(x0)
	addi x9, zero, 110 #x9 == n
	sb x9, 1024(x0)
	addi x9, zero, 99 #x9 == c
	sb x9, 1024(x0)
	addi x9, zero, 101 #x9 == e
	sb x9, 1024(x0)
	addi x9, zero, 117 #x9 == u
	sb x9, 1024(x0) 
	addi x9, zero, 33 #x9 == !
	sb x9, 1024(x0)

	halt
