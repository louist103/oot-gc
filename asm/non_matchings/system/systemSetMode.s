glabel systemSetMode
/* 0282F4 8002D894 7C0802A6 */  mflr    r0
/* 0282F8 8002D898 3CA0800F */  lis     r5, gClassSystem@ha
/* 0282FC 8002D89C 90010004 */  stw     r0, 4(r1)
/* 028300 8002D8A0 3805B310 */  addi    r0, r5, gClassSystem@l
/* 028304 8002D8A4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 028308 8002D8A8 93E10014 */  stw     r31, 0x14(r1)
/* 02830C 8002D8AC 3BE40000 */  addi    r31, r4, 0
/* 028310 8002D8B0 7C040378 */  mr      r4, r0
/* 028314 8002D8B4 93C10010 */  stw     r30, 0x10(r1)
/* 028318 8002D8B8 3BC30000 */  addi    r30, r3, 0
/* 02831C 8002D8BC 4BFDA469 */  bl      xlObjectTest
/* 028320 8002D8C0 2C030000 */  cmpwi   r3, 0
/* 028324 8002D8C4 41820024 */  beq     lbl_8002D8E8
/* 028328 8002D8C8 2C1F0001 */  cmpwi   r31, 1
/* 02832C 8002D8CC 93FE000C */  stw     r31, 0xc(r30)
/* 028330 8002D8D0 40820010 */  bne     lbl_8002D8E0
/* 028334 8002D8D4 3800FFFF */  li      r0, -1
/* 028338 8002D8D8 901E006C */  stw     r0, 0x6c(r30)
/* 02833C 8002D8DC 901E0068 */  stw     r0, 0x68(r30)
lbl_8002D8E0:
/* 028340 8002D8E0 38600001 */  li      r3, 1
/* 028344 8002D8E4 48000008 */  b       lbl_8002D8EC
lbl_8002D8E8:
/* 028348 8002D8E8 38600000 */  li      r3, 0
lbl_8002D8EC:
/* 02834C 8002D8EC 8001001C */  lwz     r0, 0x1c(r1)
/* 028350 8002D8F0 83E10014 */  lwz     r31, 0x14(r1)
/* 028354 8002D8F4 83C10010 */  lwz     r30, 0x10(r1)
/* 028358 8002D8F8 7C0803A6 */  mtlr    r0
/* 02835C 8002D8FC 38210018 */  addi    r1, r1, 0x18
/* 028360 8002D900 4E800020 */  blr     
