.model small
.stack 100h

a db ?
b db ?
.code

main proc
     

     
     mov ah,1
     int 21h
     mov a,al
     
     mov ah,1
     int 21h
     mov b,al  
     
     mov ah,2
     mov dl,a
     int 21h
     
     mov ah,2
     mov dl,b
     int 21h
     
     exit:
     mov ah,4ch
     main endp
end main
     