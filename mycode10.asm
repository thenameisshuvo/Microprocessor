.model small
.stack 100h
.data

str db 'Hello Oishy$'   
str2 db 'Hello World$'

.code

main proc 
    
    mov ax,@data  ;data segment initialize
    mov ds,ax   
    
    mov ah,9 ;for str we use 9
    lea dx,str  ;load effective address
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    
    mov ah,9
    lea dx,str2
    int 21h
    
    
    
    main endp
end main



