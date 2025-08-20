
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 10
mov bx, 20
add ax, bx
mov cx, 30
add ax, cx
mov dx, 40
add ax, dx
int 3


ret




