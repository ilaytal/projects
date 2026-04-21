IDEAL
MODEL small
STACK 100h

DATASEG
filename db 64 dup(0)
buffer db 12000 dup(?)
counter dw offset buffer
bytesread dw ?
handle dw ?
types dw 8000 dup(?)
mishtanim db 2000 dup(?)
amountofmishtanim dw 0
foundflag dw 0
addax dw ?
typeslength dw 0
numbers dw 2000 dup(?)
mishtanimid dw 90h
topoperator dw 0,0
countoutarray dw 0
oparray dw 500 dup(?)
outarray dw 500 dup(?)
arrays dw 6000 dup(?)
headers dw 500 dup(?)
string dw 1000 dup(?)
stringlength dw ?
extraslots dw 500 dup(?)
saveending dw 0
conditionsarray dw 1000 dup(?)
typeadress dw ?
pconditionsarray dw ?
typeoutarray dw 500 dup(?)
funcarray dw 1000 dup(?)
pfuncarray dw ? 
fileput db 64
        db 0
		db 64 dup (0)
startscreen db '============================================================================',13,10
            db '         ==========================================================         ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '      ___ _   _ _____ _____ ____  ____  ____  _____ _____ _____ ____        ',13,10
            db '     |_ _| \ | |_   _| ____|  _ \|  _ \|  _ \| ____|_   _| ____|  _ \       ',13,10
            db '      | ||  \| | | | |  _| | |_) | |_) | |_) |  _|   | | |  _| | |_) |      ',13,10
            db '      | || |\  | | | | |___|  _ <|  __/|  _ <| |___  | | | |___|  _ <       ',13,10
            db '     |___|_| \_| |_| |_____|_| \_\_|   |_| \_\_____| |_| |_____|_| \_\      ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                                                                            ',13,10
            db '                     Press any key to continue                              ',13,10
            db '         ==========================================================         ',13,10
            db '============================================================================$'
instructions db '============================================================================',13,10
             db '============================================================================',13,10
             db '                                                                            ',13,10
             db '    "m" to go back           INSTRUCTIONS                                   ',13,10
             db '                             ------------                                   ',13,10
             db '                                                                            ',13,10
             db '     VARIABLES:                                                             ',13,10
             db '       x=5;    y=x+3;    String="hello1234";                               ',13,10
             db '                                                                            ',13,10
             db '     CONDITIONS:                                                            ',13,10
             db '       if(x==5){ ... } elif(x==3){ ... } else{ ... }                       ',13,10
             db '                                                                            ',13,10
             db '     LOOPS:                                                                 ',13,10
             db '       while(x<=1){ ... }                                                   ',13,10
             db '                                                                            ',13,10
             db '     OPERATORS:                          FUNCTIONS:   func name{}           ',13,10
             db '       +  -  /  %  *                     CALL FUNCTIONS:  summon name();    ',13,10
             db '                                                                            ',13,10
             db '     ARRAYS:                                                                ',13,10
             db '      create array: x=[y]*z; arr=[1,2,3]  move inside array: x[i]=z;        ',13,10
             db '                                                                            ',13,10
             db '     SCREEN:                                                                ',13,10
             db '       opens<>   draw(y;x;color;)  k=getkey();                              ',13,10
             db '                                                                            ',13,10
             db '=============================================================================$'
menus    db '=================        I N T E R P R E T E R     ==================',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '   I N T E R P R E T E R                                                   ',13,10
         db '           I N T E R P R E T E R                                           ',13,10
         db '                   I N T E R P R E T E R                                   ',13,10
         db '                           I N T E R P R E T E R                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '             SPACE - Load and run a file                                   ',13,10
         db '             I     - Instructions                                           ',13,10
         db '             ESC   - Exit                                                   ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '                                                                            ',13,10
         db '     Written By: Ilay Tal                                                   ',13,10
         db '=================          I N T E R P R E T E R             ==================$'
		 
fileputscreen db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '     ___ _   _ _____ _____ ____  ____  ____  _____ _____ _____ ____        ',13,10
              db '    |_ _| \ | |_   _| ____|  _ \|  _ \|  _ \| ____|_   _| ____|  _ \       ',13,10
              db '     | ||  \| | | | |  _| | |_) | |_) | |_) |  _|   | | |  _| | |_) |      ',13,10
              db '     | || |\  | | | | |___|  _ <|  __/|  _ <| |___  | | | |___|  _ <       ',13,10
              db '    |___|_| \_| |_| |_____|_| \_\_|   |_| \_\_____| |_| |_____|_| \_\      ',13,10
              db '                                                                            ',13,10
              db '                                                                            ',13,10
              db '                    Enter the path to your .txt file:                       ',13,10
              db '                    : $'
CODESEG
proc menu
push bp
mov bp, sp
push dx
push ax

mov ax,0b800h
mov es,ax 
dere:
mov dx,[bp+4]	

mov ah,09h
int 21h

redoing:
mov ah,01h
int 16h
jz redoing

menuu:
mov dx,[bp+8]
mov ah,09h
int 21h
mov ah,0
int 16h
cmp al,'i'
jz instruct
cmp al,27
jz exito
cmp al,' '
jz filenaming
jmp menuu

instruct:
mov dx,[bp+6]	
mov ah,09h
int 21h
mov ah,0
int 16h
cmp al,'m'
jz menuu
jmp instruct

filenaming:
mov dx,[bp+10]
mov ah,09h
int 21h
mov ah, 0Ah
mov al,0
mov dx,[bp+12]
int 21h
mov bx,[bp+12]
inc bx
mov al,[bx]
inc bx
xor ah,ah
add bx,ax
mov [byte ptr bx],0
sub bx,ax
mov cl,al
xor ch,ch
mov di,[bp+14]
loorp:
mov al,[byte ptr bx]
mov [byte ptr di],al
inc di
inc bx
loop loorp
inc di
mov [byte ptr di],0
jmp skippo

exito:
mov ax,4C00h
int 21h

skippo:
pop ax
pop dx
pop bp
ret 12
endp menu
proc putinid
push bp
mov bp,sp
push ax
push bx
push cx
push di
push si
push dx

mov si,[bp+10];the offset of the buffer that i put in counter
mov bx,[si]
mov si,bx;the adress of the char
mov bx,[bp+6];types
mov dx,[bp+12];the adress of the last byte

looploop1:

cmp si,dx;when it finishes reading every thing in the buffer it kizozim it
jnz dontt
jmp kizozim
dontt:
mov al,[si];the byte
cmp al,' '
jnz ct;aslong as its ' ' it will inf loop
jmp cont
ct:
cmp al,0Dh
jnz cnr
jmp cont
cnr:
cmp al,0Ah
jnz cozl
jmp cont
cozl:
cmp al,9h
jnz noz
jmp cont
noz:

mov cx,[bp+30]
push cx;offset string
mov cx,[bp+28]
push cx;bp+28 stringlength
mov cx,[bp+4]
push cx;bp+26 string
mov cx,[bp+26]
push cx;bp+24
mov cx,[bp+22]
push cx;bp+22
mov cx,[bp+20]
push cx;bp+20
mov cx,[bp+18]
push cx;bp+18
mov cx,[bp+16]
push cx;bp+16
mov cx,[bp+8];offset of numbers
push cx;[bp+14]
mov cx,[bp+10]
push cx;bp+12
push si;bp+10
push bx;bp+8
push dx;bp+6
mov di,[bp+14]
push di;bp+4;its the found flag
call checkwhile
call checkif
call checkelif
call checkelse
call checksigns
call checknum
call checkstring
call checksummon
call checkrandom
call checkfunc
call checkrect
call checkdraw
call checkopens
call checkclear
call checkgetkey
call checkmax
call checkmin
call checkcontinue
call checkbreak
call checklen
mov di,[bp+14]
cmp [word ptr di],0
jnz contt
call checkidentifier
cmp [word ptr di],0
jnz contt
mov ax,0b800h
mov es,ax
mov di,2000
mov al,[si]
mov ah,100
mov [es:di],ax
mov ax,4C00h
int 21h
contt:
pop di
pop dx
pop bx
pop si
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
jmp ending
cont:
inc si
jmp looploop1

kizozim:
mov di,[bp+10]
mov [di],si
ending:
pop dx
pop si
pop di
pop cx
pop bx
pop ax
pop bp
ret 28
endp putinid
proc checkwhile
push bp
mov bp,sp
push di
push si
push ax
push cx
push bx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'w'
jnz exiting
inc di
mov al,[di]
cmp al,'h'
jnz exiting
inc di
mov al,[di]
cmp al,'i'
jnz exiting
inc di
mov al,[di]
cmp al,'l'
jnz exiting
inc di
mov al,[di]
cmp al,'e'
jnz exiting
inc di
mov al,[di]
cmp al,'a'
jge figjo1
cmp al,'A'
jge hjko1
cmp al,'0'
jge jker1
jmp fish1
jker1:
cmp al,'9'
jbe exiting
jmp fish1
hjko1:
cmp al,'Z'
jbe exiting
jmp fish1
figjo1:
cmp al,'z'
jbe exiting

fish1:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],10h
mov di,[bp+4]
mov [word ptr di],1
exiting:
pop bx
pop cx
pop ax
pop si
pop di
pop bp
ret
endp checkwhile
proc checkif
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'i'
jnz exiting1
inc di
mov al,[di]
cmp al,'f'
jnz exiting1
inc di
mov al,[di]

cmp al,'a'
jge figjo
cmp al,'A'
jge hjko
cmp al,'0'
jge jker
jmp fish
jker:
cmp al,'9'
jbe exiting1
jmp fish
hjko:
cmp al,'Z'
jbe exiting1
jmp fish
figjo:
cmp al,'z'
jbe exiting1

fish:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],11h
mov di,[bp+4]
mov [word ptr di],1
exiting1:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkif
proc checkelif
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]

cmp al,'e'
jnz extttt
inc di
mov al,[di]
cmp al,'l'
jnz extttt
inc di
mov al,[di]
cmp al,'i'
jnz extttt
inc di
mov al,[di]
cmp al,'f'
jnz extttt

inc di
mov al,[di]
mov cx,96
loopop11:
inc cl
cmp al,cl
jz extttt
cmp cl,122
jnz loopop11
mov cl,'0'
dec cl
lopoopy11:
inc cl
cmp al,cl
jz extttt
cmp cl,'9'
jnz lopoopy11
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],6h
mov di,[bp+4]
mov [word ptr di],1

extttt:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkelif
proc checkelse
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'e'
jnz exiting2
inc di
mov al,[di]
cmp al,'l'
jnz exiting2
inc di
mov al,[di]
cmp al,'s'
jnz exiting2
inc di
mov al,[di]
cmp al,'e'
jnz exiting2
inc di
mov al,[di]
mov cl,96
loopop2:
inc cl
cmp al,cl
jz exiting2
cmp cl,122
jnz loopop2
mov cl,'0'
dec cl
lopoopy2:
inc cl
cmp al,cl
jz exiting2
cmp cl,'9'
jnz lopoopy2
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],12h
mov di,[bp+4]
mov [word ptr di],1
exiting2:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkelse
proc checkfunc
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'f'
jnz exiting3
inc di
mov al,[di]
cmp al,'u'
jnz exiting3
inc di
mov al,[di]
cmp al,'n'
jnz exiting3
inc di
mov al,[di]
cmp al,'c'
jnz exiting3
inc di
mov al,[di]
mov cl,96
loopop3:
inc cl
cmp al,cl
jz exiting3
cmp cl,122
jnz loopop3
mov cl,'0'
dec cl
lopoopy3:
inc cl
cmp al,cl
jz exiting3
cmp cl,'9'
jnz lopoopy3
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],4h
mov di,[bp+4]
mov [word ptr di],1
exiting3:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkfunc
proc checksummon
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'s'
jnz exiting32
inc di
mov al,[di]
cmp al,'u'
jnz exiting32
inc di
mov al,[di]
cmp al,'m'
jnz exiting32
inc di
mov al,[di]
cmp al,'m'
jnz exiting32
inc di
mov al,[di]
cmp al,'o'
jnz exiting32
inc di
mov al,[di]
cmp al,'n'
jnz exiting32
inc di
mov al,[di]
mov cl,96
loopop32:
inc cl
cmp al,cl
jz exiting32
cmp cl,122
jnz loopop32
mov cl,'0'
dec cl
lopoopy32:
inc cl
cmp al,cl
jz exiting32
cmp cl,'9'
jnz lopoopy32
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],40h
mov di,[bp+4]
mov [word ptr di],1
exiting32:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checksummon
proc checkdraw
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'d'
jnz exiting34
inc di
mov al,[di]
cmp al,'r'
jnz exiting34
inc di
mov al,[di]
cmp al,'a'
jnz exiting34
inc di
mov al,[di]
cmp al,'w'
jnz exiting34

