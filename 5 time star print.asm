;loop in condition input user

include "EMU8086.inc"
.model small
.stack 100h
.data
count db ?
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48
    mov count,al
    mov bl,1
    printn
    mov ah,2
    mov dl, "*"
   loop1:
    cmp bl,count
    jg exit
    mov bh,1
   loop2:
    cmp bh,count
    jg exitloop2
    int 21h
    inc bh
    jmp loop2
   exitloop2:
   printn
    inc bl
    jmp loop1
   exit:
      
    mov ah,4ch
    int 21h
    
    main endp
end main







