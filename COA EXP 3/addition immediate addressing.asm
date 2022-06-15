data segment
    n1 db 05h
    n2 db 03h
    data ends

code segment
    Assume cs:code,ds:data
    
    start:
    mov ax,data
    mov ds,ax
    mov a1,n1
    mov b1,n2
    sub a1,b1
    code ends
end start




