# given and input integer we need to find if it is even or odd
.data
    nl: .asciiz "\n"
    inmsg: .asciiz "Enter and integer : "
    oddmsg: .asciiz "The given integer is odd."
    evenmsg: .asciiz "The given integer is even."

.text

main: 
    la $a0, inmsg
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    li $t1, 2

    div $t3, $t0, $t1 # division of number with 2 and quotient in t3
    mfhi $s1 # mfhi is the remainder operator stores remainder in s1

    beqz $s1, label1
    bnez $s1, label2

label1:
    la $a0, evenmsg
    li $v0, 4
    syscall

    li $v0, 10
    syscall

label2:
    la $a0, oddmsg
    li $v0, 4
    syscall

    li $v0, 10
    syscall


    #@RohithGattu

