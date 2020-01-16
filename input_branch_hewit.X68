*-----------------------------------------------------------
* Title      : Input, Branching
* Written by : Johnathan Hewit
* Date       : 01/15/2020
* Description: Lab1 for CSS422 A
*-----------------------------------------------------------
START   ORG     $1000

*-------Code for output------
LOOP    LEA     MESSAGE,A1
        MOVE.B  #14,D0
        TRAP    #15
        
*-------Code for input-------
        MOVE.B  #4,D0
        TRAP    #15
        CMP.L   #0,D1
        BEQ     DONE
        
        CMP.B   #0,D1
        BLT     INVALID
        CMP.B   #100,D1
        BGT     INVALID
        
*--Figure out what the number actually is--
        CMP.B   #1,D1
        BNE     TWO
        LEA     DISPONE,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
TWO     CMP.B   #2,D1
        BNE     THREE
        LEA     DISPTWO,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
THREE   CMP.B   #3,D1
        BNE     FOUR
        LEA     DISPTHR,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
FOUR    CMP.B   #4,D1
        BNE     FIVE
        LEA     DISPFOU,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
FIVE    CMP.B   #5,D1
        BNE     SIX
        LEA     DISPFIV,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
SIX     CMP.B   #6,D1
        BNE     SEVEN
        LEA     DISPSIX,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
SEVEN   CMP.B   #7,D1
        BNE     EIGHT
        LEA     DISPSEV,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP

EIGHT   CMP.B   #8,D1
        BNE     NINE
        LEA     DISPEIG,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP

NINE    LEA     DISPNIN,A1
        MOVE.B  #14,D0  
        TRAP    #15
        
        BRA     LOOP
        
INVALID LEA     INV,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
DONE    MOVE.B  #9,D0
        TRAP    #15
        
CR      EQU     $0D
LF      EQU     $0A
        
MESSAGE DC.B    'Enter a number between 0 and 100, inclusive, Enter 0 to exit: ',0
INV     DC.B    'That is not between 0 and 100.',CR,LF,0
DISPONE DC.B    'HELLO MERCURY',CR,LF,0
DISPTWO DC.B    'HELLO VENUS',CR,LF,0
DISPTHR DC.B    'HELLO EARTH',CR,LF,0
DISPFOU DC.B    'HELLO MARS',CR,LF,0
DISPFIV DC.B    'HELLO JUPITER',CR,LF,0
DISPSIX DC.B    'HELLO SATURN',CR,LF,0
DISPSEV DC.B    'HELLO URANUS',CR,LF,0
DISPEIG DC.B    'HELLO NEPTUNE',CR,LF,0
DISPNIN DC.B    'HELLO PLUTO',CR,LF,0

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
