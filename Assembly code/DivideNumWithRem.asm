.model small
.stack 100h
.data
num1 db 2
num2 db 4
dividend dw 17
divisor db 5
remainder db ?
Quotient db ?
.code
main proc
    ;initialize the data segment register to use variables
    mov ax, @data
    mov ds, ax
    ; multiply
    mov al, num1
    mov bl, num2
    mul bl
     ;output result (product)
    mov dl, al	; result in AX register
    mov ah, 2 
    add dl, 48    ; get ASCII value of the resultant digit
    int 21h
    
    mov AX, dividend
    mov cl, divisor
    div cl
    ; AH has remainder, AL has quotient
   
    
    mov remainder, AH
    mov Quotient, AL
    mov ah, 2
    mov dl, remainder 
    add dl, 48
    int 21h              
    mov dl, Quotient 
    add dl, 48
    int 21h          

    mov ah, 4ch  ; return control to DOS/OS
    int 21h
main endp
end main




