;Write an 8086 Assembly Language Program to subtract two 8-bit signed integers. The numbers can be stored in data segment.

.model small
.stack 100h
.data
	A DB 6h
	B DB 2h	
	C DB ?
.code
main proc
	mov ax,@data
	mov ds,ax
	mov al,a
	sub al,b
	mov c,al
	mov ah,4ch
	int 21h
main endp
end main
