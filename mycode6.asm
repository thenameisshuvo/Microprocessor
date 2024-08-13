.model small
.stack 100h
.data
.code

main proc 
    ;1st input
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    ;2nd input
    mov ah,1
    int 21h
    mov bh,al  
    sub bh,48 
    
    ;3rd input
    mov ah,1
    int 21h
    mov ch,al
    sub ch,48
    
    
    add bl,bh ;bl=bl+bh 
    add ch,bl
    add ch,48    
    
    
    mov dl,ch
    mov ah,2
    int 21h
    
    
    
    
    main endp
end main



