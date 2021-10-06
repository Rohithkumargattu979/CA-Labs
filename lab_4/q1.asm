# MIPS code to find the maximum and minimum of two integer numbers
.data
    in1msg: .asciiz "Enter input1 : "
    in2msg: .asciiz "Enter input2 : "
    minmsg: .asciiz "The minimum of two numbers is : "
    maxmsg: .asciiz "The maximum of two numbers is : "
    nl: .asciiz "\n"

.text

main:
    la $a0, in1msg
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    la $a0, nl
    li $v0, 4
    syscall

    la $a0, in2msg
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    
    move $t1, $v0

    la $a0, nl
    li $v0, 4
    syscall

    blt $t0, $t1, label1 # if statement if t0 < t1 go to label1
    blt $t1, $t0, label2 # if statement : if t1 < t0 go to label2

label1: 
    la $a0, maxmsg
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, nl
    li $v0, 4
    syscall

    la $a0, minmsg
    li $v0, 4
    syscall

    move $a0, $t0
    li $v0, 1
    syscall

    li $v0, 10
    syscall

label2: 
    la $a0, maxmsg
    li $v0, 4
    syscall

    move $a0, $t0
    li $v0, 1
    syscall

    la $a0, nl
    li $v0, 4
    syscall

    la $a0, minmsg
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    li $v0, 10
    syscall


    #@RohithGattu





