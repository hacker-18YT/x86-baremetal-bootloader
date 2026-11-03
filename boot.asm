[org 0x7c00]          ; Tell assembler where BIOS loads the bootloader

mov ah, 0x0e          ; BIOS teletype output function
mov al, 'H'           ; Character to print
int 0x10              ; Call BIOS video interrupt

mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $                 ; Infinite loop so the CPU doesn't crash

times 510-($-$$) db 0 ; Pad the rest of the 512 bytes with zeros
dw 0xaa55             ; Magic boot signature (must end with 0xaa55)
