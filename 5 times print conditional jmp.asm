INCLUDE "EMU8086.INC"   
.model small
.stack 100h 
.data
.code
 main proc     
   mov bl,1
   mov bh,5
   startloop: ;start loop use
   printn "hoyece"
   cmp bl,bh
   je endloop
   inc bl
   jne startloop  
   
   
   endloop:   ;end loop use
     
    
   print "ar dekhabo na jaw vago"