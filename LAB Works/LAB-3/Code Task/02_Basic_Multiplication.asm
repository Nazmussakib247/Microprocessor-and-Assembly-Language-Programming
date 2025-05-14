
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
MOV AH, 0
MUL CL

MOV BX, 10
XOR CX, CX
MOV SI, 0

store_digits:
    XOR DX, DX
    DIV BX
    PUSH DX
    INC CX
    CMP AX, 0
    JNE store_digits

print_digits:
    POP DX
    ADD DL, 30h
    MOV AH, 2
    INT 21H
    LOOP print_digits

RET


