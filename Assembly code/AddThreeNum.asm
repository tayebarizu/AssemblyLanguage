.model small
.stack 100h
.code


main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    sub bl,48
    sub bh,48
    sub cl,48
    
    mov al,bl
    add al,bh
    add al,cl
    
    add al,48
    
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4CH
    int 21h
    
    main endp
    end main

