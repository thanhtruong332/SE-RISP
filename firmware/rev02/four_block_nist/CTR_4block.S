.option norelax
.section .text
.globl _start
_start:
  lui  x2, 0xc0002
  addi x2, x2, -256
  lui  x8, 0xc0000
  lui  x11, 0x40000
  lui  x5, %hi(0x2b7e1516)
  addi x5, x5, %lo(0x2b7e1516)
  sw   x5, 16(x11)
  lui  x5, %hi(0x28aed2a6)
  addi x5, x5, %lo(0x28aed2a6)
  sw   x5, 20(x11)
  lui  x5, %hi(0xabf71588)
  addi x5, x5, %lo(0xabf71588)
  sw   x5, 24(x11)
  lui  x5, %hi(0x09cf4f3c)
  addi x5, x5, %lo(0x09cf4f3c)
  sw   x5, 28(x11)
  lui  x5, %hi(0xf0f1f2f3)
  addi x5, x5, %lo(0xf0f1f2f3)
  sw   x5, 64(x11)
  lui  x5, %hi(0xf4f5f6f7)
  addi x5, x5, %lo(0xf4f5f6f7)
  sw   x5, 68(x11)
  lui  x5, %hi(0xf8f9fafb)
  addi x5, x5, %lo(0xf8f9fafb)
  sw   x5, 72(x11)
  lui  x5, %hi(0xfcfdfeff)
  addi x5, x5, %lo(0xfcfdfeff)
  sw   x5, 76(x11)
  lui  x5, %hi(0x6bc1bee2)
  addi x5, x5, %lo(0x6bc1bee2)
  sw   x5, 0(x11)
  lui  x5, %hi(0x2e409f96)
  addi x5, x5, %lo(0x2e409f96)
  sw   x5, 4(x11)
  lui  x5, %hi(0xe93d7e11)
  addi x5, x5, %lo(0xe93d7e11)
  sw   x5, 8(x11)
  lui  x5, %hi(0x7393172a)
  addi x5, x5, %lo(0x7393172a)
  sw   x5, 12(x11)
  addi x5, x0, 5
  sw   x5, 32(x11)
  .rept 60
  addi x0, x0, 0
  .endr
  lw   x6, 48(x11)
  lw   x7, 52(x11)
  lw   x28, 56(x11)
  lw   x29, 60(x11)
  sw   x6, 0(x8)
  sw   x7, 4(x8)
  sw   x28, 8(x8)
  sw   x29, 12(x8)
  addi x8, x8, 16
  lui  x5, %hi(0xae2d8a57)
  addi x5, x5, %lo(0xae2d8a57)
  sw   x5, 0(x11)
  lui  x5, %hi(0x1e03ac9c)
  addi x5, x5, %lo(0x1e03ac9c)
  sw   x5, 4(x11)
  lui  x5, %hi(0x9eb76fac)
  addi x5, x5, %lo(0x9eb76fac)
  sw   x5, 8(x11)
  lui  x5, %hi(0x45af8e51)
  addi x5, x5, %lo(0x45af8e51)
  sw   x5, 12(x11)
  addi x5, x0, 5
  sw   x5, 32(x11)
  .rept 60
  addi x0, x0, 0
  .endr
  lw   x6, 48(x11)
  lw   x7, 52(x11)
  lw   x28, 56(x11)
  lw   x29, 60(x11)
  sw   x6, 0(x8)
  sw   x7, 4(x8)
  sw   x28, 8(x8)
  sw   x29, 12(x8)
  addi x8, x8, 16
  lui  x5, %hi(0x30c81c46)
  addi x5, x5, %lo(0x30c81c46)
  sw   x5, 0(x11)
  lui  x5, %hi(0xa35ce411)
  addi x5, x5, %lo(0xa35ce411)
  sw   x5, 4(x11)
  lui  x5, %hi(0xe5fbc119)
  addi x5, x5, %lo(0xe5fbc119)
  sw   x5, 8(x11)
  lui  x5, %hi(0x1a0a52ef)
  addi x5, x5, %lo(0x1a0a52ef)
  sw   x5, 12(x11)
  addi x5, x0, 5
  sw   x5, 32(x11)
  .rept 60
  addi x0, x0, 0
  .endr
  lw   x6, 48(x11)
  lw   x7, 52(x11)
  lw   x28, 56(x11)
  lw   x29, 60(x11)
  sw   x6, 0(x8)
  sw   x7, 4(x8)
  sw   x28, 8(x8)
  sw   x29, 12(x8)
  addi x8, x8, 16
  lui  x5, %hi(0xf69f2445)
  addi x5, x5, %lo(0xf69f2445)
  sw   x5, 0(x11)
  lui  x5, %hi(0xdf4f9b17)
  addi x5, x5, %lo(0xdf4f9b17)
  sw   x5, 4(x11)
  lui  x5, %hi(0xad2b417b)
  addi x5, x5, %lo(0xad2b417b)
  sw   x5, 8(x11)
  lui  x5, %hi(0xe66c3710)
  addi x5, x5, %lo(0xe66c3710)
  sw   x5, 12(x11)
  addi x5, x0, 5
  sw   x5, 32(x11)
  .rept 60
  addi x0, x0, 0
  .endr
  lw   x6, 48(x11)
  lw   x7, 52(x11)
  lw   x28, 56(x11)
  lw   x29, 60(x11)
  sw   x6, 0(x8)
  sw   x7, 4(x8)
  sw   x28, 8(x8)
  sw   x29, 12(x8)
  addi x8, x8, 16
halt:
  jal  x0, halt
