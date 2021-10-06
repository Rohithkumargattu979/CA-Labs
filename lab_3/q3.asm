# adding and subtracting float using add.d, add.s, sub.s, neg.s 
.data
    ff1: .float 1.50000
    ff2: .float 0.50000
    dd1: .double 3.000000000
    dd2: .double 1.200000000
    nl: .asciiz "\n"
    addm: .asciiz "After Addition : "
    subm: .asciiz "Aftter Subtraction : "
    addnm: .asciiz "After negation and addition : "

.text
main:
    # load both float values in odd registers
    l.s $f1, ff1
    l.s $f3, ff2

    # compute addition on f1, f3 and store result in f5
    add.s $f5, $f1, $f3

    # output addition message
    la $a0, addm # load the addition message
    li $v0, 4
    syscall # invoke system call

    # move final addition value to the print argument f12
    mov.s $f12, $f5
    li $v0, 2 # load 2 in v0 to print floating value
    syscall

    # compute subtraction on f1, f3 and store the result in f5
    sub.s $f5, $f1, $f3
    
    # load a new line
    la $a0, nl
    li $v0, 4
    syscall

    # output the subtraction message
    la $a0, subm
    li $v0, 4
    syscall

    # move final subtraction value to the print argument f12
    mov.s $f12, $f5
    li $v0, 2
    syscall

    #### subtraction using negation and addition ####

    # negate the ff2 and add them -> ff1 + (-ff2)
    neg.s $f3, $f3 #already ff2 is in f3

    # compute addition on f1 and -f3
    add.s $f5, $f1, $f3
    
    # load a new line
    la $a0, nl
    li $v0, 4
    syscall

    # output the negation addition message
    la $a0, addnm
    li $v0, 4
    syscall

    # move f5 to f12 
    mov.s $f12, $f5
    li $v0, 2
    syscall

    #exit
    li $v0, 10
    syscall
    