inc di
mov al,[di]
cmp al,'a'
jge figjo1y
cmp al,'A'
jge hjko1y
cmp al,'0'
jge jker1y
jmp fish1y
jker1y:
cmp al,'9'
jbe exiting34
jmp fish1y
hjko1y:
cmp al,'Z'
jbe exiting34
jmp fish1y
figjo1y:
cmp al,'z'
jbe exiting34

fish1y:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],2h
mov di,[bp+4]
mov [word ptr di],1
exiting34:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkdraw
proc checkopens
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'o'
jnz exiting12
inc di
mov al,[di]
cmp al,'p'
jnz exiting12
inc di
mov al,[di]
cmp al,'e'
jnz exiting12
inc di
mov al,[di]
cmp al,'n'
jnz exiting12
inc di
mov al,[di]
cmp al,'s'
jnz exiting12

inc di
mov al,[di]
cmp al,'a'
jge figjo1f
cmp al,'A'
jge hjko1f
cmp al,'0'
jge jker1f
jmp fish1f
jker1f:
cmp al,'9'
jbe exiting12
jmp fish1f
hjko1f:
cmp al,'Z'
jbe exiting12
jmp fish1f
figjo1f:
cmp al,'z'
jbe exiting12

fish1f:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],5h
mov di,[bp+4]
mov [word ptr di],1

exiting12:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkopens
proc checkclear
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'c'
jnz exiting1244
inc di
mov al,[di]
cmp al,'l'
jnz exiting1244
inc di
mov al,[di]
cmp al,'e'
jnz exiting1244
inc di
mov al,[di]
cmp al,'a'
jnz exiting1244
inc di
mov al,[di]
cmp al,'r'
jnz exiting1244

inc di
mov al,[di]
cmp al,'a'
jge figjo1t
cmp al,'A'
jge hjko1t
cmp al,'0'
jge jker1t
jmp fish1t
jker1t:
cmp al,'9'
jbe exiting1244
jmp fish1t
hjko1t:
cmp al,'Z'
jbe exiting1244
jmp fish1t
figjo1t:
cmp al,'z'
jbe exiting1244

fish1t:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],37h
mov di,[bp+4]
mov [word ptr di],1

exiting1244:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkclear
proc checkgetkey
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'g'
jnz exiting124
inc di
mov al,[di]
cmp al,'e'
jnz exiting124
inc di
mov al,[di]
cmp al,'t'
jnz exiting124
inc di
mov al,[di]
cmp al,'k'
jnz exiting124
inc di
mov al,[di]
cmp al,'e'
jnz exiting124
inc di
mov al,[di]
cmp al,'y'
jnz exiting124

inc di
mov al,[di]
cmp al,'a'
jge figjo124
cmp al,'A'
jge hjko124
cmp al,'0'
jge jker11
jmp fish11
jker11:
cmp al,'9'
jbe exiting124
jmp fish11
hjko124:
cmp al,'Z'
jbe exiting124
jmp fish11
figjo124:
cmp al,'z'
jbe exiting124

fish11:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],38h
mov di,[bp+4]
mov [word ptr di],1

exiting124:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkgetkey
proc checkmin
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'m'
jnz exiting15
inc di
mov al,[di]
cmp al,'i'
jnz exiting15
inc di
mov al,[di]
cmp al,'n'
jnz exiting15
inc di
mov al,[di]

cmp al,'a'
jge figjo5
cmp al,'A'
jge hjko5
cmp al,'0'
jge jker5
jmp fish5
jker5:
cmp al,'9'
jbe exiting15
jmp fish5
hjko5:
cmp al,'Z'
jbe exiting15
jmp fish5
figjo5:
cmp al,'z'
jbe exiting15

fish5:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],43h
mov di,[bp+4]
mov [word ptr di],1
exiting15:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkmin
proc checkmax
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'m'
jnz exiting16
inc di
mov al,[di]
cmp al,'a'
jnz exiting16
inc di
mov al,[di]
cmp al,'x'
jnz exiting16
inc di
mov al,[di]

cmp al,'a'
jge figjo6
cmp al,'A'
jge hjko6
cmp al,'0'
jge jker6
jmp fish6
jker6:
cmp al,'9'
jbe exiting16
jmp fish6
hjko6:
cmp al,'Z'
jbe exiting16
jmp fish6
figjo6:
cmp al,'z'
jbe exiting16

fish6:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],44h
mov di,[bp+4]
mov [word ptr di],1
exiting16:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkmax
proc checklen
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'l'
jnz exiting18
inc di
mov al,[di]
cmp al,'e'
jnz exiting18
inc di
mov al,[di]
cmp al,'n'
jnz exiting18
inc di
mov al,[di]

cmp al,'a'
jge figjo8
cmp al,'A'
jge hjko8
cmp al,'0'
jge jker8
jmp fish8
jker8:
cmp al,'9'
jbe exiting18
jmp fish8
hjko8:
cmp al,'Z'
jbe exiting18
jmp fish8
figjo8:
cmp al,'z'
jbe exiting18

fish8:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],47h
mov di,[bp+4]
mov [word ptr di],1
exiting18:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checklen
proc checkrandom
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'r'
jnz exiting36
inc di
mov al,[di]
cmp al,'a'
jnz exiting36
inc di
mov al,[di]
cmp al,'n'
jnz exiting36
inc di
mov al,[di]
cmp al,'d'
jnz exiting36
inc di
mov al,[di]
cmp al,'o'
jnz exiting36
inc di
mov al,[di]
cmp al,'m'
jnz exiting36
inc di
mov al,[di]
mov cl,96
loopop36:
inc cl
cmp al,cl
jz exiting36
cmp cl,122
jnz loopop36
mov cl,'0'
dec cl
lopoopy36:
inc cl
cmp al,cl
jz exiting36
cmp cl,'9'
jnz lopoopy36
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],42h
mov di,[bp+4]
mov [word ptr di],1
exiting36:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkrandom
proc checkcontinue
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'c'
jnz exiting361
inc di
mov al,[di]
cmp al,'o'
jnz exiting361
inc di
mov al,[di]
cmp al,'n'
jnz exiting361
inc di
mov al,[di]
cmp al,'t'
jnz exiting361
inc di
mov al,[di]
cmp al,'i'
jnz exiting361
inc di
mov al,[di]
cmp al,'n'
jnz exiting361
inc di
mov al,[di]
cmp al,'u'
jnz exiting361
inc di
mov al,[di]
cmp al,'e'
jnz exiting361
inc di
mov al,[di]
mov cl,96
loopop361:
inc cl
cmp al,cl
jz exiting361
cmp cl,122
jnz loopop361
mov cl,'0'
dec cl
lopoopy361:
inc cl
cmp al,cl
jz exiting361
cmp cl,'9'
jnz lopoopy361
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],45h
mov di,[bp+4]
mov [word ptr di],1
exiting361:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkcontinue
proc checkbreak
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'b'
jnz exiting37
inc di
mov al,[di]
cmp al,'r'
jnz exiting37
inc di
mov al,[di]
cmp al,'e'
jnz exiting37
inc di
mov al,[di]
cmp al,'a'
jnz exiting37
inc di
mov al,[di]
cmp al,'k'
jnz exiting37
inc di
mov al,[di]
mov cl,96
loopop37:
inc cl
cmp al,cl
jz exiting37
cmp cl,122
jnz loopop37
mov cl,'0'
dec cl
lopoopy37:
inc cl
cmp al,cl
jz exiting37
cmp cl,'9'
jnz lopoopy37
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],46h
mov di,[bp+4]
mov [word ptr di],1
exiting37:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkbreak
proc checkrect
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
cmp al,'r'
jnz exiting24
inc di
mov al,[di]
cmp al,'e'
jnz exiting24
inc di
mov al,[di]
cmp al,'c'
jnz exiting24
inc di
mov al,[di]
cmp al,'t'
jnz exiting24

inc di
mov al,[di]
cmp al,'a'
jge figjo1y67
cmp al,'A'
jge hjko1y67
cmp al,'0'
jge jker1y67
jmp fish1y67
jker1y67:
cmp al,'9'
jbe exiting24
jmp fish1y
hjko1y67:
cmp al,'Z'
jbe exiting24
jmp fish1y67
figjo1y67:
cmp al,'z'
jbe exiting24

fish1y67:
mov si,[bp+12]
dec di
mov [si],di

mov [byte ptr bx],50h
mov di,[bp+4]
mov [word ptr di],1
exiting24:
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp checkrect
proc checkstring
push bp
mov bp,sp
push di
push si
push ax
push cx
push bx
mov si,[bp+10];inside of counter
mov di,si
xor dx,dx
mov si,[bp+26];String
xor bx,bx
xor cx,cx
mov al,[di]
cmp al,'"'
jz adkoaaa
jmp adko
adkoaaa:
inc di
mov al,[di]
cmp al,'"'
jz fjfz
mov [si],al
inc si
inc cl
inc dx
jmp adkoaaa
fjfz:
loolg:
mov bx,[bp+30];offset of string
push si
mov si,[bp+28];amount of string
add bx,[si]
pop si
cmp bx,[bp+30]
jz oookg
kjg:
sub bx,3
mov al,[bx]
xor ah,ah
cmp ax,dx;check inside strings till u find the length
jz olrg
sub bx,ax
klolmg:
cmp bx,[bp+30]
jnz kjg
jmp oookg

olrg:
dec bx;go one below to the last letter
mov si,[bp+26]
add si,dx
dec si;to get to the last letter
mov ax,0
eeerg:
push cx
mov cl,[si]
cmp [bx],cl
jnz yingg
pop cx
dec bx
dec si
inc ax
cmp ax,dx
jnz eeerg
jmp exitingg6g
yingg:
pop cx
jmp klolmg

oookg:
mov si,[bp+26]
add si,dx
mov [si],dx
inc si
mov di,[bp+24];typeid counter
inc dx
mov bx,[bp+8];types
add dx,2
mov ax,[di]
mov [word ptr bx],25h
add bx,2
mov [word ptr bx],ax;move inside types 23h+
add bx,2
mov [word ptr bx],25h
mov [word ptr si],ax
inc [word ptr di]
mov di,[bp+12]
add cl,2
dec cl;cz already incs by 1 in main
add [di],cl;update counter bc it already incs by 1 in main
mov di,[bp+20];addax
mov [di],dx
mov di,[bp+4]
mov [word ptr di],4;moves 4 to the checking flag to see if string was changed

jmp adko
exitingg6g:
add bx,dx;because its already exiss it has its own type so u just takei t and put it in types from the string
add bx,2
mov si,[bp+8]
xor cx,cx
mov [word ptr si],25h
add si,2
mov cx,[bx]
mov [si],cx
add si,2
mov [word ptr si],25h

xor cx,cx	
add cx,dx
mov di,[bp+12]
add cl,2
dec cl;cz already incs by 1 in main
add [di],cl;update counter bc it already incs by 1 in main

mov si,[bp+26];deletes the places  u put letters of the already exiwtss string
add si,dx
mov [byte ptr si],0
add dx,2
ool:
dec dx
mov [byte ptr si],0
dec si
cmp dx,0
jnz ool

mov si,[bp+20]
mov [word ptr si],0


mov di,[bp+4]
mov [word ptr di],5

adko:
pop bx
pop cx
pop ax
pop si
pop di
pop bp
ret
endp checkstring
proc checksigns
push bp
mov bp,sp
push ax
push si
push bx
push di
mov si,[bp+10]
mov bx,[bp+8]
mov di,si
mov al,[di]
mov si,[bp+12]

