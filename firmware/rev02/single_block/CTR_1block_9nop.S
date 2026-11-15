.option norelax
.section .text
.globl _start
_start:
  lui x2,0xc0002
  addi x2,x2,-256
  lui x8,0xc0000
  lui x11,0x40000
  lui x5,0x2b7e1
  addi x5,x5,1302
  sw x5,16(x11)
  lui x5,0x28aed
  addi x5,x5,678
  sw x5,20(x11)
  lui x5,0xabf71
  addi x5,x5,1416
  sw x5,24(x11)
  lui x5,0x9cf5
  addi x5,x5,-196
  sw x5,28(x11)
  lui x5,0xf0f1f
  addi x5,x5,755
  sw x5,64(x11)
  lui x5,0xf4f5f
  addi x5,x5,1783
  sw x5,68(x11)
  lui x5,0xf8fa0
  addi x5,x5,-1285
  sw x5,72(x11)
  lui x5,0xfcfe0
  addi x5,x5,-257
  sw x5,76(x11)
  lui x5,0x6bc1c
  addi x5,x5,-286
  sw x5,0(x11)
  lui x5,0x2e40a
  addi x5,x5,-106
  sw x5,4(x11)
  lui x5,0xe93d8
  addi x5,x5,-495
  sw x5,8(x11)
  lui x5,0x73931
  addi x5,x5,1834
  sw x5,12(x11)
  addi x5,x0,5
  sw x5,32(x11)
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  addi x0, x0, 0
  lw x6,48(x11)
  lw x7,52(x11)
  lw x28,56(x11)
  lw x29,60(x11)
  sw x6,0(x8)
  sw x7,4(x8)
  sw x28,8(x8)
  sw x29,12(x8)
  addi x5,x0,0
  sw x5,32(x11)
  jal x0, _start
