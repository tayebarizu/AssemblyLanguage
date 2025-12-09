.model small
.stack 100h 
.code

main proc
    
    mov ah,1
    int 21h 
    sub al,48
    mov bl,al
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al
    
    mov al,bl
    mul bh
    
    add al,48
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
  
    main endp
    end main