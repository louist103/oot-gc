glabel __systemCopyROM_Complete
/* 028458 8002D9F8 7C0802A6 */  mflr    r0
/* 02845C 8002D9FC 90010004 */  stw     r0, 4(r1)
/* 028460 8002DA00 9421FF68 */  stwu    r1, -0x98(r1)
/* 028464 8002DA04 93E10094 */  stw     r31, 0x94(r1)
/* 028468 8002DA08 93C10090 */  stw     r30, 0x90(r1)
/* 02846C 8002DA0C 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 028470 8002DA10 80A30010 */  lwz     r5, 0x10(r3)
/* 028474 8002DA14 80830014 */  lwz     r4, 0x14(r3)
/* 028478 8002DA18 3BE5FFFF */  addi    r31, r5, -1
/* 02847C 8002DA1C 80630000 */  lwz     r3, 0(r3)
/* 028480 8002DA20 38A5FFFF */  addi    r5, r5, -1
/* 028484 8002DA24 3BC40000 */  addi    r30, r4, 0
/* 028488 8002DA28 7FE4FA14 */  add     r31, r4, r31
/* 02848C 8002DA2C 7CA42A14 */  add     r5, r4, r5
/* 028490 8002DA30 4BFEFA89 */  bl      frameInvalidateCache
/* 028494 8002DA34 2C030000 */  cmpwi   r3, 0
/* 028498 8002DA38 4082000C */  bne     lbl_8002DA44
/* 02849C 8002DA3C 38600000 */  li      r3, 0
/* 0284A0 8002DA40 480000D8 */  b       lbl_8002DB18
lbl_8002DA44:
/* 0284A4 8002DA44 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 0284A8 8002DA48 389E0000 */  addi    r4, r30, 0
/* 0284AC 8002DA4C 38BF0000 */  addi    r5, r31, 0
/* 0284B0 8002DA50 80630034 */  lwz     r3, 0x34(r3)
/* 0284B4 8002DA54 4804458D */  bl      rspInvalidateCache
/* 0284B8 8002DA58 2C030000 */  cmpwi   r3, 0
/* 0284BC 8002DA5C 4082000C */  bne     lbl_8002DA68
/* 0284C0 8002DA60 38600000 */  li      r3, 0
/* 0284C4 8002DA64 480000B4 */  b       lbl_8002DB18
lbl_8002DA68:
/* 0284C8 8002DA68 80ED8920 */  lwz     r7, gpSystem@sda21(r13)
/* 0284CC 8002DA6C 38810008 */  addi    r4, r1, 8
/* 0284D0 8002DA70 38A10088 */  addi    r5, r1, 0x88
/* 0284D4 8002DA74 80670024 */  lwz     r3, 0x24(r7)
/* 0284D8 8002DA78 80C70014 */  lwz     r6, 0x14(r7)
/* 0284DC 8002DA7C 80E70010 */  lwz     r7, 0x10(r7)
/* 0284E0 8002DA80 48006B71 */  bl      cpuGetOffsetAddress
/* 0284E4 8002DA84 2C030000 */  cmpwi   r3, 0
/* 0284E8 8002DA88 4082000C */  bne     lbl_8002DA94
/* 0284EC 8002DA8C 38600000 */  li      r3, 0
/* 0284F0 8002DA90 48000088 */  b       lbl_8002DB18
lbl_8002DA94:
/* 0284F4 8002DA94 3BE10008 */  addi    r31, r1, 8
/* 0284F8 8002DA98 3BC00000 */  li      r30, 0
/* 0284FC 8002DA9C 48000038 */  b       lbl_8002DAD4
lbl_8002DAA0:
/* 028500 8002DAA0 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 028504 8002DAA4 809F0000 */  lwz     r4, 0(r31)
/* 028508 8002DAA8 80A30010 */  lwz     r5, 0x10(r3)
/* 02850C 8002DAAC 80630024 */  lwz     r3, 0x24(r3)
/* 028510 8002DAB0 38A5FFFF */  addi    r5, r5, -1
/* 028514 8002DAB4 7CA42A14 */  add     r5, r4, r5
/* 028518 8002DAB8 48006AAD */  bl      cpuInvalidateCache
/* 02851C 8002DABC 2C030000 */  cmpwi   r3, 0
/* 028520 8002DAC0 4082000C */  bne     lbl_8002DACC
/* 028524 8002DAC4 38600000 */  li      r3, 0
/* 028528 8002DAC8 48000050 */  b       lbl_8002DB18
lbl_8002DACC:
/* 02852C 8002DACC 3BFF0004 */  addi    r31, r31, 4
/* 028530 8002DAD0 3BDE0001 */  addi    r30, r30, 1
lbl_8002DAD4:
/* 028534 8002DAD4 80010088 */  lwz     r0, 0x88(r1)
/* 028538 8002DAD8 7C1E0000 */  cmpw    r30, r0
/* 02853C 8002DADC 4180FFC4 */  blt     lbl_8002DAA0
/* 028540 8002DAE0 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 028544 8002DAE4 38000000 */  li      r0, 0
/* 028548 8002DAE8 90030010 */  stw     r0, 0x10(r3)
/* 02854C 8002DAEC 806D8920 */  lwz     r3, gpSystem@sda21(r13)
/* 028550 8002DAF0 8183001C */  lwz     r12, 0x1c(r3)
/* 028554 8002DAF4 280C0000 */  cmplwi  r12, 0
/* 028558 8002DAF8 4182001C */  beq     lbl_8002DB14
/* 02855C 8002DAFC 7D8803A6 */  mtlr    r12
/* 028560 8002DB00 4E800021 */  blrl    
/* 028564 8002DB04 2C030000 */  cmpwi   r3, 0
/* 028568 8002DB08 4082000C */  bne     lbl_8002DB14
/* 02856C 8002DB0C 38600000 */  li      r3, 0
/* 028570 8002DB10 48000008 */  b       lbl_8002DB18
lbl_8002DB14:
/* 028574 8002DB14 38600001 */  li      r3, 1
lbl_8002DB18:
/* 028578 8002DB18 8001009C */  lwz     r0, 0x9c(r1)
/* 02857C 8002DB1C 83E10094 */  lwz     r31, 0x94(r1)
/* 028580 8002DB20 83C10090 */  lwz     r30, 0x90(r1)
/* 028584 8002DB24 7C0803A6 */  mtlr    r0
/* 028588 8002DB28 38210098 */  addi    r1, r1, 0x98
/* 02858C 8002DB2C 4E800020 */  blr     
