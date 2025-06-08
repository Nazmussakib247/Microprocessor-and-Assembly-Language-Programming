
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
.stack 100h
.data
    celsius db ?
    fahrenheit db ?
    msg db 13,10, 'Fahrenheit = $'

.code
main:
    mov ax, @data
    mov ds, ax

    ; Input Celsius from user
    mov ah, 1
    int 21h
    sub al, '0'
    mov celsius, al

    ; Convert to Fahrenheit
    mov al, celsius
    mov ah, 0
    mov bl, 9
    mul bl
    mov bl, 5
    div bl
    add al, 32
    mov fahrenheit, al

    ; Output "Fahrenheit = "
    lea dx, msg
    mov ah, 9
    int 21h

    ; Convert result to ASCII for printing
    mov ah, 0
    mov al, fahrenheit
    aam
    add ax, 3030h
    mov dl, ah
    mov ah, 2
    int 21h
    mov dl, al
    mov ah, 2
    int 21h

    ; Exit program
    mov ah, 4ch
    int 21h
end main




