
#=========================================================================
# Tokenizer
#=========================================================================
# Split a string into alphabetic, punctuation and space tokens
# 
# Inf2C Computer Systems
# 
# Siavash Katebzadeh
# 8 Oct 2018
# 
#
#=========================================================================
# DATA SEGMENT
#=========================================================================
.data

#-------------------------------------------------------------------------
# Constant strings
#-------------------------------------------------------------------------

input_file_name:        .asciiz  "input.txt"   
newline:                .asciiz  "\n"
        
#-------------------------------------------------------------------------
# Global variables in memory
#-------------------------------------------------------------------------
# 
content:                .space 2049    # Maximum size of input_file + NULL
tokens:                 .space 411849  #2049 x 201 flattened 2d array

#punc_char:              .char ',','.','!','?'  #punctuation array





# You can add your data here!
        
#=========================================================================
# TEXT SEGMENT  
#=========================================================================
.text

#-------------------------------------------------------------------------
# MAIN code block
#-------------------------------------------------------------------------

.globl main                     # Declare main label to be globally visible.
                                # Needed for correct operation with MARS
main:
        
#-------------------------------------------------------------------------
# Reading file block. DO NOT MODIFY THIS BLOCK
#-------------------------------------------------------------------------

# opening file for reading

        li   $v0, 13                    # system call for open file
        la   $a0, input_file_name       # input file name
        li   $a1, 0                     # flag for reading
        li   $a2, 0                     # mode is ignored
        syscall                         # open a file
        
        move $s0, $v0                   # save the file descriptor 

# reading from file just opened

        move $t0, $0                    # idx = 0

READ_LOOP:                              # do {
        li   $v0, 14                    # system call for reading from file
        move $a0, $s0                   # file descriptor
                                        # content[idx] = c_input
        la   $a1, content($t0)          # address of buffer from which to read
        li   $a2,  1                    # read 1 char
        syscall                         # c_input = fgetc(input_file);
        blez $v0, END_LOOP              # if(feof(input_file)) { break }
        lb   $t1, content($t0)          
        addi $v0, $0, 10                # newline \n
        beq  $t1, $v0, END_LOOP         # if(c_input == '\n')
        addi $t0, $t0, 1                # idx += 1
        j    READ_LOOP
END_LOOP:
        sb   $0,  content($t0)

        li   $v0, 16                    # system call for close file
        move $a0, $s0                   # file descriptor to close
        syscall                         # fclose(input_file)
#------------------------------------------------------------------
# End of reading file block.
#------------------------------------------------------------------



#tokenizer function in C

#li $s4,0#setting c_idx to 0

addi $s7, $zero, 0 #setting int c_idx=0
lb $s6, content($s7)# where s6 stores value of c, c=content[c_idx]

addi $s1, $zero,0# initializing tokens_number =0 

do_outer:   # do- while outer loop @ end j do_outer which is same as while(1)

	#if content is null, go to output label
	beq $s6, $0,output  # exit label below
	
	
	#if statement for checking alphabets
	if_alphabet:
		#conditions for alphabet are given below in separate label
		jal conditions_alphabet
	#else, go to if_punctuation
	li $v0,1
	bne $t8,$v0 ,if_punctuation  #t8 is either true of false, 1/0
		
		#back to  if_alphabet
		
		addi $v1, $zero,0 #int token_c_idx= 0
		do_while_1:
			#added this as part of do_while as v1 is not preserved
		#	addi $v1, $zero,0 #int token_c_idx= 0
			
			#addi $v0, $zero, 0
			li $t0,2049
			mult $t0,$s1#token number x 2049
			mflo $t1#result of  token number x 2049
			add $t2, $t1, $v1#index of # token number x 2049+token_c_idx
			sb $s6,tokens($t2)#tokens[tokens_number][tokens_c_idx]=c
			addi $v1, $v1,1#token_c_idx++
			addi $s7, $s7,1# c_idx++
			lb $s6, content($s7)#s6=content[c_idx]; s7 is c_idx
			
			addi $sp, $sp, -4
			sw $t2, 0($sp)
			jal conditions_alphabet# while...
			lw	$t2, 0($sp)
			addi 	$sp, $sp, 4 

			li $a0,1
			beq $t8,$a0,do_while_1 # if conditions_alphabet is true/1, then we continue with the second iteration and so on
			
		addi $t2, $t2, 1
		sb $zero,tokens($t2)#tokens[tokens_number][tokens_c_idx]=0
		addi $s1, $s1,1#tokens_number++
		
			
		
