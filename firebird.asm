; ////////////////////////////////////////////////////////
;
; Firebird
; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]
; 2/27/2023 Revised: 6/01/2024 @ NYC
; ml64.exe firebird.asm /link /subsystem:console /defaultlib:msvcrt.lib kernel32.lib legacy_stdio_definitions.lib legacy_stdio_wide_specifiers.lib ucrt.lib
;
; /////////////////////////////////////////////////
extrn printf:proc
.code
main proc
sub rsp,28h
mov al,0Ah
mov bl,2Dh
z:lea r9,[a]
mov dx,1318
r:cmp byte ptr[r9],bl
je s
jmp u
s:mov byte ptr[r9],al
u:inc r9
dec dx
cmp dx,0
jnz r
cmp bl,0Ah
je td
lea rdx,[a]
lea rcx,[i]
call printf
jmp ll
td:
lea rdi,[n]
lea rsi,[a]
mov cx,1372
sn:mov al,byte ptr[rsi]
mov byte ptr[rdi],al
inc rsi
inc rdi
dec cx
cmp cx,1224
je t
cmp cx,1074
je t
cmp cx,924
je t
cmp cx,774
je t
cmp cx,624
je t
cmp cx,474
je t
cmp cx,324
je t
cmp cx,174
je t
cmp cx,24
je t
jmp sts
t:mov byte ptr[rdi],27h
mov byte ptr[rdi+1],0Ah
mov byte ptr[rdi+2],64h
mov byte ptr[rdi+3],62h
mov byte ptr[rdi+4],20h
mov byte ptr[rdi+5],27h
add rdi,6
jmp sts
sts:cmp cx,0
jne sn
lea rdx,[n]
lea rcx,[i]
call printf
ll:mov al,0Ah
cmp bl,2Dh
xchg al,bl
je z
lea rdx,[x]
lea rcx,[i]
call printf
add rsp,28h
ret
main endp
.data
b db 27h,0Dh,0Ah,64h,62h,20h,27h,0
x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,0
i db 25h,73h,0
n db 1319 DUP(0)
a db '; ////////////////////////////////////////////////////////-;-; Firebird-; by alCoPaUL [GIMO][As][aBrA][NPA][b8][BCVG][rRlf]-; 2/27/2023 Revised: 6/0'
db '1/2024 @ NYC-; ml64.exe firebird.asm /link /subsystem:console /defaultlib:msvcrt.lib kernel32.lib legacy_stdio_definitions.lib legacy_stdio_wide_speci'
db 'fiers.lib ucrt.lib-;-; /////////////////////////////////////////////////-extrn printf:proc-.code-main proc-sub rsp,28h-mov al,0Ah-mov bl,2Dh-z:lea r9,'
db '[a]-mov dx,1318-r:cmp byte ptr[r9],bl-je s-jmp u-s:mov byte ptr[r9],al-u:inc r9-dec dx-cmp dx,0-jnz r-cmp bl,0Ah-je td-lea rdx,[a]-lea rcx,[i]-call pr'
db 'intf-jmp ll-td:-lea rdi,[n]-lea rsi,[a]-mov cx,1372-sn:mov al,byte ptr[rsi]-mov byte ptr[rdi],al-inc rsi-inc rdi-dec cx-cmp cx,1224-je t-cmp cx,1074-j'
db 'e t-cmp cx,924-je t-cmp cx,774-je t-cmp cx,624-je t-cmp cx,474-je t-cmp cx,324-je t-cmp cx,174-je t-cmp cx,24-je t-jmp sts-t:mov byte ptr[rdi],27h-mov'
db ' byte ptr[rdi+1],0Ah-mov byte ptr[rdi+2],64h-mov byte ptr[rdi+3],62h-mov byte ptr[rdi+4],20h-mov byte ptr[rdi+5],27h-add rdi,6-jmp sts-sts:cmp cx,0-jn'
db 'e sn-lea rdx,[n]-lea rcx,[i]-call printf-ll:mov al,0Ah-cmp bl,2Dh-xchg al,bl-je z-lea rdx,[x]-lea rcx,[i]-call printf-add rsp,28h-ret-main endp-.data-'
db 'b db 27h,0Dh,0Ah,64h,62h,20h,27h,0-x db 2Ch,32h,37h,68h,2Ch,30h,0Ah,65h,6eh,64h,0-i db 25h,73h,0-n db 1319 DUP(0)-a db ',27h,0
end