glabel xlListFree
/* 000EF4 80006494 7C0802A6 */  mflr    r0
/* 000EF8 80006498 90010004 */  stw     r0, 4(r1)
/* 000EFC 8000649C 9421FFE0 */  stwu    r1, -0x20(r1)
/* 000F00 800064A0 93E1001C */  stw     r31, 0x1c(r1)
/* 000F04 800064A4 93C10018 */  stw     r30, 0x18(r1)
/* 000F08 800064A8 93A10014 */  stw     r29, 0x14(r1)
/* 000F0C 800064AC 7C7D1B78 */  mr      r29, r3
/* 000F10 800064B0 83C30000 */  lwz     r30, 0(r3)
/* 000F14 800064B4 801E0008 */  lwz     r0, 8(r30)
/* 000F18 800064B8 9001000C */  stw     r0, 0xc(r1)
/* 000F1C 800064BC 48000024 */  b       lbl_800064E0
lbl_800064C0:
/* 000F20 800064C0 83E30000 */  lwz     r31, 0(r3)
/* 000F24 800064C4 3861000C */  addi    r3, r1, 0xc
/* 000F28 800064C8 48000BD1 */  bl      xlHeapFree
/* 000F2C 800064CC 2C030000 */  cmpwi   r3, 0
/* 000F30 800064D0 4082000C */  bne     lbl_800064DC
/* 000F34 800064D4 38600000 */  li      r3, 0
/* 000F38 800064D8 48000028 */  b       lbl_80006500
lbl_800064DC:
/* 000F3C 800064DC 93E1000C */  stw     r31, 0xc(r1)
lbl_800064E0:
/* 000F40 800064E0 8061000C */  lwz     r3, 0xc(r1)
/* 000F44 800064E4 28030000 */  cmplwi  r3, 0
/* 000F48 800064E8 4082FFD8 */  bne     lbl_800064C0
/* 000F4C 800064EC 38000000 */  li      r0, 0
/* 000F50 800064F0 901E0004 */  stw     r0, 4(r30)
/* 000F54 800064F4 38600001 */  li      r3, 1
/* 000F58 800064F8 901E000C */  stw     r0, 0xc(r30)
/* 000F5C 800064FC 901E0008 */  stw     r0, 8(r30)
lbl_80006500:
/* 000F60 80006500 2C030000 */  cmpwi   r3, 0
/* 000F64 80006504 4082000C */  bne     lbl_80006510
/* 000F68 80006508 38600000 */  li      r3, 0
/* 000F6C 8000650C 48000028 */  b       lbl_80006534
lbl_80006510:
/* 000F70 80006510 3C60800F */  lis     r3, gListList@ha
/* 000F74 80006514 38633FA0 */  addi    r3, r3, gListList@l
/* 000F78 80006518 389D0000 */  addi    r4, r29, 0
/* 000F7C 8000651C 4BFFFE21 */  bl      xlListFreeItem
/* 000F80 80006520 2C030000 */  cmpwi   r3, 0
/* 000F84 80006524 4082000C */  bne     lbl_80006530
/* 000F88 80006528 38600000 */  li      r3, 0
/* 000F8C 8000652C 48000008 */  b       lbl_80006534
lbl_80006530:
/* 000F90 80006530 38600001 */  li      r3, 1
lbl_80006534:
/* 000F94 80006534 80010024 */  lwz     r0, 0x24(r1)
/* 000F98 80006538 83E1001C */  lwz     r31, 0x1c(r1)
/* 000F9C 8000653C 83C10018 */  lwz     r30, 0x18(r1)
/* 000FA0 80006540 7C0803A6 */  mtlr    r0
/* 000FA4 80006544 83A10014 */  lwz     r29, 0x14(r1)
/* 000FA8 80006548 38210020 */  addi    r1, r1, 0x20
/* 000FAC 8000654C 4E800020 */  blr     
