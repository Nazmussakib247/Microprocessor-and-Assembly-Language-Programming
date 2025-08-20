
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
mov ax, 10
add ax, 20
add ax, 30
add ax, 40
add ax, 50
mov bl, 5
div bl
int 3
ret




