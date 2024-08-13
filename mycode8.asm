.model small
.stack 100h
.data

num1 db 2

.code

main proc 
    
    mov ax,@data  ;data segment initialize
    mov ds,ax   
    
    mov ah,2
    add num1,48
    mov dl,num1
    int 21h
    
    main endp
end main




