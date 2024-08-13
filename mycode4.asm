.model small
.stack 100h
.data
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    mov ah,1
    int 21h
    mov bh,al  
    sub bh,48
    
    add bl,bh ;bl=bl+bh
    add bl,48   
    
    mov dl,bl
    mov ah,2
    int 21h
    
    
    
    
    main endp
end main




