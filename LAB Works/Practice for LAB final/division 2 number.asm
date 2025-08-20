
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, 100
mov bl, 5
div bl
int 3
int 20h



