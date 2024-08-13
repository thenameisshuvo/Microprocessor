INCLUDE "EMU8086.INC"   
.model small
.stack 100h 
.data
.code
 main proc
    
   mov ah,1
   int 21h
   mov bl,al 
            
   printn " "
   
   mov ah,1
   int 21h
   mov bh,al 
   
   printn " "
   
   cmp bl,bh
   jE yes
   mov dl,'N'
   jmp print   
   
   
   yes: mov dl,'Y'
   print: mov ah,2
   int 21h
   
   
    main endp
 end main