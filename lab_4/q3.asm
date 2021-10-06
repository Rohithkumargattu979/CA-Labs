# MIPS program to find sum of n natural numbers

.data
    nl: .asciiz "\n"
    inmsg: .asciiz "Enter an integer : "
    outmsg: .asciiz "The sum of integers is : "

.text

main:
    la $a0, inmsg
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0 # $t0 stores n

    # we use for loop to find the sum

    li $t1, 0
    li $t2, 1

loop:
    bgt $t2, $t0, label1  # if t2 > t0 then go to label1 statement
    add $t1, $t1, $t2 # t1 += t2 --> sum of so far t2 values
    addi $t2, $t2, 1 # t2++;
    j loop # go to loop line again



label1:
    la $a0, outmsg
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    li $v0, 10
    syscall


    #@RohithGattu