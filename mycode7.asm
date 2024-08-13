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
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;2nd input
    mov ah,1
    int 21h
    mov bh,al  
    sub bh,48  
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;3rd input
    mov ah,1
    int 21h
    mov ch,al
    sub ch,48 
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    add bl,bh ;bl=bl+bh 
    add ch,bl
    add ch,48    
    
    
    mov dl,ch
    mov ah,2
    int 21h
  
    
    main endp
end main
    




