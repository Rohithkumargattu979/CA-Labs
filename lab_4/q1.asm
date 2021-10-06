#scan and  print the double values

.data
val1: .double 0.123456
nl: .asciiz "\n"
imsg: .asciiz "Enter any double number : "
omsg: .asciiz "You entered : "

.text

main:
	l.d $f12, val1
	li $v0, 3 #print the float
	syscall
	
	la $a0, nl
	li $v0, 4
	syscall
	
	la $a0, imsg
	li $v0, 4
	syscall
	
	li $v0, 7 #to read the float from input
	syscall
	
	la $a0, nl
	li $v0, 4
	syscall
	
	la $a0, omsg
	li $v0, 4
	syscall
 	
	mov.d $f12, $f0 #after reading it will be stored in $f0
	li $v0, 3 #print the float
	syscall #invoke the system call
	
	#exit
	li $v0, 10
	syscall


	#@RohithGattu