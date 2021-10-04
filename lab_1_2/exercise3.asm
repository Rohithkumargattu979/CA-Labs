.data
nl: .asciiz "\n"
addMsg: .asciiz "The Sum is: "
subMsg: .asciiz "The Diff is: "

.text
.globl main

main:
    # Set Variables 
    li	$t1, 10		        
    li	$t2, 15		        
    
    la	$a0, addMsg		    
    li	$v0, 4		        
    syscall

    add	$t0, $t1, $t2		
    addi	$a0, $t0, 0		
    li	$v0, 1		        
    syscall

    la	$a0, nl		        
    li	$v0, 4		        
    syscall

    la	$a0, subMsg		   
    li	$v0, 4		        
    syscall

    sub	$t0, $t1, $t2		
    addi	$a0, $t0, 0		
    li		$v0, 1		        
    syscall

    la		$a0, nl		        
    li		$v0, 4		        
    syscall

    li		$v0, 10		        
	syscall
    