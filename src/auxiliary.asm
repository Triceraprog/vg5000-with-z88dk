; This ia an auxiliary file with assembly code

    SECTION some_code
    PUBLIC _put_char_on_video
    PUBLIC _put_char_at_address

_put_char_on_video:
    ld  hl,$4660
    ld  a,$40
    ld  (hl),a
    ld  hl,$4661
    ld  a,$40
    ld  (hl),a
    ret

_put_char_at_address:
    ld hl,2
    add hl,sp   ; skip return address
    ld  e,(hl)
    inc hl
    ld  d,(hl)
    ex  de,hl
    ld  a,$41
    ld  (hl),a
    inc hl
    ld  a,$00
    ld  (hl),a
    ret
