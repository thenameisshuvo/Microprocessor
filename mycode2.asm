.model small  
.stack 100h
.data
.code
main proc
    ;mov al,65 ;65 is asciicode
    ;mov dl,al  ;put valu into printer 
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov dl,bh
    mov ah,2
    int 21h
    main endp
end main
    




