# dvdidutils.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel DVDCompareDiskID
/* 0B0494 800B5A34 7C0802A6 */  mflr    r0
/* 0B0498 800B5A38 90010004 */  stw     r0, 4(r1)
/* 0B049C 800B5A3C 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B04A0 800B5A40 93E10014 */  stw     r31, 0x14(r1)
/* 0B04A4 800B5A44 3BE40000 */  addi    r31, r4, 0
/* 0B04A8 800B5A48 93C10010 */  stw     r30, 0x10(r1)
/* 0B04AC 800B5A4C 7C7E1B78 */  mr      r30, r3
/* 0B04B0 800B5A50 88030000 */  lbz     r0, 0(r3)
/* 0B04B4 800B5A54 7C000775 */  extsb.  r0, r0
/* 0B04B8 800B5A58 41820030 */  beq     lbl_800B5A88
/* 0B04BC 800B5A5C 881F0000 */  lbz     r0, 0(r31)
/* 0B04C0 800B5A60 7C000775 */  extsb.  r0, r0
/* 0B04C4 800B5A64 41820024 */  beq     lbl_800B5A88
/* 0B04C8 800B5A68 387E0000 */  addi    r3, r30, 0
/* 0B04CC 800B5A6C 389F0000 */  addi    r4, r31, 0
/* 0B04D0 800B5A70 38A00004 */  li      r5, 4
/* 0B04D4 800B5A74 4801AD8D */  bl      strncmp
/* 0B04D8 800B5A78 2C030000 */  cmpwi   r3, 0
/* 0B04DC 800B5A7C 4182000C */  beq     lbl_800B5A88
/* 0B04E0 800B5A80 38600000 */  li      r3, 0
/* 0B04E4 800B5A84 48000090 */  b       lbl_800B5B14
lbl_800B5A88:
/* 0B04E8 800B5A88 881E0004 */  lbz     r0, 4(r30)
/* 0B04EC 800B5A8C 7C000775 */  extsb.  r0, r0
/* 0B04F0 800B5A90 41820028 */  beq     lbl_800B5AB8
/* 0B04F4 800B5A94 881F0004 */  lbz     r0, 4(r31)
/* 0B04F8 800B5A98 7C000775 */  extsb.  r0, r0
/* 0B04FC 800B5A9C 4182001C */  beq     lbl_800B5AB8
/* 0B0500 800B5AA0 387E0004 */  addi    r3, r30, 4
/* 0B0504 800B5AA4 389F0004 */  addi    r4, r31, 4
/* 0B0508 800B5AA8 38A00002 */  li      r5, 2
/* 0B050C 800B5AAC 4801AD55 */  bl      strncmp
/* 0B0510 800B5AB0 2C030000 */  cmpwi   r3, 0
/* 0B0514 800B5AB4 4182000C */  beq     lbl_800B5AC0
lbl_800B5AB8:
/* 0B0518 800B5AB8 38600000 */  li      r3, 0
/* 0B051C 800B5ABC 48000058 */  b       lbl_800B5B14
lbl_800B5AC0:
/* 0B0520 800B5AC0 887E0006 */  lbz     r3, 6(r30)
/* 0B0524 800B5AC4 280300FF */  cmplwi  r3, 0xff
/* 0B0528 800B5AC8 41820020 */  beq     lbl_800B5AE8
/* 0B052C 800B5ACC 881F0006 */  lbz     r0, 6(r31)
/* 0B0530 800B5AD0 280000FF */  cmplwi  r0, 0xff
/* 0B0534 800B5AD4 41820014 */  beq     lbl_800B5AE8
/* 0B0538 800B5AD8 7C030040 */  cmplw   r3, r0
/* 0B053C 800B5ADC 4182000C */  beq     lbl_800B5AE8
/* 0B0540 800B5AE0 38600000 */  li      r3, 0
/* 0B0544 800B5AE4 48000030 */  b       lbl_800B5B14
lbl_800B5AE8:
/* 0B0548 800B5AE8 887E0007 */  lbz     r3, 7(r30)
/* 0B054C 800B5AEC 280300FF */  cmplwi  r3, 0xff
/* 0B0550 800B5AF0 41820020 */  beq     lbl_800B5B10
/* 0B0554 800B5AF4 881F0007 */  lbz     r0, 7(r31)
/* 0B0558 800B5AF8 280000FF */  cmplwi  r0, 0xff
/* 0B055C 800B5AFC 41820014 */  beq     lbl_800B5B10
/* 0B0560 800B5B00 7C030040 */  cmplw   r3, r0
/* 0B0564 800B5B04 4182000C */  beq     lbl_800B5B10
/* 0B0568 800B5B08 38600000 */  li      r3, 0
/* 0B056C 800B5B0C 48000008 */  b       lbl_800B5B14
lbl_800B5B10:
/* 0B0570 800B5B10 38600001 */  li      r3, 1
lbl_800B5B14:
/* 0B0574 800B5B14 8001001C */  lwz     r0, 0x1c(r1)
/* 0B0578 800B5B18 83E10014 */  lwz     r31, 0x14(r1)
/* 0B057C 800B5B1C 83C10010 */  lwz     r30, 0x10(r1)
/* 0B0580 800B5B20 38210018 */  addi    r1, r1, 0x18
/* 0B0584 800B5B24 7C0803A6 */  mtlr    r0
/* 0B0588 800B5B28 4E800020 */  blr     

