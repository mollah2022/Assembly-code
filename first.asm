.model small
.stack 100h 
.data
a db "Enter the first number:$"
b db "Enter the second number:$" 
c db "result:$"
.code

main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
     
     mov ah,1;
     int 21h
     mov bl,al
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    mov ah,9
    lea dx,b
    int 21h
     
     mov ah,1
     int 21h
     mov bh,al
     
     add bl,bh
     sub bl,48
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
    mov ah,9
    lea dx,c
    int 21h
     
     mov ah,2
     mov dl,bl
     int 21h
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main