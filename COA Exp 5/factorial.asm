data segment
    
    x dw 04h
    ans dw ?
    data ends

code segment
    
    assume cs:code, ds:data
    
    start:
    mov ax,data
    mov ds,ax 
    mov ax,0001h
    mov cx,x
    l1: mul cx 
    
    loop l1
    
    mov ans,ax
    
    code ends 
end start