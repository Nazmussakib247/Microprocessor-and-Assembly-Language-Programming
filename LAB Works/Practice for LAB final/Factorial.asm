
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

mov ax, 1
mov cx, 8

fact_loop:
    mul cx
    loop fact_loop

mov bx, 10
mov di, 0

conv_loop:
    xor dx, dx
    div bx
    push dx
    inc di
    test ax, ax
    jnz conv_loop

print_loop:
    pop dx
    add dl, 30h
    mov ah, 02h
    int 21h
    dec di
    jnz print_loop
    
ret




