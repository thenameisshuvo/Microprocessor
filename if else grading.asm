;if else  
INCLUDE "EMU8086.INC"   
.model small
.stack 100h 
.data
.code
 main proc     
   mov bl,98
   cmp bl,80 
   
   jl if  
   jge else
   
    if:
   printn "A"
   jmp end 
   
    else:  
   
   printn "A+"  
   end:
   
   
  