cmp al,'.'
jnz nextt14
mov [word ptr bx],48h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nextt14:
cmp al,':'
jnz nextt12
mov [word ptr bx],41h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nextt12:
cmp al,','
jnz next123
mov [word ptr bx],36h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next123:
cmp al,'&'
jnz nertt11
inc di
mov al,[di]
cmp al,'&'
jz okag5
dec di
mov al,[di]
jmp nertt11
okag5:
mov [word ptr bx],35h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt11:
cmp al,'|'
jnz nertt10
inc di
mov al,[di]
cmp al,'|'
jz okag4
dec di
mov al,[di]
jmp nertt10
okag4:
mov [word ptr bx],34h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt10:
cmp al,'='
jnz nertt9
inc di
mov al,[di]
cmp al,'='
jz okag3
dec di
mov al,[di]
jmp nertt9
okag3:
mov [word ptr bx],33h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt9:
cmp al,'!'
jnz nertt8
inc di
mov al,[di]
cmp al,'='
jz okag2
dec di
mov al,[di]
jmp nertt8
okag2:
mov [word ptr bx],32h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt8:
cmp al,'<'
jnz nertt7
inc di
mov al,[di]
cmp al,'='
jz okag1
dec di
mov al,[di]
jmp nertt7
okag1:
mov [word ptr bx],31h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt7:
cmp al,'>'
jnz nertt6
inc di
mov al,[di]
cmp al,'='
jz okag
dec di
mov al,[di]
jmp nertt6
okag:
mov [word ptr bx],30h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt6:
cmp al,'}'
jnz nertt5
mov [word ptr bx],27h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt5:
cmp al,'{'
jnz nertt4
mov [word ptr bx],26h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt4:
cmp al,'>'
jnz nertt3
mov [word ptr bx],24h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
jmp endingg
nertt3:
cmp al,'<'
jnz nertt2
mov [word ptr bx],23h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nertt2:
cmp al,']'
jnz nertt1
mov [word ptr bx],7h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nertt1:
cmp al,'['
jnz nertt
mov [word ptr bx],8h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nertt:
cmp al,'%'
jnz nert
mov [word ptr bx],9h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
nert:
cmp al,'+'
jnz next
mov [word ptr bx],15h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next:
cmp al,'-'
jnz next1
mov [word ptr bx],16h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next1:
cmp al,'('
jnz next2
mov [word ptr bx],19h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next2:
cmp al,')'
jnz next3
mov [word ptr bx],20h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next3:
cmp al,'*'
jnz next4
mov [word ptr bx],17h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next4:
cmp al,'/'
jnz next5
mov [word ptr bx],18h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next5:
cmp al,';'
jnz next6
mov [word ptr bx],21h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
next6:
cmp al,'='
jnz endingg
mov [word ptr bx],22h
mov [si],di
mov di,[bp+4]
mov [word ptr di],1
endingg:
pop di
pop bx
pop si
pop ax
pop bp
ret
endp checksigns
proc checknum
push bp
mov bp,sp
push ax
push cx
push si
push di
push bx
mov si,[bp+10]
mov di,si
xor ax,ax
xor dx,dx
mov si,[bp+12]
lol:
mov al,[di]
looper:
cmp al,'9'
jnz nextt
mov cx,9
jmp youpassed1
nextt:
cmp al,'8'
jnz nextt1
mov cx,8
jmp youpassed1
nextt1:
cmp al,'7'
jnz nextt2
mov cx,7
jmp youpassed1
nextt2:
cmp al,'6'
jnz nextt3
mov cx,6
jmp youpassed1
nextt3:
cmp al,'5'
jnz nextt4
mov cx,5
jmp youpassed1
nextt4:
cmp al,'4'
jnz nextt5
mov cx,4
jmp youpassed1
nextt5:
cmp al,'3'
jnz nextt6
mov cx,3
jmp youpassed1
nextt6:
cmp al,'2'
jnz nextt7
mov cx,2
jmp youpassed1
nextt7:
cmp al,'1'
jnz nextt8
mov cx,1
jmp youpassed1
nextt8:
cmp al,'0'
jnz exiting5
mov cx,0
jmp youpassed1
youpassed1:
mov bx,[bp+14];offset of numbers
inc dx
cmp dx,2
jb hee;if its lower than 2
;---------
push ax
push bx
push cx
push dx
mov cx,bx
mov ax,10
mov bx,[bx]
mul bx
mov bx,cx
mov [bx],ax
pop dx
pop cx
pop bx
pop ax
mov si,[bp+12]
mov [si],di

;--------
hee:
add [bx],cx

mov si,[bp+12]
mov [si],di
;---------
push di
mov di,[bp+4]
mov [word ptr di],3
pop di
push bx
mov bx,[bp+8]
mov [byte ptr bx],1h
pop bx
;------------------
eee:
inc di
jmp lol
exiting5:
pop bx
pop di
pop si
pop cx
pop ax
pop bp
ret
endp checknum
proc checkidentifier
push bp
mov bp,sp
push si
push di
push ax
push cx
push bx
push dx
mov si,[bp+10];inside of counter
mov di,si
xor dx,dx
mov si,[bp+16];mishtanim
xor bx,bx
add si,4
herer:
mov al,[di]
cmp al,'A'
jge finee
jmp final
finee:
cmp al,'Z'
jbe safebut
realcheck:
cmp al,'a'
jge alor
jmp final
alor:
cmp al,'z'
jbe safebut
jmp final
reall:
mov al,[di]
cmp al,'a'
jb lower
cmp al,'z'
jbe safebut
jmp exiting6
lower:
cmp al,'A'
jb numb
cmp al,'Z'
jbe safebut
jmp exiting6
numb:
cmp al,'0'
jge okay
jmp exiting6
okay:
cmp al,'9'
jbe safebut
jmp exiting6
safebut:
inc dx
xor bx,bx
mov bl,[di]
mov [si],bl;mov the letters inside misthanim
inc si
inc di
jmp reall
exiting6:


lool:
mov bx,[bp+22];offset of mishtanim
mov si,[bp+18];amount of mishtanim
add bx,[si]
cmp bx,[bp+22]
jz oook
kj:
sub bx,3
mov al,[bx]
xor ah,ah
cmp ax,dx;check inside mishtanim till u find the length
jz olr
sub bx,ax
klolm:
sub bx,4
cmp bx,[bp+22]
jnz kj
jmp oook

olr:
push bx
dec bx;go one below to the last letter
mov si,[bp+16]
add si,dx
add si,3;to get to the last letter
mov ax,0
eeer:
push cx
mov cl,[si]
cmp [bx],cl
jnz ying
pop cx
dec bx
dec si
inc ax
cmp ax,dx
jnz eeer
pop bx
jmp exitingg6
ying:
pop cx
pop bx
sub bx,dx
jmp klolm

oook:
mov si,[bp+16]
add si,dx
add si,4
mov [si],dx;move the length inside mishtanim
inc si
mov bx,[bp+8];types
push di
mov di,[bp+24]
mov cx,[di]
mov [si],cx;move the typeid inside mishtanim
pop di

dec di;------------
mov si,[bp+12]
mov [si],di;update counter bc it already incs by 1 in main
mov si,[bp+20];changes how much to add ax
add dx,7
mov [si],dx;adds the length + 2 which is adress and length

mov di,[bp+4]
mov [word ptr di],2;moves 2 to the checking flag 2 to see if mishtanim was changed
mov di,[bp+24];typeid counter
mov bx,[bp+8];types
mov cx,[di]
mov [word ptr bx],cx;move inside types 23h+
inc [word ptr di]
mov bx,[bp+18]
add [word ptr bx],dx;adds to the amount of mishtanim
jmp final

exitingg6:
inc bx
mov si,[bp+8]
xor cx,cx
mov cx,[bx]
mov [si],cx

dec di;------------
mov si,[bp+12]
mov [si],di;update counter bc it already incs by 1 in main

mov si,[bp+16];deletes the places  u put letters of the already exiwtss mishtane
add si,dx
add si,3
mov [byte ptr si],0
add dx,2
oo:
dec dx
mov [byte ptr si],0
dec si
cmp dx,0
jnz oo

mov si,[bp+20]
mov [word ptr si],00h

mov di,[bp+4]
mov [word ptr di],1
final:
pop dx
pop bx
pop cx
pop ax
pop di
pop si
pop bp
ret
endp checkidentifier
proc checkorder
push bp
mov bp,sp
push bx
push si
push cx
push di
push ax
push dx
mov bx,[bp+4];mishtanim
mov si,[bp+6];types

mov cx,[bp+50]
push cx;bp+50 pfuncarray
mov cx,[bp+48]
push cx;bp+48 functionarray
mov cx,[bp+46]
push cx;typesfornumberarray
mov cx,[bp+44]
push cx;araay pointer
mov cx,[bp+42]
push cx;adresstypes
mov cx,[bp+40]
push cx;ifelsearray
mov cx,[bp+38]
push cx;saveending
mov cx,[bp+36]
push cx;extraslots
mov cx,[bp+34]
push cx;stringlength
mov cx,[bp+32]
push cx;string
mov cx,[bp+30]
push cx;headers adress
mov cx,[bp+28]
push cx;arrays
mov cx,[bp+26]
push cx;addax
mov cx,[bp+24]
push cx;bp+24 headers
mov cx,[bp+10]
push cx;bp+22oparray
mov cx,[bp+22];the bytes counter
push cx;bp+20
mov cx,[bp+18]
push cx;save bp+18
mov cx,[bp+20]
push cx;bp+16 last operator
mov cx,[bp+16];types offset
push cx;bp+14
mov cx,[bp+12];foundflag
push cx;bp+12
mov cx,[bp+14];number
push cx;bp+10
mov cx,[bp+8];length
push cx;b+8
push si;bp+6
push bx;bp+4
call iff
call elif
call elsee
call createfunction
call summonfunc
call definemishtanim
call createarray
call createarray2
call poparrey
call gettoarray
call appendarray
call checkaheadof
call whilee
call draw
call rect
call clear
call getkey
call opens
pop bx
pop si
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
pop cx
exitingo:
pop dx
pop ax
pop di
pop cx
pop si
pop bx
pop bp
ret 48
endp checkorder
proc fident
push bp
mov bp,sp
push cx
push bx
push di
push dx
push si
xor cx,cx
mov si,[bp+8];the adress of types
mov bx,[bp+6];the amount of mishtanim
mov cx,[bx]
mov bx,[bp+4];mishtanim
add bx,cx
sub bx,2
ggr:
mov ax,[bx]
cmp [si],ax;to get to the x in y=x u find the types
jz fine
dec bx
xor ax,ax
mov al,[bx]
ll:
dec al
dec cx
dec bx
cmp al,0
jnz ll
sub cx,6
sub bx,6
cmp cx,0
jnz ggr
jmp erriring
fine:
dec bx
mov cl,[bx]
dec bx
kkk:
dec bx
dec cl
cmp cl,0
jnz kkk
dec bx
jmp klo
;si is adress of types
;ax is the adress of numbers inside types
erriring:
mov ax, 13h
int 10h  
mov ax,0A000h
mov es,ax
llw1:
jmp llw1
klo:
mov ax,bx
pop si
pop dx
pop di
pop bx
pop cx
pop bp
ret 6
endp fident
proc getnumber
push bp
mov bp,sp
push cx
push di
push dx
push bx
push si
mov bx,[bp+8];adress of types u wanna reach
mov si,[bp+6];types offset
mov cx,bx
sub cx,2;get to offset of  one before the number
mov ax,0
re:;to check how many 1s there is to get the right number
cmp [word ptr si],1h
jnz ee
inc ax
ee:
add si,2
cmp si,cx
jnz re
add ax,ax
mov si,[bp+4];numbers offset
add si,ax;gets to the number we using and returns
mov ax,si
mov si,bx;retuns
;bx is the adress of number inside mishtane
;si is the adress of type that we using
pop si
pop bx
pop dx
pop di
pop cx
pop bp
ret 6
endp getnumber
proc divideproc
push bp
mov bp,sp
push bx
push cx
push si
push dx
push di

mov ax,[bp+4]
mov cx,[bp+6]
cwd
idiv cx

pop di
pop dx
pop si
pop cx
pop bx
pop bp
ret 4
endp divideproc
proc multiplyproc
push bp
mov bp,sp
push si
push cx
push bx
push di
push dx

mov ax,[bp+6]
mov cx,[bp+4]
xor dx,dx
imul cx

pop dx
pop di
pop bx
pop cx
pop si
pop bp
ret 4
endp multiplyproc
proc whichoperating
push bp
mov bp,sp
push ax
push cx
push si
push di
push dx
mov cx,[bp+4];second from left
mov ax,[bp+6];first from left
;bx is gonna be bp+8 which is just the values array that we storing into it

mov si,[bp+10]
cmp [word ptr si],9h
jnz checkfordiv
cwd
idiv cx
mov ax,dx
jmp moveresult

checkfordiv:
cmp [word ptr si],18h
jnz checkformul
push cx
push ax
call divideproc
jmp moveresult

checkformul:
cmp [word ptr si],17h
jnz checkforplus
push ax
push cx
call multiplyproc
jmp moveresult

checkforplus:
cmp [word ptr si],15h
jnz checkforminus
add ax,cx
jmp moveresult

checkforminus:
cmp [word ptr si],16h
jnz ifonenumber
sub ax,cx
jmp moveresult

ifonenumber:
cmp [word ptr si],0
jnz errorf
add ax,cx
mov bx,[bp+8]
add bx,2
jmp ko

