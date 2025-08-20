
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, 10
add ax, 20
int 3
int 20h

