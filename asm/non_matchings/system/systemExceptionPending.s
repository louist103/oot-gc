glabel systemExceptionPending
/* 027D4C 8002D2EC 2C04FFFF */  cmpwi   r4, -1
/* 027D50 8002D2F0 4081002C */  ble     lbl_8002D31C
/* 027D54 8002D2F4 2C040010 */  cmpwi   r4, 0x10
/* 027D58 8002D2F8 40800024 */  bge     lbl_8002D31C
/* 027D5C 8002D2FC 7C632214 */  add     r3, r3, r4
/* 027D60 8002D300 88030074 */  lbz     r0, 0x74(r3)
/* 027D64 8002D304 28000000 */  cmplwi  r0, 0
/* 027D68 8002D308 4182000C */  beq     lbl_8002D314
/* 027D6C 8002D30C 38600001 */  li      r3, 1
/* 027D70 8002D310 4E800020 */  blr     
lbl_8002D314:
/* 027D74 8002D314 38600000 */  li      r3, 0
/* 027D78 8002D318 4E800020 */  blr     
lbl_8002D31C:
/* 027D7C 8002D31C 38600000 */  li      r3, 0
/* 027D80 8002D320 4E800020 */  blr     