#-------------------------
		 
			
		
	#if stmt for checking punctuation
	if_punctuation:	
		jal conditions_punctuation
	li $v0,1
	bne $t8, $v0, if_space
	# go to if_space for spaces
		
		#back into if_punctuation
		
		addi $v1, $zero,0 #int token_c_idx= 0
		
		do_while_2:
			#addi $v1,$zero,0#int token_c_idx=0
			li $t0,2049
			mult $t0,$s1#token number x 2049
			mflo $t1#result of  token number x 2049
			add $t2, $t1, $v1#index of # token number x 2049+token_c_idx
			sb $s6,tokens($t2)#tokens[tokens_number][tokens_c_idx]=c
			addi $s7, $s7,1# c_idx++
			addi $v1, $v1,1#token_c_idx++
			lb $s6, content($s7)#s6=content[c_idx]; s7 is c_idx
			jal conditions_punctuation# while...
			li $a0,1
			beq $t8,$a0,do_while_2# if conditions_alphabet is true/1, then we continue with the second iteration and so on

		
#================================check if it is an alphabet or a whitespace
		
		addi $t2, $t2, 1
		sb $zero,tokens($t2)#tokens[tokens_number][tokens_c_idx]=0
		addi $s1, $s1,1#tokens_number++		



#-------------------------
		 
			
		
	#if stmt for checking space
	if_space:	
		jal conditions_space
	li $v0,1
	bne $t8, $v0, do_outer
	# go to if_space for spaces
		
		#back into if_punctuation
		
		addi $v1, $zero,0 #int token_c_idx= 0
		
		do_while_3:
			#addi $v1,$zero,0#int token_c_idx=0
			li $t0,2049
			mult $t0,$s1#token number x 2049
			mflo $t1#result of  token number x 20v48
			add $t2, $t1, $v1#index of # token number x 2049+token_c_idx
			sb $s6,tokens($t2)#tokens[tokens_number][tokens_c_idx]=c
			addi $s7, $s7,1# c_idx++
			addi $v1, $v1,1#token_c_idx++
			lb $s6, content($s7)#s6 is the current value of s6
			jal conditions_space# while...
			li $a0,1
			beq $t8,$a0,do_while_3
			
		addi $t2, $t2, 1
		sb $zero,tokens($t2)#tokens[tokens_number][tokens_c_idx]=0
		addi $s1, $s1,1#tokens_number++			
		
		
			
j do_outer

			
output:
	#li $t0,0  #???
	#li $t1,1
	#sub $t0,$s1,$t1# tokens_number-1
	addi   $t5, $0, 0
	output_loop:
		li $t0,2049
	        mult $t0,$t5#token number x 2049
	        mflo $t1#result of  token number x 2049
	        #add $t2, $t1, $v1#index of # token number x 2049+token_c_idx
	
	        #beq $t0,$t2,output#t2 is the index for flattended 2d tokens array
		bgt $t5,$s1,main_end
		#addi $t0, $t0, 1 
		la $t3, tokens($t1)
		#print token
		li $v0,4
		move $a0,$t3
		syscall
		
		li $v0, 4
		la $a0, newline
		syscall
		
		addi $t5, $t5, 1
		j output_loop#loops back
								
												

#spall checker
#punc checker

		
	
	
conditions_alphabet:
			#capitals
			li $t3, 65
			li $t5,90
			sge $t2, $s6, $t3 # is s6 bigger than t3
			sle $t4,$s6,$t5# is s6 smaller than t5
			and $t6,$t2, $t4# t2 and t4 ==>t6, is s6 btn t3 and t5
			
			#small
			li $t3, 97
			li $t5,122
			sge $t2, $s6, $t3 
			sle $t4,$s6,$t5
			and $t7,$t2, $t4# t2 and t4=t7
			or   $t8, $t6, $t7 # if value of t8 is one, we enter the if stmt
			jr $ra
			
conditions_punctuation:
			li $t3, '-'
			li $t4 ,','
			li $t5 ,'.'
			li $t6 ,'_'


			beq $s6, $t3, or_true
			beq $s6, $t4, or_true
			beq $s6, $t5, or_true
			beq $s6, $t6, or_true
			
			j or_false
			or_true:
				addi $t7, $zero, 1
				 
				addi $t8, $t7, 0 #t8 equals 1 which means true
				jr $ra		
			
				
				

			or_false:
				addi $t8, $zero, 0
			jr $ra
			
conditions_space: 
			li $t7, ' '
			beq $s6, $t7, or_true_2
			addi $t8, $0, 0
			jr $ra
			or_true_2:
				li $a3,1
				addi $t8,$a3,0#t8 equals 1 which means true

				
			jr $ra
	 
        	


			              
#------------------------------------------------------------------
# Exit, DO NOT MODIFY THIS BLOCK
#------------------------------------------------------------------
main_end:      	
	
        li   $v0, 10          # exit()
        syscall


			
			
#----------------------------------------------------------------
# END OF CODE
#----------------------------------------------------------------


