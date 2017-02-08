;Write an 8086 Assembly Language Program to print your name as a string. Name can be stored in the data segment as a string.

.model small
.stack 100H

.data
na db 'MANISH KUMAR$'
nam db 'HELLO',10,13,'$'

.code
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	LEA DX,nam
	MOV AH,09H
	INT 21H
	LEA DX,na
	MOV AH,09H
	INT 21H
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN
