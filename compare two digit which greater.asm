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
   jg x
   mov dl,bh
   jmp print 
    
    
    x: cmp dl,bh
    
    mov dl,bl
    
   
    
    print: mov ah,2
    int 21h
   
   
  
   
    main endp
 end main