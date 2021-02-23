.data
arr:       .word     3 11 22 33 73 64 41 11 
space:     .asciiz   " "
new_line:  .asciiz   "\n"
string: .asciiz       "Not possible\n"
string1: .asciiz      "Possible\n"


.text
.globl main
main:

   la      $t1, arr 
	li $t6,129
	li $a0,  8
	jal CheckSumPossibility
	 li $v0, 4 
	la $a0, string
	syscall
	   li $v0, 10
 	  syscall

CheckSumPossibility: 
	addi $sp, $sp, -16      
        sw   $t0, 0($sp)        
         sw   $ra, 4($sp)        
         sw   $t6, 12($sp)        
        bne  $a0, $zero, ELSE2  
        li   $v0, 0            
        addi $sp, $sp, 16       
        jr   $ra    
                    

ELSE2:     
        bne   $t6, $zero, ELSE3  
  	 li   $v0, 1             
        addi $sp, $sp, 16       
       li $v0, 4 
	la $a0, string
	syscall
        jr   $ra 
	
  
        
ELSE3: 

        sll  $t3,$t0, 2          
      add   $t1, $t1, $t3     
        lw    $t2, 0($t1)      
        blt   $t2, $t6, ELSE4
        sw    $t2, 8($sp)       
        move  $a1, $t0            
        jal   CheckSumPossibility
    

ELSE4:
addi  $a0,$a0,-1
	move  $a1, $t0            
        jal   CheckSumPossibility
        
        add $t1, $t1,$a1
         lw    $t2, 0($t1) 
	sub  $t6,$t6,$t2
	or   $v0, $v0, $t6 
       lw    $ra, 4($sp)            
        addi  $sp, $sp, 16              
        jr    $ra               