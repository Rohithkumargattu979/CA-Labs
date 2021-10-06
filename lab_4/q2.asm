#conversions from single to double precisions and vice-versa
.data
ff1: .float 1.0049
dd1: .double 0.123456789
nl: .asciiz "\n"

.text

main:
    l.s $f1, ff1 #load the float value
    l.d $f4, dd1 #load the double value

    #conversion of float in f1 to double
    cvt.d.s $f8, $f1

    #conversion of double to float
    cvt.s.d $f15, $f4

    #print the float in f15
    mov.s $f12, $f15
    li $v0, 2 # to print float in f15 moved to f12 
    syscall

    la $a0, nl
    li $v0, 4 # to print string
    syscall

    #print the double in f8
    mov.d $f12, $f8
    li $v0, 3 #to print double in f8 moved to f12
    syscall

    #exit
    li $v0, 10
    syscall
    

    #@RohithGattu