org 100h

; Program: Compute 5! - (last digit of ID) / 3!
; Student ID: 11220320888 -> last digit = 8

; -------------------------
; Step 1: Calculate 5! using dec
; -------------------------
mov ax, 5        ; AX = 5
mov bx, ax       ; BX = 5

dec bx           ; BX = 4
mul bx           ; AX = 5*4 = 20

dec bx           ; BX = 3
mul bx           ; AX = 20*3 = 60

dec bx           ; BX = 2
mul bx           ; AX = 60*2 = 120

; Save 5! in CX
mov cx, ax       ; CX = 120

; -------------------------
; Step 2: Calculate 3! = 6 using dec
; -------------------------
mov ax, 3
mov bx, ax

dec bx           ; BX = 2
mul bx           ; AX = 3*2 = 6

mov bx, ax       ; BX = 6

; -------------------------
; Step 3: Last digit of ID = 8
; -------------------------
mov ax, 8
div bl           ; AL = 8/6 = 1, AH = remainder

mov dx, ax       ; DX = quotient = 1

; -------------------------
; Step 4: Final Expression
; -------------------------
mov ax, cx       ; AX = 120
sub ax, dx       ; AX = 119

; -------------------------
; Step 5: Print result (119)
; -------------------------
mov bx, 10
mov cx, 0

convert_loop:
    xor dx, dx
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne convert_loop

print_loop:
    pop dx
    add dl, '0'
    mov ah, 2
    int 21h
    loop print_loop

; -------------------------
; Exit
; -------------------------
mov ah, 4Ch
int 21h