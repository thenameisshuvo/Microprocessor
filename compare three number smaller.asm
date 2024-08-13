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
   
    
   mov ah,1
   int 21h
   mov cl,al 
   
   printn " "
   
   cmp bl,bh
   js x
   cmp bh,cl
   js z
   mov dl,cl
   jmp print 
    z: mov dl,bh
    jmp print
    
    x: cmp bl,cl
    js y
    mov dl,cl
    jmp print
    y: mov dl,bl
    
    print: mov ah,2
    int 21h
   
   
  
   
    main endp
 end main