
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AH, 1
INT 21H
SUB AL, 30h     
MOV BL, AL       


MOV AH, 1
INT 21H
SUB AL, 30h     
MOV CL, AL      

MOV AL, BL
SUB AL, CL     

JNS POSITIVE    


NEG AL          
MOV DL, '-'    
MOV AH, 2
INT 21H

POSITIVE:
ADD AL, 30h    
MOV DL, AL
MOV AH, 2
INT 21H

ret


