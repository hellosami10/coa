.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC

MOV AH, 1
INT 21H

CMP AL, 'A'
JE LEVEL1

JNE LEVEL2

LEVEL1:

MOV DL, 'V'
MOV AH, 2
INT 21H
JMP EXIT

LEVEL2:
MOV DL, 'C'
MOV AH, 2
INT 21H


EXIT:
MOV AH, 4CH
INT 21H

MAIN ENDP
END MAIN