errorf:
jmp errorf

moveresult:
mov bx,[bp+8]
ko:
mov [bx],ax
pop dx
pop di	
pop si
pop cx
pop ax
pop bp
ret 8
endp whichoperating
proc getpriority
push bp
mov bp,sp
push si
mov ax,[bp+4]
mov si,[bp+6]

cmp [word ptr si],15h
jnz checkminus
mov ax,2
jmp mathing1
checkminus:
cmp [word ptr si],16h
jnz checkmul
mov ax,2
jmp mathing1
checkmul:
cmp [word ptr si],17h
jnz checkdiv
mov ax,3
jmp mathing1
checkdiv:
cmp [word ptr si],18h
jnz checkmodule
mov ax,3
jmp mathing1
checkmodule:
cmp [word ptr si],9h
jnz nathing
mov ax,3
jmp mathing1

mathing1:
xor cx,cx
mov cx,1
nathing:
pop si
pop bp
ret 4
endp getpriority
proc definemishtanim
push bp
mov bp,sp
push cx
push si
push bx
push ax
push di
push dx
mov si,[bp+6];types
mov ax,si
mov bx,[bp+4];mishtanim
cmp [word ptr si],90h
jge ex
jmp exto
ex:
add si,2
cmp [word ptr si],22h
jz kle
jmp exto
kle:
add si,2
cmp [word ptr si],19h
jnz kaf
jmp gij
kaf:
cmp [word ptr si],16h
jnz kiz
jmp gij
kiz:
cmp [word ptr si],1h
jnz hij
jmp gij
hij:
cmp [word ptr si],15h
jnz jik
jmp gij
jik:
cmp [word ptr si],25h
jnz gih
jmp gij
gih:
cmp [word ptr si],42h
jnz grso
jmp gij
grso:
cmp [word ptr si],43h
jnz girj
jmp gij
girj:
cmp [word ptr si],44h
jnz rtok
jmp gij
rtok:
cmp [word ptr si],90h
jge jkj
jmp exto
jkj:
gij:
sub si,4
mov cx,[bp+6];the current types
push cx
mov cx,[bp+8]
push cx
mov cx,[bp+4]
push cx
call fident
mov bx,ax
sub bx,2
mov [byte ptr bx],1
inc bx
mov [byte ptr bx],1
inc bx
mov dx,bx
add si,4
cmp [word ptr si],90h;checks if its string inside the mishtane
jb igik
push si
push [bp+8]
push [bp+4]
call fident
mov bx,ax
dec bx
cmp [byte ptr bx],2
jnz oka
inc bx
mov cx,[bx]
mov di,dx
mov [di],cx
dec di
mov [byte ptr di],2
add si,2
cmp [word ptr si],21h
jz exf
jmp errroring
exf:
jmp exto
igik:
cmp [word ptr si],25h
jnz oka
add si,2
push si;adress u want in types
push [bp+34];length of string
push [bp+32];string
call gstring
push di
mov di,dx
mov [di],ax
dec di
mov [byte ptr di],2
pop di
add si,2
cmp [word ptr si],25h
jnz errroring
add si,2
cmp [word ptr si],21h
jnz errroring
jmp exto
oka:
sub si,2
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov bx,[bp+38]
cmp [word ptr bx],21h
jnz errroring
push di
mov di,[bp+42]
mov [di],si
pop di
mov di,dx
mov [di],ax
jmp exto
errroring:
mov ax,13h
int 10h
jmp errroring
exto:
pop dx
pop di
pop ax
pop bx
pop si
pop cx
pop bp
ret
endp definemishtanim
proc calculating
push bp
mov bp,sp
push bx
push cx
push dx
push di
xor cx,cx
xor dx,dx
mov si,[bp+6]
;-----------------------------------------------------------------------
;si is charged for types
;di is charged for operatorsarray
;bx is charged for numbersarray and sometimes operator priority checking
;-----------------------------------------------------------------------
;bp+4
;bp+6
;bp+8
;bp+10
;bp+12
;bp+14
;bp+16
;bp+18
;bp+20
;bp+22
jmp processing
getnumberr:
push cx
push si;adress of types u wanna reach
mov cx,[bp+14];offset types
push cx
mov cx,[bp+10];offset numbers
push cx
call getnumber
push si
mov si,ax
mov ax,[si]
pop si
pop cx
jmp beforeoperators

getnumberfrommishtane:
push cx
push si;the types u want
mov cx,[bp+8]
push cx
mov cx,[bp+4]
push cx
call fident
push bx
mov bx,ax
sub bx,1
cmp [byte ptr bx],1
jz arlr
pop bx
pop cx
push bx
mov bx,[bp+24]
mov [word ptr bx],1
pop bx
jmp ext
arlr:
push si
mov si,ax
mov ax,[si]
pop si
pop bx
pop cx
jmp beforeoperators

getnumberfromarray:
push cx
sub si,2
push di
mov di,[bp+20]
mov dx,[di]
pop di
push di
mov di,[bp+16]
mov cx,[di]
pop di
push dx
push cx
push [bp+26]
push [bp+24]
push di
push [bp+20]
push bx
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call getvaluefromarray
pop cx
pop dx
push di
mov di,[bp+16]
mov [di],cx
pop di
push di
mov di,[bp+20]
mov [di],dx
pop di
pop cx
push si
mov si,ax
mov ax,[si]
pop si
jmp beforeoperators

processing:
mov bx,[bp+18]
mov di,[bp+22]
add di,2
push bx
mov bx,[bp+20]
mov [word ptr bx],2
pop bx

number:
add si,2
num:
cmp [word ptr si],1h
jnz jkla
jmp getnumberr
jkla:
cmp [word ptr si],90h
jb klop
add si,2
cmp [word ptr si],8h
jnz grgij
add si,2
cmp [word ptr si],7h
jnz fsofk
sub si,4
push [bp+26]
push si
call arrlen
jmp beforeoperators
fsofk:
sub si,2
jmp getnumberfromarray
grgij:
sub si,2
jmp getnumberfrommishtane

klop:
cmp [word ptr si],42h
jnz fefs
push cx
push [bp+14]
push [bp+10]
push[bp+8]
push si
push [bp+4]
call random
pop cx
jmp beforeoperators
fefs:
cmp [word ptr si],43h
jz dokoe
cmp [word ptr si],44h
jz dokoe
jmp fekol
dokoe:
push cx
push bx
push di
mov di,[bp+20]
mov dx,[di]
pop di
push di
mov di,[bp+16]
mov cx,[di]
pop di
push dx
push cx
push [bp+26]
push [bp+24]
push di
push [bp+20]
push bx
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call maxmin
pop cx
pop dx
push di
mov di,[bp+16]
mov [di],cx
pop di
push di
mov di,[bp+20]
mov [di],dx
pop di
pop bx
pop cx
jmp beforeoperators
fekol:
cmp [word ptr si],16h
jnz csog
add si,2
cmp [word ptr si],19h
jz okk
sub si,2
mov cx,6
jmp number
okk:
push bx
mov bx,[bp+12]
mov [bx],di
pop bx
csog:
cmp [word ptr si],19h
jnz cplus
push si
mov si,[bp+16]
mov [word ptr si],0
pop si
mov [word ptr di],19h
add di,2
jmp number
cplus:
cmp [word ptr si],15h
jnz cstring
jmp number
cstring:
cmp [word ptr si],25h
jnz errorr
push bx
mov bx,[bp+24]
mov [word ptr bx],1
pop bx
jmp ext
errorr:
jmp erroring

beforeoperators:
cmp cx,6
jnz continue
mov cx,ax
neg cx
jmp fah
continue:
;puts inside the values array the numbers the outputarray
mov cx,ax
fah:
mov [bx],cx
;----------------------------
add bx,2;add the array by 2
push bx
mov bx,[bp+20]
add [word ptr bx],2
pop bx
forendofsograim:
add si,2;add types by 2
operators:
xor cx,cx
push si
push ax
call getpriority
cmp cx,1
jnz checkendofsograim
jmp mathing
checkendofsograim:
cmp [word ptr si],20h
jnz checknekodapsic
xor cx,cx
push di
mov ax,[bp+22]
pop di
push di
llla:
cmp di,ax
jz ghz
cmp [word ptr di],19h
jz czf
sub di,2
jmp llla
czf:
inc cx
ghz:
pop di
cmp cx,0
jz jef

mov ax,5
jmp checksograim
checknekodapsic:
cmp [word ptr si],30h
jz jef
cmp [word ptr si],23h
jz jef
cmp [word ptr si],24h
jz jef
cmp [word ptr si],31h
jz jef
cmp [word ptr si],32h
jz jef
cmp [word ptr si],33h
jz jef
cmp [word ptr si],34h
jz jef
cmp [word ptr si],35h
jz jef
cmp [word ptr si],21h
jz jef
cmp [word ptr si],8h
jz jef
cmp [word ptr si],7h
jz jef
cmp [word ptr si],36h
jz jef
cmp [word ptr si],25h
jnz klds
push bx
mov bx,[bp+24]
mov [word ptr bx],1
pop bx
jmp ext
klds:
jmp erroring
jef:
push bx
mov bx,[bp+24]
mov cx,[si]
mov [bx],cx
pop bx
mov cx,bx
sub cx,2
cmp cx,[bp+18]
jz ok
xor ax,ax
mov ax,6
jmp firstcheckforend
ok:
sub bx,2
mov ax,[bx]
mov [word ptr bx],0
jmp ext

mathing:
mov cx,si
mov si,[bp+16]
cmp ax,[si]
jng gga
jmp ifbigger
gga:
mov [si],ax
mov si,cx
jmp again
checksograim:
sub di,2
mov cx,[di]
add di,2
cmp cx,19h
jnz again
sub di,2
mov [word ptr di],0
calling:
push si
mov si,[bp+12]
mov ax,[si]
pop si
cmp ax,di
jnz jjj
sub bx,2
neg [word ptr bx]
add bx,2
jjj:
sub di,2
xor ax,ax
push di
push ax
call getpriority
add di,2
cmp cx,1
jz kka
push si
mov si,[bp+16]
mov [word ptr si],0
pop si
jmp forendofsograim
kka:
push si
mov si,[bp+16]
mov [si],ax
pop si
jmp forendofsograim
again:
push ax
sub bx,2
mov cx,[bx]
mov [word ptr bx],0
sub bx,2
xor ax,ax
mov ax,[bx]
mov [word ptr bx],0
sub di,2
push di;types array
push bx;numbers thingarray
push ax;first from left
push cx;secondfrom left
call whichoperating
add bx,2
mov [word ptr di],0
pop ax
firstcheckforend:
push bx
mov bx,[bp+20]
sub [word ptr bx],2
xor cx,cx
mov cx,[bx]
pop bx
cmp ax,5
jnz ccont
jmp checksograim
ccont:
cmp ax,6
jnz contineu
cmp cx,2
jnz again
jmp ok
contineu:
sub di,2
cmp [word ptr di],0
jz kokl
cmp [word ptr di],19h
jz kokl
push di
push ax
call getpriority
add di,2
mov cx,si
mov si,[bp+16]
cmp ax,[si]
jne gjgj
mov si,cx
jmp again
gjgj:
mov si,cx
jmp llo
kokl:
add di,2
llo:
mov cx,[si]
mov [word ptr di],cx
add di,2
jmp number
ifbigger:
mov [si],ax
mov si,cx;return types to si
mov cx,[si]
mov [di],cx
add di,2
jmp number


erroring:
mov bx,[bp+24]
mov [word ptr bx],128h
jmp redo

ext:
mov bx,[bp+16]
mov [word ptr bx],0


redo:
cmp di,[bp+22]
jz alright
mov [word ptr di],0
sub di,2
jmp redo

alright:
pop di
pop dx
pop cx
pop bx
pop bp
ret 24
endp calculating
proc definearray
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx

mov ax,[bp+4]
mov cx,[bp+8]
sub ax,cx
mov cx,ax
add cx,2

mov ax,[bp+10]
mov bx,[bp+6]
mov di,[bp+8]
add di,2
xor si,si
add si,2
xor dx,dx
kk:
cmp [word ptr di],0
jz ccheck
cmp bx,[di]
jge kok
jmp kas
kok:
add si,2
add di,2
cmp bx,[di]
jbe kk2
jmp lop
kas:
add si,2
add di,2
lop:
add si,4
add di,4
jmp kk

