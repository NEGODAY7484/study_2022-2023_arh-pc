; surname.asm
SECTION .data ; Начало секции данных
surname: DB 'Атанесов Александр!',10 ; 'Атанесов Александр' плюс
; символ перевода строки
surnameLen: EQU $-surname ; Длина строки hello
SECTION .text ; Начало секции кода
GLOBAL _start
_start: ; Точка входа в программу
mov eax,4 ; Системный вызов для записи (sys_write)
mov ebx,1 ; Описатель файла '1' - стандартный вывод
mov ecx,surname ; Адрес строки hello в ecx
mov edx,surnameLen ; Размер строки hello
int 80h ; Вызов ядра
mov eax,1 ; Системный вызов для выхода (sys_exit)
mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
int 80h ; Вызов ядра
