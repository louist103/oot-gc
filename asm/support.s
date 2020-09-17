# support.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel TRKSuppAccessFile
/* 0C5D38 800CB2D8 7C0802A6 */  mflr    r0
/* 0C5D3C 800CB2DC 90010004 */  stw     r0, 4(r1)
/* 0C5D40 800CB2E0 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0C5D44 800CB2E4 BEA1001C */  stmw    r21, 0x1c(r1)
/* 0C5D48 800CB2E8 7C9B2379 */  or.     r27, r4, r4
/* 0C5D4C 800CB2EC 3B230000 */  addi    r25, r3, 0
/* 0C5D50 800CB2F0 3AE50000 */  addi    r23, r5, 0
/* 0C5D54 800CB2F4 3B460000 */  addi    r26, r6, 0
/* 0C5D58 800CB2F8 3AC70000 */  addi    r22, r7, 0
/* 0C5D5C 800CB2FC 3BC80000 */  addi    r30, r8, 0
/* 0C5D60 800CB300 41820010 */  beq     lbl_800CB310
/* 0C5D64 800CB304 80170000 */  lwz     r0, 0(r23)
/* 0C5D68 800CB308 28000000 */  cmplwi  r0, 0
/* 0C5D6C 800CB30C 4082000C */  bne     lbl_800CB318
lbl_800CB310:
/* 0C5D70 800CB310 38600002 */  li      r3, 2
/* 0C5D74 800CB314 48000288 */  b       lbl_800CB59C
lbl_800CB318:
/* 0C5D78 800CB318 38000000 */  li      r0, 0
/* 0C5D7C 800CB31C 981A0000 */  stb     r0, 0(r26)
/* 0C5D80 800CB320 3B000000 */  li      r24, 0
/* 0C5D84 800CB324 3B800000 */  li      r28, 0
/* 0C5D88 800CB328 3AA00000 */  li      r21, 0
/* 0C5D8C 800CB32C 48000240 */  b       lbl_800CB56C
lbl_800CB330:
/* 0C5D90 800CB330 7C1C1850 */  subf    r0, r28, r3
/* 0C5D94 800CB334 28000800 */  cmplwi  r0, 0x800
/* 0C5D98 800CB338 4081000C */  ble     lbl_800CB344
/* 0C5D9C 800CB33C 3BE00800 */  li      r31, 0x800
/* 0C5DA0 800CB340 48000008 */  b       lbl_800CB348
lbl_800CB344:
/* 0C5DA4 800CB344 7C1F0378 */  mr      r31, r0
lbl_800CB348:
/* 0C5DA8 800CB348 3861000C */  addi    r3, r1, 0xc
/* 0C5DAC 800CB34C 38810010 */  addi    r4, r1, 0x10
/* 0C5DB0 800CB350 4BFFE2F1 */  bl      TRKGetFreeBuffer
/* 0C5DB4 800CB354 7C751B79 */  or.     r21, r3, r3
/* 0C5DB8 800CB358 40820058 */  bne     lbl_800CB3B0
/* 0C5DBC 800CB35C 80E10010 */  lwz     r7, 0x10(r1)
/* 0C5DC0 800CB360 8007000C */  lwz     r0, 0xc(r7)
/* 0C5DC4 800CB364 28000880 */  cmplwi  r0, 0x880
/* 0C5DC8 800CB368 4180000C */  blt     lbl_800CB374
/* 0C5DCC 800CB36C 38A00301 */  li      r5, 0x301
/* 0C5DD0 800CB370 4800003C */  b       lbl_800CB3AC
lbl_800CB374:
/* 0C5DD4 800CB374 2C1E0000 */  cmpwi   r30, 0
/* 0C5DD8 800CB378 4182000C */  beq     lbl_800CB384
/* 0C5DDC 800CB37C 38C000D1 */  li      r6, 0xd1
/* 0C5DE0 800CB380 48000008 */  b       lbl_800CB388
lbl_800CB384:
/* 0C5DE4 800CB384 38C000D0 */  li      r6, 0xd0
lbl_800CB388:
/* 0C5DE8 800CB388 8087000C */  lwz     r4, 0xc(r7)
/* 0C5DEC 800CB38C 38A00000 */  li      r5, 0
/* 0C5DF0 800CB390 38640001 */  addi    r3, r4, 1
/* 0C5DF4 800CB394 38040010 */  addi    r0, r4, 0x10
/* 0C5DF8 800CB398 9067000C */  stw     r3, 0xc(r7)
/* 0C5DFC 800CB39C 7CC701AE */  stbx    r6, r7, r0
/* 0C5E00 800CB3A0 80670008 */  lwz     r3, 8(r7)
/* 0C5E04 800CB3A4 38030001 */  addi    r0, r3, 1
/* 0C5E08 800CB3A8 90070008 */  stw     r0, 8(r7)
lbl_800CB3AC:
/* 0C5E0C 800CB3AC 7CB52B78 */  mr      r21, r5
lbl_800CB3B0:
/* 0C5E10 800CB3B0 2C150000 */  cmpwi   r21, 0
/* 0C5E14 800CB3B4 40820014 */  bne     lbl_800CB3C8
/* 0C5E18 800CB3B8 80610010 */  lwz     r3, 0x10(r1)
/* 0C5E1C 800CB3BC 7F24CB78 */  mr      r4, r25
/* 0C5E20 800CB3C0 4BFFE5A5 */  bl      TRKAppendBuffer1_ui32
/* 0C5E24 800CB3C4 7C751B78 */  mr      r21, r3
lbl_800CB3C8:
/* 0C5E28 800CB3C8 2C150000 */  cmpwi   r21, 0
/* 0C5E2C 800CB3CC 40820014 */  bne     lbl_800CB3E0
/* 0C5E30 800CB3D0 80610010 */  lwz     r3, 0x10(r1)
/* 0C5E34 800CB3D4 57E4043E */  clrlwi  r4, r31, 0x10
/* 0C5E38 800CB3D8 4BFFE539 */  bl      TRKAppendBuffer1_ui16
/* 0C5E3C 800CB3DC 7C751B78 */  mr      r21, r3
lbl_800CB3E0:
/* 0C5E40 800CB3E0 2C1E0000 */  cmpwi   r30, 0
/* 0C5E44 800CB3E4 40820020 */  bne     lbl_800CB404
/* 0C5E48 800CB3E8 2C150000 */  cmpwi   r21, 0
/* 0C5E4C 800CB3EC 40820018 */  bne     lbl_800CB404
/* 0C5E50 800CB3F0 80610010 */  lwz     r3, 0x10(r1)
/* 0C5E54 800CB3F4 38BF0000 */  addi    r5, r31, 0
/* 0C5E58 800CB3F8 7C9BE214 */  add     r4, r27, r28
/* 0C5E5C 800CB3FC 4BFFE655 */  bl      TRKAppendBuffer_ui8
/* 0C5E60 800CB400 7C751B78 */  mr      r21, r3
lbl_800CB404:
/* 0C5E64 800CB404 2C150000 */  cmpwi   r21, 0
/* 0C5E68 800CB408 40820158 */  bne     lbl_800CB560
/* 0C5E6C 800CB40C 2C160000 */  cmpwi   r22, 0
/* 0C5E70 800CB410 41820144 */  beq     lbl_800CB554
/* 0C5E74 800CB414 38000000 */  li      r0, 0
/* 0C5E78 800CB418 2C1E0000 */  cmpwi   r30, 0
/* 0C5E7C 800CB41C B001000A */  sth     r0, 0xa(r1)
/* 0C5E80 800CB420 98010008 */  stb     r0, 8(r1)
/* 0C5E84 800CB424 41820010 */  beq     lbl_800CB434
/* 0C5E88 800CB428 28190000 */  cmplwi  r25, 0
/* 0C5E8C 800CB42C 40820008 */  bne     lbl_800CB434
/* 0C5E90 800CB430 38000001 */  li      r0, 1
lbl_800CB434:
/* 0C5E94 800CB434 2C1E0000 */  cmpwi   r30, 0
/* 0C5E98 800CB438 4182000C */  beq     lbl_800CB444
/* 0C5E9C 800CB43C 38A00005 */  li      r5, 5
/* 0C5EA0 800CB440 48000008 */  b       lbl_800CB448
lbl_800CB444:
/* 0C5EA4 800CB444 38A00005 */  li      r5, 5
lbl_800CB448:
/* 0C5EA8 800CB448 7C000034 */  cntlzw  r0, r0
/* 0C5EAC 800CB44C 80610010 */  lwz     r3, 0x10(r1)
/* 0C5EB0 800CB450 5407D97E */  srwi    r7, r0, 5
/* 0C5EB4 800CB454 38810014 */  addi    r4, r1, 0x14
/* 0C5EB8 800CB458 38C00003 */  li      r6, 3
/* 0C5EBC 800CB45C 48000155 */  bl      TRKRequestSend
/* 0C5EC0 800CB460 7C751B79 */  or.     r21, r3, r3
/* 0C5EC4 800CB464 40820018 */  bne     lbl_800CB47C
/* 0C5EC8 800CB468 80610014 */  lwz     r3, 0x14(r1)
/* 0C5ECC 800CB46C 4BFFE271 */  bl      TRKGetBuffer
/* 0C5ED0 800CB470 3BA30000 */  addi    r29, r3, 0
/* 0C5ED4 800CB474 38800002 */  li      r4, 2
/* 0C5ED8 800CB478 4BFFE339 */  bl      TRKSetBufferPosition
lbl_800CB47C:
/* 0C5EDC 800CB47C 2C150000 */  cmpwi   r21, 0
/* 0C5EE0 800CB480 40820014 */  bne     lbl_800CB494
/* 0C5EE4 800CB484 387D0000 */  addi    r3, r29, 0
/* 0C5EE8 800CB488 38810008 */  addi    r4, r1, 8
/* 0C5EEC 800CB48C 4BFFE6A9 */  bl      TRKReadBuffer1_ui8
/* 0C5EF0 800CB490 7C751B78 */  mr      r21, r3
lbl_800CB494:
/* 0C5EF4 800CB494 2C150000 */  cmpwi   r21, 0
/* 0C5EF8 800CB498 40820014 */  bne     lbl_800CB4AC
/* 0C5EFC 800CB49C 387D0000 */  addi    r3, r29, 0
/* 0C5F00 800CB4A0 3881000A */  addi    r4, r1, 0xa
/* 0C5F04 800CB4A4 4BFFE6B5 */  bl      TRKReadBuffer1_ui16
/* 0C5F08 800CB4A8 7C751B78 */  mr      r21, r3
lbl_800CB4AC:
/* 0C5F0C 800CB4AC 2C1E0000 */  cmpwi   r30, 0
/* 0C5F10 800CB4B0 41820058 */  beq     lbl_800CB508
/* 0C5F14 800CB4B4 2C150000 */  cmpwi   r21, 0
/* 0C5F18 800CB4B8 40820050 */  bne     lbl_800CB508
/* 0C5F1C 800CB4BC A061000A */  lhz     r3, 0xa(r1)
/* 0C5F20 800CB4C0 809D0008 */  lwz     r4, 8(r29)
/* 0C5F24 800CB4C4 38030005 */  addi    r0, r3, 5
/* 0C5F28 800CB4C8 7C040040 */  cmplw   r4, r0
/* 0C5F2C 800CB4CC 41820020 */  beq     lbl_800CB4EC
/* 0C5F30 800CB4D0 88010008 */  lbz     r0, 8(r1)
/* 0C5F34 800CB4D4 3864FFFB */  addi    r3, r4, -5
/* 0C5F38 800CB4D8 B061000A */  sth     r3, 0xa(r1)
/* 0C5F3C 800CB4DC 28000000 */  cmplwi  r0, 0
/* 0C5F40 800CB4E0 4082000C */  bne     lbl_800CB4EC
/* 0C5F44 800CB4E4 38000001 */  li      r0, 1
/* 0C5F48 800CB4E8 98010008 */  stb     r0, 8(r1)
lbl_800CB4EC:
/* 0C5F4C 800CB4EC A0A1000A */  lhz     r5, 0xa(r1)
/* 0C5F50 800CB4F0 7C05F840 */  cmplw   r5, r31
/* 0C5F54 800CB4F4 41810014 */  bgt     lbl_800CB508
/* 0C5F58 800CB4F8 387D0000 */  addi    r3, r29, 0
/* 0C5F5C 800CB4FC 7C9BE214 */  add     r4, r27, r28
/* 0C5F60 800CB500 4BFFE819 */  bl      TRKReadBuffer_ui8
/* 0C5F64 800CB504 7C751B78 */  mr      r21, r3
lbl_800CB508:
/* 0C5F68 800CB508 A061000A */  lhz     r3, 0xa(r1)
/* 0C5F6C 800CB50C 7C03F840 */  cmplw   r3, r31
/* 0C5F70 800CB510 41820030 */  beq     lbl_800CB540
/* 0C5F74 800CB514 2C1E0000 */  cmpwi   r30, 0
/* 0C5F78 800CB518 4182000C */  beq     lbl_800CB524
/* 0C5F7C 800CB51C 7C03F840 */  cmplw   r3, r31
/* 0C5F80 800CB520 41800018 */  blt     lbl_800CB538
lbl_800CB524:
/* 0C5F84 800CB524 88010008 */  lbz     r0, 8(r1)
/* 0C5F88 800CB528 28000000 */  cmplwi  r0, 0
/* 0C5F8C 800CB52C 4082000C */  bne     lbl_800CB538
/* 0C5F90 800CB530 38000001 */  li      r0, 1
/* 0C5F94 800CB534 98010008 */  stb     r0, 8(r1)
lbl_800CB538:
/* 0C5F98 800CB538 3BE30000 */  addi    r31, r3, 0
/* 0C5F9C 800CB53C 3B000001 */  li      r24, 1
lbl_800CB540:
/* 0C5FA0 800CB540 88010008 */  lbz     r0, 8(r1)
/* 0C5FA4 800CB544 981A0000 */  stb     r0, 0(r26)
/* 0C5FA8 800CB548 80610014 */  lwz     r3, 0x14(r1)
/* 0C5FAC 800CB54C 4BFFE1BD */  bl      TRKReleaseBuffer
/* 0C5FB0 800CB550 48000010 */  b       lbl_800CB560
lbl_800CB554:
/* 0C5FB4 800CB554 80610010 */  lwz     r3, 0x10(r1)
/* 0C5FB8 800CB558 4BFFE041 */  bl      TRKMessageSend
/* 0C5FBC 800CB55C 7C751B78 */  mr      r21, r3
lbl_800CB560:
/* 0C5FC0 800CB560 8061000C */  lwz     r3, 0xc(r1)
/* 0C5FC4 800CB564 4BFFE1A5 */  bl      TRKReleaseBuffer
/* 0C5FC8 800CB568 7F9CFA14 */  add     r28, r28, r31
lbl_800CB56C:
/* 0C5FCC 800CB56C 2C180000 */  cmpwi   r24, 0
/* 0C5FD0 800CB570 40820024 */  bne     lbl_800CB594
/* 0C5FD4 800CB574 80770000 */  lwz     r3, 0(r23)
/* 0C5FD8 800CB578 7C1C1840 */  cmplw   r28, r3
/* 0C5FDC 800CB57C 40800018 */  bge     lbl_800CB594
/* 0C5FE0 800CB580 2C150000 */  cmpwi   r21, 0
/* 0C5FE4 800CB584 40820010 */  bne     lbl_800CB594
/* 0C5FE8 800CB588 881A0000 */  lbz     r0, 0(r26)
/* 0C5FEC 800CB58C 28000000 */  cmplwi  r0, 0
/* 0C5FF0 800CB590 4182FDA0 */  beq     lbl_800CB330
lbl_800CB594:
/* 0C5FF4 800CB594 93970000 */  stw     r28, 0(r23)
/* 0C5FF8 800CB598 7EA3AB78 */  mr      r3, r21
lbl_800CB59C:
/* 0C5FFC 800CB59C BAA1001C */  lmw     r21, 0x1c(r1)
/* 0C6000 800CB5A0 38210048 */  addi    r1, r1, 0x48
/* 0C6004 800CB5A4 80010004 */  lwz     r0, 4(r1)
/* 0C6008 800CB5A8 7C0803A6 */  mtlr    r0
/* 0C600C 800CB5AC 4E800020 */  blr     