ccheck:
cmp si,cx
jz kka1
add di,6
add si,6
jmp kk
kka1:
xor si,si
jmp llp
kk2:
xor dx,dx
push ax
push cx
mov cx,[di]
sub di,2
mov ax,[di]
mov bx,ax
add di,2
sub cx,ax
add bx,cx
add bx,3
inc dx
pop cx
pop ax
cmp dx,ax
jz kasz
mov di,[bp+8]
add di,2
xor si,si
add si,2
jmp kk
llp:
mov di,[bp+8]
add di,2
xor si,si
add si,2
add bx,3
inc dx
cmp dx,ax
jnz kk
kasz:
mov di,[bp+12]
add di,4
mov [di],bx
sub bx,ax
sub bx,ax
sub bx,ax
sub di,2
mov [di],bx
jmp finish
kk3:
mov di,[bp+12]
add di,2
mov [di],bx
add di,2
add bx,ax
add bx,ax
add bx,ax
mov [di],bx
finish:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret 10
endp definearray
proc createarray
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx
mov si,[bp+6]
cmp [word ptr si],90h
jge ggont
jmp extt
ggont:
add si,2
cmp [word ptr si],22h
jz okko
jmp extt
okko:
add si,2
cmp [word ptr si],8h
jz fk
jmp extt
fk:
mov cx,si
fkoz:
add si,2
cmp [word ptr si],36h
jnz okej
jmp extt
okej:
cmp [word ptr si],7h
jnz fkoz
mov si,cx

push [bp+6];the types u want
push [bp+8];length of mishtanim
push [bp+4];mishtanim 
call fident
mov bx,ax

agaie:
add si,2
cmp [word ptr si],25h
jnz daae
add si,4
cmp [word ptr si],25h
jz klaj
call errorr1
klaj:
sub si,2
cmp [word ptr si],90h
jge klb
call errorr1
klb:
mov dx,2
push si;adress u want in types
push [bp+34];length of string
push [bp+32];string
call gstring
mov cx,ax
add si,2
jmp kaka
daae:
sub si,2
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov di,[bp+38]
cmp [word ptr di],7h
jz fol
cmp [word ptr di],36h
jnz okerror
jmp extt
okerror:
jmp erroro
fol:
mov cx,ax
mov dx,1
kaka:
cmp [word ptr si],7h
jz dak
jmp extt
dak:
add si,2
cmp [word ptr si],17h
jz baj
jmp extt
baj:
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov di,[bp+38]
cmp [word ptr di],21h
jz jakr
call erroro
jakr:
cmp ax,0
jge kgk
jmp erroro
kgk:
push cx
push si
mov si,[bp+6]
mov cx,[si]
mov di,[bp+30]
kda1:
cmp [word ptr di],0
jz mkl
cmp [word ptr di],cx
jnz akg
jmp hjio
akg:
add di,6
jmp kda1
hjio:
add di,4
mov [word ptr di],0
sub di,2
mov [word ptr di],0
sub di,2
pop si
pop cx
jmp ett
mkl:
mov di,[bp+24]
mov [di],cx
pop si
pop cx
ett:
cmp [word ptr si],21h
jz kae
jmp erroro
kae:
push di
mov di,[bp+42]
mov [di],si
pop di

push di
push di 
push ax
push [bp+30]
push [bp+28]
push [bp+24]
call definearray
pop di

add di,2
mov si,[di]
add di,2
mov ax,[di]
lll:
cmp si,ax
jz kokn
mov [si],dx
inc si
mov [si],cx
add si,2
jmp lll

erroro:
call errorr1
jmp erroro

kokn:
mov di,[bp+26]
mov [word ptr di],6
extt:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp createarray
proc createarray2
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx
xor ax,ax
mov si,[bp+6]
cmp [word ptr si],90h
jge filn
jmp exxxt
filn:
add si,2
cmp [word ptr si],22h
jz fegh
jmp exxxt
fegh:
add si,2
cmp [word ptr si],8h
jz feom
jmp exxxt
feom:
add si,2
cmp [word ptr si],36h
jnz ofek
inc ax
ofek:
cmp [word ptr si],7h
jnz feom
add si,2
cmp [word ptr si],17h
jnz fewo
jmp exxt
fewo:
mov si,[bp+6]
add si,4
inc ax
okgr:
push cx
push si
mov si,[bp+6]
mov cx,[si]
mov di,[bp+30]
kda11:
cmp [word ptr di],0
jz mkl1
cmp [word ptr di],cx
jnz akg1
jmp hjio1
akg1:
add di,6
jmp kda11
hjio1:
add di,4
mov [word ptr di],0
sub di,2
mov [word ptr di],0
sub di,2
pop si
pop cx
jmp ett1
mkl1:
mov di,[bp+24]
mov [di],cx
pop si
pop cx
ett1:
push ax
push di
push di 
push ax
push [bp+30]
push [bp+28]
push [bp+24]
call definearray
pop di
pop ax
add di,2
mov bx,[di]
letsgo:
add si,2
cmp [word ptr si],25h
jnz daar1
add si,4
cmp [word ptr si],25h
jz klaj1
call errorr1
klaj1:
sub si,2
cmp [word ptr si],90h
jge klb1
call errorr1
klb1:
mov dx,2
push bx
push di
push si;adress u want in types
push [bp+34];length of string
push [bp+32];string
call gstring
pop di
pop bx
mov cx,ax
add si,4
mov dx,2
jmp putinarray
daar1:
cmp [word ptr si],1h
jz okak1
cmp [word ptr si],90h
jge okak1
cmp [word ptr si],42h
jz okak1
cmp [word ptr si],44h
jz okak1
cmp [word ptr si],43h
jz okak1
jmp exxxt
okak1:
sub si,2
push di
push bx
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
pop bx
pop di
mov cx,ax
mov dx,1
putinarray:
mov [bx],dx
inc bx
mov [bx],cx
add bx,2
cmp [word ptr si],36h
jnz lgrd
jmp letsgo
lgrd:
cmp [word ptr si],7h
jz feij
call errorr1
feij:
add si,2
cmp [word ptr si],21h
jz ehollon
call errorr1
ehollon:
mov di,[bp+26]
mov [word ptr di],6
mov di,[bp+42]
mov [di],si
exxxt:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp createarray2
proc arrlen
push bp
mov bp,sp
push bx
push di
push cx
push dx
xor ax,ax
mov si,[bp+4]
mov cx,[word ptr si]
mov di,[bp+6]
cmp [word ptr si],90h
jge okda
call errorr1
okda:
add si,2
cmp [word ptr si],8h
jz egrg
call errorr1
egrg:
add si,2
cmp [word ptr si],7h
jz toiy
call errorr1
toiy:
add si,2
cmp [word ptr si],48h
jz ogmm
call errorr1
ogmm:
add si,2
cmp [word ptr si],47h
jz nbml
call errorr1

nbml:
cmp [word ptr di],0
jnz rdim
call errorr1
rdim:
cmp [word ptr di],cx
jnz akg3
jmp rhtf
akg3:
add di,6
jmp nbml
rhtf:
add di,2
mov cx,[word ptr di]
add di,2
mov ax,[word ptr di]
sub ax,cx
mov bx,3
div bx

pop dx
pop cx
pop di
pop bx
pop bp
ret 4
endp arrlen
proc getvaluefromarray
push bp
mov bp,sp
push bx
push cx
push dx
push di
mov si,[bp+6]
cmp [word ptr si],90h
jge opak
jmp exitmm
opak:
mov dx,[si]
add si,2
cmp [word ptr si],8h
jz daeo
jmp exitmm
daeo:
add si,2
cmp [word ptr si],1h
jz oajk
cmp [word ptr si],90h
jge oajk
jmp exitmm
oajk:
sub si,2
push [bp+26]
push [bp+24]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating

cmp [word ptr si],7h
jz okdk
jmp exitmm
okdk:
kloa:
mov di,[bp+26]
kdk:
cmp [word ptr di],0
jz kaze
cmp [word ptr di],dx
jnz akk
jmp blaz
akk:
add di,6
jmp kdk
kaze:
jmp errosm
blaz:
add di,2
mov bx,ax
add ax,ax
add ax,bx
mov bx,[di]
add di,2
mov cx,[di]
sub di,2
sub cx,bx
cmp ax,cx
jb kak1e1
jmp errosm
kak1e1:
mov bx,[di]
add bx,ax
inc bx
mov ax,bx
jmp exitmm
errosm:
mov ax,13h
int 10h
jmp errosm

exitmm:
pop di
pop dx
pop cx
pop bx
pop bp
ret 24
endp getvaluefromarray
proc gettoarray
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx
mov si,[bp+6]
cmp [word ptr si],90h
jge okae
jmp exitty
okae:
mov dx,[si]
add si,2
cmp [word ptr si],8h
jz dae
jmp exitty
dae:
add si,2
cmp [word ptr si],1h
jz oak
cmp [word ptr si],90h
jge oak
jmp exitty
oak:
sub si,2
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
cmp [word ptr si],7h
jz okd
jmp exitty
okd:
add si,2
cmp [word ptr si],22h
jz okz
jmp exitty
okz:
push di
mov di,[bp+6]
mov dx,[di]
pop di
kl3:
mov di,[bp+30]
kda:
cmp [word ptr di],0
jz kaz
cmp [word ptr di],dx
jnz ak
jmp bla
ak:
add di,6
jmp kda
kaz:
jmp erros
bla:
add di,2

mov bx,ax
add ax,ax
add ax,bx
mov bx,[di]
add di,2
mov cx,[di]
sub di,2
sub cx,bx
cmp ax,cx
jb kak
jmp erros
kak:
mov bx,[di]
add bx,ax
inc bx
add si,2
cmp [word ptr si],25h
jz stringg
jmp numberz
stringg:
add si,4
cmp [word ptr si],25h
jnz erros
sub si,2
cmp [word ptr si],90h
jb erros
dec bx
mov [byte ptr bx],2
inc bx
push bx
push si;adress u want in types
push [bp+34];length of string
push [bp+32];string
call gstring
pop bx
mov [bx],ax
jmp exitty
numberz:
dec bx
mov [byte ptr bx],1
inc bx
sub si,2
push bx
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
pop bx
mov di,[bp+38]
cmp [word ptr di],21h
jnz erros
mov [bx],ax
mov di,[bp+42]
mov [di],si
jmp exitty
erros:
call errorr1
jmp erros

exitty:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp gettoarray
proc appendarray
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx
mov si,[bp+6]
cmp [word ptr si],90h
jge ee1
jmp exttt
ee1:
add si,2
cmp [word ptr si],8h
jz co
jmp exttt
co:
add si,2
cmp [word ptr si],7h
jz coz
jmp exttt
coz:
add si,2
cmp [word ptr si],23h
jz kakk
jmp exttt
kakk:
add si,2
cmp [word ptr si],23h
jz oake
jmp exttt
oake:
add si,2
cmp [word ptr si],25h
jz getstring
sub si,2
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov di,[bp+38]
cmp [word ptr di],21h
jz kkko
jmp erros
kkko:
mov di,1
jmp aja
getstring:
add si,4
cmp [word ptr si],25h
jz okao
jmp errrs
okao:
sub si,2
cmp [word ptr si],90h
jge faa
jmp errrs
faa:
push si
push [bp+34]
push [bp+32]
call gstring
mov di,2
aja:
mov bx,[bp+30]
mov si,[bp+6]
mov cx,[si]
aal:
cmp [bx],cx
jz daok
add bx,6
jmp aal
daok:
add bx,2
mov cx,[bx]
mov [word ptr bx],0
push cx
add bx,2
mov dx,[bx]
mov [word ptr bx],0
sub dx,cx
push ax
push bx
mov ax,dx
mov bx,3
xor dx,dx
div bx
mov dx,ax
pop bx
pop ax
push dx
inc dx
sub bx,4
mov cx,bx

push cx
push bx;the adress u wanna put the array adress to
push dx;length of array
push [bp+30]
push [bp+28]
push [bp+24];current headers length
call definearray
pop cx

add cx,4
mov bx,cx
push bx
mov bx,[bx]
sub bx,3
mov [bx],di
inc bx
mov [bx],ax;for the new added value
pop bx

