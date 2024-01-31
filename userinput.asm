.model small
.stack 100h
.data
a db 5
b db 7
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,a 
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,b 
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main