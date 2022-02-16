.8086
.model small
.data
a db 0Ah,05h,07h,04h,06h,02h,03h,08h,01h,09h
b db ?  
c db 0Ah
.code
start:
    mov ax,@data
    mov ds,ax
    mov dx,ax 
    lea si,a
    mov ch,0h
    mov cl,c
    dec cl
    REPEAT:
    lea si,a
    mov ch,c
    dec ch
    inc si
    REPCOM:
    mov al,[si]
    inc si
    CMP al,[si]
    JC ahead
    xchg al,[si]
    xchg al,[si-1]
    ahead:
    dec ch
    jnz REPCOM
    dec cl
    jnz REPEAT
    mov ah,4ch
    int 21h
    end start