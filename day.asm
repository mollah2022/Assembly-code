.model small
.stack 100h
.data
msg1 db "saturday$"
msg2 db "sunday$"
msg3 db "monday$"
msg4 db "tuesday$"
msg5 db "wednessday$"
msg6 db "thursday$"
msg7 db "friday$"

.code

main proc
      
      mov ax,@data
      mov ds,ax
      
      mov ah,1
      int 21h
      mov bl,al
      
      mov ah,2
      mov dl,10
      int 21h
      mov dl,13
      int 21h
      
      cmp bl,'1'
      je l1
      
      cmp bl,'2'
      je l2
      
      cmp bl,'3'
      je l3
      
      cmp bl,'4'
      je l4
      
       cmp bl,'5'
      je l5
      
       cmp bl,'6'
      je l6
      
       cmp bl,'7'
      je l7
      
  
       l1:
      mov ah,9
      lea dx,msg1
      int 21h 
      jmp exit
      
       l2:
      mov ah,9
      lea dx,msg2
      int 21h 
      jmp exit
      
       l3:
      mov ah,9
      lea dx,msg3
      int 21h 
      jmp exit
      
       l4:
      mov ah,9
      lea dx,msg4
      int 21h 
      jmp exit
      
       l5:
      mov ah,9
      lea dx,msg5
      int 21h  
      jmp exit
      
       l6:
      mov ah,9
      lea dx,msg6
      int 21h  
      jmp exit
      
       l7:
      mov ah,9
      lea dx,msg7
      int 21h  
      jmp exit
      
      exit:
      mov ah,4ch
      int 21h
      main endp
end main