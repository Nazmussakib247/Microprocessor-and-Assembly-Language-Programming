
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, 1200
mov bl, 40
div bl 
mov bl, 2
div bl
int 3
int 20h



