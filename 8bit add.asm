.8086    
.model small
.data
a db 0Fh
b db 0FFh
c db ?
.code
start:
     mov ax,@data
     mov ds,ax
     mov al,a
     mov bl,b
     add al,bl
     JNC  L1
     mov c,01h
     L1:
     mov ah,4ch
     int 21h
     end start