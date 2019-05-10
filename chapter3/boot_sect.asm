;
; Boot sector that loops forever
;

loop:

	jmp loop

; When compiled, the program must fit into 512 bytes,
; with the last two bytes being the magic number.
; The following tells the compiler to pad out our program
; with enough zero bytes (db 0) to bring us to the 510th
; byte.
times 510-($-$$) db 0

dw 0xaa55
; Last two bytes (one word) form the magic number,
; so that the BIOS knows we are a boot sector.
