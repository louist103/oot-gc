# ansi_files.c
.include "macros.inc"

.section .data, "wa"

.balign 8

/* 000F0BB8 800F3B38 00D8 */
glabel __files
    .long 0x00000000, 0x08800000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, __files + 0xC, 0x00000001
    .long __files + 0xC, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, __read_console, __write_console
    .long __close_console, 0x00000000, 0x00000000, 0x10800000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
    .long __files + 0x54, 0x00000001, __files + 0x54, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
    .long __read_console, __write_console, __close_console, 0x00000000, 0x00000000, 0x10800000, 0x00000000, 0x00000000
    .long 0x00000000, 0x00000000, __files + 0x9C, 0x00000001, __files + 0x9C, 0x00000000, 0x00000000, 0x00000000
    .long 0x00000000, 0x00000000, __read_console, __write_console, __close_console, 0x00000000

