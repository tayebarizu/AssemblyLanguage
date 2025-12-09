.model small
.stack 100h
.data
msg db "Sum = $"     ; message to print

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 4        ; loop 4 times (0,1,2,3)
    mov bx, 0        ; BX = sum
    mov ax, 0        ; AX = current number

sum:
    add bx, ax       ; sum = sum + current number
    inc ax           ; next number
    loop sum    ; repeat until CX = 0

    ; Now BX contains result (6)
    ; Convert result to ASCII and print

    mov dx, offset msg
    mov ah,9
    int 21h          ; print "Sum = "

    mov ax, bx       ; AX = sum
    add ax, 30h      ; convert to ASCII
    mov dl, al
    mov ah,2
    int 21h          ; print result

    mov ah, 4Ch
    int 21h
main endp
end main
