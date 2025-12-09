.model small
.stack 100h
.data
.code

main proc 
    mov cx,10
    mov dl,'0'
    mov ah,2 
    
    print:
    mov ah,02h
     int 21h
     
     inc dl
     loop print
     
     mov ah,4ch
     int 21h
    
    main endp
end main







