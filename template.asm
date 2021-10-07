.data 
goAgainMessage: .asciiz "\nTry another test case? (y/n): "
goAgainInput: .space 5
exitMessage: .asciiz "\nProgram Terminated. "
inmsg: .asciiz "\nEnter a number : "
omsg: .asciiz "\nYou Entered : "

.text

main:
    ############ Write the code here ################
    # Take Input
    la $a0, inmsg
    li $v0, 4
    syscall

    li	$v0, 5		        
    syscall                     
    move 	$t0, $v0		      
    
    # Print Integer
    la $a0, omsg
    li $v0, 4
    syscall

    li	$v0, 1		        
    move $a0, $t0		    
    syscall

    


    ############ Write the code here ################
    
    j goAgainX

goAgainX:
        la $a0, goAgainMessage
        li $v0, 4
        syscall
        li $a1, 4
        la $a0, goAgainInput    #ask the user if they want to go again.
        li $v0, 8 
        syscall
        lb $t0, ($a0)
        beq $t0, 121, goAgain
        j exit


exit:
    la $a0, exitMessage
    li $v0, 4   #print exit message and get outa' here. 
    syscall
    li $v0, 10
    syscall

goAgain:
    loopReset:
        beqz $t9, main  #erase all junk still in the memory from last main call, then return to main. 
        addi $t9, $t9, -1
        sb $zero, ($a0)
        addi $a0, $a0, 1
        j loopReset
