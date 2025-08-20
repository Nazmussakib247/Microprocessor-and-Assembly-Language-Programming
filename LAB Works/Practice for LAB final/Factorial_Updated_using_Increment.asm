org 100h

; Program: Compute 5! - (last digit of ID) / 3!
; Student ID: 11220320888  -> last digit = 8

; -------------------------
; Step 1: Calculate 5! = 120
; -------------------------
mov ax, 1        ; AX = 1
mov bx, 2
mul bx           ; AX = 2
inc bx           ; BX = 3
mul bx           ; AX = 6
inc bx           ; BX = 4
mul bx           ; AX = 24
inc bx           ; BX = 5
mul bx           ; AX = 120

; Save 5! in CX
mov cx, ax       ; CX = 120

; -------------------------
; Step 2: Calculate 3! = 6
; -------------------------
mov ax, 1
mov bx, 2
mul bx           ; AX = 2
inc bx           ; BX = 3
mul bx           ; AX = 6

mov bx, ax       ; BX = 3! = 6

; -------------------------
; Step 3: Take last digit of ID = 8
; -------------------------
mov ax, 8        ; last digit of ID

; Divide by 3!
div bl           ; AL = 8 / 6 = 1, AH = remainder

mov dx, ax       ; DX = quotient = 1

; -------------------------
; Step 4: Final Expression = 5! - (8/6)
; -------------------------
mov ax, cx       ; AX = 120
sub ax, dx       ; AX = 119

; -------------------------
; Step 5: Print result (119)
; -------------------------
mov bx, 10       ; divisor = 10
mov cx, 0        ; digit counter

convert_loop:
    xor dx, dx   ; clear DX before DIV
    div bx       ; AX ÷ 10 -> quotient in AX, remainder in DX
    push dx      ; save remainder (digit)
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