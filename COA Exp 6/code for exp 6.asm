data segment
    data1 db 23h
    data2 dw 1234h
    data3 db 00h
    data4 dw 0000h
    data5 dw 2345h,6789h
    data ends

code segment
    Assume cs:code,ds:data 
    
    start:
    mov ax,data
    mov ds,ax
    
    mov al,25h
    mov ax,2345h ; immediate addressing mode
    
    mov bx,ax
    mov cl,al    ; register direct addressing mode
    
    mov al,data1
    mov ax,data2 ; direct addressing mode
    
    mov bx,offset data5
    mov ax,[bx]  ; register indirect addressing mode
    
    mov di,02h
    mov ax,[bx+DI] ; index addressing mode
    
    code ends
end start
    