pop dx
pop cx
mov si,cx
sub bx,2
mov bx,[bx]
llk:;to restore all the previous values in the array
cmp dx,0
jz finito
mov al,[si]
mov [bx],al
inc si
inc bx
mov ax,[si]
mov [bx],ax
add si,2
add bx,2
dec dx
jmp llk
finito:
jmp exttt
errrs:
mov ax,13h
int 10h
jmp errrs
exttt:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp appendarray
proc poparrey
push bp
mov bp,sp
push si
push bx
push di
push ax
push cx
push dx
mov si,[bp+6]
cmp [word ptr si],90h
jge ee12
jmp extt2
ee12:
add si,2
cmp [word ptr si],8h
jz co1
jmp extt2
co1:
add si,2
cmp [word ptr si],7h
jz coz1
jmp extt2
coz1:
add si,2
cmp [word ptr si],24h
jz kak1k
jmp extt2
kak1k:
add si,2
cmp [word ptr si],24h
jz oake1
jmp extt2
oake1:
mov bx,[bp+30]
mov si,[bp+6]
mov cx,[si]
aall:
cmp [bx],cx
jz daokl
add bx,6
jmp aall
daokl:
add bx,2
mov cx,[bx]
mov [word ptr bx],0
push cx
add bx,2
mov dx,[bx]
mov [word ptr bx],0
sub dx,cx
push ax
push bx
mov ax,dx
mov bx,3
xor dx,dx
div bx
mov dx,ax
pop bx
pop ax
push dx
dec dx
sub bx,4


push bx;the adress u wanna put the array adress to
push dx;length of array
push [bp+30]
push [bp+28]
push [bp+24];the adress u wanna put the array adress to
call definearray

pop dx
pop cx
kokok:
mov si,[bp+6]
add si,10
cmp [word ptr si],90h
jb ads
push si;the types u want
push [bp+8]
push [bp+4]
call fident

mov bx,ax
sub bx,2
cmp [word ptr bx],1
jnz aerror
add bx,2
mov si,cx
add si,dx
add si,dx
add si,dx
sub si,2

mov di,ax
mov ax,[si]
mov [di],ax

mov si,[bp+6]
add si,12
jmp mmm
ads:
mov si,[bp+6]
add si,10
mmm:
cmp [word ptr si],21h
jnz aerror
push di
mov di,[bp+42]
mov [di],si
pop di
jmp extt2
aerror:
jmp aerror


extt2:
pop dx
pop cx
pop ax
pop di
pop bx
pop si
pop bp
ret
endp poparrey
proc gstring
push bp
mov bp,sp
push cx
push bx
push di
push dx
push si
xor cx,cx
mov si,[bp+8];the adress of cuurent types 
mov bx,[bp+6];the amount of string
mov cx,[bx]
mov bx,[bp+4];string
add bx,cx
sub bx,2
ggr1:
mov ax,[bx]
cmp [si],ax
jz fine1
dec bx
xor ax,ax
mov al,[bx]
l1l:
dec al
dec cx
dec bx
cmp al,0
jnz l1l
sub cx,2
sub bx,2
cmp cx,0
jnz ggr1
jmp errriring
fine1:
mov ax,bx
jmp finanan
errriring:
mov ax,13h
int 10h
jmp errriring
finanan:
pop si
pop dx
pop di
pop bx
pop cx
pop bp
ret 6
endp gstring
proc cmpstrings
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov di,[bp+4];the adress of string
mov si,[bp+6];for operator
mov bx,[bp+8];put answer here

mov ax,[di];id of first string
add di,2
mov cx,[di];id of second one
dec ax
dec cx
mov bx,ax
xor ax,ax
mov al,[bx]
sub bx,ax
mov si,cx
xor cx,cx
mov cl,[si]
sub si,cx
loorpp:
cmp ax,0
jz leftend
cmp cx,0
jz rightend
mov dl,[byte ptr bx]
mov dh,[byte ptr si]
cmp dl,dh
jl rightbigger
jg leftbigger
inc bx
inc si
dec ax
dec cx
jmp loorpp

leftend:
cmp cx,0
jz equal
jmp rightbigger
leftbigger:
mov dx,2
jmp done
equal:
mov dx,1
jmp done
rightend:
cmp ax,0
jz equal
jmp leftbigger
rightbigger:
mov dx,3

done:
mov bx,[bp+8]
mov si,[bp+6]
cmp [word ptr si],33h;==
jnz grgk
cmp dx,1
jnz okdaw
mov [word ptr bx],1
jmp dones
okdaw:
mov [word ptr bx],0
jmp dones
grgk:
cmp [word ptr si],32h;!=
jnz rigng
cmp dx,1
jnz feio
mov [word ptr bx],0
jmp dones
feio:
mov [word ptr bx],1
jmp dones
rigng:
cmp [word ptr si],31h;<=
jnz rinla
cmp dx,3
jnz faals
mov [word ptr bx],1
jmp dones
faals:
cmp dx,1
jnz feol
mov [word ptr bx],1
jmp dones
feol:
mov [word ptr bx],0
jmp dones
rinla:
cmp [word ptr si],30h;>=
jnz ijgr
cmp dx,2
jnz fesf
mov [word ptr bx],1
jmp dones
fesf:
cmp dx,1
jnz fsok
mov [word ptr bx],1
jmp dones
fsok:
mov [word ptr bx],0
jmp dones
ijgr:
cmp [word ptr si],24h;>
jnz fewk
cmp dx,2
jnz grdp
mov [word ptr bx],1
jmp dones
grdp:
mov [word ptr bx],0
jmp dones
fewk:
cmp [word ptr si],23h;<
jz fogg
call errorr1
fogg:
cmp dx,3
jnz fagss
mov [word ptr bx],1
jmp dones
fagss:
mov [word ptr bx],0
jmp dones

dones:
mov [word ptr si],0
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret 6
endp cmpstrings
proc turnto1and0
push bp
mov bp,sp
push si
push cx
push dx
push di
push bx

mov si,[bp+6]
mov bx,[bp+4]
mov di,[bp+8]
mov dx,0
redddo:
mov ax,[bp+10]
add ax,dx
push bx
mov bx,ax
mov cx,[bx]
pop bx
add dx,2
mov ax,[bp+10]
add ax,dx
push bx
mov bx,ax
mov ax,[bx]
pop bx
add dx,2
cmp ax,cx
jz eokf
call errorr1
eokf:
cmp [word ptr si],19h
jz eegh
cmp [word ptr si],35h
jz eegh
cmp [word ptr si],34h
jz eegh
cmp [word ptr si],20h
jz eegh
jmp gklo
eegh:
sub dx,4
jmp oekf
gklo:
cmp ax,1
jnz oekf
push di
mov di,[bp+10]
add di,dx
sub di,4
mov [word ptr di],0
add di,2
mov [word ptr di],0
pop di
push bx
push si
push di
call cmpstrings
add di,4
jmp extabefore
oekf:
mov cx,[di]
add di,2
fkog:
mov ax,[di]
add di,2
comehere:
cmp [word ptr si],23h
jnz otherr
mov [word ptr si],0
cmp cx,ax
jl haha
mov [word ptr bx],0
jmp extabefore
haha:
mov [word ptr bx],1
jmp extabefore
otherr:
cmp [word ptr si],24h
jnz other1
mov [word ptr si],0
cmp cx,ax
jg haha1
mov [word ptr bx],0
jmp extabefore
haha1:
mov [word ptr bx],1
jmp extabefore
other1:
cmp [word ptr si],30h
jnz other2
mov [word ptr si],0
cmp cx,ax
jge haha2
mov [word ptr bx],0
jmp extabefore
haha2:
mov [word ptr bx],1
jmp extabefore
other2:
cmp [word ptr si],31h
jnz other3
mov [word ptr si],0
cmp cx,ax
jle haha3
mov [word ptr bx],0
jmp extabefore
haha3:
mov [word ptr bx],1
jmp extabefore
other3:
cmp [word ptr si],32h
jnz other4
mov [word ptr si],0
cmp cx,ax
jne haha4
mov [word ptr bx],0
jmp extabefore
haha4:
mov [word ptr bx],1
jmp extabefore
other4:
cmp [word ptr si],33h
jnz gdgs
mov [word ptr si],0
cmp cx,ax
je haha5
mov [word ptr bx],0
jmp extabefore
haha5:
mov [word ptr bx],1
jmp extabefore
gdgs:
cmp [word ptr si],34h
jnz andd
sub di,4
sub bx,2
ffine:
jmp extabefore
andd:
cmp [word ptr si],35h
jnz sogra
sub di,4
sub bx,2
jmp extabefore
sogra:
cmp [word ptr si],19h
jnz kkae
sub bx,2
sub di,4
jmp extabefore
kkae:
cmp [word ptr si],20h
jnz exta
sub bx,2
sub di,4
jmp extabefore

extabefore:
add bx,2
add si,2
jmp redddo

exta:
mov ax,[bp+8]
sub ax,2
cmp di,ax
jz kdab
mov [word ptr di],0
sub di,2
jmp exta


kdab:
sub si,2
mov ax,si
aww:
cmp si,[bp+6]
jz alllr
cmp [word ptr si],0
jnz gjgb
mov dx,si
mov di,si
add si,2
fsnin:
cmp [word ptr si],0
jz gjgbg
mov cx,[si]
mov [di],cx
mov [word ptr si],0
add di,2
add si,2
jmp fsnin
gjgbg:
mov si,dx
gjgb:
sub si,2
jmp aww

alllr:

pop bx
pop di
pop dx
pop cx
pop si
pop bp
ret 8
endp turnto1and0
proc removesograimodfim
push bp
mov bp,sp
push di
push si
push ax
push bx
push cx
push dx
mov di,[bp+6]
redddoo:
cmp [word ptr di],20h
jnz aafz
sub di,2
cmp [word ptr di],19h
jz aafzz
add di,2
jmp aafz
aafzz:
push di
mov [word ptr di],0
add di,2
mov [word ptr di],0
pop di
mov si,di
add si,2
reddo:
add si,2
cmp [word ptr si],0
jz aafz
mov ax,[si]
mov [di],ax
mov [word ptr si],0
add di,2
jmp reddo
aafz:
cmp di,[bp+4]
jz alr
sub di,2
jmp redddoo

alr:
pop dx
pop cx
pop bx
pop ax
pop si
pop di
pop bp
ret 4
endp removesograimodfim
proc checkpriorities
push bp
mov bp,sp
push ax
push bx
push cx
push di
push si
push dx
mov di,[bp+4]
mov si,[bp+6]
xor cx,cx
xor bx,bx
jgie:
cmp [word ptr si],0
jz gsjn
cmp [word ptr si],34h
jnz kakdk
add di,2
kakdk:
cmp [word ptr si],35h
jnz fhif
add di,2
fhif:
add si,2
jmp jgie
gsjn:
mov dx,di

fesion:
mov di,[bp+4]
mov si,[bp+6]

mnjk:
cmp si,[bp+8]
jnz errg
jmp errorri
errg:
add si,2
cmp [word ptr si],20h
jz sograimmm
jmp mnjk

sograimmm:
cmp [word ptr si],35h
jnz dgxg
mov bx,si
makal:
cmp bx,[bp+6]
jz buibiu
sub bx,2
cmp [word ptr bx],35h
jnz kmznu
add di,2
kmznu:
cmp [word ptr bx],34h
jnz bdab
add di,2
bdab:
jmp makal
buibiu:
xor bx,bx
mov [word ptr si],0
mov ax,[di]
add di,2
mov cx,[di]
and ax,cx
sub di,2
mov [di],ax
mov cx,si
oibi:
cmp di,dx
jz dsino
add di,2
mov si,di
add si,2
mov ax,[si]
mov [word ptr si],0
mov [di],ax
jmp oibi
dsino:
mov di,[bp+4]
mov si,cx
dgxg:
cmp [word ptr si],19h
jz kmfkj
cmp si,[bp+6]
jnz erj
jmp errorri
erj:
sub si,2
jmp sograimmm

kmfkj:
cmp si,[bp+6]
jnz kkadk
mov bx,1
kkadk:
mov cx,si
mov [word ptr si],0
mov di,[bp+4]
jgie1:
cmp si,[bp+6]
jz gsjn1
cmp [word ptr si],34h
jnz kakdk1
add di,2
kakdk1:
cmp [word ptr si],35h
jnz fhif1
add di,2
fhif1:
sub si,2
jmp jgie1
gsjn1:
mov si,cx
buibl:
cmp [word ptr si],20h
jnz ddajd
mov [word ptr si],0
jmp ddaj
ddajd:
cmp [word ptr si],34h
jnz kkakk
mov [word ptr si],0
mov ax,[di]
add di,2
mov cx,[di]
or ax,cx
sub di,2
mov [di],ax
mov cx,si
oibi1:
cmp di,dx
jz kkak
add di,2
mov si,di
add si,2
mov ax,[si]
mov [word ptr si],0
mov [di],ax
jmp oibi1
kkak:
mov si,cx
kkakk:
add si,2
jmp buibl
ddaj:
cmp bx,1
jz finally
jmp fesion

errorri:
call errorr1
jmp errorri

