.data
    imsg: .asciiz "Enter any Number: "
    omsg: .asciiz "You Entered: "

.text
.globl main

main:
    # Print Input Message
    li	$v0, 4	#load 4 to print a string	        
    la	$a0, imsg		     
    syscall #invoke system call

    # Take Input
    li	$v0, 5	#load 5 to read integer	        
    syscall                     
    move $t0, $v0  #move the read contents to reg t0

    # Print Output Message
    li	$v0, 4		        
    la	$a0, omsg		     
    syscall
    
    # Print Integer
    li	$v0, 1		        
    move 	$a0, $t0		    
    syscall
    
    #exit
    li	$v0, 10	 #load 10 to exit      
    syscall
    
    #@RohithGattu
