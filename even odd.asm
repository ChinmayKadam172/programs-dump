.8086
.model small
.data
a db 001h, 02h, 03h, 04h, 08h
b db 05h
e db 00h
o db 00h 
avg db 00h
.code
start:
    mov ax,@data
    mov ds,ax
    mov dx,ax
    mov ch,00h
    lea si,a
    mov cl,b
    L3:
    mov ax,[si]
    add avg,al  
    rcr aL,1
    JNC L1
    L0:
    inc e
    JMP L2
    L1:
    inc o
    JMP L2
    L2:
    inc si
    dec cl
    JNZ L3
    mov al,avg 
    mov ah,00h
    div b
    mov avg,al
    mov ah,4ch
    int 21h
    end start