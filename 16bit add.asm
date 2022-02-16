.8086
.model small
.data
a dw 00f0h
b dw 00ffh
c dw ?
.code
start:
     mov ax,data
     mov ds,ax
     mov ax,a
     mov bx,b
     add ax,bx
     mov c,ax
     mov ah,4ch
     int 21h
     end start