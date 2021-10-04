.data
inp1: .asciiz "Enter Input 1 : "
inp2: .asciiz "Enter Input 2 : "
addd: .asciiz "Addition of given numbers is : "
subb: .asciiz "Subtraction of given numbers is : "
newline: .asciiz "\n"

.text
.globl main

main:
	la $a0, inp1 #ask message for input1
	li $v0, 4 #loading for printing the string
	syscall # invoking system call
	
	li $v0, 5 # reading integer
	syscall # invoking system call
	
	move $t0, $v0 #moving input1 to $t0

	la $a0, inp2 
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0

	add $t2, $t0, $t1 #adding t0, t1 and storing in t2
	
	la $a0, addd # load address to print addition string
	li $v0, 4 #load 4 to print string
	syscall
	
	move $a0, $t2 #load added value to print it
	li $v0,1 #load 1 to print integer
	syscall

	la $a0, newline
	li $v0, 4
	syscall
	
	sub $t3, $t0, $t1 #subtraction of t0,t1
	
	la $a0, subb # load address toprint subtraction string
	li $v0, 4 #load 4 to print string
	syscall
	
	move $a0, $t3 #load subtracted value to print it
	li $v0, 1 #load 1 to print integer
	syscall
 
  	#exit
	li $v0, 10
	syscall


	#@RohithGattu

	