finally:
mov si,[bp+6]
xor ax,ax
xor cx,cx
look:
cmp si,[bp+8]
jz jkio
cmp [word ptr si],19h
jnz klok
inc ax
klok:
cmp [word ptr si],20h
jnz klokq
inc cx
klokq:
add si,2
jmp look
jkio:
cmp ax,cx
jnz errorri

pop dx
pop si
pop di
pop cx
pop bx
pop ax
pop bp
ret 6
endp checkpriorities
proc returntrueorfalse
push bp
mov bp,sp
push si
push bx
push di
push dx
push cx
mov si,[bp+6]
mov di,[bp+24]
xor cx,cx
nkoli:

fffine:
cmp [word ptr si],26h
jnz beforepeola
jmp gghl
beforepeola:
xor ax,ax
push [bp+30]
push [bp+26]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov bx,[bp+26]
cmp [word ptr bx],21h
jnz ergo
jmp errrorz
ergo:
cmp [word ptr bx],7h
jnz ergl
jmp errrorz
ergl:
cmp [word ptr bx],8h
jnz ergr
jmp errrorz
ergr:
cmp [word ptr bx],20h
jnz dadh
add si,2
dadh:
cmp [word ptr bx],1
jnz dakr
sub si,2
cmp [word ptr si],17h
jz tesi
cmp [word ptr si],16h
jz tesi
cmp [word ptr si],18h
jz tesi
add si,2
jmp eigj
tesi:
call errorr1
eigj:
cmp [word ptr si],25h
jz dako
push si;the types u want
push [bp+8]
push [bp+4]
call fident
push bx
mov bx,ax
mov ax,[bx]
pop bx
jmp hero
dako:
add si,2
push si;adress u want in types
push [bp+34];length of string
push [bp+32];string
call gstring
add si,2
hero:
mov [di],ax
add di,2
push bx
mov bx,[bp+36]
add bx,cx
mov [word ptr bx],1
pop bx
add cx,2
jmp fffine
dakr:
cmp [word ptr bx],128h
jnz ffdfg
jmp fffine
ffdfg:
push bx
mov bx,[bp+36]
add bx,cx
mov [word ptr bx],0
pop bx
add cx,2
mov [di],ax
add di,2
jmp fffine
gghl:
mov dx,si
ght:
push di
mov di,[bp+28]
mov [di],si
pop di
mov di,[bp+22]
mov bx,si
mov si,[bp+6]
bida:
cmp si,bx
jz fffinish
cmp [word ptr si],19h
jz movdi
cmp [word ptr si],20h
jz movdi
cmp [word ptr si],23h
jz movdi
cmp [word ptr si],24h
jz movdi
cmp [word ptr si],30h
jz movdi
cmp [word ptr si],31h
jz movdi
cmp [word ptr si],32h
jz movdi
cmp [word ptr si],33h
jz movdi
cmp [word ptr si],34h
jz movdi
cmp [word ptr si],35h
jz movdi
add si,2
jmp bida

movdi:
mov ax,[si]
mov [di],ax
add di,2
add si,2
jmp bida

fffinish:

push di
push [bp+22]
call removesograimodfim

alrr:
push [bp+36]
push [bp+24]
push [bp+22]
push [bp+18]
call turnto1and0

push ax
push [bp+22]
call removesograimodfim
mov cx,ax
add cx,2

mov di,[bp+22]
cmp [word ptr di],0
jnz extef
mov bx,[bp+18]
mov ax,[bx]
jmp ext13
extef:

push cx
push [bp+22]
push [bp+18]
call checkpriorities

mov bx,[bp+18]
mov ax,[bx]
jmp ext13

errrorz:
mov ax,13h
int 10h
jmp errrorz

ext13:
pop cx
pop dx
pop di
pop bx
pop si
pop bp
ret 34
endp returntrueorfalse
proc iff
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word ptr si],11h
jz exttgy
jmp exttg
exttgy:
add si,2
push [bp+46]
push [bp+34]
push [bp+32]
push [bp+30]
push [bp+42]
push [bp+38]
push [bp+36]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call returntrueorfalse
mov cx,ax
cmp cx,1
jz changeadress
red:
cmp [word ptr si],26h
jz fof
add si,2
jmp red
fof:
add si,2
push [bp+42]
push si
call skipblock
changeadress:
mov si,[bp+44]
add [word ptr si],6
mov di,[bp+44]
mov ax,[di]
mov di,[bp+40]
add di,ax
mov [word ptr di],1
add di,2
mov [di],cx
add di,2
mov [word ptr di],0
exttg:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp iff
proc elif
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word ptr si],6h
jnz extig
add si,2
mov bx,[bp+44]
mov ax,[bx]
mov bx,[bp+40]
add bx,ax
cmp [word ptr bx],1
jnz extig
add bx,2
cmp [word ptr bx],1
jz beforskip
cmp [word ptr bx],2
jz beforskip
cmp [word ptr bx],0
jnz extig
push [bp+46]
push [bp+34]
push [bp+32]
push [bp+30]
push [bp+42]
push [bp+38]
push [bp+36]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call returntrueorfalse
mov cx,ax
cmp cx,1
jnz beforskip
mov [word ptr bx],cx
jmp extig
beforskip:
cmp [word ptr si],26h
jz skippy
add si,2
jmp beforskip
skippy:
add si,2
push [bp+42]
push si
call skipblock
extig:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp elif
proc skipblock
push bp
mov bp,sp
push bx
push si
push ax
push di
xor ax,ax
mov si,[bp+4]
gogk:
cmp [word ptr si],27h
jz changeadres
jok:
cmp [word ptr si],26h
jnz gogo
inc ax
add si,2
jki:
cmp [word ptr si],26h
jz jok
cmp [word ptr si],27h
jnz gogp
dec ax
cmp ax,0
jnz gogp
jmp gogo
gogp:
add si,2
jmp jki
gogo:
add si,2
jmp gogk
changeadres:
mov bx,[bp+6]
mov [bx],si
pop di
pop ax
pop si
pop bx
pop bp
ret 4
endp skipblock
proc checkaheadof
push bp
mov bp,sp
push ax
push cx
push di
push si
push bx
push dx
mov si,[bp+6]
cmp [word ptr si],27h
jz rong
cmp [word ptr si],45h
jnz foref
add si,2
cmp [word ptr si],21h
jz grdik
call errorr1
grdik:
jmp forcontbreak
foref:
cmp [word ptr si],46h
jnz tyij
add si,2
cmp [word ptr si],21h
jz cobk
call errorr1
cobk:
jmp forcontbreak
tyij:
jmp wrong
rong:
mov di,[bp+50]
mov ax,[di]
sub ax,4
doc:
mov di,[bp+48]
add di,4
dok:
cmp ax,-4
jz conditionn
cmp [word ptr di],si
jz okge
add di,8
sub ax,8
jmp dok
okge:
add di,2
cmp [word ptr di],0
jnz okayy
jmp wrong
okayy:
mov si,[bp+42]
mov ax,[di]
mov [si],ax
mov [word ptr di],0
jmp wrong

conditionn:
xor ax,ax
xor cx,cx
xor dx,dx
mov di,[bp+44]
mov ax,[di]
mov di,[bp+40]
add di,ax

cmp [word ptr di],1
jnz seewhile
add si,2
cmp [word ptr si],12h
jnz gign
jmp wrong
gign:
cmp [word ptr si],6h
jnz others
jmp wrong
others:
add di,4
mov [word ptr di],0
sub di,2
mov [word ptr di],0
sub di,2
mov [word ptr di],0
mov di,[bp+44]
sub [word ptr di],6
jmp wrong

seewhile:
cmp [word ptr di],2
jz wgrg
jmp wrong
wgrg:
add di,2
cmp [word ptr di],1
jnz befskip
add di,2
mov bx,[bp+42]
mov ax,[di]
mov [bx],ax
sub di,2
befskip:
add di,2
mov [word ptr di],0
sub di,2
mov [word ptr di],0
sub di,2
mov [word ptr di],0
mov di,[bp+44]
sub [word ptr di],6
jmp wrong

forcontbreak:
xor ax,ax
xor cx,cx
xor dx,dx
mov di,[bp+44]
mov ax,[di]
mov di,[bp+40]
add di,ax
add di,6
r3ok:
cmp di,[bp+40]
jnz rsgk
call errorr1
rsgk:
sub di,6
cmp [word ptr di],2
jnz r3ok
sub si,2
cmp [word ptr si],46h
jz forbreak
add di,4
mov bx,[bp+42]
mov ax,[di]
mov [bx],ax
jmp wrong

forbreak:
add di,4
mov si,[word ptr di]
gtdh:
add si,2
cmp [word ptr si],26h
jnz gtdh
add si,2
push [bp+42]
push si
call skipblock
mov [word ptr di],0
sub di,2
mov [word ptr di],0
sub di,2
mov [word ptr di],0
mov ax,di
sub ax,6
sub ax,[bp+40]
mov di,[bp+44]
mov [word ptr di],ax
jmp wrong


wrong:
pop dx
pop bx
pop si
pop di
pop cx
pop ax
pop bp
ret
endp checkaheadof
proc elsee
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word  ptr si],12h
jnz exttz
mov di,[bp+44]
mov ax,[di]
mov bx,[bp+40]
add bx,ax
cmp [word ptr bx],1
jnz exttz
add bx,2
cmp [word ptr bx],1
jnz ggii
mov [word ptr bx],2
jmp skipblockk
ggii:
cmp [word ptr bx],0
jnz skipblockk
mov [word ptr bx],1
jmp exttz
skipblockk:
add si,4
push [bp+42]
push si
call skipblock
exttz:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp elsee
proc whilee
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word ptr si],10h
jz exttgyy
jmp exttg1
exttgyy:
add si,2
push [bp+46]
push [bp+34]
push [bp+32]
push [bp+30]
push [bp+42]
push [bp+38]
push [bp+36]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call returntrueorfalse
mov cx,ax
cmp cx,1
jnz dadjig
jmp addtoarray
dadjig:
cmp [word ptr si],26h
jz skep
add si,2
jmp dadjig
skep:
add si,2
push [bp+42]
push si
call skipblock
addtoarray:
mov si,[bp+44]
add [word ptr si],6
mov di,[bp+44]
mov ax,[di]
mov di,[bp+40]
add di,ax
mov [word ptr di],2
add di,2
mov [di],cx
add di,2
mov ax,[bp+6]
mov [di],ax
add di,2
exttg1:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp whilee
proc opens
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word ptr si],5h
jnz exter
add si,2
cmp [word ptr si],23h
jnz exter
add si,2
cmp [word ptr si],24h
jnz exter
push di
mov di,[bp+42]
mov [di],si
pop di

mov ax,13h
int 10h

mov ax, 0A000h
mov es, ax

exter:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp opens
proc draw
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]

cmp [word ptr si],2h
jz exg
jmp exxt
exg:
add si,2
cmp [word ptr si],19h
jz xt
jmp exxt
xt:
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov bx,ax
contino:
cmp [word ptr si],21h
jz jgk
jmp exxt
jgk:
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov dx,ax

cmp [word ptr si],21h
jnz exxt
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
mov cx,ax
contino11:
cmp [word ptr si],21h
jnz exxt
add si,2
cmp [word ptr si],20h
jnz exxt
push di
mov di,[bp+42]
mov [di],si
pop di
mov di,dx
mov ax,320
mul bx
add ax,di
mov di,ax
mov ax,cx
mov [es:di],al
exxt:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp draw
proc clear
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]

cmp [word ptr si],37h
jnz exxtt
add si,2
cmp [word ptr si],19h
jnz exxtt
add si,2
cmp [word ptr si],90h
jb jjj23
push si;the types u want
push [bp+8]
push [bp+4]
call fident
mov bx,ax
jmp contino3
jjj23:
cmp [word ptr si],1h
jz etk3
jmp exxtt
etk3:
push si
push [bp+14]
push [bp+10]
call getnumber
mov bx,ax
contino3:
add si,2
cmp [word ptr si],20h
jnz exxtt
add si,2
cmp [word ptr si],21h
jnz exxtt
push di
mov di,[bp+42]
mov [di],si
pop di

mov ax,[bx]
xor di,di
heree:
cmp di,64000
jz exxtt
mov [es:di],al
inc di
jmp heree

exxtt:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp clear
proc getkey
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
cmp [word ptr si],90h
jb exet
add si,2
cmp [word ptr si],22h
jnz exet
add si,2
cmp [word ptr si],38h
jnz exet
add si,2
cmp [word ptr si],19h
jnz exet
add si,2
cmp [word ptr si],20h
jnz exet
add si,2
cmp [word ptr si],21h
jnz exet

push di
mov di,[bp+42]
mov [di],si
pop di

