b. Ahora modificarlo para imprima los siguientes caracteres utilizando al menos
una resta dentro del código:
i. B
ii. x
iii. +
iv. ‘
v. {

section .data
char db 0

section .text
global _start

_start:
mov al, '/' ; ASCII 47
sub al, 4 ; 47 - 4 = 43 → '+'
mov [char], al

; Imprimir
mov eax, 4
mov ebx, 1
mov ecx, char
mov edx, 1
int 0x80

; Salir
mov eax, 1
xor ebx, ebx
int 0x80
