
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, 10
mov bx, 20
imul bx
mov bx, 30
imul bx
mov bx, 40
imul bx
int 3
int 20h