push [bp+6]
push [bp+8]
push [bp+4]
call fident
mov bx,ax
sub bx,2
mov [byte ptr bx],1
inc bx
mov [byte ptr bx],1
inc bx

in al,60h
cmp al,80h
jae nokk
mov di,bx
mov [di],al
jmp exet
nokk:
mov di,bx
mov [word ptr di],0

exet:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp getkey
proc createfunction
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si

mov si,[bp+6]
cmp [word ptr si],4h
jz feog
jmp exitting
feog:
add si,2
mov dx,[word ptr si]
cmp [word ptr si],90h
jge dagd
jmp exitting
dagd:
add si,2
mov cx,si
cmp [word ptr si],26h
jz fefo
jmp exitting
fefo:
add si,2
push [bp+42]
push si
call skipblock

mov di,[bp+48]
mov bx,[bp+50]
add di,[bx]
mov [di],dx
add di,2
mov [di],cx
add di,2
mov si,[bp+42]
mov si,[si]
mov [di],si
add di,2
mov [word ptr di],0
mov bx,[bp+50]
add [word ptr bx],8

exitting:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp createfunction
proc summonfunc
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si

mov si,[bp+6]
cmp [word ptr si],40h
jz eokfg
jmp exint
eokfg:
add si,2
mov dx,[word ptr si]
cmp [word ptr si],90h
jge eoak1
jmp exint
eoak1:
add si,2
cmp [word ptr si],19h
jz okert1
jmp exint
okert1:
add si,2
cmp [word ptr si],20h
jz dwai1
jmp exint
dwai1:
add si,2
cmp [word ptr si],21h
jz fgrd1
jmp exint
fgrd1:
mov di,[bp+48]
sub di,8
okef:
add di,8
cmp [word ptr di],dx
jnz okef
add di,6
mov [word ptr di],si
sub di,4
mov si,[bp+42]
mov ax,[di]
mov [si],ax

exint:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp summonfunc
proc random
push bp
mov bp,sp
push bx
push cx
push dx
push di
push es
mov si,[bp+6]
cmp [word ptr si],42h
jge ofzx
jmp exting
ofzx:
add si,2
cmp [word ptr si],19h
jz esk
call errorr1
esk:
add si,2
cmp [word ptr si],90h
jge reso
push si
push [bp+12]
push [bp+10]
call getnumber
push di
mov di,ax
mov cx,[di]
pop di
jmp fomz
reso:
push si
push [bp+8]
push [bp+4]
call fident
push di
mov di,ax
mov cx,[di]
pop di
fomz:
add si,2
cmp [word ptr si],16h
jz eokt
call errorr1
eokt:
add si,2
cmp [word ptr si],90h
jge reso1
push si
push [bp+12]
push [bp+10]
call getnumber
mov di,ax
mov di,[di]
jmp fomz1
reso1:
push si
push [bp+8]
push [bp+4]
call fident
mov di,ax
mov di,[di]
fomz1:
add si,2
cmp [word ptr si],20h
jz fgrg
call errorr1
fgrg:
sub di,cx
inc di
in al,40h
mov ah,al
in al,40h
mov bx,ax
mul bx
xor ax,dx
rol ax,3
add ax,bx
xor dx,dx
mov bx,di
div bx
add dx,cx
mov ax,dx
exting:
pop es
pop di
pop dx
pop cx
pop bx
pop bp
ret 10
endp random
proc maxmin
push bp
mov bp,sp
push bx
push cx
push dx
push di
xor cx,cx
xor ax,ax
xor dx,dx
;bp+4
;bp+6
;bp+8
;bp+10
;bp+12
;bp+14
;bp+16
;bp+18
;bp+20
;bp+22
;bp+38
;bp+30
mov si,[bp+6]
cmp [word ptr si],44h
jz ergl1
cmp [word ptr si],43h
jz ergl1
jmp exing
ergl1:
add si,2
cmp [word ptr si],19h
jz grom
jmp exing
grom:
add si,2
cmp [word ptr si],20h
jz finishh1
cmp [word ptr si],19h
jnz okfe
eokg:
add si,2
cmp [word ptr si],20h
jnz eokg
add si,2
okfe:
cmp [word ptr si],36h
jnz ggg
inc ax
ggg:
jmp grom

finishh1:
mov si,[bp+6]
cmp [word ptr si],44h
jnz ogrk
mov cx,0
jmp ergg
ogrk:
mov cx,7fffh
ergg:
add si,4
inc ax
finishh:
cmp ax,0
jnz edfe
jmp edok
edfe:
cmp [word ptr si],90h
jge awok
jmp ergok
awok:
mov dx,[si]
add si,2
cmp [word ptr si],8h
jz egok
sub si,2
jmp ergok
egok:
add si,2
cmp [word ptr si],7h
jz ioij
sub si,4
jmp ergok
ioij:
add si,2
cmp [word ptr si],48h
jnz uhj
sub si,6
jmp ergok
uhj:
sub si,2
eroz:
kl35:
mov di,[bp+26]
kda125:
cmp [word ptr di],0
jnz dokf5
call errorr1
dokf5:
cmp [word ptr di],dx
jnz ak5
jmp bla5
ak5:
add di,6
jmp kda125
bla5:
push cx
push ax
add di,2
mov ax,[di]
add di,2
mov cx,[di]
sub cx,ax
mov ax,cx
mov bx,3
xor dx,dx
div bx
mov dx,ax
pop ax
sub di,2
mov bx,[di]
inc bx
mov cx,[bx]
dec bx
sub bx,2
mov di,cx
inc dx
loopr:
dec dx
cmp dx,0
jnz doek
pop cx
add si,2
jmp whendone
doek:
add bx,2
mov cl,[byte ptr bx]
cmp cl,2
jnz efff
call errorr1
efff:
inc bx
mov cx,[bx]
push si
mov si,[bp+6]
cmp [word ptr si],44h
jnz eofko
pop si
cmp di,cx
jge loopr
jmp rokg
eofko:
pop si
cmp di,cx
jle loopr
rokg:
mov di,cx
jmp loopr
ergok:
push ax
push cx
sub si,2
push [bp+26]
push [bp+24]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
pop cx
mov di,ax
pop ax
whendone:
cmp [word ptr si],36h
jnz drhh
dec ax
drhh:
cmp [word ptr si],20h
jnz tuh
dec ax
tuh:
push si
mov si,[bp+6]
cmp [word ptr si],44h
jnz deokf
cmp cx,di
jle oko1
pop si
add si,2
jmp finishh
oko:
pop si
mov cx,di
add si,2
jmp finishh
deokf:
cmp cx,di
jge oko1
pop si
add si,2
jmp finishh
oko1:
pop si
mov cx,di
add si,2
jmp finishh
edok:
mov ax,cx
sub si,2
exing:
pop di
pop dx
pop cx
pop bx
pop bp
ret 24
endp maxmin
proc rect
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push di
push si
mov si,[bp+6]
xor cx,cx
cmp [word ptr si],50h
jz xbk
jmp zting
xbk:
add si,2
cmp [word ptr si],19h
jz bok
jmp zting
bok:
push cx
push [bp+30]
push [bp+38]
push [bp+22]
push [bp+20]
push [bp+18]
push [bp+16]
push [bp+14]
push [bp+12]
push [bp+10]
push [bp+8]
push si
push [bp+4]
call calculating
pop cx
inc cx
push ax
cmp cx,5
jnz bok
add si,2
cmp [word ptr si],20h
jz plg
call errorr1
plg:
pop ax;color
mov di,ax
pop ax;width
mov bx,ax
pop ax;length
mov si,ax

pop ax;y
mov cx,ax
pop ax;x
mov dx,ax


frok:
push bx
mov ax,dx
xor dx,dx
mov bx,320
mul bx
add ax,cx
mov dx,ax
pop bx

mov cx,si;length
mov ax,di;color
xor ah,ah
mov di,dx
tgok:
cmp cx,0
jz zting
push di
push bx
gzcg:
mov [es:di],al
inc di
dec bx
cmp bx,0
jnz gzcg
pop bx
pop di
dec cx
add di,320
jmp tgok
zting:
pop si
pop di
pop dx
pop cx
pop bx
pop ax
pop bp
ret
endp rect
proc errorr1
push bp
mov bp,sp
mov di,2000
mov ax,13h
int 10h
mov ax, 0A000h
mov es, ax
mov al,238
derer:
cmp di,50000
jz fin
mov [es:di],al
inc di
jmp derer
fin:
xor di,di
jmp derer
pop bp
ret
endp errorr1
start:
    mov ax, @data
    mov ds, ax

mov cx,offset filename
push cx
mov cx,offset fileput
push cx
mov cx,offset fileputscreen
push cx
mov cx,offset menus
push cx
mov cx,offset instructions
push cx
mov cx, offset startscreen
push cx
call menu
	
mov [bytesread],offset buffer
mov ah,3Dh;open file
mov al,0;reading mode
mov dx,offset filename;you move to dx to search
int 21h
Jc error2;if it dont find the handle
mov [handle],ax;if it find handle
jmp ney
error2:
mov ax,4C00h
int 21h

ney:
;readfile
mov ah,3Fh;read from file
mov bx,[handle]
mov cx,12000
mov dx,offset buffer
int 21h;checks the handle and moves 100 bytes to buffer
jc error2
add [bytesread],ax

;closefile
mov ah,3Eh;close the disk
mov bx,[handle]
int 21h
inc ax
jc error2

xor ax,ax
xor cx,cx
mov bx,offset types
mov ax,offset mishtanim;ax
mov di,offset numbers
mov dx,offset string
lp3:
mov cx,[counter]


mov si,offset string
push si;bp+30
mov si,offset stringlength
push si;bp+28
mov si,offset mishtanimid
push si;bp+26
mov si,offset typeslength
push si;bp+24
mov si,offset mishtanim
push si;bp+22
mov si,offset addax
push si;bp+20
mov si,offset amountofmishtanim
push si;bp+18
;ax is mishtanim
push ax;bp+16
mov si,offset foundflag
push si;bp+14
mov si,[bytesread]
push si;bp+12
mov si,offset counter
push si;bp+10
;offset of numbers
push di;bp+8
;the types here
push bx;bp+6 the types
push dx;bp+4 its string

call putinid

add bx,2
cmp [foundflag],3
jnz yyyo
add di,2
yyyo:
cmp [foundflag],2;if the mishtanim was changed u see
jnz conto;if not skip
add ax,[addax]
conto:
cmp [foundflag],5
jnz fkoe
add bx,4
fkoe:
cmp [foundflag],4;if string was added
jnz aaer
add dx,[addax]
add bx,4
add [typeslength],2
push di
mov di,offset stringlength
push ax
mov ax,[addax]
add [di],ax
pop ax
pop di
aaer:
inc [typeslength]
mov [foundflag],0
mov cx,[counter]
cmp cx,[bytesread]
jz lp4
inc [word ptr counter]
jmp lp3

lp4:;----------------------------
mov si,offset types
mov cx,offset types
add cx,[typeslength]
add cx,[typeslength]
mov bx,offset headers
mov [foundflag],0
mov [word ptr addax],0
mov [typeadress],si
sub [typeadress],2
loop4:
mov si,[typeadress]
add [typeadress],2

mov dx,offset pfuncarray
push dx;bp+50
mov dx,offset funcarray
push dx;bp+48
mov dx,offset typeoutarray
push dx;bp+46
mov dx,offset pconditionsarray
push dx;bp+44
mov dx,offset typeadress
push dx;bp+42
mov dx,offset conditionsarray
push dx;bp+40
mov dx,offset saveending
push dx;bp+38
mov dx,offset extraslots
push dx;bp+36
mov dx,offset stringlength
push dx;bp+34
mov dx,offset string
push dx;bp+32
mov dx,offset headers
push dx;bp+30
mov dx,offset arrays
push dx;bp+28
mov dx,offset addax
push dx;bp+26
push bx;headers bp+24
mov dx,offset countoutarray
push dx;bp+22
mov dx,offset topoperator
push dx;bp+20
mov dx,offset outarray
push dx;bp+18
mov dx,offset types
push dx;bp+16
mov dx,offset numbers
push dx;bp+14
mov dx,offset foundflag
push dx;bp+12
mov dx,offset oparray
push dx;bp+10
mov dx,offset amountofmishtanim
push dx;bp+8
;pushes types
push si;bp+6
mov dx,offset mishtanim
push dx;bp+4
call checkorder
add bx,[addax]
mov [addax],0
mov [foundflag],0
cnot:
cmp [typeadress],cx
jnz loop4
error1:
    mov ax, 4C00h
    int 21h
END start