.model small
.stack 100h
.data
m db 10,13,"******$"
.code

main proc
    
    mov ax,@data
    mov ds,ax
             
             
    mov ah,1
    int 21h
    mov bl,al
    
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
              
              
    
    mov ah,9
    lea dx,m
    int 21h

    
    mov ah,9
    lea dx,m
    int 21h

    mov ah,9
    lea dx,m
    int 21h

    mov ah,9
    lea dx,m
    int 21h

    mov ah,9
    lea dx,m
    int 21h

    mov ah,9
    lea dx,m
    int 21h    
    

    exit:
    mov ah,4ch
    main endp
end main