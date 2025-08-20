.model small
.stack 100h
.code

main proc
    ; ----------------------------
    ; Input first digit
    ; ----------------------------
    mov ah, 1        ; read char
    int 21h
    sub al, '0'      ; convert ASCII to number
    mov bl, al       ; store in BL

    ; ----------------------------
    ; Input second digit
    ; ----------------------------
    mov ah, 1
    int 21h
    sub al, '0'
    mov bh, al       ; store in BH

    ; ----------------------------
    ; Subtraction: BL - BH
    ; ----------------------------
    mov al, bl
    sub al, bh       ; AL = first - second

    ; ----------------------------
    ; Output result
    ; ----------------------------
    add al, '0'      ; convert back to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    ; ----------------------------
    ; Exit program
    ; ----------------------------
    mov ah, 4Ch
    int 21h
main endp
end main