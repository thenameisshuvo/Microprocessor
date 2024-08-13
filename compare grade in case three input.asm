;compare grade in case

include "EMU8086.inc"
.model small
.stack 100h
.data
.code

main proc
    mov bl,99
    cmp bl,80
    jge case80
    
    cmp bl,70
    jge case70
    jmp default
    
    case80:
    print "Got A+"
    jmp exit
    
    case70:
    print "Got A"
    jmp exit 
    
    default:
    print " Fail"   
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main




