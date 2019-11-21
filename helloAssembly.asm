.data
    myMessage: .asciiz "hello world\n"
    myChar: .byte 'm'
    myInt: .word 23 # 	 use word in MIPS to represent integers
    Pi: .float 3.14
    myDouble: .double 0.0722  #64 bits
    zeroDouble: .double, 0.0
    



.text
    li $v0, 4
    la $a0, myMessage
    syscall
    
    li $v0, 4
    la $a0, myChar
    syscall
    
    li $v0, 1 # 1 for ineteger/word
    lw $a0, myInt
    syscall
    
    li $v0, 2
    lwc1 $f12, Pi  #always f12, load word coproccessor 1
    syscall
    
    ldc1 $f2, myDouble
    ldc1 $f0, zeroDouble   #ldc1 for load DOUBLE coprocessor 1
    li $v0, 3
    add.d $f12, $f2, $f0   #add double , add for add integers
    syscall 
     
    