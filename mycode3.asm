.model small
.stack 100h
.data
.code
main proc
    mov bl,5
    mov bh,2
    add bl,bh
    add bl,48 
    
    mov dl,bl
    mov ah,2
    int 21h
    
    main endp
end main




