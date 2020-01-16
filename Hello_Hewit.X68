*-----------------------------------------------------------
* Title      : Hello World
* Written by : Johnathan Hewit
* Date       : 01-15-2020
* Description: Lab1 for CSS422 A
*-----------------------------------------------------------
    
START   ORG    $1000

*-------Code for output-----------
        LEA     MESSAGE,A1
        MOVE.B  #14,D0
        TRAP    #15
        
        MOVE.B  #9,D0
        TRAP    #15
        
CR      EQU     $0D
LF      EQU     $0A
MESSAGE DC.B    'Hello, my name is Johnathan Hewit.',CR,LF
        DC.B    'I am very nervous about this class, primarily',CR,LF
        DC.B    'because everyone who has ever talked about it has',CR,LF
        DC.B    'said it is without a doubt the most difficult class',CR,LF
        DC.B    'in the program. Despite this, I am going to try my best',CR,LF
        DC.B    'and I feel assured that Dr. Fukuda is a professor who',CR,LF
        DC.B    'cares about educating students.',CR,LF,0
        DC.B    'Thank you for listening.'CR,LF,0
        
        END     START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
