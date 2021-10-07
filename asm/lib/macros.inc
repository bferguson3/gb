IF  !DEF(MACROS_INC)
MACROS_INC SET 1 

wait_lcdline: MACRO 
        ld c, \1
        ld      a,[rLY] ; -3
        cp      c       ; -1
        jr      nz,@-3
ENDM

; Read status register and return when not busy 
lcd_WaitVRAM: MACRO
    LD      [$FF00+$41],A   ; -4
    and     STATF_BUSY      ; -2
    jr      nz,@-4
ENDM

ENDC 