glabel TRKRequestSend
/* 0C6010 800CB5B0 7C0802A6 */  mflr    r0
/* 0C6014 800CB5B4 90010004 */  stw     r0, 4(r1)
/* 0C6018 800CB5B8 3800FFFF */  li      r0, -1
/* 0C601C 800CB5BC 9421FFC8 */  stwu    r1, -0x38(r1)
/* 0C6020 800CB5C0 BEC10010 */  stmw    r22, 0x10(r1)
/* 0C6024 800CB5C4 3AE40000 */  addi    r23, r4, 0
/* 0C6028 800CB5C8 3C8004C5 */  lis     r4, 0x4c5
/* 0C602C 800CB5CC 3B660001 */  addi    r27, r6, 1
/* 0C6030 800CB5D0 3AC30000 */  addi    r22, r3, 0
/* 0C6034 800CB5D4 3BE4B3EC */  addi    r31, r4, -19476
/* 0C6038 800CB5D8 3B050000 */  addi    r24, r5, 0
/* 0C603C 800CB5DC 3B270000 */  addi    r25, r7, 0
/* 0C6040 800CB5E0 3BC00000 */  li      r30, 0
/* 0C6044 800CB5E4 3B400001 */  li      r26, 1
/* 0C6048 800CB5E8 90170000 */  stw     r0, 0(r23)
/* 0C604C 800CB5EC 48000124 */  b       lbl_800CB710
lbl_800CB5F0:
/* 0C6050 800CB5F0 7EC3B378 */  mr      r3, r22
/* 0C6054 800CB5F4 4BFFDFA5 */  bl      TRKMessageSend
/* 0C6058 800CB5F8 7C7E1B79 */  or.     r30, r3, r3
/* 0C605C 800CB5FC 40820110 */  bne     lbl_800CB70C
/* 0C6060 800CB600 2C190000 */  cmpwi   r25, 0
/* 0C6064 800CB604 41820008 */  beq     lbl_800CB60C
/* 0C6068 800CB608 3B800000 */  li      r28, 0
lbl_800CB60C:
/* 0C606C 800CB60C 4BFFE7FD */  bl      TRKTestForPacket
/* 0C6070 800CB610 90770000 */  stw     r3, 0(r23)
/* 0C6074 800CB614 80770000 */  lwz     r3, 0(r23)
/* 0C6078 800CB618 2C03FFFF */  cmpwi   r3, -1
/* 0C607C 800CB61C 40820018 */  bne     lbl_800CB634
/* 0C6080 800CB620 2C190000 */  cmpwi   r25, 0
/* 0C6084 800CB624 4182FFE8 */  beq     lbl_800CB60C
/* 0C6088 800CB628 3B9C0001 */  addi    r28, r28, 1
/* 0C608C 800CB62C 7C1CF840 */  cmplw   r28, r31
/* 0C6090 800CB630 4180FFDC */  blt     lbl_800CB60C
lbl_800CB634:
/* 0C6094 800CB634 2C03FFFF */  cmpwi   r3, -1
/* 0C6098 800CB638 4182004C */  beq     lbl_800CB684
/* 0C609C 800CB63C 3B400000 */  li      r26, 0
/* 0C60A0 800CB640 4BFFE09D */  bl      TRKGetBuffer
/* 0C60A4 800CB644 3BA30000 */  addi    r29, r3, 0
/* 0C60A8 800CB648 38800000 */  li      r4, 0
/* 0C60AC 800CB64C 4BFFE165 */  bl      TRKSetBufferPosition
/* 0C60B0 800CB650 387D0000 */  addi    r3, r29, 0
/* 0C60B4 800CB654 38810008 */  addi    r4, r1, 8
/* 0C60B8 800CB658 4BFFE4DD */  bl      TRKReadBuffer1_ui8
/* 0C60BC 800CB65C 7C7E1B79 */  or.     r30, r3, r3
/* 0C60C0 800CB660 40820024 */  bne     lbl_800CB684
/* 0C60C4 800CB664 88010008 */  lbz     r0, 8(r1)
/* 0C60C8 800CB668 28000080 */  cmplwi  r0, 0x80
/* 0C60CC 800CB66C 40800018 */  bge     lbl_800CB684
/* 0C60D0 800CB670 80770000 */  lwz     r3, 0(r23)
/* 0C60D4 800CB674 4BFFE8E1 */  bl      TRKProcessInput
/* 0C60D8 800CB678 3800FFFF */  li      r0, -1
/* 0C60DC 800CB67C 90170000 */  stw     r0, 0(r23)
/* 0C60E0 800CB680 4BFFFF8C */  b       lbl_800CB60C
lbl_800CB684:
/* 0C60E4 800CB684 80170000 */  lwz     r0, 0(r23)
/* 0C60E8 800CB688 2C00FFFF */  cmpwi   r0, -1
/* 0C60EC 800CB68C 41820080 */  beq     lbl_800CB70C
/* 0C60F0 800CB690 801D0008 */  lwz     r0, 8(r29)
/* 0C60F4 800CB694 7C00C040 */  cmplw   r0, r24
/* 0C60F8 800CB698 40800008 */  bge     lbl_800CB6A0
/* 0C60FC 800CB69C 3B400001 */  li      r26, 1
lbl_800CB6A0:
/* 0C6100 800CB6A0 2C1E0000 */  cmpwi   r30, 0
/* 0C6104 800CB6A4 4082001C */  bne     lbl_800CB6C0
/* 0C6108 800CB6A8 2C1A0000 */  cmpwi   r26, 0
/* 0C610C 800CB6AC 40820014 */  bne     lbl_800CB6C0
/* 0C6110 800CB6B0 387D0000 */  addi    r3, r29, 0
/* 0C6114 800CB6B4 38810009 */  addi    r4, r1, 9
/* 0C6118 800CB6B8 4BFFE47D */  bl      TRKReadBuffer1_ui8
/* 0C611C 800CB6BC 7C7E1B78 */  mr      r30, r3
lbl_800CB6C0:
/* 0C6120 800CB6C0 2C1E0000 */  cmpwi   r30, 0
/* 0C6124 800CB6C4 40820028 */  bne     lbl_800CB6EC
/* 0C6128 800CB6C8 2C1A0000 */  cmpwi   r26, 0
/* 0C612C 800CB6CC 40820020 */  bne     lbl_800CB6EC
/* 0C6130 800CB6D0 88010008 */  lbz     r0, 8(r1)
/* 0C6134 800CB6D4 28000080 */  cmplwi  r0, 0x80
/* 0C6138 800CB6D8 40820010 */  bne     lbl_800CB6E8
/* 0C613C 800CB6DC 88010009 */  lbz     r0, 9(r1)
/* 0C6140 800CB6E0 28000000 */  cmplwi  r0, 0
/* 0C6144 800CB6E4 41820008 */  beq     lbl_800CB6EC
lbl_800CB6E8:
/* 0C6148 800CB6E8 3B400001 */  li      r26, 1
lbl_800CB6EC:
/* 0C614C 800CB6EC 2C1E0000 */  cmpwi   r30, 0
/* 0C6150 800CB6F0 4082000C */  bne     lbl_800CB6FC
/* 0C6154 800CB6F4 2C1A0000 */  cmpwi   r26, 0
/* 0C6158 800CB6F8 41820014 */  beq     lbl_800CB70C
lbl_800CB6FC:
/* 0C615C 800CB6FC 80770000 */  lwz     r3, 0(r23)
/* 0C6160 800CB700 4BFFE009 */  bl      TRKReleaseBuffer
/* 0C6164 800CB704 3800FFFF */  li      r0, -1
/* 0C6168 800CB708 90170000 */  stw     r0, 0(r23)
lbl_800CB70C:
/* 0C616C 800CB70C 3B7BFFFF */  addi    r27, r27, -1
lbl_800CB710:
/* 0C6170 800CB710 2C1B0000 */  cmpwi   r27, 0
/* 0C6174 800CB714 41820018 */  beq     lbl_800CB72C
/* 0C6178 800CB718 80170000 */  lwz     r0, 0(r23)
/* 0C617C 800CB71C 2C00FFFF */  cmpwi   r0, -1
/* 0C6180 800CB720 4082000C */  bne     lbl_800CB72C
/* 0C6184 800CB724 2C1E0000 */  cmpwi   r30, 0
/* 0C6188 800CB728 4182FEC8 */  beq     lbl_800CB5F0
lbl_800CB72C:
/* 0C618C 800CB72C 80170000 */  lwz     r0, 0(r23)
/* 0C6190 800CB730 2C00FFFF */  cmpwi   r0, -1
/* 0C6194 800CB734 40820008 */  bne     lbl_800CB73C
/* 0C6198 800CB738 3BC00800 */  li      r30, 0x800
lbl_800CB73C:
/* 0C619C 800CB73C 7FC3F378 */  mr      r3, r30
/* 0C61A0 800CB740 BAC10010 */  lmw     r22, 0x10(r1)
/* 0C61A4 800CB744 38210038 */  addi    r1, r1, 0x38
/* 0C61A8 800CB748 80010004 */  lwz     r0, 4(r1)
/* 0C61AC 800CB74C 7C0803A6 */  mtlr    r0
/* 0C61B0 800CB750 4E800020 */  blr     

