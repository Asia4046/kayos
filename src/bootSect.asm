;;;
;;; Simple Boot Sector that prints a character using BIO int 0x10/ AH 0x0e


       mov ah, 0x0e
       mov al, 'T'
       int 0x10

here:
        jmp here

        times 510-($-$$) db 0

        dw 0xaa55