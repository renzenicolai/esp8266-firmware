
user_interface.o:     file format elf32-xtensa-le


Disassembly of section .text:

00000000 <os_printf_plus-0x30>:
   0:	200000        	or	a0, a0, a0
   3:	000040        	excw
	...

00000030 <os_printf_plus>:
  30:	a0a082        	movi	a8, 160
  33:	c01180        	sub	a1, a1, a8
  36:	1a61c2        	s32i	a12, a1, 104
  39:	1b61d2        	s32i	a13, a1, 108
  3c:	1c61e2        	s32i	a14, a1, 112
  3f:	206122        	s32i	a2, a1, 128
  42:	216132        	s32i	a3, a1, 132
  45:	226142        	s32i	a4, a1, 136
  48:	236152        	s32i	a5, a1, 140
  4b:	246162        	s32i	a6, a1, 144
  4e:	256172        	s32i	a7, a1, 148
  51:	196102        	s32i	a0, a1, 100
  54:	ffee01        	l32r	a0, c <os_printf_plus-0x24>
  57:	0000c0        	callx0	a0
  5a:	7c1266        	bnei	a2, 1, da <os_printf_plus+0xaa>
  5d:	440c      	movi.n	a4, 4
  5f:	ffe9d1        	l32r	a13, 4 <os_printf_plus-0x2c>
  62:	ffe721        	l32r	a2, 0 <os_printf_plus-0x30>
  65:	202132        	l32i	a3, a1, 128
  68:	01d102        	addmi	a0, a1, 0x100
  6b:	01d1e2        	addmi	a14, a1, 0x100
  6e:	80cee2        	addi	a14, a14, -128
  71:	80c002        	addi	a0, a0, -128
  74:	186102        	s32i	a0, a1, 96
  77:	43c327        	bnall	a3, a2, be <os_printf_plus+0x8e>
  7a:	032d      	mov.n	a2, a3
  7c:	ffe501        	l32r	a0, 10 <os_printf_plus-0x20>
  7f:	0000c0        	callx0	a0
  82:	020b      	addi.n	a0, a2, -1
  84:	c22b      	addi.n	a12, a2, 2
  86:	b3c000        	movgez	a12, a0, a0
  89:	400c      	movi.n	a0, 4
  8b:	21c2c0        	srai	a12, a12, 2
  8e:	a0cc00        	addx4	a12, a12, a0
  91:	f4c0c0        	extui	a12, a12, 0, 16
  94:	2c1b      	addi.n	a2, a12, 1
  96:	166122        	s32i	a2, a1, 88
  99:	ffde01        	l32r	a0, 14 <os_printf_plus-0x1c>
  9c:	0000c0        	callx0	a0
  9f:	02dd      	mov.n	a13, a2
  a1:	ffdd01        	l32r	a0, 18 <os_printf_plus-0x18>
  a4:	0000c0        	callx0	a0
  a7:	42b2d7        	bgeu	a2, a13, ed <os_printf_plus+0xbd>
  aa:	f03c      	movi.n	a0, 63
  ac:	01dd      	mov.n	a13, a1
  ae:	120c      	movi.n	a2, 1
  b0:	176122        	s32i	a2, a1, 92
  b3:	01dcf6        	bgeui	a12, 64, b8 <os_printf_plus+0x88>
  b6:	0c0d      	mov.n	a0, a12
  b8:	f4c000        	extui	a12, a0, 0, 16
  bb:	000f86        	j	fd <os_printf_plus+0xcd>
  be:	0d2d      	mov.n	a2, a13
  c0:	1461e2        	s32i	a14, a1, 80
  c3:	156142        	s32i	a4, a1, 84
  c6:	4cc162        	addi	a6, a1, 76
  c9:	007d      	mov.n	a7, a0
  cb:	136172        	s32i	a7, a1, 76
  ce:	0648      	l32i.n	a4, a6, 0
  d0:	1658      	l32i.n	a5, a6, 4
  d2:	2668      	l32i.n	a6, a6, 8
  d4:	ffd201        	l32r	a0, 1c <os_printf_plus-0x14>
  d7:	0000c0        	callx0	a0
  da:	1a21c2        	l32i	a12, a1, 104
  dd:	1b21d2        	l32i	a13, a1, 108
  e0:	1c21e2        	l32i	a14, a1, 112
  e3:	a0a022        	movi	a2, 160
  e6:	192102        	l32i	a0, a1, 100
  e9:	112a      	add.n	a1, a1, a2
  eb:	f00d      	ret.n
  ed:	162122        	l32i	a2, a1, 88
  f0:	ffcc01        	l32r	a0, 20 <os_printf_plus-0x10>
  f3:	0000c0        	callx0	a0
  f6:	02dd      	mov.n	a13, a2
  f8:	080c      	movi.n	a8, 0
  fa:	176182        	s32i	a8, a1, 92
  fd:	202132        	l32i	a3, a1, 128
 100:	0d2d      	mov.n	a2, a13
 102:	0c4d      	mov.n	a4, a12
 104:	ffc801        	l32r	a0, 24 <os_printf_plus-0xc>
 107:	0000c0        	callx0	a0
 10a:	ffbf21        	l32r	a2, 8 <os_printf_plus-0x28>
 10d:	0d3d      	mov.n	a3, a13
 10f:	1161e2        	s32i	a14, a1, 68
 112:	40c162        	addi	a6, a1, 64
 115:	8cda      	add.n	a8, a12, a13
 117:	070c      	movi.n	a7, 0
 119:	182192        	l32i	a9, a1, 96
 11c:	4a0c      	movi.n	a10, 4
 11e:	1261a2        	s32i	a10, a1, 72
 121:	106192        	s32i	a9, a1, 64
 124:	004872        	s8i	a7, a8, 0
 127:	0648      	l32i.n	a4, a6, 0
 129:	1658      	l32i.n	a5, a6, 4
 12b:	2668      	l32i.n	a6, a6, 8
 12d:	ffbe01        	l32r	a0, 28 <os_printf_plus-0x8>
 130:	0000c0        	callx0	a0
 133:	1721b2        	l32i	a11, a1, 92
 136:	fa0b56        	bnez	a11, da <os_printf_plus+0xaa>
 139:	0d2d      	mov.n	a2, a13
 13b:	ffbc01        	l32r	a0, 2c <os_printf_plus-0x4>
 13e:	0000c0        	callx0	a0
 141:	ffe546        	j	da <os_printf_plus+0xaa>
 144:	effe00        	excw
 147:	3f          	.byte 0x3f
 148:	000080        	ret
 14b:	000040        	excw
	...

00000150 <system_restart_core>:
 150:	f0c112        	addi	a1, a1, -16
 153:	0109      	s32i.n	a0, a1, 0
 155:	fffd01        	l32r	a0, 14c <os_printf_plus+0x11c>
 158:	0000c0        	callx0	a0
 15b:	746c      	movi.n	a4, -25
 15d:	fff931        	l32r	a3, 144 <os_printf_plus+0x114>
 160:	0020c0        	memw
 163:	892322        	l32i	a2, a3, 0x224
 166:	102240        	and	a2, a2, a4
 169:	0020c0        	memw
 16c:	fff701        	l32r	a0, 148 <os_printf_plus+0x118>
 16f:	896322        	s32i	a2, a3, 0x224
 172:	0000c0        	callx0	a0
 175:	0108      	l32i.n	a0, a1, 0
 177:	10c112        	addi	a1, a1, 16
 17a:	f00d      	ret.n
 17c:	0f4240        	excw
 17f:	015000        	slli	a5, a0, 32
 182:	000000        	ill
 185:	000000        	ill
 188:	07a120        	excw
 18b:	a12000        	sll	a2, a0
 18e:	000007        	bnone	a0, a0, 192 <system_restart_core+0x42>
 191:	001000        	excw
 194:	000600        	excw
 197:	bfff60        	excw
 19a:	ff          	.byte 0xff
 19b:	ff          	.byte 0xff
 19c:	010010        	slli	a0, a0, 31
 19f:	01ff00        	slli	a15, a15, 32
 1a2:	ff          	.byte 0xff
 1a3:	ff          	.byte 0xff
 1a4:	00fc00        	excw
 1a7:	40c800        	excw
 1aa:	000006        	j	1ae <system_restart_core+0x5e>
 1ad:	fe          	.byte 0xfe
 1ae:	ef          	.byte 0xef
 1af:	3f          	.byte 0x3f
 1b0:	200000        	or	a0, a0, a0
 1b3:	020000        	excw
 1b6:	006000        	rsil	a0, 0
 1b9:	001000        	excw
	...
 1e8:	ffe531        	l32r	a3, 17c <system_restart_core+0x2c>
 1eb:	d0c112        	addi	a1, a1, -48
 1ee:	91d9      	s32i.n	a13, a1, 36
 1f0:	81c9      	s32i.n	a12, a1, 32
 1f2:	7109      	s32i.n	a0, a1, 28
 1f4:	02cd      	mov.n	a12, a2
 1f6:	fff101        	l32r	a0, 1bc <system_restart_core+0x6c>
 1f9:	0000c0        	callx0	a0
 1fc:	023d      	mov.n	a3, a2
 1fe:	ffe021        	l32r	a2, 180 <system_restart_core+0x30>
 201:	000005        	call0	204 <system_restart_core+0xb4>
 204:	ffe021        	l32r	a2, 184 <system_restart_core+0x34>
 207:	f60222        	l8ui	a2, a2, 246
 20a:	ffed01        	l32r	a0, 1c0 <system_restart_core+0x70>
 20d:	0000c0        	callx0	a0
 210:	020c      	movi.n	a2, 0
 212:	ffdd31        	l32r	a3, 188 <system_restart_core+0x38>
 215:	ffeb01        	l32r	a0, 1c4 <system_restart_core+0x74>
 218:	0000c0        	callx0	a0
 21b:	120c      	movi.n	a2, 1
 21d:	ffdb31        	l32r	a3, 18c <system_restart_core+0x3c>
 220:	ffea01        	l32r	a0, 1c8 <system_restart_core+0x78>
 223:	0000c0        	callx0	a0
 226:	ffda31        	l32r	a3, 190 <system_restart_core+0x40>
 229:	090c      	movi.n	a9, 0
 22b:	840c      	movi.n	a4, 8
 22d:	ffd9d1        	l32r	a13, 194 <system_restart_core+0x44>
 230:	0020c0        	memw
 233:	406d92        	s32i	a9, a13, 0x100
 236:	ffd881        	l32r	a8, 198 <system_restart_core+0x48>
 239:	0020c0        	memw
 23c:	402d72        	l32i	a7, a13, 0x100
 23f:	107780        	and	a7, a7, a8
 242:	0020c0        	memw
 245:	406d72        	s32i	a7, a13, 0x100
 248:	063c      	movi.n	a6, 48
 24a:	0020c0        	memw
 24d:	402d52        	l32i	a5, a13, 0x100
 250:	205560        	or	a5, a5, a6
 253:	0020c0        	memw
 256:	406d52        	s32i	a5, a13, 0x100
 259:	420c      	movi.n	a2, 4
 25b:	0020c0        	memw
 25e:	516d22        	s32i	a2, a13, 0x144
 261:	ffce01        	l32r	a0, 19c <system_restart_core+0x4c>
 264:	0020c0        	memw
 267:	436d02        	s32i	a0, a13, 0x10c
 26a:	ffcdb1        	l32r	a11, 1a0 <system_restart_core+0x50>
 26d:	ffcda1        	l32r	a10, 1a4 <system_restart_core+0x54>
 270:	0020c0        	memw
 273:	522d92        	l32i	a9, a13, 0x148
 276:	1099b0        	and	a9, a9, a11
 279:	2099a0        	or	a9, a9, a10
 27c:	0020c0        	memw
 27f:	526d92        	s32i	a9, a13, 0x148
 282:	00ae82        	movi	a8, 0xfffffe00
 285:	80a072        	movi	a7, 128
 288:	0020c0        	memw
 28b:	522d62        	l32i	a6, a13, 0x148
 28e:	106680        	and	a6, a6, a8
 291:	206670        	or	a6, a6, a7
 294:	0020c0        	memw
 297:	526d62        	s32i	a6, a13, 0x148
 29a:	0020c0        	memw
 29d:	472d52        	l32i	a5, a13, 0x11c
 2a0:	01d552        	addmi	a5, a5, 0x100
 2a3:	88c552        	addi	a5, a5, -120
 2a6:	0020c0        	memw
 2a9:	416d52        	s32i	a5, a13, 0x104
 2ac:	0020c0        	memw
 2af:	466d42        	s32i	a4, a13, 0x118
 2b2:	0020c0        	memw
 2b5:	426d32        	s32i	a3, a13, 0x108
 2b8:	c8a022        	movi	a2, 200
 2bb:	ffc401        	l32r	a0, 1cc <system_restart_core+0x7c>
 2be:	0000c0        	callx0	a0
 2c1:	320c      	movi.n	a2, 3
 2c3:	131c      	movi.n	a3, 17
 2c5:	0020c0        	memw
 2c8:	676d32        	s32i	a3, a13, 0x19c
 2cb:	0020c0        	memw
 2ce:	686d22        	s32i	a2, a13, 0x1a0
 2d1:	ffb501        	l32r	a0, 1a8 <system_restart_core+0x58>
 2d4:	0020c0        	memw
 2d7:	436d02        	s32i	a0, a13, 0x10c
 2da:	cfafb2        	movi	a11, -49
 2dd:	0020c0        	memw
 2e0:	402da2        	l32i	a10, a13, 0x100
 2e3:	10aab0        	and	a10, a10, a11
 2e6:	0020c0        	memw
 2e9:	406da2        	s32i	a10, a13, 0x100
 2ec:	ffb901        	l32r	a0, 1d0 <system_restart_core+0x80>
 2ef:	0000c0        	callx0	a0
 2f2:	0c2d      	mov.n	a2, a12
 2f4:	ffb801        	l32r	a0, 1d4 <system_restart_core+0x84>
 2f7:	0000c0        	callx0	a0
 2fa:	ffac51        	l32r	a5, 1ac <system_restart_core+0x5c>
 2fd:	0020c0        	memw
 300:	181c      	movi.n	a8, 17
 302:	676d82        	s32i	a8, a13, 0x19c
 305:	0020c0        	memw
 308:	370c      	movi.n	a7, 3
 30a:	686d72        	s32i	a7, a13, 0x1a0
 30d:	e67c      	movi.n	a6, -2
 30f:	0020c0        	memw
 312:	812542        	l32i	a4, a5, 0x204
 315:	104460        	and	a4, a4, a6
 318:	0020c0        	memw
 31b:	816542        	s32i	a4, a5, 0x204
 31e:	00a122        	movi	a2, 0x100
 321:	ffad01        	l32r	a0, 1d8 <system_restart_core+0x88>
 324:	0000c0        	callx0	a0
 327:	fa7c      	movi.n	a10, -1
 329:	0020c0        	memw
 32c:	506da2        	s32i	a10, a13, 0x140
 32f:	092c      	movi.n	a9, 32
 331:	0020c0        	memw
 334:	516d92        	s32i	a9, a13, 0x144
 337:	0020c0        	memw
 33a:	000c      	movi.n	a0, 0
 33c:	446d02        	s32i	a0, a13, 0x110
 33f:	7ccc      	bnez.n	a12, 34a <system_restart_core+0x1fa>
 341:	0020c0        	memw
 344:	466d02        	s32i	a0, a13, 0x118
 347:	0001c6        	j	352 <system_restart_core+0x202>
 34a:	0020c0        	memw
 34d:	8b0c      	movi.n	a11, 8
 34f:	466db2        	s32i	a11, a13, 0x118
 352:	ffa201        	l32r	a0, 1dc <system_restart_core+0x8c>
 355:	0000c0        	callx0	a0
 358:	ffa201        	l32r	a0, 1e0 <system_restart_core+0x90>
 35b:	0000c0        	callx0	a0
 35e:	ff9421        	l32r	a2, 1b0 <system_restart_core+0x60>
 361:	ff9401        	l32r	a0, 1b4 <system_restart_core+0x64>
 364:	0020c0        	memw
 367:	0029      	s32i.n	a2, a0, 0
 369:	0020c0        	memw
 36c:	00c8      	l32i.n	a12, a0, 0
 36e:	6c8c      	beqz.n	a12, 378 <system_restart_core+0x228>
 370:	0020c0        	memw
 373:	0038      	l32i.n	a3, a0, 0
 375:	ff7356        	bnez	a3, 370 <system_restart_core+0x220>
 378:	012d      	mov.n	a2, a1
 37a:	030c      	movi.n	a3, 0
 37c:	c41c      	movi.n	a4, 28
 37e:	ff9901        	l32r	a0, 1e4 <system_restart_core+0x94>
 381:	0000c0        	callx0	a0
 384:	ff8dc1        	l32r	a12, 1b8 <system_restart_core+0x68>
 387:	020c      	movi.n	a2, 0
 389:	540c      	movi.n	a4, 5
 38b:	013d      	mov.n	a3, a1
 38d:	0149      	s32i.n	a4, a1, 0
 38f:	c41c      	movi.n	a4, 28
 391:	000005        	call0	394 <system_restart_core+0x244>
 394:	0020c0        	memw
 397:	426dc2        	s32i	a12, a13, 0x108
 39a:	7108      	l32i.n	a0, a1, 28
 39c:	81c8      	l32i.n	a12, a1, 32
 39e:	91d8      	l32i.n	a13, a1, 36
 3a0:	30c112        	addi	a1, a1, 48
 3a3:	f00d      	ret.n
	...
 3ad:	f20a      	add.n	a15, a2, a0
 3af:	3f          	.byte 0x3f

000003b0 <system_get_time>:
 3b0:	fffe31        	l32r	a3, 3a8 <system_restart_core+0x258>
 3b3:	fffe21        	l32r	a2, 3ac <system_restart_core+0x25c>
 3b6:	0338      	l32i.n	a3, a3, 0
 3b8:	0020c0        	memw
 3bb:	802222        	l32i	a2, a2, 0x200
 3be:	223a      	add.n	a2, a2, a3
 3c0:	f00d      	ret.n
 3c2:	d00000        	subx2	a0, a0, a0
 3c5:	000002        	l8ui	a0, a0, 0
 3c8:	000000        	ill
	...

000003cc <system_os_post>:
 3cc:	f0c112        	addi	a1, a1, -16
 3cf:	0109      	s32i.n	a0, a1, 0
 3d1:	0c32b6        	bltui	a2, 3, 3e1 <system_restart_core+0x291>
 3d4:	fffc21        	l32r	a2, 3c4 <system_restart_core+0x274>
 3d7:	330c      	movi.n	a3, 3
 3d9:	000005        	call0	3dc <system_restart_core+0x28c>
 3dc:	020c      	movi.n	a2, 0
 3de:	0004c6        	j	3f5 <system_restart_core+0x2a5>
 3e1:	16c222        	addi	a2, a2, 22
 3e4:	742020        	extui	a2, a2, 0, 8
 3e7:	fff801        	l32r	a0, 3c8 <system_restart_core+0x278>
 3ea:	0000c0        	callx0	a0
 3ed:	743020        	extui	a3, a2, 0, 8
 3f0:	fe8356        	bnez	a3, 3dc <system_restart_core+0x28c>
 3f3:	120c      	movi.n	a2, 1
 3f5:	0108      	l32i.n	a0, a1, 0
 3f7:	10c112        	addi	a1, a1, 16
 3fa:	f00d      	ret.n
 3fc:	000e00        	excw
 3ff:	a05260        	addx4	a5, a2, a6

00000400 <system_rtc_mem_write>:
 400:	bfa052        	movi	a5, 191
 403:	143527        	bltu	a5, a2, 41b <system_rtc_mem_write+0x1b>
 406:	139c      	beqz.n	a3, 41b <system_rtc_mem_write+0x1b>
 408:	370c      	movi.n	a7, 3
 40a:	146030        	extui	a6, a3, 0, 2
 40d:	a6cc      	bnez.n	a6, 41b <system_rtc_mem_write+0x1b>
 40f:	1192e0        	slli	a9, a2, 2
 412:	00a382        	movi	a8, 0x300
 415:	c08890        	sub	a8, a8, a9
 418:	03a847        	bge	a8, a4, 41f <system_rtc_mem_write+0x1f>
 41b:	020c      	movi.n	a2, 0
 41d:	f00d      	ret.n
 41f:	0a0747        	bnone	a7, a4, 42d <system_rtc_mem_write+0x2d>
 422:	450c      	movi.n	a5, 4
 424:	414240        	srli	a4, a4, 2
 427:	a04450        	addx4	a4, a4, a5
 42a:	f44040        	extui	a4, a4, 0, 16
 42d:	418240        	srli	a8, a4, 2
 430:	e89c      	beqz.n	a8, 452 <system_rtc_mem_write+0x52>
 432:	fff271        	l32r	a7, 3fc <system_restart_core+0x2ac>
 435:	040c      	movi.n	a4, 0
 437:	624a      	add.n	a6, a2, a4
 439:	a05430        	addx4	a5, a4, a3
 43c:	a06670        	addx4	a6, a6, a7
 43f:	0020c0        	memw
 442:	0558      	l32i.n	a5, a5, 0
 444:	0020c0        	memw
 447:	c06652        	s32i	a5, a6, 0x300
 44a:	441b      	addi.n	a4, a4, 1
 44c:	744040        	extui	a4, a4, 0, 8
 44f:	e43487        	bltu	a4, a8, 437 <system_rtc_mem_write+0x37>
 452:	120c      	movi.n	a2, 1
 454:	f00d      	ret.n
 456:	000000        	ill
 459:	0e          	.byte 0xe
 45a:	526000        	excw

0000045c <system_rtc_mem_read>:
 45c:	bfa052        	movi	a5, 191
 45f:	143527        	bltu	a5, a2, 477 <system_rtc_mem_read+0x1b>
 462:	139c      	beqz.n	a3, 477 <system_rtc_mem_read+0x1b>
 464:	370c      	movi.n	a7, 3
 466:	146030        	extui	a6, a3, 0, 2
 469:	a6cc      	bnez.n	a6, 477 <system_rtc_mem_read+0x1b>
 46b:	1192e0        	slli	a9, a2, 2
 46e:	00a382        	movi	a8, 0x300
 471:	c08890        	sub	a8, a8, a9
 474:	03a847        	bge	a8, a4, 47b <system_rtc_mem_read+0x1f>
 477:	020c      	movi.n	a2, 0
 479:	f00d      	ret.n
 47b:	0a0747        	bnone	a7, a4, 489 <system_rtc_mem_read+0x2d>
 47e:	450c      	movi.n	a5, 4
 480:	414240        	srli	a4, a4, 2
 483:	a04450        	addx4	a4, a4, a5
 486:	f44040        	extui	a4, a4, 0, 16
 489:	418240        	srli	a8, a4, 2
 48c:	e89c      	beqz.n	a8, 4ae <system_rtc_mem_read+0x52>
 48e:	fff271        	l32r	a7, 458 <system_rtc_mem_write+0x58>
 491:	040c      	movi.n	a4, 0
 493:	524a      	add.n	a5, a2, a4
 495:	a06430        	addx4	a6, a4, a3
 498:	a05570        	addx4	a5, a5, a7
 49b:	0020c0        	memw
 49e:	c02552        	l32i	a5, a5, 0x300
 4a1:	0020c0        	memw
 4a4:	0659      	s32i.n	a5, a6, 0
 4a6:	441b      	addi.n	a4, a4, 1
 4a8:	744040        	extui	a4, a4, 0, 8
 4ab:	e43487        	bltu	a4, a8, 493 <system_rtc_mem_read+0x37>
 4ae:	120c      	movi.n	a2, 1
 4b0:	f00d      	ret.n

Disassembly of section .irom0.text:

00000970 <system_restore-0x430>:
     970:	000000        	ill
     973:	ff3100        	excw
     976:	ff          	.byte 0xff
     977:	140c      	movi.n	a4, 1
     979:	932420        	movnez	a2, a4, a2
     97c:	004322        	s8i	a2, a3, 0
     97f:	f00d      	ret.n
     981:	000000        	ill
     984:	000000        	ill
     987:	ff2100        	excw
     98a:	ff          	.byte 0xff
     98b:	000222        	l8ui	a2, a2, 0
     98e:	f00d      	ret.n
     990:	000004        	excw
     993:	000400        	excw
     996:	500000        	excw
     999:	000001        	l32r	a0, fffc099c <system_get_sdk_version+0xfffbcc98>
     99c:	000004        	excw
     99f:	000400        	excw
     9a2:	300000        	xor	a0, a0, a0
     9a5:	000000        	ill
     9a8:	00bc      	beqz.n	a0, 9dc <system_restore-0x3c4>
	...
     9ce:	120000        	excw
     9d1:	c9f0c1        	l32r	a12, ffff3194 <system_get_sdk_version+0xfffef490>
     9d4:	012921        	l32r	a2, fffc0e78 <system_get_sdk_version+0xfffbd174>
     9d7:	1109      	s32i.n	a0, a1, 4
     9d9:	fff401        	l32r	a0, 9ac <system_restore-0x3f4>
     9dc:	0000c0        	callx0	a0
     9df:	42cc      	bnez.n	a2, 9e7 <system_restore-0x3b9>
     9e1:	fff301        	l32r	a0, 9b0 <system_restore-0x3f0>
     9e4:	0000c0        	callx0	a0
     9e7:	fff301        	l32r	a0, 9b4 <system_restore-0x3ec>
     9ea:	0000c0        	callx0	a0
     9ed:	a2ac      	beqz.n	a2, a1b <system_restore-0x385>
     9ef:	ffe8c1        	l32r	a12, 990 <system_restore-0x410>
     9f2:	fcccc2        	addi	a12, a12, -4
     9f5:	000c02        	l8ui	a0, a12, 0
     9f8:	10dc      	bnez.n	a0, a0d <system_restore-0x393>
     9fa:	ffe621        	l32r	a2, 994 <system_restore-0x40c>
     9fd:	ffe631        	l32r	a3, 998 <system_restore-0x408>
     a00:	040c      	movi.n	a4, 0
     a02:	ffed01        	l32r	a0, 9b8 <system_restore-0x3e8>
     a05:	0000c0        	callx0	a0
     a08:	100c      	movi.n	a0, 1
     a0a:	004c02        	s8i	a0, a12, 0
     a0d:	ffeb01        	l32r	a0, 9bc <system_restore-0x3e4>
     a10:	0000c0        	callx0	a0
     a13:	180c02        	l8ui	a0, a12, 24
     a16:	629c      	beqz.n	a2, a30 <system_restore-0x370>
     a18:	141026        	beqi	a0, 1, a30 <system_restore-0x370>
     a1b:	020c      	movi.n	a2, 0
     a1d:	000186        	j	a27 <system_restore-0x379>
     a20:	0128      	l32i.n	a2, a1, 0
     a22:	834022        	s8i	a2, a0, 131
     a25:	f27c      	movi.n	a2, -1
     a27:	21c8      	l32i.n	a12, a1, 8
     a29:	1108      	l32i.n	a0, a1, 4
     a2b:	10c112        	addi	a1, a1, 16
     a2e:	f00d      	ret.n
     a30:	30ec      	bnez.n	a0, a57 <system_restore-0x349>
     a32:	120c      	movi.n	a2, 1
     a34:	ffe301        	l32r	a0, 9c0 <system_restore-0x3e0>
     a37:	0000c0        	callx0	a0
     a3a:	ffd821        	l32r	a2, 99c <system_restore-0x404>
     a3d:	ffe101        	l32r	a0, 9c4 <system_restore-0x3dc>
     a40:	0000c0        	callx0	a0
     a43:	ffd721        	l32r	a2, 9a0 <system_restore-0x400>
     a46:	a30c      	movi.n	a3, 10
     a48:	040c      	movi.n	a4, 0
     a4a:	150c      	movi.n	a5, 1
     a4c:	ffdf01        	l32r	a0, 9c8 <system_restore-0x3d8>
     a4f:	0000c0        	callx0	a0
     a52:	130c      	movi.n	a3, 1
     a54:	184c32        	s8i	a3, a12, 24
     a57:	190c02        	l8ui	a0, a12, 25
     a5a:	a40c      	movi.n	a4, 10
     a5c:	001b      	addi.n	a0, a0, 1
     a5e:	740000        	extui	a0, a0, 0, 8
     a61:	194c02        	s8i	a0, a12, 25
     a64:	0db407        	bgeu	a4, a0, a75 <system_restore-0x32b>
     a67:	ffcf21        	l32r	a2, 9a4 <system_restore-0x3fc>
     a6a:	ffd801        	l32r	a0, 9cc <system_restore-0x3d4>
     a6d:	0000c0        	callx0	a0
     a70:	a00c      	movi.n	a0, 10
     a72:	194c02        	s8i	a0, a12, 25
     a75:	a20c      	movi.n	a2, 10
     a77:	1a0c32        	l8ui	a3, a12, 26
     a7a:	ffcb41        	l32r	a4, 9a8 <system_restore-0x3f8>
     a7d:	330a      	add.n	a3, a3, a0
     a7f:	034a      	add.n	a0, a3, a4
     a81:	9ba237        	bge	a2, a3, a20 <system_restore-0x380>
     a84:	0148      	l32i.n	a4, a1, 0
     a86:	794042        	s8i	a4, a0, 121
     a89:	ffe606        	j	a25 <system_restore-0x37b>
     a8c:	000010        	excw
     a8f:	014000        	slli	a4, a0, 32
     a92:	880000        	excw
     a95:	000000        	ill
     a98:	001b      	addi.n	a0, a0, 1
     a9a:	040000        	extui	a0, a0, 0, 1
	...
     abd:	000000        	ill
     ac0:	f0c112        	addi	a1, a1, -16
     ac3:	31e9      	s32i.n	a14, a1, 12
     ac5:	0109      	s32i.n	a0, a1, 0
     ac7:	21d9      	s32i.n	a13, a1, 8
     ac9:	11c9      	s32i.n	a12, a1, 4
     acb:	fff0c1        	l32r	a12, a8c <system_restore-0x314>
     ace:	0d0c      	movi.n	a13, 0
     ad0:	090c02        	l8ui	a0, a12, 9
     ad3:	084cd2        	s8i	a13, a12, 8
     ad6:	088016        	beqz	a0, b62 <system_restore-0x23e>
     ad9:	ffede1        	l32r	a14, a90 <system_restore-0x310>
     adc:	fff101        	l32r	a0, aa0 <system_restore-0x300>
     adf:	0000c0        	callx0	a0
     ae2:	72cc      	bnez.n	a2, aed <system_restore-0x2b3>
     ae4:	fff001        	l32r	a0, aa4 <system_restore-0x2fc>
     ae7:	0000c0        	callx0	a0
     aea:	071256        	bnez	a2, b5f <system_restore-0x241>
     aed:	0a0c42        	l8ui	a4, a12, 10
     af0:	04ea      	add.n	a0, a4, a14
     af2:	000002        	l8ui	a0, a0, 0
     af5:	571026        	beqi	a0, 1, b50 <system_restore-0x250>
     af8:	4e2026        	beqi	a0, 2, b4a <system_restore-0x256>
     afb:	3f3026        	beqi	a0, 3, b3e <system_restore-0x262>
     afe:	364026        	beqi	a0, 4, b38 <system_restore-0x268>
     b01:	275026        	beqi	a0, 5, b2c <system_restore-0x274>
     b04:	0b6066        	bnei	a0, 6, b13 <system_restore-0x28d>
     b07:	ffe321        	l32r	a2, a94 <system_restore-0x30c>
     b0a:	e40c32        	l8ui	a3, a12, 228
     b0d:	022fc5        	call0	2e0c <wifi_softap_get_config_default+0x9c>
     b10:	0a0c42        	l8ui	a4, a12, 10
     b13:	090c02        	l8ui	a0, a12, 9
     b16:	441b      	addi.n	a4, a4, 1
     b18:	744040        	extui	a4, a4, 0, 8
     b1b:	000b      	addi.n	a0, a0, -1
     b1d:	740000        	extui	a0, a0, 0, 8
     b20:	094c02        	s8i	a0, a12, 9
     b23:	2f9466        	bnei	a4, 10, b56 <system_restore-0x24a>
     b26:	0a4cd2        	s8i	a13, a12, 10
     b29:	000b06        	j	b59 <system_restore-0x247>
     b2c:	730c22        	l8ui	a2, a12, 115
     b2f:	740c32        	l8ui	a3, a12, 116
     b32:	0117c5        	call0	1cb0 <wifi_set_broadcast_if+0xa0>
     b35:	fff5c6        	j	b10 <system_restore-0x290>
     b38:	000005        	call0	b3c <system_restore-0x264>
     b3b:	fff446        	j	b10 <system_restore-0x290>
     b3e:	ffd621        	l32r	a2, a98 <system_restore-0x308>
     b41:	720c32        	l8ui	a3, a12, 114
     b44:	018345        	call0	237c <wifi_station_ap_number_set+0x1e0>
     b47:	fff146        	j	b10 <system_restore-0x290>
     b4a:	000005        	call0	b4c <system_restore-0x254>
     b4d:	ffefc6        	j	b10 <system_restore-0x290>
     b50:	000005        	call0	b54 <system_restore-0x24c>
     b53:	ffee46        	j	b10 <system_restore-0x290>
     b56:	0a4c42        	s8i	a4, a12, 10
     b59:	f7f056        	bnez	a0, adc <system_restore-0x2c4>
     b5c:	000086        	j	b62 <system_restore-0x23e>
     b5f:	090c02        	l8ui	a0, a12, 9
     b62:	ffcee1        	l32r	a14, a9c <system_restore-0x304>
     b65:	60dc      	bnez.n	a0, b7f <system_restore-0x221>
     b67:	0e2d      	mov.n	a2, a14
     b69:	ffcf01        	l32r	a0, aa8 <system_restore-0x2f8>
     b6c:	0000c0        	callx0	a0
     b6f:	0108      	l32i.n	a0, a1, 0
     b71:	084cd2        	s8i	a13, a12, 8
     b74:	31e8      	l32i.n	a14, a1, 12
     b76:	11c8      	l32i.n	a12, a1, 4
     b78:	21d8      	l32i.n	a13, a1, 8
     b7a:	10c112        	addi	a1, a1, 16
     b7d:	f00d      	ret.n
     b7f:	ffcb01        	l32r	a0, aac <system_restore-0x2f4>
     b82:	0000c0        	callx0	a0
     b85:	42cc      	bnez.n	a2, b8d <system_restore-0x213>
     b87:	ffca01        	l32r	a0, ab0 <system_restore-0x2f0>
     b8a:	0000c0        	callx0	a0
     b8d:	120c      	movi.n	a2, 1
     b8f:	ffc901        	l32r	a0, ab4 <system_restore-0x2ec>
     b92:	0000c0        	callx0	a0
     b95:	0e2d      	mov.n	a2, a14
     b97:	ffc801        	l32r	a0, ab8 <system_restore-0x2e8>
     b9a:	0000c0        	callx0	a0
     b9d:	0e2d      	mov.n	a2, a14
     b9f:	a30c      	movi.n	a3, 10
     ba1:	040c      	movi.n	a4, 0
     ba3:	150c      	movi.n	a5, 1
     ba5:	ffc501        	l32r	a0, abc <system_restore-0x2e4>
     ba8:	0000c0        	callx0	a0
     bab:	1d0c      	movi.n	a13, 1
     bad:	ffef86        	j	b6f <system_restore-0x231>
     bb0:	000000        	ill
     bb3:	c11200        	mul16u	a1, a2, a0
     bb6:	0109f0        	slli	a0, a9, 17
     bb9:	fffd01        	l32r	a0, bb0 <system_restore-0x1f0>
     bbc:	0000c0        	callx0	a0
     bbf:	0108      	l32i.n	a0, a1, 0
     bc1:	10c112        	addi	a1, a1, 16
     bc4:	f00d      	ret.n
     bc6:	000000        	ill
     bc9:	000000        	ill
     bcc:	020c      	movi.n	a2, 0
     bce:	f0c112        	addi	a1, a1, -16
     bd1:	0109      	s32i.n	a0, a1, 0
     bd3:	fffd01        	l32r	a0, bc8 <system_restore-0x1d8>
     bd6:	0000c0        	callx0	a0
     bd9:	f42020        	extui	a2, a2, 0, 16
     bdc:	0108      	l32i.n	a0, a1, 0
     bde:	10c112        	addi	a1, a1, 16
     be1:	f00d      	ret.n
     be3:	000000        	ill
     be6:	120000        	excw
     be9:	09f0c1        	l32r	a12, fffc33ac <system_get_sdk_version+0xfffbf6a8>
     bec:	fd0101        	l32r	a0, fffffff0 <system_get_sdk_version+0xffffc2ec>
     bef:	ff          	.byte 0xff
     bf0:	0000c0        	callx0	a0
     bf3:	f42020        	extui	a2, a2, 0, 16
     bf6:	0108      	l32i.n	a0, a1, 0
     bf8:	10c112        	addi	a1, a1, 16
     bfb:	f00d      	ret.n
     bfd:	000000        	ill
     c00:	effe00        	excw
     c03:	3f          	.byte 0x3f
     c04:	ff          	.byte 0xff
     c05:	ffff00        	excw
     c08:	07a120        	excw
     c0b:	a12000        	sll	a2, a0
     c0e:	000007        	bnone	a0, a0, c12 <system_restore-0x18e>
     c11:	000a      	add.n	a0, a0, a0
     c13:	000060        	excw
	...
     c36:	0c0000        	excw
     c39:	c11242        	l16ui	a4, a2, 0x182
     c3c:	81c9d0        	src	a12, a9, a13
     c3f:	7109      	s32i.n	a0, a1, 28
     c41:	ffd8c5        	call0	9d0 <system_restore-0x3d0>
     c44:	ffefc1        	l32r	a12, c00 <system_restore-0x1a0>
     c47:	160266        	bnei	a2, -1, c61 <system_restore-0x13f>
     c4a:	020c      	movi.n	a2, 0
     c4c:	fff201        	l32r	a0, c14 <system_restore-0x18c>
     c4f:	0000c0        	callx0	a0
     c52:	ffec01        	l32r	a0, c04 <system_restore-0x19c>
     c55:	0020c0        	memw
     c58:	866c02        	s32i	a0, a12, 0x218
     c5b:	ffef01        	l32r	a0, c18 <system_restore-0x188>
     c5e:	0000c0        	callx0	a0
     c61:	020c      	movi.n	a2, 0
     c63:	013d      	mov.n	a3, a1
     c65:	c41c      	movi.n	a4, 28
     c67:	ffed01        	l32r	a0, c1c <system_restore-0x184>
     c6a:	0000c0        	callx0	a0
     c6d:	0108      	l32i.n	a0, a1, 0
     c6f:	1e3026        	beqi	a0, 3, c91 <system_restore-0x10f>
     c72:	1b2026        	beqi	a0, 2, c91 <system_restore-0x10f>
     c75:	012d      	mov.n	a2, a1
     c77:	030c      	movi.n	a3, 0
     c79:	c41c      	movi.n	a4, 28
     c7b:	ffe901        	l32r	a0, c20 <system_restore-0x180>
     c7e:	0000c0        	callx0	a0
     c81:	013d      	mov.n	a3, a1
     c83:	420c      	movi.n	a2, 4
     c85:	c41c      	movi.n	a4, 28
     c87:	0129      	s32i.n	a2, a1, 0
     c89:	020c      	movi.n	a2, 0
     c8b:	ffe601        	l32r	a0, c24 <system_restore-0x17c>
     c8e:	0000c0        	callx0	a0
     c91:	020c      	movi.n	a2, 0
     c93:	ffdd31        	l32r	a3, c08 <system_restore-0x198>
     c96:	ffe401        	l32r	a0, c28 <system_restore-0x178>
     c99:	0000c0        	callx0	a0
     c9c:	120c      	movi.n	a2, 1
     c9e:	ffdb31        	l32r	a3, c0c <system_restore-0x194>
     ca1:	ffe201        	l32r	a0, c2c <system_restore-0x174>
     ca4:	0000c0        	callx0	a0
     ca7:	ffe201        	l32r	a0, c30 <system_restore-0x170>
     caa:	0000c0        	callx0	a0
     cad:	3b0c      	movi.n	a11, 3
     caf:	ffd861        	l32r	a6, c10 <system_restore-0x190>
     cb2:	0020c0        	memw
     cb5:	d226a2        	l32i	a10, a6, 0x348
     cb8:	20aab0        	or	a10, a10, a11
     cbb:	0020c0        	memw
     cbe:	d266a2        	s32i	a10, a6, 0x348
     cc1:	00a192        	movi	a9, 0x100
     cc4:	0020c0        	memw
     cc7:	862c82        	l32i	a8, a12, 0x218
     cca:	208890        	or	a8, a8, a9
     ccd:	0020c0        	memw
     cd0:	866c82        	s32i	a8, a12, 0x218
     cd3:	c77c      	movi.n	a7, -4
     cd5:	0020c0        	memw
     cd8:	d22652        	l32i	a5, a6, 0x348
     cdb:	105570        	and	a5, a5, a7
     cde:	0020c0        	memw
     ce1:	d26652        	s32i	a5, a6, 0x348
     ce4:	ffae42        	movi	a4, 0xfffffeff
     ce7:	0020c0        	memw
     cea:	862c32        	l32i	a3, a12, 0x218
     ced:	103340        	and	a3, a3, a4
     cf0:	0020c0        	memw
     cf3:	866c32        	s32i	a3, a12, 0x218
     cf6:	81c8      	l32i.n	a12, a1, 32
     cf8:	ffcf01        	l32r	a0, c34 <system_restore-0x16c>
     cfb:	0000c0        	callx0	a0
     cfe:	7108      	l32i.n	a0, a1, 28
     d00:	30c112        	addi	a1, a1, 48
     d03:	f00d      	ret.n
	...
     d29:	000000        	ill
     d2c:	f0c112        	addi	a1, a1, -16
     d2f:	0109      	s32i.n	a0, a1, 0
     d31:	000005        	call0	d34 <system_restore-0x6c>
     d34:	020d      	mov.n	a0, a2
     d36:	1129      	s32i.n	a2, a1, 4
     d38:	043226        	beqi	a2, 3, d40 <system_restore-0x60>
     d3b:	1129      	s32i.n	a2, a1, 4
     d3d:	071266        	bnei	a2, 1, d48 <system_restore-0x58>
     d40:	fff601        	l32r	a0, d18 <system_restore-0x88>
     d43:	0000c0        	callx0	a0
     d46:	1108      	l32i.n	a0, a1, 4
     d48:	023026        	beqi	a0, 3, d4e <system_restore-0x52>
     d4b:	052066        	bnei	a0, 2, d54 <system_restore-0x4c>
     d4e:	fff301        	l32r	a0, d1c <system_restore-0x84>
     d51:	0000c0        	callx0	a0
     d54:	ffed21        	l32r	a2, d08 <system_restore-0x98>
     d57:	fff201        	l32r	a0, d20 <system_restore-0x80>
     d5a:	0000c0        	callx0	a0
     d5d:	ffeb21        	l32r	a2, d0c <system_restore-0x94>
     d60:	ffec31        	l32r	a3, d10 <system_restore-0x90>
     d63:	040c      	movi.n	a4, 0
     d65:	ffef01        	l32r	a0, d24 <system_restore-0x7c>
     d68:	0000c0        	callx0	a0
     d6b:	ffea21        	l32r	a2, d14 <system_restore-0x8c>
     d6e:	64a032        	movi	a3, 100
     d71:	040c      	movi.n	a4, 0
     d73:	150c      	movi.n	a5, 1
     d75:	ffec01        	l32r	a0, d28 <system_restore-0x78>
     d78:	0000c0        	callx0	a0
     d7b:	0108      	l32i.n	a0, a1, 0
     d7d:	10c112        	addi	a1, a1, 16
     d80:	f00d      	ret.n
	...

00000da0 <system_restore>:
     da0:	78a322        	movi	a2, 0x378
     da3:	f0c112        	addi	a1, a1, -16
     da6:	11c9      	s32i.n	a12, a1, 4
     da8:	0109      	s32i.n	a0, a1, 0
     daa:	fff801        	l32r	a0, d8c <system_restore-0x14>
     dad:	0000c0        	callx0	a0
     db0:	02cd      	mov.n	a12, a2
     db2:	c2bc      	beqz.n	a2, df2 <system_restore+0x52>
     db4:	ffa032        	movi	a3, 255
     db7:	78a342        	movi	a4, 0x378
     dba:	fff501        	l32r	a0, d90 <system_restore-0x10>
     dbd:	0000c0        	callx0	a0
     dc0:	0c2d      	mov.n	a2, a12
     dc2:	fff031        	l32r	a3, d84 <system_restore-0x1c>
     dc5:	840c      	movi.n	a4, 8
     dc7:	fff301        	l32r	a0, d94 <system_restore-0xc>
     dca:	0000c0        	callx0	a0
     dcd:	ffee31        	l32r	a3, d88 <system_restore-0x18>
     dd0:	0338      	l32i.n	a3, a3, 0
     dd2:	1328      	l32i.n	a2, a3, 4
     dd4:	3338      	l32i.n	a3, a3, 12
     dd6:	fff001        	l32r	a0, d98 <system_restore-0x8>
     dd9:	0000c0        	callx0	a0
     ddc:	0c3d      	mov.n	a3, a12
     dde:	78a342        	movi	a4, 0x378
     de1:	fdc222        	addi	a2, a2, -3
     de4:	f42020        	extui	a2, a2, 0, 16
     de7:	000005        	call0	de8 <system_restore+0x48>
     dea:	0c2d      	mov.n	a2, a12
     dec:	ffec01        	l32r	a0, d9c <system_restore-0x4>
     def:	0000c0        	callx0	a0
     df2:	11c8      	l32i.n	a12, a1, 4
     df4:	0108      	l32i.n	a0, a1, 0
     df6:	10c112        	addi	a1, a1, 16
     df9:	f00d      	ret.n
     dfb:	000000        	ill
	...

00000e00 <system_get_flash_size_map>:
     e00:	020c      	movi.n	a2, 0
     e02:	840c      	movi.n	a4, 8
     e04:	f0c112        	addi	a1, a1, -16
     e07:	013d      	mov.n	a3, a1
     e09:	2109      	s32i.n	a0, a1, 8
     e0b:	fffc01        	l32r	a0, dfc <system_restore+0x5c>
     e0e:	0000c0        	callx0	a0
     e11:	0128      	l32i.n	a2, a1, 0
     e13:	2108      	l32i.n	a0, a1, 8
     e15:	352c20        	extui	a2, a2, 28, 4
     e18:	10c112        	addi	a1, a1, 16
     e1b:	f00d      	ret.n
     e1d:	000000        	ill
     e20:	000000        	ill
	...

00000e24 <system_get_boot_version>:
     e24:	ffff21        	l32r	a2, e20 <system_get_flash_size_map+0x20>
     e27:	742222        	l32i	a2, a2, 0x1d0
     e2a:	442820        	extui	a2, a2, 8, 5
     e2d:	f00d      	ret.n
     e2f:	006000        	rsil	a0, 0
     e32:	000000        	ill
     e35:	000000        	ill
     e38:	f0c112        	addi	a1, a1, -16
     e3b:	0109      	s32i.n	a0, a1, 0
     e3d:	000005        	call0	e40 <system_get_boot_version+0x1c>
     e40:	0d32b6        	bltui	a2, 3, e51 <system_get_boot_version+0x2d>
     e43:	f01c      	movi.n	a0, 31
     e45:	081207        	beq	a2, a0, e51 <system_get_boot_version+0x2d>
     e48:	120c      	movi.n	a2, 1
     e4a:	0108      	l32i.n	a0, a1, 0
     e4c:	10c112        	addi	a1, a1, 16
     e4f:	f00d      	ret.n
     e51:	fff721        	l32r	a2, e30 <system_get_boot_version+0xc>
     e54:	fff801        	l32r	a0, e34 <system_get_boot_version+0x10>
     e57:	0000c0        	callx0	a0
     e5a:	020c      	movi.n	a2, 0
     e5c:	fffa86        	j	e4a <system_get_boot_version+0x26>
     e5f:	000000        	ill
	...

00000e64 <system_get_test_result>:
     e64:	f0c112        	addi	a1, a1, -16
     e67:	0109      	s32i.n	a0, a1, 0
     e69:	fffcc5        	call0	e38 <system_get_boot_version+0x14>
     e6c:	fffd41        	l32r	a4, e60 <system_get_boot_version+0x3c>
     e6f:	742442        	l32i	a4, a4, 0x1d0
     e72:	f07c      	movi.n	a0, -1
     e74:	044d40        	extui	a4, a4, 13, 1
     e77:	930420        	movnez	a0, a4, a2
     e7a:	002d      	mov.n	a2, a0
     e7c:	0108      	l32i.n	a0, a1, 0
     e7e:	10c112        	addi	a1, a1, 16
     e81:	f00d      	ret.n
     e83:	000000        	ill
     e86:	000000        	ill
     e89:	000010        	excw

00000e8c <system_get_userbin_addr>:
     e8c:	f0c112        	addi	a1, a1, -16
     e8f:	21c9      	s32i.n	a12, a1, 8
     e91:	fffcc1        	l32r	a12, e84 <system_get_test_result+0x20>
     e94:	1109      	s32i.n	a0, a1, 4
     e96:	7d0c02        	l8ui	a0, a12, 125
     e99:	7c0c22        	l8ui	a2, a12, 124
     e9c:	410700        	srli	a0, a0, 7
     e9f:	90dc      	bnez.n	a0, ebc <system_get_userbin_addr+0x30>
     ea1:	596227        	bbci	a2, 2, efe <system_get_userbin_addr+0x72>
     ea4:	810c22        	l8ui	a2, a12, 129
     ea7:	830c42        	l8ui	a4, a12, 131
     eaa:	820c32        	l8ui	a3, a12, 130
     ead:	114400        	slli	a4, a4, 16
     eb0:	113380        	slli	a3, a3, 8
     eb3:	203340        	or	a3, a3, a4
     eb6:	202230        	or	a2, a2, a3
     eb9:	000e06        	j	ef5 <system_get_userbin_addr+0x69>
     ebc:	000005        	call0	ec0 <system_get_userbin_addr+0x34>
     ebf:	0129      	s32i.n	a2, a1, 0
     ec1:	000005        	call0	ec4 <system_get_userbin_addr+0x38>
     ec4:	22dc      	bnez.n	a2, eda <system_get_userbin_addr+0x4e>
     ec6:	fff051        	l32r	a5, e88 <system_get_test_result+0x24>
     ec9:	7d0c62        	l8ui	a6, a12, 125
     ecc:	020c      	movi.n	a2, 0
     ece:	446060        	extui	a6, a6, 0, 5
     ed1:	e1c662        	addi	a6, a6, -31
     ed4:	932560        	movnez	a2, a5, a6
     ed7:	000686        	j	ef5 <system_get_userbin_addr+0x69>
     eda:	0108      	l32i.n	a0, a1, 0
     edc:	740000        	extui	a0, a0, 0, 8
     edf:	d08c      	beqz.n	a0, ef0 <system_get_userbin_addr+0x64>
     ee1:	0250e6        	bgei	a0, 5, ee7 <system_get_userbin_addr+0x5b>
     ee4:	2e20e6        	bgei	a0, 2, f16 <system_get_userbin_addr+0x8a>
     ee7:	0270e6        	bgei	a0, 7, eed <system_get_userbin_addr+0x61>
     eea:	2e50e6        	bgei	a0, 5, f1c <system_get_userbin_addr+0x90>
     eed:	000046        	j	ef2 <system_get_userbin_addr+0x66>
     ef0:	104c      	movi.n	a0, 65
     ef2:	112040        	slli	a2, a0, 12
     ef5:	21c8      	l32i.n	a12, a1, 8
     ef7:	1108      	l32i.n	a0, a1, 4
     ef9:	10c112        	addi	a1, a1, 16
     efc:	f00d      	ret.n
     efe:	7e0c22        	l8ui	a2, a12, 126
     f01:	800c42        	l8ui	a4, a12, 128
     f04:	7f0c32        	l8ui	a3, a12, 127
     f07:	114400        	slli	a4, a4, 16
     f0a:	113380        	slli	a3, a3, 8
     f0d:	203340        	or	a3, a3, a4
     f10:	202230        	or	a2, a2, a3
     f13:	fff786        	j	ef5 <system_get_userbin_addr+0x69>
     f16:	81a002        	movi	a0, 129
     f19:	fff546        	j	ef2 <system_get_userbin_addr+0x66>
     f1c:	01a102        	movi	a0, 0x101
     f1f:	fff3c6        	j	ef2 <system_get_userbin_addr+0x66>
     f22:	000000        	ill
     f25:	000000        	ill

00000f28 <system_get_boot_mode>:
     f28:	ffff51        	l32r	a5, f24 <system_get_userbin_addr+0x98>
     f2b:	7d0552        	l8ui	a5, a5, 125
     f2e:	f61c      	movi.n	a6, 31
     f30:	442050        	extui	a2, a5, 0, 5
     f33:	0732a6        	blti	a2, 3, f3e <system_get_boot_mode+0x16>
     f36:	041267        	beq	a2, a6, f3e <system_get_boot_mode+0x16>
     f39:	412750        	srli	a2, a5, 7
     f3c:	f00d      	ret.n
     f3e:	120c      	movi.n	a2, 1
     f40:	f00d      	ret.n
     f42:	800000        	add	a0, a0, a0
     f45:	000000        	ill
     f48:	0000c0        	callx0	a0
     f4b:	010000        	slli	a0, a0, 32
     f4e:	e00000        	subx4	a0, a0, a0
	...
     f5d:	000000        	ill
     f60:	0000a0        	jx	a0
	...

00000f90 <system_restart_enhance>:
     f90:	e0c112        	addi	a1, a1, -32
     f93:	2109      	s32i.n	a0, a1, 8
     f95:	31c9      	s32i.n	a12, a1, 12
     f97:	41d9      	s32i.n	a13, a1, 16
     f99:	02cd      	mov.n	a12, a2
     f9b:	03dd      	mov.n	a13, a3
     f9d:	ffe985        	call0	e38 <system_get_boot_version+0x14>
     fa0:	050216        	beqz	a2, ff4 <system_restart_enhance+0x64>
     fa3:	0cfc      	bnez.n	a12, fd7 <system_restart_enhance+0x47>
     fa5:	020c      	movi.n	a2, 0
     fa7:	013d      	mov.n	a3, a1
     fa9:	840c      	movi.n	a4, 8
     fab:	fff101        	l32r	a0, f70 <system_get_boot_mode+0x48>
     fae:	0000c0        	callx0	a0
     fb1:	0108      	l32i.n	a0, a1, 0
     fb3:	350c00        	extui	a0, a0, 28, 4
     fb6:	096016        	beqz	a0, 1050 <system_restart_enhance+0xc0>
     fb9:	022066        	bnei	a0, 2, fbf <system_restart_enhance+0x2f>
     fbc:	002406        	j	1050 <system_restart_enhance+0xc0>
     fbf:	023066        	bnei	a0, 3, fc5 <system_restart_enhance+0x35>
     fc2:	002286        	j	1050 <system_restart_enhance+0xc0>
     fc5:	024066        	bnei	a0, 4, fcb <system_restart_enhance+0x3b>
     fc8:	002106        	j	1050 <system_restart_enhance+0xc0>
     fcb:	ffde21        	l32r	a2, f44 <system_get_boot_mode+0x1c>
     fce:	ffe901        	l32r	a0, f74 <system_get_boot_mode+0x4c>
     fd1:	0000c0        	callx0	a0
     fd4:	000706        	j	ff4 <system_restart_enhance+0x64>
     fd7:	101c66        	bnei	a12, 1, feb <system_restart_enhance+0x5b>
     fda:	000005        	call0	fdc <system_restart_enhance+0x4c>
     fdd:	02ec      	bnez.n	a2, 1001 <system_restart_enhance+0x71>
     fdf:	ffda21        	l32r	a2, f48 <system_get_boot_mode+0x20>
     fe2:	ffe501        	l32r	a0, f78 <system_get_boot_mode+0x50>
     fe5:	0000c0        	callx0	a0
     fe8:	000206        	j	ff4 <system_restart_enhance+0x64>
     feb:	ffd821        	l32r	a2, f4c <system_get_boot_mode+0x24>
     fee:	ffe301        	l32r	a0, f7c <system_get_boot_mode+0x54>
     ff1:	0000c0        	callx0	a0
     ff4:	020c      	movi.n	a2, 0
     ff6:	31c8      	l32i.n	a12, a1, 12
     ff8:	41d8      	l32i.n	a13, a1, 16
     ffa:	2108      	l32i.n	a0, a1, 8
     ffc:	20c112        	addi	a1, a1, 32
     fff:	f00d      	ret.n
    1001:	ffd321        	l32r	a2, f50 <system_get_boot_mode+0x28>
    1004:	0d3d      	mov.n	a3, a13
    1006:	ffde01        	l32r	a0, f80 <system_get_boot_mode+0x58>
    1009:	0000c0        	callx0	a0
    100c:	4168d0        	srli	a6, a13, 8
    100f:	f540d0        	extui	a4, a13, 16, 16
    1012:	ffd051        	l32r	a5, f54 <system_get_boot_mode+0x2c>
    1015:	ffd031        	l32r	a3, f58 <system_get_boot_mode+0x30>
    1018:	7e45d2        	s8i	a13, a5, 126
    101b:	0338      	l32i.n	a3, a3, 0
    101d:	804542        	s8i	a4, a5, 128
    1020:	7f4562        	s8i	a6, a5, 127
    1023:	7d0542        	l8ui	a4, a5, 125
    1026:	bfa062        	movi	a6, 191
    1029:	104460        	and	a4, a4, a6
    102c:	7d4542        	s8i	a4, a5, 125
    102f:	1328      	l32i.n	a2, a3, 4
    1031:	3338      	l32i.n	a3, a3, 12
    1033:	ffd401        	l32r	a0, f84 <system_get_boot_mode+0x5c>
    1036:	0000c0        	callx0	a0
    1039:	ffc831        	l32r	a3, f5c <system_get_boot_mode+0x34>
    103c:	78a342        	movi	a4, 0x378
    103f:	fdc222        	addi	a2, a2, -3
    1042:	f42020        	extui	a2, a2, 0, 16
    1045:	000005        	call0	1048 <system_restart_enhance+0xb8>
    1048:	000005        	call0	104c <system_restart_enhance+0xbc>
    104b:	120c      	movi.n	a2, 1
    104d:	ffe946        	j	ff6 <system_restart_enhance+0x66>
    1050:	000005        	call0	1054 <system_restart_enhance+0xc4>
    1053:	02cd      	mov.n	a12, a2
    1055:	0d3d      	mov.n	a3, a13
    1057:	ffc221        	l32r	a2, f60 <system_get_boot_mode+0x38>
    105a:	ffcb01        	l32r	a0, f88 <system_get_boot_mode+0x60>
    105d:	0000c0        	callx0	a0
    1060:	ffc231        	l32r	a3, f68 <system_get_boot_mode+0x40>
    1063:	f560d0        	extui	a6, a13, 16, 16
    1066:	4198c0        	srli	a9, a12, 8
    1069:	f580c0        	extui	a8, a12, 16, 16
    106c:	ffbe51        	l32r	a5, f64 <system_get_boot_mode+0x3c>
    106f:	4178d0        	srli	a7, a13, 8
    1072:	824572        	s8i	a7, a5, 130
    1075:	8145d2        	s8i	a13, a5, 129
    1078:	804582        	s8i	a8, a5, 128
    107b:	7f4592        	s8i	a9, a5, 127
    107e:	7e45c2        	s8i	a12, a5, 126
    1081:	834562        	s8i	a6, a5, 131
    1084:	7d0542        	l8ui	a4, a5, 125
    1087:	fba062        	movi	a6, 251
    108a:	644040        	extui	a4, a4, 0, 7
    108d:	7d4542        	s8i	a4, a5, 125
    1090:	7c0542        	l8ui	a4, a5, 124
    1093:	0338      	l32i.n	a3, a3, 0
    1095:	104460        	and	a4, a4, a6
    1098:	460c      	movi.n	a6, 4
    109a:	204460        	or	a4, a4, a6
    109d:	7c4542        	s8i	a4, a5, 124
    10a0:	1328      	l32i.n	a2, a3, 4
    10a2:	3338      	l32i.n	a3, a3, 12
    10a4:	ffba01        	l32r	a0, f8c <system_get_boot_mode+0x64>
    10a7:	0000c0        	callx0	a0
    10aa:	ffb031        	l32r	a3, f6c <system_get_boot_mode+0x44>
    10ad:	78a342        	movi	a4, 0x378
    10b0:	fdc222        	addi	a2, a2, -3
    10b3:	f42020        	extui	a2, a2, 0, 16
    10b6:	000005        	call0	10b8 <system_restart_enhance+0x128>
    10b9:	000005        	call0	10bc <system_restart_enhance+0x12c>
    10bc:	ffe2c6        	j	104b <system_restart_enhance+0xbb>
    10bf:	000000        	ill
	...

000010c4 <system_upgrade_userbin_set>:
    10c4:	f0c112        	addi	a1, a1, -16
    10c7:	11c9      	s32i.n	a12, a1, 4
    10c9:	0109      	s32i.n	a0, a1, 0
    10cb:	02cd      	mov.n	a12, a2
    10cd:	000005        	call0	10d0 <system_upgrade_userbin_set+0xc>
    10d0:	042cb6        	bltui	a12, 2, 10d8 <system_upgrade_userbin_set+0x14>
    10d3:	020c      	movi.n	a2, 0
    10d5:	000ac6        	j	1104 <system_upgrade_userbin_set+0x40>
    10d8:	fffa51        	l32r	a5, 10c0 <system_restart_enhance+0x130>
    10db:	042226        	beqi	a2, 2, 10e3 <system_upgrade_userbin_set+0x1f>
    10de:	f01c      	movi.n	a0, 31
    10e0:	0d9207        	bne	a2, a0, 10f1 <system_upgrade_userbin_set+0x2d>
    10e3:	3400c0        	extui	a0, a12, 0, 4
    10e6:	742542        	l32i	a4, a5, 0x1d0
    10e9:	067c      	movi.n	a6, -16
    10eb:	104460        	and	a4, a4, a6
    10ee:	000286        	j	10fc <system_upgrade_userbin_set+0x38>
    10f1:	1400c0        	extui	a0, a12, 0, 2
    10f4:	742542        	l32i	a4, a5, 0x1d0
    10f7:	c67c      	movi.n	a6, -4
    10f9:	104460        	and	a4, a4, a6
    10fc:	120c      	movi.n	a2, 1
    10fe:	207040        	or	a7, a0, a4
    1101:	746572        	s32i	a7, a5, 0x1d0
    1104:	11c8      	l32i.n	a12, a1, 4
    1106:	0108      	l32i.n	a0, a1, 0
    1108:	10c112        	addi	a1, a1, 16
    110b:	f00d      	ret.n
    110d:	000000        	ill
    1110:	000000        	ill
	...

00001114 <system_upgrade_userbin_check>:
    1114:	f0c112        	addi	a1, a1, -16
    1117:	0109      	s32i.n	a0, a1, 0
    1119:	000005        	call0	111c <system_upgrade_userbin_check+0x8>
    111c:	fffd01        	l32r	a0, 1110 <system_upgrade_userbin_set+0x4c>
    111f:	f31c      	movi.n	a3, 31
    1121:	1d1237        	beq	a2, a3, 1142 <system_upgrade_userbin_check+0x2e>
    1124:	1a2226        	beqi	a2, 2, 1142 <system_upgrade_userbin_check+0x2e>
    1127:	742002        	l32i	a0, a0, 0x1d0
    112a:	144000        	extui	a4, a0, 0, 2
    112d:	0b1466        	bnei	a4, 1, 113c <system_upgrade_userbin_check+0x28>
    1130:	17e027        	bbsi	a0, 2, 114b <system_upgrade_userbin_check+0x37>
    1133:	020c      	movi.n	a2, 0
    1135:	0108      	l32i.n	a0, a1, 0
    1137:	10c112        	addi	a1, a1, 16
    113a:	f00d      	ret.n
    113c:	f3e027        	bbsi	a0, 2, 1133 <system_upgrade_userbin_check+0x1f>
    113f:	000206        	j	114b <system_upgrade_userbin_check+0x37>
    1142:	742052        	l32i	a5, a0, 0x1d0
    1145:	345050        	extui	a5, a5, 0, 4
    1148:	e71566        	bnei	a5, 1, 1133 <system_upgrade_userbin_check+0x1f>
    114b:	120c      	movi.n	a2, 1
    114d:	fff906        	j	1135 <system_upgrade_userbin_check+0x21>
    1150:	000000        	ill
	...

00001154 <system_upgrade_flag_set>:
    1154:	0a32f6        	bgeui	a2, 3, 1162 <system_upgrade_flag_set+0xe>
    1157:	fffe31        	l32r	a3, 1150 <system_upgrade_userbin_check+0x3c>
    115a:	140c      	movi.n	a4, 1
    115c:	f54322        	s8i	a2, a3, 245
    115f:	000046        	j	1164 <system_upgrade_flag_set+0x10>
    1162:	040c      	movi.n	a4, 0
    1164:	042d      	mov.n	a2, a4
    1166:	f00d      	ret.n
    1168:	000000        	ill
	...

0000116c <system_upgrade_flag_check>:
    116c:	ffff21        	l32r	a2, 1168 <system_upgrade_flag_set+0x14>
    116f:	f50222        	l8ui	a2, a2, 245
    1172:	f00d      	ret.n
    1174:	000000        	ill
    1177:	013000        	slli	a3, a0, 32
	...
    1186:	200000        	or	a0, a0, a0
    1189:	000001        	l32r	a0, fffc118c <system_get_sdk_version+0xfffbd488>
    118c:	000000        	ill
    118f:	800000        	add	a0, a0, a0
    1192:	380000        	excw
    1195:	000001        	l32r	a0, fffc1198 <system_get_sdk_version+0xfffbd494>
    1198:	000000        	ill
    119b:	014000        	slli	a4, a0, 32
    119e:	000000        	ill
    11a1:	000000        	ill
    11a4:	013c      	movi.n	a1, 48
    11a6:	000000        	ill
    11a9:	000000        	ill
    11ac:	000144        	excw
    11af:	000000        	ill
    11b2:	340000        	extui	a0, a0, 0, 4
    11b5:	000001        	l32r	a0, fffc11b8 <system_get_sdk_version+0xfffbd4b4>
	...

000011dc <system_upgrade_reboot>:
    11dc:	f0c112        	addi	a1, a1, -16
    11df:	1109      	s32i.n	a0, a1, 4
    11e1:	000005        	call0	11e4 <system_upgrade_reboot+0x8>
    11e4:	ffe401        	l32r	a0, 1174 <system_upgrade_flag_check+0x8>
    11e7:	0129      	s32i.n	a2, a1, 0
    11e9:	f50002        	l8ui	a0, a0, 245
    11ec:	020c      	movi.n	a2, 0
    11ee:	4e2026        	beqi	a0, 2, 1240 <system_upgrade_reboot+0x64>
    11f1:	001106        	j	1239 <system_upgrade_reboot+0x5d>
    11f4:	742022        	l32i	a2, a0, 0x1d0
    11f7:	342020        	extui	a2, a2, 0, 4
    11fa:	220b      	addi.n	a2, a2, -1
    11fc:	0ca256        	bnez	a2, 12ca <system_upgrade_reboot+0xee>
    11ff:	ffde21        	l32r	a2, 1178 <system_upgrade_flag_check+0xc>
    1202:	ffee01        	l32r	a0, 11bc <system_upgrade_flag_check+0x50>
    1205:	0000c0        	callx0	a0
    1208:	ffdd01        	l32r	a0, 117c <system_upgrade_flag_check+0x10>
    120b:	742022        	l32i	a2, a0, 0x1d0
    120e:	037c      	movi.n	a3, -16
    1210:	102230        	and	a2, a2, a3
    1213:	ffdb31        	l32r	a3, 1180 <system_upgrade_flag_check+0x14>
    1216:	746022        	s32i	a2, a0, 0x1d0
    1219:	0338      	l32i.n	a3, a3, 0
    121b:	1328      	l32i.n	a2, a3, 4
    121d:	3338      	l32i.n	a3, a3, 12
    121f:	ffe801        	l32r	a0, 11c0 <system_upgrade_flag_check+0x54>
    1222:	0000c0        	callx0	a0
    1225:	ffd731        	l32r	a3, 1184 <system_upgrade_flag_check+0x18>
    1228:	78a342        	movi	a4, 0x378
    122b:	fdc222        	addi	a2, a2, -3
    122e:	f42020        	extui	a2, a2, 0, 16
    1231:	000005        	call0	1234 <system_upgrade_reboot+0x58>
    1234:	000005        	call0	1238 <system_upgrade_reboot+0x5c>
    1237:	120c      	movi.n	a2, 1
    1239:	1108      	l32i.n	a0, a1, 4
    123b:	10c112        	addi	a1, a1, 16
    123e:	f00d      	ret.n
    1240:	ffd221        	l32r	a2, 1188 <system_upgrade_flag_check+0x1c>
    1243:	ffe001        	l32r	a0, 11c4 <system_upgrade_flag_check+0x58>
    1246:	0000c0        	callx0	a0
    1249:	0138      	l32i.n	a3, a1, 0
    124b:	ffd001        	l32r	a0, 118c <system_upgrade_flag_check+0x20>
    124e:	a22326        	beqi	a3, 2, 11f4 <system_upgrade_reboot+0x18>
    1251:	f41c      	movi.n	a4, 31
    1253:	9d1347        	beq	a3, a4, 11f4 <system_upgrade_reboot+0x18>
    1256:	ffce61        	l32r	a6, 1190 <system_upgrade_flag_check+0x24>
    1259:	742052        	l32i	a5, a0, 0x1d0
    125c:	205560        	or	a5, a5, a6
    125f:	746052        	s32i	a5, a0, 0x1d0
    1262:	142050        	extui	a2, a5, 0, 2
    1265:	11e527        	bbsi	a5, 2, 127a <system_upgrade_reboot+0x9e>
    1268:	301266        	bnei	a2, 1, 129c <system_upgrade_reboot+0xc0>
    126b:	ffca21        	l32r	a2, 1194 <system_upgrade_flag_check+0x28>
    126e:	ffd601        	l32r	a0, 11c8 <system_upgrade_flag_check+0x5c>
    1271:	0000c0        	callx0	a0
    1274:	ffc901        	l32r	a0, 1198 <system_upgrade_flag_check+0x2c>
    1277:	000b46        	j	12a8 <system_upgrade_reboot+0xcc>
    127a:	301266        	bnei	a2, 1, 12ae <system_upgrade_reboot+0xd2>
    127d:	ffc721        	l32r	a2, 119c <system_upgrade_flag_check+0x30>
    1280:	ffd301        	l32r	a0, 11cc <system_upgrade_flag_check+0x60>
    1283:	0000c0        	callx0	a0
    1286:	ffc601        	l32r	a0, 11a0 <system_upgrade_flag_check+0x34>
    1289:	742022        	l32i	a2, a0, 0x1d0
    128c:	c37c      	movi.n	a3, -4
    128e:	102230        	and	a2, a2, a3
    1291:	746022        	s32i	a2, a0, 0x1d0
    1294:	440c      	movi.n	a4, 4
    1296:	202240        	or	a2, a2, a4
    1299:	ffdd86        	j	1213 <system_upgrade_reboot+0x37>
    129c:	ffc221        	l32r	a2, 11a4 <system_upgrade_flag_check+0x38>
    129f:	ffcc01        	l32r	a0, 11d0 <system_upgrade_flag_check+0x64>
    12a2:	0000c0        	callx0	a0
    12a5:	ffc001        	l32r	a0, 11a8 <system_upgrade_flag_check+0x3c>
    12a8:	742022        	l32i	a2, a0, 0x1d0
    12ab:	fff946        	j	1294 <system_upgrade_reboot+0xb8>
    12ae:	ffbf21        	l32r	a2, 11ac <system_upgrade_flag_check+0x40>
    12b1:	ffc801        	l32r	a0, 11d4 <system_upgrade_flag_check+0x68>
    12b4:	0000c0        	callx0	a0
    12b7:	ffbe01        	l32r	a0, 11b0 <system_upgrade_flag_check+0x44>
    12ba:	742022        	l32i	a2, a0, 0x1d0
    12bd:	c37c      	movi.n	a3, -4
    12bf:	102230        	and	a2, a2, a3
    12c2:	130c      	movi.n	a3, 1
    12c4:	202230        	or	a2, a2, a3
    12c7:	fff186        	j	1291 <system_upgrade_reboot+0xb5>
    12ca:	ffba21        	l32r	a2, 11b4 <system_upgrade_flag_check+0x48>
    12cd:	ffc201        	l32r	a0, 11d8 <system_upgrade_flag_check+0x6c>
    12d0:	0000c0        	callx0	a0
    12d3:	ffb901        	l32r	a0, 11b8 <system_upgrade_flag_check+0x4c>
    12d6:	742022        	l32i	a2, a0, 0x1d0
    12d9:	037c      	movi.n	a3, -16
    12db:	102230        	and	a2, a2, a3
    12de:	130c      	movi.n	a3, 1
    12e0:	202230        	or	a2, a2, a3
    12e3:	ffcb06        	j	1213 <system_upgrade_reboot+0x37>
	...
    12f2:	e80000        	excw
    12f5:	000001        	l32r	a0, fffc12f8 <system_get_sdk_version+0xfffbd5f4>
	...

00001310 <system_deep_sleep>:
    1310:	f0c112        	addi	a1, a1, -16
    1313:	0129      	s32i.n	a2, a1, 0
    1315:	1109      	s32i.n	a0, a1, 4
    1317:	000005        	call0	1318 <system_deep_sleep+0x8>
    131a:	020d      	mov.n	a0, a2
    131c:	2129      	s32i.n	a2, a1, 8
    131e:	fff231        	l32r	a3, 12e8 <system_upgrade_reboot+0x10c>
    1321:	120c      	movi.n	a2, 1
    1323:	f74322        	s8i	a2, a3, 247
    1326:	043026        	beqi	a0, 3, 132e <system_deep_sleep+0x1e>
    1329:	2109      	s32i.n	a0, a1, 8
    132b:	071066        	bnei	a0, 1, 1336 <system_deep_sleep+0x26>
    132e:	fff301        	l32r	a0, 12fc <system_upgrade_reboot+0x120>
    1331:	0000c0        	callx0	a0
    1334:	2108      	l32i.n	a0, a1, 8
    1336:	023026        	beqi	a0, 3, 133c <system_deep_sleep+0x2c>
    1339:	052066        	bnei	a0, 2, 1342 <system_deep_sleep+0x32>
    133c:	fff101        	l32r	a0, 1300 <system_upgrade_reboot+0x124>
    133f:	0000c0        	callx0	a0
    1342:	ffea21        	l32r	a2, 12ec <system_upgrade_reboot+0x110>
    1345:	ffef01        	l32r	a0, 1304 <system_upgrade_reboot+0x128>
    1348:	0000c0        	callx0	a0
    134b:	ffe921        	l32r	a2, 12f0 <system_upgrade_reboot+0x114>
    134e:	ffe931        	l32r	a3, 12f4 <system_upgrade_reboot+0x118>
    1351:	0148      	l32i.n	a4, a1, 0
    1353:	ffed01        	l32r	a0, 1308 <system_upgrade_reboot+0x12c>
    1356:	0000c0        	callx0	a0
    1359:	ffe721        	l32r	a2, 12f8 <system_upgrade_reboot+0x11c>
    135c:	64a032        	movi	a3, 100
    135f:	040c      	movi.n	a4, 0
    1361:	150c      	movi.n	a5, 1
    1363:	ffea01        	l32r	a0, 130c <system_upgrade_reboot+0x130>
    1366:	0000c0        	callx0	a0
    1369:	1108      	l32i.n	a0, a1, 4
    136b:	10c112        	addi	a1, a1, 16
    136e:	f00d      	ret.n
    1370:	000000        	ill
	...

00001374 <system_deep_sleep_set_option>:
    1374:	d28c      	beqz.n	a2, 1385 <system_deep_sleep_set_option+0x11>
    1376:	0b1226        	beqi	a2, 1, 1385 <system_deep_sleep_set_option+0x11>
    1379:	082226        	beqi	a2, 2, 1385 <system_deep_sleep_set_option+0x11>
    137c:	054226        	beqi	a2, 4, 1385 <system_deep_sleep_set_option+0x11>
    137f:	040c      	movi.n	a4, 0
    1381:	042d      	mov.n	a2, a4
    1383:	f00d      	ret.n
    1385:	fffa31        	l32r	a3, 1370 <system_deep_sleep+0x60>
    1388:	140c      	movi.n	a4, 1
    138a:	f64322        	s8i	a2, a3, 246
    138d:	fffc06        	j	1381 <system_deep_sleep_set_option+0xd>
    1390:	000000        	ill
	...

00001394 <system_phy_temperature_alert>:
    1394:	020c      	movi.n	a2, 0
    1396:	f0c112        	addi	a1, a1, -16
    1399:	0109      	s32i.n	a0, a1, 0
    139b:	fffd01        	l32r	a0, 1390 <system_deep_sleep_set_option+0x1c>
    139e:	0000c0        	callx0	a0
    13a1:	0108      	l32i.n	a0, a1, 0
    13a3:	10c112        	addi	a1, a1, 16
    13a6:	f00d      	ret.n
    13a8:	000000        	ill
	...

000013ac <system_phy_set_max_tpw>:
    13ac:	f0c112        	addi	a1, a1, -16
    13af:	0109      	s32i.n	a0, a1, 0
    13b1:	fffd01        	l32r	a0, 13a8 <system_phy_temperature_alert+0x14>
    13b4:	0000c0        	callx0	a0
    13b7:	0108      	l32i.n	a0, a1, 0
    13b9:	10c112        	addi	a1, a1, 16
    13bc:	f00d      	ret.n
    13be:	000000        	ill
    13c1:	000000        	ill

000013c4 <system_phy_set_tpw_via_vdd33>:
    13c4:	f0c112        	addi	a1, a1, -16
    13c7:	0109      	s32i.n	a0, a1, 0
    13c9:	fffd01        	l32r	a0, 13c0 <system_phy_set_max_tpw+0x14>
    13cc:	0000c0        	callx0	a0
    13cf:	0108      	l32i.n	a0, a1, 0
    13d1:	10c112        	addi	a1, a1, 16
    13d4:	f00d      	ret.n
    13d6:	000000        	ill
    13d9:	000000        	ill

000013dc <system_phy_set_rfoption>:
    13dc:	f0c112        	addi	a1, a1, -16
    13df:	0109      	s32i.n	a0, a1, 0
    13e1:	fffd01        	l32r	a0, 13d8 <system_phy_set_tpw_via_vdd33+0x14>
    13e4:	0000c0        	callx0	a0
    13e7:	0108      	l32i.n	a0, a1, 0
    13e9:	10c112        	addi	a1, a1, 16
    13ec:	f00d      	ret.n
    13ee:	000000        	ill
    13f1:	fe          	.byte 0xfe
    13f2:	ef          	.byte 0xef
    13f3:	3f          	.byte 0x3f
	...

000013fc <system_update_cpu_freq>:
    13fc:	f0c112        	addi	a1, a1, -16
    13ff:	055c      	movi.n	a5, 80
    1401:	0109      	s32i.n	a0, a1, 0
    1403:	fffb01        	l32r	a0, 13f0 <system_phy_set_rfoption+0x14>
    1406:	1b9257        	bne	a2, a5, 1425 <system_update_cpu_freq+0x29>
    1409:	e37c      	movi.n	a3, -2
    140b:	0020c0        	memw
    140e:	852022        	l32i	a2, a0, 0x214
    1411:	102230        	and	a2, a2, a3
    1414:	0020c0        	memw
    1417:	856022        	s32i	a2, a0, 0x214
    141a:	052d      	mov.n	a2, a5
    141c:	fff601        	l32r	a0, 13f4 <system_phy_set_rfoption+0x18>
    141f:	0000c0        	callx0	a0
    1422:	000786        	j	1444 <system_update_cpu_freq+0x48>
    1425:	a0a052        	movi	a5, 160
    1428:	1d9257        	bne	a2, a5, 1449 <system_update_cpu_freq+0x4d>
    142b:	052d      	mov.n	a2, a5
    142d:	160c      	movi.n	a6, 1
    142f:	0020c0        	memw
    1432:	852042        	l32i	a4, a0, 0x214
    1435:	204460        	or	a4, a4, a6
    1438:	0020c0        	memw
    143b:	856042        	s32i	a4, a0, 0x214
    143e:	ffee01        	l32r	a0, 13f8 <system_phy_set_rfoption+0x1c>
    1441:	0000c0        	callx0	a0
    1444:	120c      	movi.n	a2, 1
    1446:	000046        	j	144b <system_update_cpu_freq+0x4f>
    1449:	020c      	movi.n	a2, 0
    144b:	0108      	l32i.n	a0, a1, 0
    144d:	10c112        	addi	a1, a1, 16
    1450:	f00d      	ret.n
    1452:	000000        	ill
    1455:	000000        	ill

00001458 <system_get_cpu_freq>:
    1458:	f0c112        	addi	a1, a1, -16
    145b:	0109      	s32i.n	a0, a1, 0
    145d:	fffd01        	l32r	a0, 1454 <system_update_cpu_freq+0x58>
    1460:	0000c0        	callx0	a0
    1463:	742020        	extui	a2, a2, 0, 8
    1466:	0108      	l32i.n	a0, a1, 0
    1468:	10c112        	addi	a1, a1, 16
    146b:	f00d      	ret.n
    146d:	000000        	ill
    1470:	000000        	ill
	...

00001474 <system_overclock>:
    1474:	f0c112        	addi	a1, a1, -16
    1477:	0109      	s32i.n	a0, a1, 0
    1479:	000005        	call0	147c <system_overclock+0x8>
    147c:	005c      	movi.n	a0, 80
    147e:	129207        	bne	a2, a0, 1494 <system_overclock+0x20>
    1481:	fffb31        	l32r	a3, 1470 <system_get_cpu_freq+0x18>
    1484:	120c      	movi.n	a2, 1
    1486:	f84322        	s8i	a2, a3, 248
    1489:	a0a022        	movi	a2, 160
    148c:	000005        	call0	1490 <system_overclock+0x1c>
    148f:	120c      	movi.n	a2, 1
    1491:	000046        	j	1496 <system_overclock+0x22>
    1494:	020c      	movi.n	a2, 0
    1496:	0108      	l32i.n	a0, a1, 0
    1498:	10c112        	addi	a1, a1, 16
    149b:	f00d      	ret.n
    149d:	000000        	ill
    14a0:	000000        	ill
	...

000014a4 <system_restoreclock>:
    14a4:	f0c112        	addi	a1, a1, -16
    14a7:	0109      	s32i.n	a0, a1, 0
    14a9:	000005        	call0	14ac <system_restoreclock+0x8>
    14ac:	a0a002        	movi	a0, 160
    14af:	179207        	bne	a2, a0, 14ca <system_restoreclock+0x26>
    14b2:	fffb01        	l32r	a0, 14a0 <system_overclock+0x2c>
    14b5:	f80022        	l8ui	a2, a0, 248
    14b8:	0e1266        	bnei	a2, 1, 14ca <system_restoreclock+0x26>
    14bb:	025c      	movi.n	a2, 80
    14bd:	030c      	movi.n	a3, 0
    14bf:	f84032        	s8i	a3, a0, 248
    14c2:	000005        	call0	14c4 <system_restoreclock+0x20>
    14c5:	120c      	movi.n	a2, 1
    14c7:	000046        	j	14cc <system_restoreclock+0x28>
    14ca:	020c      	movi.n	a2, 0
    14cc:	0108      	l32i.n	a0, a1, 0
    14ce:	10c112        	addi	a1, a1, 16
    14d1:	f00d      	ret.n
    14d3:	000000        	ill
    14d6:	000000        	ill
    14d9:	600006        	j	194dd <system_get_sdk_version+0x157d9>

000014dc <system_timer_reinit>:
    14dc:	fffe51        	l32r	a5, 14d4 <system_restoreclock+0x30>
    14df:	040c      	movi.n	a4, 0
    14e1:	014542        	s8i	a4, a5, 1
    14e4:	84a022        	movi	a2, 132
    14e7:	fffc31        	l32r	a3, 14d8 <system_restoreclock+0x34>
    14ea:	0020c0        	memw
    14ed:	a329      	s32i.n	a2, a3, 40
    14ef:	f00d      	ret.n
    14f1:	000000        	ill
    14f4:	f20a00        	excw
    14f7:	3f          	.byte 0x3f

000014f8 <system_relative_time>:
    14f8:	ffff31        	l32r	a3, 14f4 <system_timer_reinit+0x18>
    14fb:	0020c0        	memw
    14fe:	802332        	l32i	a3, a3, 0x200
    1501:	c02320        	sub	a2, a3, a2
    1504:	f00d      	ret.n
    1506:	000000        	ill
    1509:	000000        	ill
    150c:	000080        	ret
    150f:	017000        	slli	a7, a0, 32
    1512:	000000        	ill
    1515:	000000        	ill
    1518:	0001a0        	jx	a1
	...
    1523:	008000        	excw
	...

00001538 <system_station_got_ip_set>:
    1538:	a0c112        	addi	a1, a1, -96
    153b:	1461c2        	s32i	a12, a1, 80
    153e:	fff2c1        	l32r	a12, 1508 <system_relative_time+0x10>
    1541:	136102        	s32i	a0, a1, 76
    1544:	4cc8      	l32i.n	a12, a12, 16
    1546:	fff101        	l32r	a0, 150c <system_relative_time+0x14>
    1549:	0cc8      	l32i.n	a12, a12, 0
    154b:	1f2072        	l32i	a7, a0, 124
    154e:	acac      	beqz.n	a12, 157c <system_station_got_ip_set+0x44>
    1550:	87ac      	beqz.n	a7, 157c <system_station_got_ip_set+0x44>
    1552:	0258      	l32i.n	a5, a2, 0
    1554:	1c28      	l32i.n	a2, a12, 4
    1556:	2c08      	l32i.n	a0, a12, 8
    1558:	0e9527        	bne	a5, a2, 156a <system_station_got_ip_set+0x32>
    155b:	0368      	l32i.n	a6, a3, 0
    155d:	3c38      	l32i.n	a3, a12, 12
    155f:	099607        	bne	a6, a0, 156c <system_station_got_ip_set+0x34>
    1562:	0488      	l32i.n	a8, a4, 0
    1564:	141837        	beq	a8, a3, 157c <system_station_got_ip_set+0x44>
    1567:	000046        	j	156c <system_station_got_ip_set+0x34>
    156a:	3c38      	l32i.n	a3, a12, 12
    156c:	b139      	s32i.n	a3, a1, 44
    156e:	a109      	s32i.n	a0, a1, 40
    1570:	9129      	s32i.n	a2, a1, 36
    1572:	390c      	movi.n	a9, 3
    1574:	8199      	s32i.n	a9, a1, 32
    1576:	20c122        	addi	a2, a1, 32
    1579:	0007c0        	callx0	a7
    157c:	080c72        	l8ui	a7, a12, 8
    157f:	070c62        	l8ui	a6, a12, 7
    1582:	060c52        	l8ui	a5, a12, 6
    1585:	050c42        	l8ui	a4, a12, 5
    1588:	040c32        	l8ui	a3, a12, 4
    158b:	090ca2        	l8ui	a10, a12, 9
    158e:	01a9      	s32i.n	a10, a1, 0
    1590:	0a0c92        	l8ui	a9, a12, 10
    1593:	1199      	s32i.n	a9, a1, 4
    1595:	0b0c82        	l8ui	a8, a12, 11
    1598:	2189      	s32i.n	a8, a1, 8
    159a:	0c0c22        	l8ui	a2, a12, 12
    159d:	3129      	s32i.n	a2, a1, 12
    159f:	ffdc21        	l32r	a2, 1510 <system_relative_time+0x18>
    15a2:	0d0c02        	l8ui	a0, a12, 13
    15a5:	4109      	s32i.n	a0, a1, 16
    15a7:	0e0cb2        	l8ui	a11, a12, 14
    15aa:	51b9      	s32i.n	a11, a1, 20
    15ac:	0f0ca2        	l8ui	a10, a12, 15
    15af:	61a9      	s32i.n	a10, a1, 24
    15b1:	ffdd01        	l32r	a0, 1528 <system_relative_time+0x30>
    15b4:	0000c0        	callx0	a0
    15b7:	ffd7c1        	l32r	a12, 1514 <system_relative_time+0x1c>
    15ba:	ffd721        	l32r	a2, 1518 <system_relative_time+0x20>
    15bd:	ffdb01        	l32r	a0, 152c <system_relative_time+0x34>
    15c0:	0000c0        	callx0	a0
    15c3:	4c48      	l32i.n	a4, a12, 16
    15c5:	500c      	movi.n	a0, 5
    15c7:	ba4402        	s8i	a0, a4, 186
    15ca:	4c38      	l32i.n	a3, a12, 16
    15cc:	ffd421        	l32r	a2, 151c <system_relative_time+0x24>
    15cf:	b84302        	s8i	a0, a3, 184
    15d2:	5902b2        	l8ui	a11, a2, 89
    15d5:	580252        	l8ui	a5, a2, 88
    15d8:	341b66        	bnei	a11, 1, 1610 <system_station_got_ip_set+0xd8>
    15db:	311566        	bnei	a5, 1, 1610 <system_station_got_ip_set+0xd8>
    15de:	02cd      	mov.n	a12, a2
    15e0:	ffd021        	l32r	a2, 1520 <system_relative_time+0x28>
    15e3:	ffd301        	l32r	a0, 1530 <system_relative_time+0x38>
    15e6:	0000c0        	callx0	a0
    15e9:	140c      	movi.n	a4, 1
    15eb:	5a0c32        	l8ui	a3, a12, 90
    15ee:	ffcd21        	l32r	a2, 1524 <system_relative_time+0x2c>
    15f1:	401300        	ssl	a3
    15f4:	800222        	l8ui	a2, a2, 128
    15f7:	030c      	movi.n	a3, 0
    15f9:	045020        	extui	a5, a2, 0, 1
    15fc:	833450        	moveqz	a3, a4, a5
    15ff:	a12200        	sll	a2, a2
    1602:	a14400        	sll	a4, a4
    1605:	a13300        	sll	a3, a3
    1608:	050c      	movi.n	a5, 0
    160a:	ffca01        	l32r	a0, 1534 <system_relative_time+0x3c>
    160d:	0000c0        	callx0	a0
    1610:	1421c2        	l32i	a12, a1, 80
    1613:	132102        	l32i	a0, a1, 76
    1616:	60c112        	addi	a1, a1, 96
    1619:	f00d      	ret.n
	...
    1623:	01b000        	slli	a11, a0, 32
	...
    162e:	d00000        	subx2	a0, a0, a0
    1631:	000001        	l32r	a0, fffc1634 <system_get_sdk_version+0xfffbd930>
	...
    163c:	0001f0        	excw
    163f:	000000        	ill
    1642:	000000        	ill
    1645:	3fffc0        	excw
    1648:	000210        	excw
    164b:	c00000        	sub	a0, a0, a0
    164e:	ff          	.byte 0xff
    164f:	3f          	.byte 0x3f
	...

00001660 <system_print_meminfo>:
    1660:	fff121        	l32r	a2, 1624 <system_station_got_ip_set+0xec>
    1663:	ffef41        	l32r	a4, 1620 <system_station_got_ip_set+0xe8>
    1666:	ffed51        	l32r	a5, 161c <system_station_got_ip_set+0xe4>
    1669:	f0c112        	addi	a1, a1, -16
    166c:	0109      	s32i.n	a0, a1, 0
    166e:	053d      	mov.n	a3, a5
    1670:	c05450        	sub	a5, a4, a5
    1673:	fff701        	l32r	a0, 1650 <system_station_got_ip_set+0x118>
    1676:	0000c0        	callx0	a0
    1679:	ffed21        	l32r	a2, 1630 <system_station_got_ip_set+0xf8>
    167c:	ffeb51        	l32r	a5, 1628 <system_station_got_ip_set+0xf0>
    167f:	ffeb41        	l32r	a4, 162c <system_station_got_ip_set+0xf4>
    1682:	053d      	mov.n	a3, a5
    1684:	c05450        	sub	a5, a4, a5
    1687:	fff301        	l32r	a0, 1654 <system_station_got_ip_set+0x11c>
    168a:	0000c0        	callx0	a0
    168d:	ffeb21        	l32r	a2, 163c <system_station_got_ip_set+0x104>
    1690:	ffe951        	l32r	a5, 1634 <system_station_got_ip_set+0xfc>
    1693:	ffe941        	l32r	a4, 1638 <system_station_got_ip_set+0x100>
    1696:	053d      	mov.n	a3, a5
    1698:	c05450        	sub	a5, a4, a5
    169b:	ffef01        	l32r	a0, 1658 <system_station_got_ip_set+0x120>
    169e:	0000c0        	callx0	a0
    16a1:	ffe921        	l32r	a2, 1648 <system_station_got_ip_set+0x110>
    16a4:	ffea41        	l32r	a4, 164c <system_station_got_ip_set+0x114>
    16a7:	ffe661        	l32r	a6, 1640 <system_station_got_ip_set+0x108>
    16aa:	ffe651        	l32r	a5, 1644 <system_station_got_ip_set+0x10c>
    16ad:	063d      	mov.n	a3, a6
    16af:	c05560        	sub	a5, a5, a6
    16b2:	ffea01        	l32r	a0, 165c <system_station_got_ip_set+0x124>
    16b5:	0000c0        	callx0	a0
    16b8:	0108      	l32i.n	a0, a1, 0
    16ba:	10c112        	addi	a1, a1, 16
    16bd:	f00d      	ret.n
    16bf:	000000        	ill
	...

000016c4 <system_get_free_heap_size>:
    16c4:	f0c112        	addi	a1, a1, -16
    16c7:	0109      	s32i.n	a0, a1, 0
    16c9:	fffd01        	l32r	a0, 16c0 <system_print_meminfo+0x60>
    16cc:	0000c0        	callx0	a0
    16cf:	0108      	l32i.n	a0, a1, 0
    16d1:	10c112        	addi	a1, a1, 16
    16d4:	f00d      	ret.n
    16d6:	000000        	ill
    16d9:	ff0000        	excw
    16dc:	effe00        	excw
    16df:	3f          	.byte 0x3f
    16e0:	ff          	.byte 0xff
    16e1:	ff          	.byte 0xff
    16e2:	ff          	.byte 0xff
	...

000016e4 <system_get_chip_id>:
    16e4:	fffd41        	l32r	a4, 16d8 <system_get_free_heap_size+0x14>
    16e7:	fffd21        	l32r	a2, 16dc <system_get_free_heap_size+0x18>
    16ea:	0020c0        	memw
    16ed:	942232        	l32i	a3, a2, 0x250
    16f0:	103340        	and	a3, a3, a4
    16f3:	fffb41        	l32r	a4, 16e0 <system_get_free_heap_size+0x1c>
    16f6:	0020c0        	memw
    16f9:	952222        	l32i	a2, a2, 0x254
    16fc:	404810        	ssai	24
    16ff:	102240        	and	a2, a2, a4
    1702:	812230        	src	a2, a2, a3
    1705:	f00d      	ret.n
    1707:	000000        	ill
	...

0000170c <system_rtc_clock_cali_proc>:
    170c:	f0c112        	addi	a1, a1, -16
    170f:	0109      	s32i.n	a0, a1, 0
    1711:	fffd01        	l32r	a0, 1708 <system_get_chip_id+0x24>
    1714:	0000c0        	callx0	a0
    1717:	0108      	l32i.n	a0, a1, 0
    1719:	10c112        	addi	a1, a1, 16
    171c:	f00d      	ret.n
    171e:	000000        	ill
    1721:	600006        	j	19725 <system_get_sdk_version+0x15a21>

00001724 <system_get_rtc_time>:
    1724:	ffff21        	l32r	a2, 1720 <system_rtc_clock_cali_proc+0x14>
    1727:	0020c0        	memw
    172a:	472222        	l32i	a2, a2, 0x11c
    172d:	f00d      	ret.n
    172f:	bf8000        	excw
    1732:	0086b1        	l32r	a11, fffc194c <system_get_sdk_version+0xfffbdc48>
	...

0000174c <system_mktime>:
    174c:	d0c112        	addi	a1, a1, -48
    174f:	9109      	s32i.n	a0, a1, 36
    1751:	2149      	s32i.n	a4, a1, 8
    1753:	a1c9      	s32i.n	a12, a1, 40
    1755:	b1d9      	s32i.n	a13, a1, 44
    1757:	02cd      	mov.n	a12, a2
    1759:	fec3d2        	addi	a13, a3, -2
    175c:	031de6        	bgei	a13, 1, 1763 <system_mktime+0x17>
    175f:	d3ab      	addi.n	a13, a3, 10
    1761:	c20b      	addi.n	a12, a2, -1
    1763:	4159      	s32i.n	a5, a1, 16
    1765:	6169      	s32i.n	a6, a1, 24
    1767:	1179      	s32i.n	a7, a1, 4
    1769:	030c      	movi.n	a3, 0
    176b:	020c      	movi.n	a2, 0
    176d:	000c      	movi.n	a0, 0
    176f:	3109      	s32i.n	a0, a1, 12
    1771:	5129      	s32i.n	a2, a1, 20
    1773:	0139      	s32i.n	a3, a1, 0
    1775:	0c2d      	mov.n	a2, a12
    1777:	90a132        	movi	a3, 0x190
    177a:	ffee01        	l32r	a0, 1734 <system_get_rtc_time+0x10>
    177d:	0000c0        	callx0	a0
    1780:	7129      	s32i.n	a2, a1, 28
    1782:	64a032        	movi	a3, 100
    1785:	0c2d      	mov.n	a2, a12
    1787:	ffec01        	l32r	a0, 1738 <system_get_rtc_time+0x14>
    178a:	0000c0        	callx0	a0
    178d:	8129      	s32i.n	a2, a1, 32
    178f:	c30c      	movi.n	a3, 12
    1791:	6fa122        	movi	a2, 0x16f
    1794:	822d20        	mull	a2, a13, a2
    1797:	ffe901        	l32r	a0, 173c <system_get_rtc_time+0x18>
    179a:	0000c0        	callx0	a0
    179d:	030c      	movi.n	a3, 0
    179f:	41d8      	l32i.n	a13, a1, 16
    17a1:	7158      	l32i.n	a5, a1, 28
    17a3:	8178      	l32i.n	a7, a1, 32
    17a5:	2148      	l32i.n	a4, a1, 8
    17a7:	4162c0        	srli	a6, a12, 2
    17aa:	442a      	add.n	a4, a4, a2
    17ac:	c06670        	sub	a6, a6, a7
    17af:	6da122        	movi	a2, 0x16d
    17b2:	822c20        	mull	a2, a12, a2
    17b5:	556a      	add.n	a5, a5, a6
    17b7:	31c8      	l32i.n	a12, a1, 12
    17b9:	445a      	add.n	a4, a4, a5
    17bb:	242a      	add.n	a2, a4, a2
    17bd:	01b247        	bgeu	a2, a4, 17c2 <system_mktime+0x76>
    17c0:	130c      	movi.n	a3, 1
    17c2:	050c      	movi.n	a5, 0
    17c4:	841c      	movi.n	a4, 24
    17c6:	ffde01        	l32r	a0, 1740 <system_get_rtc_time+0x1c>
    17c9:	0000c0        	callx0	a0
    17cc:	3c3a      	add.n	a3, a12, a3
    17ce:	2d2a      	add.n	a2, a13, a2
    17d0:	51c8      	l32i.n	a12, a1, 20
    17d2:	01b2d7        	bgeu	a2, a13, 17d7 <system_mktime+0x8b>
    17d5:	331b      	addi.n	a3, a3, 1
    17d7:	61d8      	l32i.n	a13, a1, 24
    17d9:	050c      	movi.n	a5, 0
    17db:	c43c      	movi.n	a4, 60
    17dd:	ffd901        	l32r	a0, 1744 <system_get_rtc_time+0x20>
    17e0:	0000c0        	callx0	a0
    17e3:	3c3a      	add.n	a3, a12, a3
    17e5:	2d2a      	add.n	a2, a13, a2
    17e7:	01c8      	l32i.n	a12, a1, 0
    17e9:	01b2d7        	bgeu	a2, a13, 17ee <system_mktime+0xa2>
    17ec:	331b      	addi.n	a3, a3, 1
    17ee:	11d8      	l32i.n	a13, a1, 4
    17f0:	050c      	movi.n	a5, 0
    17f2:	c43c      	movi.n	a4, 60
    17f4:	ffd501        	l32r	a0, 1748 <system_get_rtc_time+0x24>
    17f7:	0000c0        	callx0	a0
    17fa:	4d2a      	add.n	a4, a13, a2
    17fc:	ffcd21        	l32r	a2, 1730 <system_get_rtc_time+0xc>
    17ff:	0c3a      	add.n	a0, a12, a3
    1801:	242a      	add.n	a2, a4, a2
    1803:	01b4d7        	bgeu	a4, a13, 1808 <system_mktime+0xbc>
    1806:	001b      	addi.n	a0, a0, 1
    1808:	f1c032        	addi	a3, a0, -15
    180b:	a1c8      	l32i.n	a12, a1, 40
    180d:	b1d8      	l32i.n	a13, a1, 44
    180f:	02b247        	bgeu	a2, a4, 1815 <system_mktime+0xc9>
    1812:	f2c032        	addi	a3, a0, -14
    1815:	9108      	l32i.n	a0, a1, 36
    1817:	30c112        	addi	a1, a1, 48
    181a:	f00d      	ret.n
    181c:	000000        	ill
	...

00001820 <system_init_done_cb>:
    1820:	ffff31        	l32r	a3, 181c <system_mktime+0xd0>
    1823:	416322        	s32i	a2, a3, 0x104
    1826:	f00d      	ret.n
    1828:	0108      	l32i.n	a0, a1, 0
	...

0000182c <system_get_rst_info>:
    182c:	ffff21        	l32r	a2, 1828 <system_init_done_cb+0x8>
    182f:	f00d      	ret.n
    1831:	000000        	ill

00001834 <system_get_data_of_array_8>:
    1834:	f0c112        	addi	a1, a1, -16
    1837:	c67c      	movi.n	a6, -4
    1839:	144020        	extui	a4, a2, 0, 2
    183c:	434a      	add.n	a4, a3, a4
    183e:	106260        	and	a6, a2, a6
    1841:	415240        	srli	a5, a4, 2
    1844:	142040        	extui	a2, a4, 0, 2
    1847:	a05560        	addx4	a5, a5, a6
    184a:	221a      	add.n	a2, a2, a1
    184c:	0558      	l32i.n	a5, a5, 0
    184e:	0159      	s32i.n	a5, a1, 0
    1850:	000222        	l8ui	a2, a2, 0
    1853:	10c112        	addi	a1, a1, 16
    1856:	f00d      	ret.n

00001858 <system_get_data_of_array_16>:
    1858:	f0c112        	addi	a1, a1, -16
    185b:	c67c      	movi.n	a6, -4
    185d:	144020        	extui	a4, a2, 0, 2
    1860:	904340        	addx2	a4, a3, a4
    1863:	106260        	and	a6, a2, a6
    1866:	415240        	srli	a5, a4, 2
    1869:	142040        	extui	a2, a4, 0, 2
    186c:	a05560        	addx4	a5, a5, a6
    186f:	902210        	addx2	a2, a2, a1
    1872:	0558      	l32i.n	a5, a5, 0
    1874:	0159      	s32i.n	a5, a1, 0
    1876:	001222        	l16ui	a2, a2, 0
    1879:	10c112        	addi	a1, a1, 16
    187c:	f00d      	ret.n
	...

00001888 <system_get_string_from_flash>:
    1888:	e0c112        	addi	a1, a1, -32
    188b:	4139      	s32i.n	a3, a1, 16
    188d:	1109      	s32i.n	a0, a1, 4
    188f:	21c9      	s32i.n	a12, a1, 8
    1891:	31d9      	s32i.n	a13, a1, 12
    1893:	02cd      	mov.n	a12, a2
    1895:	04dd      	mov.n	a13, a4
    1897:	300c      	movi.n	a0, 3
    1899:	308027        	bany	a0, a2, 18cd <system_get_string_from_flash+0x45>
    189c:	fff901        	l32r	a0, 1880 <system_get_data_of_array_16+0x28>
    189f:	0000c0        	callx0	a0
    18a2:	f40020        	extui	a0, a2, 0, 16
    18a5:	500b      	addi.n	a5, a0, -1
    18a7:	402b      	addi.n	a4, a0, 2
    18a9:	b34550        	movgez	a4, a5, a5
    18ac:	450c      	movi.n	a5, 4
    18ae:	214240        	srai	a4, a4, 2
    18b1:	a04450        	addx4	a4, a4, a5
    18b4:	f44040        	extui	a4, a4, 0, 16
    18b7:	059047        	bne	a0, a4, 18c0 <system_get_string_from_flash+0x38>
    18ba:	f460d0        	extui	a6, a13, 0, 16
    18bd:	0cb067        	bgeu	a0, a6, 18cd <system_get_string_from_flash+0x45>
    18c0:	0109      	s32i.n	a0, a1, 0
    18c2:	0cb047        	bgeu	a0, a4, 18d2 <system_get_string_from_flash+0x4a>
    18c5:	0109      	s32i.n	a0, a1, 0
    18c7:	f470d0        	extui	a7, a13, 0, 16
    18ca:	04b747        	bgeu	a7, a4, 18d2 <system_get_string_from_flash+0x4a>
    18cd:	020c      	movi.n	a2, 0
    18cf:	000586        	j	18e9 <system_get_string_from_flash+0x61>
    18d2:	41d8      	l32i.n	a13, a1, 16
    18d4:	0c3d      	mov.n	a3, a12
    18d6:	0d2d      	mov.n	a2, a13
    18d8:	ffeb01        	l32r	a0, 1884 <system_get_data_of_array_16+0x2c>
    18db:	0000c0        	callx0	a0
    18de:	120c      	movi.n	a2, 1
    18e0:	0198      	l32i.n	a9, a1, 0
    18e2:	080c      	movi.n	a8, 0
    18e4:	99da      	add.n	a9, a9, a13
    18e6:	004982        	s8i	a8, a9, 0
    18e9:	21c8      	l32i.n	a12, a1, 8
    18eb:	31d8      	l32i.n	a13, a1, 12
    18ed:	1108      	l32i.n	a0, a1, 4
    18ef:	20c112        	addi	a1, a1, 32
    18f2:	f00d      	ret.n
	...

00001908 <wifi_softap_dhcps_start>:
    1908:	f0c112        	addi	a1, a1, -16
    190b:	3109      	s32i.n	a0, a1, 12
    190d:	000005        	call0	1910 <wifi_softap_dhcps_start+0x8>
    1910:	391226        	beqi	a2, 1, 194d <wifi_softap_dhcps_start+0x45>
    1913:	62bc      	beqz.n	a2, 194d <wifi_softap_dhcps_start+0x45>
    1915:	fff701        	l32r	a0, 18f4 <system_get_string_from_flash+0x6c>
    1918:	3e0002        	l8ui	a0, a0, 62
    191b:	e0ec      	bnez.n	a0, 194d <wifi_softap_dhcps_start+0x45>
    191d:	120c      	movi.n	a2, 1
    191f:	fff801        	l32r	a0, 1900 <system_get_string_from_flash+0x78>
    1922:	0000c0        	callx0	a0
    1925:	fff401        	l32r	a0, 18f8 <system_get_string_from_flash+0x70>
    1928:	529c      	beqz.n	a2, 1941 <wifi_softap_dhcps_start+0x39>
    192a:	020022        	l8ui	a2, a0, 2
    192d:	02dc      	bnez.n	a2, 1941 <wifi_softap_dhcps_start+0x39>
    192f:	120c      	movi.n	a2, 1
    1931:	013d      	mov.n	a3, a1
    1933:	000005        	call0	1934 <wifi_softap_dhcps_start+0x2c>
    1936:	012d      	mov.n	a2, a1
    1938:	fff301        	l32r	a0, 1904 <system_get_string_from_flash+0x7c>
    193b:	0000c0        	callx0	a0
    193e:	ffef01        	l32r	a0, 18fc <system_get_string_from_flash+0x74>
    1941:	120c      	movi.n	a2, 1
    1943:	024022        	s8i	a2, a0, 2
    1946:	3108      	l32i.n	a0, a1, 12
    1948:	10c112        	addi	a1, a1, 16
    194b:	f00d      	ret.n
    194d:	020c      	movi.n	a2, 0
    194f:	fffcc6        	j	1946 <wifi_softap_dhcps_start+0x3e>
	...

00001968 <wifi_softap_dhcps_stop>:
    1968:	f0c112        	addi	a1, a1, -16
    196b:	0109      	s32i.n	a0, a1, 0
    196d:	000005        	call0	1970 <wifi_softap_dhcps_stop+0x8>
    1970:	331226        	beqi	a2, 1, 19a7 <wifi_softap_dhcps_stop+0x3f>
    1973:	02bc      	beqz.n	a2, 19a7 <wifi_softap_dhcps_stop+0x3f>
    1975:	fff701        	l32r	a0, 1954 <wifi_softap_dhcps_start+0x4c>
    1978:	3e0002        	l8ui	a0, a0, 62
    197b:	80ec      	bnez.n	a0, 19a7 <wifi_softap_dhcps_stop+0x3f>
    197d:	120c      	movi.n	a2, 1
    197f:	fff801        	l32r	a0, 1960 <wifi_softap_dhcps_start+0x58>
    1982:	0000c0        	callx0	a0
    1985:	fff401        	l32r	a0, 1958 <wifi_softap_dhcps_start+0x50>
    1988:	d28c      	beqz.n	a2, 1999 <wifi_softap_dhcps_stop+0x31>
    198a:	020022        	l8ui	a2, a0, 2
    198d:	081266        	bnei	a2, 1, 1999 <wifi_softap_dhcps_stop+0x31>
    1990:	fff501        	l32r	a0, 1964 <wifi_softap_dhcps_start+0x5c>
    1993:	0000c0        	callx0	a0
    1996:	fff101        	l32r	a0, 195c <wifi_softap_dhcps_start+0x54>
    1999:	120c      	movi.n	a2, 1
    199b:	030c      	movi.n	a3, 0
    199d:	024032        	s8i	a3, a0, 2
    19a0:	0108      	l32i.n	a0, a1, 0
    19a2:	10c112        	addi	a1, a1, 16
    19a5:	f00d      	ret.n
    19a7:	020c      	movi.n	a2, 0
    19a9:	fffcc6        	j	19a0 <wifi_softap_dhcps_stop+0x38>
    19ac:	000000        	ill
	...

000019b0 <wifi_softap_dhcps_status>:
    19b0:	ffff21        	l32r	a2, 19ac <wifi_softap_dhcps_stop+0x44>
    19b3:	020222        	l8ui	a2, a2, 2
    19b6:	f00d      	ret.n
	...

000019cc <wifi_station_dhcpc_start>:
    19cc:	f0c112        	addi	a1, a1, -16
    19cf:	0109      	s32i.n	a0, a1, 0
    19d1:	000005        	call0	19d4 <wifi_station_dhcpc_start+0x8>
    19d4:	462226        	beqi	a2, 2, 1a1e <wifi_station_dhcpc_start+0x52>
    19d7:	043216        	beqz	a2, 1a1e <wifi_station_dhcpc_start+0x52>
    19da:	fff701        	l32r	a0, 19b8 <wifi_softap_dhcps_status+0x8>
    19dd:	3e0002        	l8ui	a0, a0, 62
    19e0:	a0fc      	bnez.n	a0, 1a1e <wifi_station_dhcpc_start+0x52>
    19e2:	020c      	movi.n	a2, 0
    19e4:	fff801        	l32r	a0, 19c4 <wifi_softap_dhcps_status+0x14>
    19e7:	0000c0        	callx0	a0
    19ea:	140c      	movi.n	a4, 1
    19ec:	fff401        	l32r	a0, 19bc <wifi_softap_dhcps_status+0xc>
    19ef:	928c      	beqz.n	a2, 19fc <wifi_station_dhcpc_start+0x30>
    19f1:	030032        	l8ui	a3, a0, 3
    19f4:	43cc      	bnez.n	a3, 19fc <wifi_station_dhcpc_start+0x30>
    19f6:	350252        	l8ui	a5, a2, 53
    19f9:	0be507        	bbsi	a5, 0, 1a08 <wifi_station_dhcpc_start+0x3c>
    19fc:	034042        	s8i	a4, a0, 3
    19ff:	120c      	movi.n	a2, 1
    1a01:	0108      	l32i.n	a0, a1, 0
    1a03:	10c112        	addi	a1, a1, 16
    1a06:	f00d      	ret.n
    1a08:	060c      	movi.n	a6, 0
    1a0a:	1269      	s32i.n	a6, a2, 4
    1a0c:	2269      	s32i.n	a6, a2, 8
    1a0e:	3269      	s32i.n	a6, a2, 12
    1a10:	ffee01        	l32r	a0, 19c8 <wifi_softap_dhcps_status+0x18>
    1a13:	0000c0        	callx0	a0
    1a16:	ffea01        	l32r	a0, 19c0 <wifi_softap_dhcps_status+0x10>
    1a19:	140c      	movi.n	a4, 1
    1a1b:	fdd216        	beqz	a2, 19fc <wifi_station_dhcpc_start+0x30>
    1a1e:	020c      	movi.n	a2, 0
    1a20:	fff746        	j	1a01 <wifi_station_dhcpc_start+0x35>
	...

00001a38 <wifi_station_dhcpc_stop>:
    1a38:	f0c112        	addi	a1, a1, -16
    1a3b:	0109      	s32i.n	a0, a1, 0
    1a3d:	000005        	call0	1a40 <wifi_station_dhcpc_stop+0x8>
    1a40:	332226        	beqi	a2, 2, 1a77 <wifi_station_dhcpc_stop+0x3f>
    1a43:	02bc      	beqz.n	a2, 1a77 <wifi_station_dhcpc_stop+0x3f>
    1a45:	fff701        	l32r	a0, 1a24 <wifi_station_dhcpc_start+0x58>
    1a48:	3e0002        	l8ui	a0, a0, 62
    1a4b:	80ec      	bnez.n	a0, 1a77 <wifi_station_dhcpc_stop+0x3f>
    1a4d:	020c      	movi.n	a2, 0
    1a4f:	fff801        	l32r	a0, 1a30 <wifi_station_dhcpc_start+0x64>
    1a52:	0000c0        	callx0	a0
    1a55:	fff401        	l32r	a0, 1a28 <wifi_station_dhcpc_start+0x5c>
    1a58:	d28c      	beqz.n	a2, 1a69 <wifi_station_dhcpc_stop+0x31>
    1a5a:	030032        	l8ui	a3, a0, 3
    1a5d:	081366        	bnei	a3, 1, 1a69 <wifi_station_dhcpc_stop+0x31>
    1a60:	fff501        	l32r	a0, 1a34 <wifi_station_dhcpc_start+0x68>
    1a63:	0000c0        	callx0	a0
    1a66:	fff101        	l32r	a0, 1a2c <wifi_station_dhcpc_start+0x60>
    1a69:	120c      	movi.n	a2, 1
    1a6b:	040c      	movi.n	a4, 0
    1a6d:	034042        	s8i	a4, a0, 3
    1a70:	0108      	l32i.n	a0, a1, 0
    1a72:	10c112        	addi	a1, a1, 16
    1a75:	f00d      	ret.n
    1a77:	020c      	movi.n	a2, 0
    1a79:	fffcc6        	j	1a70 <wifi_station_dhcpc_stop+0x38>
    1a7c:	000000        	ill
	...

00001a80 <wifi_station_dhcpc_status>:
    1a80:	ffff21        	l32r	a2, 1a7c <wifi_station_dhcpc_stop+0x44>
    1a83:	030222        	l8ui	a2, a2, 3
    1a86:	f00d      	ret.n
	...
    1a9c:	f0c112        	addi	a1, a1, -16
    1a9f:	31e9      	s32i.n	a14, a1, 12
    1aa1:	0109      	s32i.n	a0, a1, 0
    1aa3:	21d9      	s32i.n	a13, a1, 8
    1aa5:	11c9      	s32i.n	a12, a1, 4
    1aa7:	02dd      	mov.n	a13, a2
    1aa9:	051266        	bnei	a2, 1, 1ab2 <wifi_station_dhcpc_status+0x32>
    1aac:	fff7c1        	l32r	a12, 1a88 <wifi_station_dhcpc_status+0x8>
    1aaf:	000a46        	j	1adc <wifi_station_dhcpc_status+0x5c>
    1ab2:	78a322        	movi	a2, 0x378
    1ab5:	fff601        	l32r	a0, 1a90 <wifi_station_dhcpc_status+0x10>
    1ab8:	0000c0        	callx0	a0
    1abb:	fff431        	l32r	a3, 1a8c <wifi_station_dhcpc_status+0xc>
    1abe:	0338      	l32i.n	a3, a3, 0
    1ac0:	02cd      	mov.n	a12, a2
    1ac2:	1328      	l32i.n	a2, a3, 4
    1ac4:	3338      	l32i.n	a3, a3, 12
    1ac6:	fff301        	l32r	a0, 1a94 <wifi_station_dhcpc_status+0x14>
    1ac9:	0000c0        	callx0	a0
    1acc:	030c      	movi.n	a3, 0
    1ace:	0c4d      	mov.n	a4, a12
    1ad0:	78a352        	movi	a5, 0x378
    1ad3:	fdc222        	addi	a2, a2, -3
    1ad6:	f42020        	extui	a2, a2, 0, 16
    1ad9:	000005        	call0	1adc <wifi_station_dhcpc_status+0x5c>
    1adc:	080ce2        	l8ui	a14, a12, 8
    1adf:	014eb6        	bltui	a14, 4, 1ae4 <wifi_station_dhcpc_status+0x64>
    1ae2:	2e0c      	movi.n	a14, 2
    1ae4:	071d26        	beqi	a13, 1, 1aef <wifi_station_dhcpc_status+0x6f>
    1ae7:	0c2d      	mov.n	a2, a12
    1ae9:	ffeb01        	l32r	a0, 1a98 <wifi_station_dhcpc_status+0x18>
    1aec:	0000c0        	callx0	a0
    1aef:	0108      	l32i.n	a0, a1, 0
    1af1:	11c8      	l32i.n	a12, a1, 4
    1af3:	7420e0        	extui	a2, a14, 0, 8
    1af6:	21d8      	l32i.n	a13, a1, 8
    1af8:	31e8      	l32i.n	a14, a1, 12
    1afa:	10c112        	addi	a1, a1, 16
    1afd:	f00d      	ret.n
	...

00001b00 <wifi_get_opmode>:
    1b00:	120c      	movi.n	a2, 1
    1b02:	f0c112        	addi	a1, a1, -16
    1b05:	0109      	s32i.n	a0, a1, 0
    1b07:	fff945        	call0	1a9c <wifi_station_dhcpc_status+0x1c>
    1b0a:	0108      	l32i.n	a0, a1, 0
    1b0c:	10c112        	addi	a1, a1, 16
    1b0f:	f00d      	ret.n
    1b11:	000000        	ill

00001b14 <wifi_get_opmode_default>:
    1b14:	020c      	movi.n	a2, 0
    1b16:	f0c112        	addi	a1, a1, -16
    1b19:	0109      	s32i.n	a0, a1, 0
    1b1b:	fff805        	call0	1a9c <wifi_station_dhcpc_status+0x1c>
    1b1e:	0108      	l32i.n	a0, a1, 0
    1b20:	10c112        	addi	a1, a1, 16
    1b23:	f00d      	ret.n
	...
    1b41:	000000        	ill
    1b44:	f0c112        	addi	a1, a1, -16
    1b47:	11c9      	s32i.n	a12, a1, 4
    1b49:	0109      	s32i.n	a0, a1, 0
    1b4b:	02cd      	mov.n	a12, a2
    1b4d:	100c      	movi.n	a0, 1
    1b4f:	0142f6        	bgeui	a2, 4, 1b54 <wifi_get_opmode_default+0x40>
    1b52:	000c      	movi.n	a0, 0
    1b54:	220c      	movi.n	a2, 2
    1b56:	93c200        	movnez	a12, a2, a0
    1b59:	011c26        	beqi	a12, 1, 1b5e <wifi_get_opmode_default+0x4a>
    1b5c:	6ccc      	bnez.n	a12, 1b66 <wifi_get_opmode_default+0x52>
    1b5e:	020c      	movi.n	a2, 0
    1b60:	fff301        	l32r	a0, 1b2c <wifi_get_opmode_default+0x18>
    1b63:	0000c0        	callx0	a0
    1b66:	012c26        	beqi	a12, 2, 1b6b <wifi_get_opmode_default+0x57>
    1b69:	4ccc      	bnez.n	a12, 1b71 <wifi_get_opmode_default+0x5d>
    1b6b:	fff101        	l32r	a0, 1b30 <wifi_get_opmode_default+0x1c>
    1b6e:	0000c0        	callx0	a0
    1b71:	0c2d      	mov.n	a2, a12
    1b73:	fff001        	l32r	a0, 1b34 <wifi_get_opmode_default+0x20>
    1b76:	0000c0        	callx0	a0
    1b79:	021c26        	beqi	a12, 1, 1b7f <wifi_get_opmode_default+0x6b>
    1b7c:	053c66        	bnei	a12, 3, 1b85 <wifi_get_opmode_default+0x71>
    1b7f:	ffee01        	l32r	a0, 1b38 <wifi_get_opmode_default+0x24>
    1b82:	0000c0        	callx0	a0
    1b85:	022c26        	beqi	a12, 2, 1b8b <wifi_get_opmode_default+0x77>
    1b88:	073c66        	bnei	a12, 3, 1b93 <wifi_get_opmode_default+0x7f>
    1b8b:	020c      	movi.n	a2, 0
    1b8d:	ffeb01        	l32r	a0, 1b3c <wifi_get_opmode_default+0x28>
    1b90:	0000c0        	callx0	a0
    1b93:	0c1c66        	bnei	a12, 1, 1ba3 <wifi_get_opmode_default+0x8f>
    1b96:	ffe421        	l32r	a2, 1b28 <wifi_get_opmode_default+0x14>
    1b99:	4228      	l32i.n	a2, a2, 16
    1b9b:	0228      	l32i.n	a2, a2, 0
    1b9d:	ffe801        	l32r	a0, 1b40 <wifi_get_opmode_default+0x2c>
    1ba0:	0000c0        	callx0	a0
    1ba3:	11c8      	l32i.n	a12, a1, 4
    1ba5:	0108      	l32i.n	a0, a1, 0
    1ba7:	10c112        	addi	a1, a1, 16
    1baa:	f00d      	ret.n
    1bac:	0000a4        	excw
	...

00001bb8 <wifi_get_broadcast_if>:
    1bb8:	f0c112        	addi	a1, a1, -16
    1bbb:	0109      	s32i.n	a0, a1, 0
    1bbd:	000005        	call0	1bc0 <wifi_get_broadcast_if+0x8>
    1bc0:	020d      	mov.n	a0, a2
    1bc2:	1e3266        	bnei	a2, 3, 1be4 <wifi_get_broadcast_if+0x2c>
    1bc5:	fff901        	l32r	a0, 1bac <wifi_get_opmode_default+0x98>
    1bc8:	800002        	l8ui	a0, a0, 128
    1bcb:	50dc      	bnez.n	a0, 1be4 <wifi_get_broadcast_if+0x2c>
    1bcd:	020c      	movi.n	a2, 0
    1bcf:	fff901        	l32r	a0, 1bb4 <wifi_get_opmode_default+0xa0>
    1bd2:	0000c0        	callx0	a0
    1bd5:	fff641        	l32r	a4, 1bb0 <wifi_get_opmode_default+0x9c>
    1bd8:	130c      	movi.n	a3, 1
    1bda:	0448      	l32i.n	a4, a4, 0
    1bdc:	200c      	movi.n	a0, 2
    1bde:	c04420        	sub	a4, a4, a2
    1be1:	830340        	moveqz	a0, a3, a4
    1be4:	002d      	mov.n	a2, a0
    1be6:	0108      	l32i.n	a0, a1, 0
    1be8:	10c112        	addi	a1, a1, 16
    1beb:	f00d      	ret.n
    1bed:	000000        	ill
    1bf0:	0000a4        	excw
    1bf3:	00a400        	excw
    1bf6:	000000        	ill
    1bf9:	000000        	ill
    1bfc:	000230        	excw
	...

00001c10 <wifi_set_broadcast_if>:
    1c10:	f0c112        	addi	a1, a1, -16
    1c13:	0109      	s32i.n	a0, a1, 0
    1c15:	048216        	beqz	a2, 1c61 <wifi_set_broadcast_if+0x51>
    1c18:	4542f6        	bgeui	a2, 4, 1c61 <wifi_set_broadcast_if+0x51>
    1c1b:	fff541        	l32r	a4, 1bf0 <wifi_get_broadcast_if+0x38>
    1c1e:	000c      	movi.n	a0, 0
    1c20:	804402        	s8i	a0, a4, 128
    1c23:	161226        	beqi	a2, 1, 1c3d <wifi_set_broadcast_if+0x2d>
    1c26:	452226        	beqi	a2, 2, 1c6f <wifi_set_broadcast_if+0x5f>
    1c29:	2b3266        	bnei	a2, 3, 1c58 <wifi_set_broadcast_if+0x48>
    1c2c:	000005        	call0	1c30 <wifi_set_broadcast_if+0x20>
    1c2f:	373266        	bnei	a2, 3, 1c6a <wifi_set_broadcast_if+0x5a>
    1c32:	fff031        	l32r	a3, 1bf4 <wifi_get_broadcast_if+0x3c>
    1c35:	320c      	movi.n	a2, 3
    1c37:	804322        	s8i	a2, a3, 128
    1c3a:	000686        	j	1c58 <wifi_set_broadcast_if+0x48>
    1c3d:	000005        	call0	1c40 <wifi_set_broadcast_if+0x30>
    1c40:	051226        	beqi	a2, 1, 1c49 <wifi_set_broadcast_if+0x39>
    1c43:	000005        	call0	1c44 <wifi_set_broadcast_if+0x34>
    1c46:	203266        	bnei	a2, 3, 1c6a <wifi_set_broadcast_if+0x5a>
    1c49:	ffeb01        	l32r	a0, 1bf8 <wifi_get_broadcast_if+0x40>
    1c4c:	4008      	l32i.n	a0, a0, 16
    1c4e:	809c      	beqz.n	a0, 1c6a <wifi_set_broadcast_if+0x5a>
    1c50:	0028      	l32i.n	a2, a0, 0
    1c52:	ffec01        	l32r	a0, 1c04 <wifi_get_broadcast_if+0x4c>
    1c55:	0000c0        	callx0	a0
    1c58:	120c      	movi.n	a2, 1
    1c5a:	0108      	l32i.n	a0, a1, 0
    1c5c:	10c112        	addi	a1, a1, 16
    1c5f:	f00d      	ret.n
    1c61:	ffe621        	l32r	a2, 1bfc <wifi_get_broadcast_if+0x44>
    1c64:	ffe901        	l32r	a0, 1c08 <wifi_get_broadcast_if+0x50>
    1c67:	0000c0        	callx0	a0
    1c6a:	020c      	movi.n	a2, 0
    1c6c:	fffa86        	j	1c5a <wifi_set_broadcast_if+0x4a>
    1c6f:	000005        	call0	1c70 <wifi_set_broadcast_if+0x60>
    1c72:	052226        	beqi	a2, 2, 1c7b <wifi_set_broadcast_if+0x6b>
    1c75:	000005        	call0	1c78 <wifi_set_broadcast_if+0x68>
    1c78:	ee3266        	bnei	a2, 3, 1c6a <wifi_set_broadcast_if+0x5a>
    1c7b:	ffe101        	l32r	a0, 1c00 <wifi_get_broadcast_if+0x48>
    1c7e:	5008      	l32i.n	a0, a0, 20
    1c80:	fe6016        	beqz	a0, 1c6a <wifi_set_broadcast_if+0x5a>
    1c83:	0028      	l32i.n	a2, a0, 0
    1c85:	ffe101        	l32r	a0, 1c0c <wifi_get_broadcast_if+0x54>
    1c88:	0000c0        	callx0	a0
    1c8b:	fff246        	j	1c58 <wifi_set_broadcast_if+0x48>
	...
    1c9a:	540000        	extui	a0, a0, 0, 6
	...
    1ca5:	000000        	ill
    1ca8:	000054        	excw
    1cab:	000000        	ill
    1cae:	120000        	excw
    1cb1:	09f0c1        	l32r	a12, fffc4474 <system_get_sdk_version+0xfffc0770>
    1cb4:	42f611        	l32r	a1, fffd288c <system_get_sdk_version+0xfffceb88>
    1cb7:	010c      	movi.n	a1, 0
    1cb9:	39fff6        	bgeui	a15, 0x100, 1cf6 <wifi_set_broadcast_if+0xe6>
    1cbc:	000201        	l32r	a0, fffc1cc4 <system_get_sdk_version+0xfffbdfc0>
    1cbf:	3e          	.byte 0x3e
    1cc0:	2129      	s32i.n	a2, a1, 8
    1cc2:	057016        	beqz	a0, 1d1d <wifi_set_broadcast_if+0x10d>
    1cc5:	020c      	movi.n	a2, 0
    1cc7:	0012c6        	j	1d16 <wifi_set_broadcast_if+0x106>
    1cca:	fff261        	l32r	a6, 1c94 <wifi_set_broadcast_if+0x84>
    1ccd:	150c      	movi.n	a5, 1
    1ccf:	800632        	l8ui	a3, a6, 128
    1cd2:	fff141        	l32r	a4, 1c98 <wifi_set_broadcast_if+0x88>
    1cd5:	3b1307        	beq	a3, a0, 1d14 <wifi_set_broadcast_if+0x104>
    1cd8:	804602        	s8i	a0, a6, 128
    1cdb:	000442        	l8ui	a4, a4, 0
    1cde:	d14252        	s8i	a5, a2, 209
    1ce1:	071466        	bnei	a4, 1, 1cec <wifi_set_broadcast_if+0xdc>
    1ce4:	002d      	mov.n	a2, a0
    1ce6:	ffe5c5        	call0	1b44 <wifi_get_opmode_default+0x30>
    1ce9:	ffec21        	l32r	a2, 1c9c <wifi_set_broadcast_if+0x8c>
    1cec:	060c      	movi.n	a6, 0
    1cee:	0158      	l32i.n	a5, a1, 0
    1cf0:	d14262        	s8i	a6, a2, 209
    1cf3:	1d1566        	bnei	a5, 1, 1d14 <wifi_set_broadcast_if+0x104>
    1cf6:	ffea31        	l32r	a3, 1ca0 <wifi_set_broadcast_if+0x90>
    1cf9:	0338      	l32i.n	a3, a3, 0
    1cfb:	1328      	l32i.n	a2, a3, 4
    1cfd:	3338      	l32i.n	a3, a3, 12
    1cff:	ffeb01        	l32r	a0, 1cac <wifi_set_broadcast_if+0x9c>
    1d02:	0000c0        	callx0	a0
    1d05:	ffe731        	l32r	a3, 1ca4 <wifi_set_broadcast_if+0x94>
    1d08:	78a342        	movi	a4, 0x378
    1d0b:	fdc222        	addi	a2, a2, -3
    1d0e:	f42020        	extui	a2, a2, 0, 16
    1d11:	000005        	call0	1d14 <wifi_set_broadcast_if+0x104>
    1d14:	120c      	movi.n	a2, 1
    1d16:	1108      	l32i.n	a0, a1, 4
    1d18:	10c112        	addi	a1, a1, 16
    1d1b:	f00d      	ret.n
    1d1d:	520c      	movi.n	a2, 5
    1d1f:	fecb05        	call0	9d0 <system_restore-0x3d0>
    1d22:	2108      	l32i.n	a0, a1, 8
    1d24:	023d      	mov.n	a3, a2
    1d26:	ffe021        	l32r	a2, 1ca8 <wifi_set_broadcast_if+0x98>
    1d29:	9d0366        	bnei	a3, -1, 1cca <wifi_set_broadcast_if+0xba>
    1d2c:	2f4202        	s8i	a0, a2, 47
    1d2f:	0148      	l32i.n	a4, a1, 0
    1d31:	304242        	s8i	a4, a2, 48
    1d34:	fff706        	j	1d14 <wifi_set_broadcast_if+0x104>
	...

00001d38 <wifi_set_opmode>:
    1d38:	130c      	movi.n	a3, 1
    1d3a:	f0c112        	addi	a1, a1, -16
    1d3d:	0109      	s32i.n	a0, a1, 0
    1d3f:	fff705        	call0	1cb0 <wifi_set_broadcast_if+0xa0>
    1d42:	0108      	l32i.n	a0, a1, 0
    1d44:	10c112        	addi	a1, a1, 16
    1d47:	f00d      	ret.n
    1d49:	000000        	ill

00001d4c <wifi_set_opmode_current>:
    1d4c:	030c      	movi.n	a3, 0
    1d4e:	f0c112        	addi	a1, a1, -16
    1d51:	0109      	s32i.n	a0, a1, 0
    1d53:	fff5c5        	call0	1cb0 <wifi_set_broadcast_if+0xa0>
    1d56:	0108      	l32i.n	a0, a1, 0
    1d58:	10c112        	addi	a1, a1, 16
    1d5b:	f00d      	ret.n
    1d5d:	000000        	ill

00001d60 <system_get_checksum>:
    1d60:	f0c112        	addi	a1, a1, -16
    1d63:	0109      	s32i.n	a0, a1, 0
    1d65:	939c      	beqz.n	a3, 1d82 <system_get_checksum+0x22>
    1d67:	efa002        	movi	a0, 239
    1d6a:	060c      	movi.n	a6, 0
    1d6c:	561b      	addi.n	a5, a6, 1
    1d6e:	426a      	add.n	a4, a2, a6
    1d70:	000442        	l8ui	a4, a4, 0
    1d73:	f46050        	extui	a6, a5, 0, 16
    1d76:	300400        	xor	a0, a4, a0
    1d79:	740000        	extui	a0, a0, 0, 8
    1d7c:	ec9367        	bne	a3, a6, 1d6c <system_get_checksum+0xc>
    1d7f:	000086        	j	1d85 <system_get_checksum+0x25>
    1d82:	efa002        	movi	a0, 239
    1d85:	002d      	mov.n	a2, a0
    1d87:	0108      	l32i.n	a0, a1, 0
    1d89:	10c112        	addi	a1, a1, 16
    1d8c:	f00d      	ret.n
    1d8e:	500000        	excw
    1d91:	000002        	l8ui	a0, a0, 0
	...

00001db0 <wifi_param_save_protect_with_check>:
    1db0:	037d      	mov.n	a7, a3
    1db2:	e0c112        	addi	a1, a1, -32
    1db5:	31d9      	s32i.n	a13, a1, 12
    1db7:	51f9      	s32i.n	a15, a1, 20
    1db9:	7149      	s32i.n	a4, a1, 28
    1dbb:	1109      	s32i.n	a0, a1, 4
    1dbd:	21c9      	s32i.n	a12, a1, 8
    1dbf:	41e9      	s32i.n	a14, a1, 16
    1dc1:	05cd      	mov.n	a12, a5
    1dc3:	02ed      	mov.n	a14, a2
    1dc5:	0179      	s32i.n	a7, a1, 0
    1dc7:	052d      	mov.n	a2, a5
    1dc9:	fff201        	l32r	a0, 1d94 <system_get_checksum+0x34>
    1dcc:	0000c0        	callx0	a0
    1dcf:	02dd      	mov.n	a13, a2
    1dd1:	04d216        	beqz	a2, 1e22 <wifi_param_save_protect_with_check+0x72>
    1dd4:	0128      	l32i.n	a2, a1, 0
    1dd6:	71f8      	l32i.n	a15, a1, 28
    1dd8:	822e20        	mull	a2, a14, a2
    1ddb:	6129      	s32i.n	a2, a1, 24
    1ddd:	000286        	j	1deb <wifi_param_save_protect_with_check+0x3b>
    1de0:	ffec21        	l32r	a2, 1d90 <system_get_checksum+0x30>
    1de3:	0e3d      	mov.n	a3, a14
    1de5:	ffec01        	l32r	a0, 1d98 <system_get_checksum+0x38>
    1de8:	0000c0        	callx0	a0
    1deb:	0e2d      	mov.n	a2, a14
    1ded:	ffeb01        	l32r	a0, 1d9c <system_get_checksum+0x3c>
    1df0:	0000c0        	callx0	a0
    1df3:	6128      	l32i.n	a2, a1, 24
    1df5:	0f3d      	mov.n	a3, a15
    1df7:	0c4d      	mov.n	a4, a12
    1df9:	ffe901        	l32r	a0, 1da0 <system_get_checksum+0x40>
    1dfc:	0000c0        	callx0	a0
    1dff:	6128      	l32i.n	a2, a1, 24
    1e01:	0d3d      	mov.n	a3, a13
    1e03:	0c4d      	mov.n	a4, a12
    1e05:	ffe701        	l32r	a0, 1da4 <system_get_checksum+0x44>
    1e08:	0000c0        	callx0	a0
    1e0b:	0d2d      	mov.n	a2, a13
    1e0d:	0f3d      	mov.n	a3, a15
    1e0f:	0c4d      	mov.n	a4, a12
    1e11:	ffe501        	l32r	a0, 1da8 <system_get_checksum+0x48>
    1e14:	0000c0        	callx0	a0
    1e17:	fc5256        	bnez	a2, 1de0 <wifi_param_save_protect_with_check+0x30>
    1e1a:	0d2d      	mov.n	a2, a13
    1e1c:	ffe401        	l32r	a0, 1dac <system_get_checksum+0x4c>
    1e1f:	0000c0        	callx0	a0
    1e22:	21c8      	l32i.n	a12, a1, 8
    1e24:	31d8      	l32i.n	a13, a1, 12
    1e26:	41e8      	l32i.n	a14, a1, 16
    1e28:	51f8      	l32i.n	a15, a1, 20
    1e2a:	1108      	l32i.n	a0, a1, 4
    1e2c:	20c112        	addi	a1, a1, 32
    1e2f:	f00d      	ret.n
	...
    1e39:	000000        	ill
    1e3c:	55aa      	add.n	a5, a5, a10
    1e3e:	55aa      	add.n	a5, a5, a10
	...

00001e48 <system_param_save_with_protect>:
    1e48:	d0c112        	addi	a1, a1, -48
    1e4b:	8109      	s32i.n	a0, a1, 32
    1e4d:	a1d9      	s32i.n	a13, a1, 40
    1e4f:	b1e9      	s32i.n	a14, a1, 44
    1e51:	91c9      	s32i.n	a12, a1, 36
    1e53:	02ed      	mov.n	a14, a2
    1e55:	03cd      	mov.n	a12, a3
    1e57:	04dd      	mov.n	a13, a4
    1e59:	08b316        	beqz	a3, 1ee8 <system_param_save_with_protect+0xa0>
    1e5c:	fff601        	l32r	a0, 1e34 <wifi_param_save_protect_with_check+0x84>
    1e5f:	0008      	l32i.n	a0, a0, 0
    1e61:	3008      	l32i.n	a0, a0, 12
    1e63:	02b047        	bgeu	a0, a4, 1e69 <system_param_save_with_protect+0x21>
    1e66:	001f86        	j	1ee8 <system_param_save_with_protect+0xa0>
    1e69:	013d      	mov.n	a3, a1
    1e6b:	222b      	addi.n	a2, a2, 2
    1e6d:	c41c      	movi.n	a4, 28
    1e6f:	7129      	s32i.n	a2, a1, 28
    1e71:	822020        	mull	a2, a0, a2
    1e74:	fff401        	l32r	a0, 1e44 <wifi_param_save_protect_with_check+0x94>
    1e77:	0000c0        	callx0	a0
    1e7a:	000152        	l8ui	a5, a1, 0
    1e7d:	140c      	movi.n	a4, 1
    1e7f:	ffee31        	l32r	a3, 1e38 <wifi_param_save_protect_with_check+0x88>
    1e82:	020c      	movi.n	a2, 0
    1e84:	0338      	l32i.n	a3, a3, 0
    1e86:	832450        	moveqz	a2, a4, a5
    1e89:	3338      	l32i.n	a3, a3, 12
    1e8b:	0c4d      	mov.n	a4, a12
    1e8d:	004122        	s8i	a2, a1, 0
    1e90:	0d5d      	mov.n	a5, a13
    1e92:	2e2a      	add.n	a2, a14, a2
    1e94:	71d8      	l32i.n	a13, a1, 28
    1e96:	000005        	call0	1e98 <system_param_save_with_protect+0x50>
    1e99:	c41c      	movi.n	a4, 28
    1e9b:	160c      	movi.n	a6, 1
    1e9d:	2178      	l32i.n	a7, a1, 8
    1e9f:	000152        	l8ui	a5, a1, 0
    1ea2:	ffe681        	l32r	a8, 1e3c <wifi_param_save_protect_with_check+0x8c>
    1ea5:	1189      	s32i.n	a8, a1, 4
    1ea7:	a05510        	addx4	a5, a5, a1
    1eaa:	771b      	addi.n	a7, a7, 1
    1eac:	936770        	movnez	a6, a7, a7
    1eaf:	2169      	s32i.n	a6, a1, 8
    1eb1:	3549      	s32i.n	a4, a5, 12
    1eb3:	000132        	l8ui	a3, a1, 0
    1eb6:	0c2d      	mov.n	a2, a12
    1eb8:	a03310        	addx4	a3, a3, a1
    1ebb:	061332        	l16ui	a3, a3, 12
    1ebe:	000005        	call0	1ec0 <system_param_save_with_protect+0x78>
    1ec1:	c51c      	movi.n	a5, 28
    1ec3:	000142        	l8ui	a4, a1, 0
    1ec6:	ffde31        	l32r	a3, 1e40 <wifi_param_save_protect_with_check+0x90>
    1ec9:	a04410        	addx4	a4, a4, a1
    1ecc:	0338      	l32i.n	a3, a3, 0
    1ece:	5429      	s32i.n	a2, a4, 20
    1ed0:	0d2d      	mov.n	a2, a13
    1ed2:	3338      	l32i.n	a3, a3, 12
    1ed4:	014d      	mov.n	a4, a1
    1ed6:	000005        	call0	1ed8 <system_param_save_with_protect+0x90>
    1ed9:	120c      	movi.n	a2, 1
    1edb:	91c8      	l32i.n	a12, a1, 36
    1edd:	a1d8      	l32i.n	a13, a1, 40
    1edf:	b1e8      	l32i.n	a14, a1, 44
    1ee1:	8108      	l32i.n	a0, a1, 32
    1ee3:	30c112        	addi	a1, a1, 48
    1ee6:	f00d      	ret.n
    1ee8:	020c      	movi.n	a2, 0
    1eea:	fffb46        	j	1edb <system_param_save_with_protect+0x93>
	...

00001efc <system_save_sys_param>:
    1efc:	fffd31        	l32r	a3, 1ef0 <system_param_save_with_protect+0xa8>
    1eff:	f0c112        	addi	a1, a1, -16
    1f02:	0338      	l32i.n	a3, a3, 0
    1f04:	0109      	s32i.n	a0, a1, 0
    1f06:	1328      	l32i.n	a2, a3, 4
    1f08:	3338      	l32i.n	a3, a3, 12
    1f0a:	fffb01        	l32r	a0, 1ef8 <system_param_save_with_protect+0xb0>
    1f0d:	0000c0        	callx0	a0
    1f10:	fff931        	l32r	a3, 1ef4 <system_param_save_with_protect+0xac>
    1f13:	78a342        	movi	a4, 0x378
    1f16:	fdc222        	addi	a2, a2, -3
    1f19:	f42020        	extui	a2, a2, 0, 16
    1f1c:	000005        	call0	1f20 <system_save_sys_param+0x24>
    1f1f:	0108      	l32i.n	a0, a1, 0
    1f21:	10c112        	addi	a1, a1, 16
    1f24:	f00d      	ret.n
	...

00001f38 <system_param_load>:
    1f38:	d0c112        	addi	a1, a1, -48
    1f3b:	8109      	s32i.n	a0, a1, 32
    1f3d:	a1d9      	s32i.n	a13, a1, 40
    1f3f:	91c9      	s32i.n	a12, a1, 36
    1f41:	b1e9      	s32i.n	a14, a1, 44
    1f43:	04cd      	mov.n	a12, a4
    1f45:	03ed      	mov.n	a14, a3
    1f47:	05dd      	mov.n	a13, a5
    1f49:	c48c      	beqz.n	a4, 1f59 <system_param_load+0x21>
    1f4b:	fff701        	l32r	a0, 1f28 <system_save_sys_param+0x2c>
    1f4e:	0008      	l32i.n	a0, a0, 0
    1f50:	7129      	s32i.n	a2, a1, 28
    1f52:	3008      	l32i.n	a0, a0, 12
    1f54:	335a      	add.n	a3, a3, a5
    1f56:	04b037        	bgeu	a0, a3, 1f5e <system_param_load+0x26>
    1f59:	020c      	movi.n	a2, 0
    1f5b:	000d46        	j	1f94 <system_param_load+0x5c>
    1f5e:	013d      	mov.n	a3, a1
    1f60:	c41c      	movi.n	a4, 28
    1f62:	222b      	addi.n	a2, a2, 2
    1f64:	822020        	mull	a2, a0, a2
    1f67:	fff201        	l32r	a0, 1f30 <system_save_sys_param+0x34>
    1f6a:	0000c0        	callx0	a0
    1f6d:	7138      	l32i.n	a3, a1, 28
    1f6f:	150c      	movi.n	a5, 1
    1f71:	ffee21        	l32r	a2, 1f2c <system_save_sys_param+0x30>
    1f74:	000142        	l8ui	a4, a1, 0
    1f77:	0228      	l32i.n	a2, a2, 0
    1f79:	934540        	movnez	a4, a5, a4
    1f7c:	004142        	s8i	a4, a1, 0
    1f7f:	334a      	add.n	a3, a3, a4
    1f81:	3228      	l32i.n	a2, a2, 12
    1f83:	0d4d      	mov.n	a4, a13
    1f85:	822230        	mull	a2, a2, a3
    1f88:	0c3d      	mov.n	a3, a12
    1f8a:	2e2a      	add.n	a2, a14, a2
    1f8c:	ffea01        	l32r	a0, 1f34 <system_save_sys_param+0x38>
    1f8f:	0000c0        	callx0	a0
    1f92:	120c      	movi.n	a2, 1
    1f94:	91c8      	l32i.n	a12, a1, 36
    1f96:	a1d8      	l32i.n	a13, a1, 40
    1f98:	b1e8      	l32i.n	a14, a1, 44
    1f9a:	8108      	l32i.n	a0, a1, 32
    1f9c:	30c112        	addi	a1, a1, 48
    1f9f:	f00d      	ret.n
	...
    1fc9:	000000        	ill
    1fcc:	e0c112        	addi	a1, a1, -32
    1fcf:	11c9      	s32i.n	a12, a1, 4
    1fd1:	41f9      	s32i.n	a15, a1, 16
    1fd3:	0109      	s32i.n	a0, a1, 0
    1fd5:	21d9      	s32i.n	a13, a1, 8
    1fd7:	31e9      	s32i.n	a14, a1, 12
    1fd9:	02dd      	mov.n	a13, a2
    1fdb:	03ed      	mov.n	a14, a3
    1fdd:	32cc      	bnez.n	a2, 1fe4 <system_param_load+0xac>
    1fdf:	020c      	movi.n	a2, 0
    1fe1:	0025c6        	j	207c <system_param_load+0x144>
    1fe4:	051366        	bnei	a3, 1, 1fed <system_param_load+0xb5>
    1fe7:	ffefc1        	l32r	a12, 1fa4 <system_param_load+0x6c>
    1fea:	000a46        	j	2017 <system_param_load+0xdf>
    1fed:	78a322        	movi	a2, 0x378
    1ff0:	ffef01        	l32r	a0, 1fac <system_param_load+0x74>
    1ff3:	0000c0        	callx0	a0
    1ff6:	ffec31        	l32r	a3, 1fa8 <system_param_load+0x70>
    1ff9:	0338      	l32i.n	a3, a3, 0
    1ffb:	02cd      	mov.n	a12, a2
    1ffd:	1328      	l32i.n	a2, a3, 4
    1fff:	3338      	l32i.n	a3, a3, 12
    2001:	ffeb01        	l32r	a0, 1fb0 <system_param_load+0x78>
    2004:	0000c0        	callx0	a0
    2007:	030c      	movi.n	a3, 0
    2009:	0c4d      	mov.n	a4, a12
    200b:	78a352        	movi	a5, 0x378
    200e:	fdc222        	addi	a2, a2, -3
    2011:	f42020        	extui	a2, a2, 0, 16
    2014:	000005        	call0	2018 <system_param_load+0xe0>
    2017:	3c38      	l32i.n	a3, a12, 12
    2019:	37ccf2        	addi	a15, a12, 55
    201c:	130366        	bnei	a3, -1, 2033 <system_param_load+0xfb>
    201f:	2ccb      	addi.n	a2, a12, 12
    2021:	432c      	movi.n	a3, 36
    2023:	ffe401        	l32r	a0, 1fb4 <system_param_load+0x7c>
    2026:	0000c0        	callx0	a0
    2029:	0f2d      	mov.n	a2, a15
    202b:	034c      	movi.n	a3, 64
    202d:	ffe201        	l32r	a0, 1fb8 <system_param_load+0x80>
    2030:	0000c0        	callx0	a0
    2033:	a90c42        	l8ui	a4, a12, 169
    2036:	050c      	movi.n	a5, 0
    2038:	0224b6        	bltui	a4, 2, 203e <system_param_load+0x106>
    203b:	a94c52        	s8i	a5, a12, 169
    203e:	0d2d      	mov.n	a2, a13
    2040:	10cc32        	addi	a3, a12, 16
    2043:	042c      	movi.n	a4, 32
    2045:	ffdd01        	l32r	a0, 1fbc <system_param_load+0x84>
    2048:	0000c0        	callx0	a0
    204b:	0f3d      	mov.n	a3, a15
    204d:	20cd22        	addi	a2, a13, 32
    2050:	044c      	movi.n	a4, 64
    2052:	ffdb01        	l32r	a0, 1fc0 <system_param_load+0x88>
    2055:	0000c0        	callx0	a0
    2058:	61cd22        	addi	a2, a13, 97
    205b:	640c      	movi.n	a4, 6
    205d:	01dc32        	addmi	a3, a12, 0x100
    2060:	a90c62        	l8ui	a6, a12, 169
    2063:	604d62        	s8i	a6, a13, 96
    2066:	aac332        	addi	a3, a3, -86
    2069:	ffd601        	l32r	a0, 1fc4 <system_param_load+0x8c>
    206c:	0000c0        	callx0	a0
    206f:	071e26        	beqi	a14, 1, 207a <system_param_load+0x142>
    2072:	0c2d      	mov.n	a2, a12
    2074:	ffd501        	l32r	a0, 1fc8 <system_param_load+0x90>
    2077:	0000c0        	callx0	a0
    207a:	120c      	movi.n	a2, 1
    207c:	11c8      	l32i.n	a12, a1, 4
    207e:	21d8      	l32i.n	a13, a1, 8
    2080:	31e8      	l32i.n	a14, a1, 12
    2082:	41f8      	l32i.n	a15, a1, 16
    2084:	0108      	l32i.n	a0, a1, 0
    2086:	20c112        	addi	a1, a1, 32
    2089:	f00d      	ret.n
	...

0000208c <wifi_station_get_config>:
    208c:	130c      	movi.n	a3, 1
    208e:	f0c112        	addi	a1, a1, -16
    2091:	0109      	s32i.n	a0, a1, 0
    2093:	fff385        	call0	1fcc <system_param_load+0x94>
    2096:	0108      	l32i.n	a0, a1, 0
    2098:	10c112        	addi	a1, a1, 16
    209b:	f00d      	ret.n
    209d:	000000        	ill

000020a0 <wifi_station_get_config_default>:
    20a0:	030c      	movi.n	a3, 0
    20a2:	f0c112        	addi	a1, a1, -16
    20a5:	0109      	s32i.n	a0, a1, 0
    20a7:	fff245        	call0	1fcc <system_param_load+0x94>
    20aa:	0108      	l32i.n	a0, a1, 0
    20ac:	10c112        	addi	a1, a1, 16
    20af:	f00d      	ret.n
	...

000020d4 <wifi_station_get_ap_info>:
    20d4:	fff871        	l32r	a7, 20b4 <wifi_station_get_config_default+0x14>
    20d7:	e0c112        	addi	a1, a1, -32
    20da:	31d9      	s32i.n	a13, a1, 12
    20dc:	51f9      	s32i.n	a15, a1, 20
    20de:	41e9      	s32i.n	a14, a1, 16
    20e0:	21c9      	s32i.n	a12, a1, 8
    20e2:	6179      	s32i.n	a7, a1, 24
    20e4:	800772        	l8ui	a7, a7, 128
    20e7:	1109      	s32i.n	a0, a1, 4
    20e9:	08b716        	beqz	a7, 2178 <wifi_station_get_ap_info+0xa4>
    20ec:	ffa052        	movi	a5, 255
    20ef:	0c0c      	movi.n	a12, 0
    20f1:	0e0c      	movi.n	a14, 0
    20f3:	0129      	s32i.n	a2, a1, 0
    20f5:	6108      	l32i.n	a0, a1, 24
    20f7:	64a082        	movi	a8, 100
    20fa:	008b      	addi.n	a0, a0, 8
    20fc:	d18c80        	mul16s	a8, a12, a8
    20ff:	980a      	add.n	a9, a8, a0
    2101:	800992        	l8ui	a9, a9, 128
    2104:	621957        	beq	a9, a5, 216a <wifi_station_get_ap_info+0x96>
    2107:	042c      	movi.n	a4, 32
    2109:	0108      	l32i.n	a0, a1, 0
    210b:	ffebf1        	l32r	a15, 20b8 <wifi_station_get_config_default+0x18>
    210e:	67a0d2        	movi	a13, 103
    2111:	d1ded0        	mul16s	a13, a14, a13
    2114:	f8fa      	add.n	a15, a8, a15
    2116:	dd0a      	add.n	a13, a13, a0
    2118:	0d2d      	mov.n	a2, a13
    211a:	03df32        	addmi	a3, a15, 0x300
    211d:	14c332        	addi	a3, a3, 20
    2120:	ffea01        	l32r	a0, 20c8 <wifi_station_get_config_default+0x28>
    2123:	0000c0        	callx0	a0
    2126:	20cd22        	addi	a2, a13, 32
    2129:	044c      	movi.n	a4, 64
    212b:	03df32        	addmi	a3, a15, 0x300
    212e:	34c332        	addi	a3, a3, 52
    2131:	ffe601        	l32r	a0, 20cc <wifi_station_get_config_default+0x2c>
    2134:	0000c0        	callx0	a0
    2137:	61cd22        	addi	a2, a13, 97
    213a:	f0fcc0        	subx8	a15, a12, a12
    213d:	ffdf31        	l32r	a3, 20bc <wifi_station_get_config_default+0x1c>
    2140:	19a542        	movi	a4, 0x519
    2143:	334a      	add.n	a3, a3, a4
    2145:	3f3a      	add.n	a3, a15, a3
    2147:	640c      	movi.n	a4, 6
    2149:	ffe101        	l32r	a0, 20d0 <wifi_station_get_config_default+0x30>
    214c:	0000c0        	callx0	a0
    214f:	ffdc01        	l32r	a0, 20c0 <wifi_station_get_config_default+0x20>
    2152:	ffa052        	movi	a5, 255
    2155:	ffdb61        	l32r	a6, 20c4 <wifi_station_get_config_default+0x24>
    2158:	6178      	l32i.n	a7, a1, 24
    215a:	ee1b      	addi.n	a14, a14, 1
    215c:	74e0e0        	extui	a14, a14, 0, 8
    215f:	800772        	l8ui	a7, a7, 128
    2162:	8f6a      	add.n	a8, a15, a6
    2164:	800882        	l8ui	a8, a8, 128
    2167:	604d82        	s8i	a8, a13, 96
    216a:	64a082        	movi	a8, 100
    216d:	cc1b      	addi.n	a12, a12, 1
    216f:	74c0c0        	extui	a12, a12, 0, 8
    2172:	863c77        	bltu	a12, a7, 20fc <wifi_station_get_ap_info+0x28>
    2175:	000046        	j	217a <wifi_station_get_ap_info+0xa6>
    2178:	0e0c      	movi.n	a14, 0
    217a:	1108      	l32i.n	a0, a1, 4
    217c:	21c8      	l32i.n	a12, a1, 8
    217e:	31d8      	l32i.n	a13, a1, 12
    2180:	0e2d      	mov.n	a2, a14
    2182:	51f8      	l32i.n	a15, a1, 20
    2184:	41e8      	l32i.n	a14, a1, 16
    2186:	20c112        	addi	a1, a1, 32
    2189:	f00d      	ret.n
	...

0000219c <wifi_station_ap_number_set>:
    219c:	f0c112        	addi	a1, a1, -16
    219f:	11c9      	s32i.n	a12, a1, 4
    21a1:	0109      	s32i.n	a0, a1, 0
    21a3:	02cd      	mov.n	a12, a2
    21a5:	000005        	call0	21a8 <wifi_station_ap_number_set+0xc>
    21a8:	3b6cf6        	bgeui	a12, 6, 21e7 <wifi_station_ap_number_set+0x4b>
    21ab:	8cbc      	beqz.n	a12, 21e7 <wifi_station_ap_number_set+0x4b>
    21ad:	362226        	beqi	a2, 2, 21e7 <wifi_station_ap_number_set+0x4b>
    21b0:	32bc      	beqz.n	a2, 21e7 <wifi_station_ap_number_set+0x4b>
    21b2:	fff601        	l32r	a0, 218c <wifi_station_get_ap_info+0xb8>
    21b5:	800022        	l8ui	a2, a0, 128
    21b8:	2012c7        	beq	a2, a12, 21dc <wifi_station_ap_number_set+0x40>
    21bb:	fff531        	l32r	a3, 2190 <wifi_station_get_ap_info+0xbc>
    21be:	0338      	l32i.n	a3, a3, 0
    21c0:	8040c2        	s8i	a12, a0, 128
    21c3:	1328      	l32i.n	a2, a3, 4
    21c5:	3338      	l32i.n	a3, a3, 12
    21c7:	fff401        	l32r	a0, 2198 <wifi_station_get_ap_info+0xc4>
    21ca:	0000c0        	callx0	a0
    21cd:	fff131        	l32r	a3, 2194 <wifi_station_get_ap_info+0xc0>
    21d0:	78a342        	movi	a4, 0x378
    21d3:	fdc222        	addi	a2, a2, -3
    21d6:	f42020        	extui	a2, a2, 0, 16
    21d9:	000005        	call0	21dc <wifi_station_ap_number_set+0x40>
    21dc:	120c      	movi.n	a2, 1
    21de:	11c8      	l32i.n	a12, a1, 4
    21e0:	0108      	l32i.n	a0, a1, 0
    21e2:	10c112        	addi	a1, a1, 16
    21e5:	f00d      	ret.n
    21e7:	020c      	movi.n	a2, 0
    21e9:	fffc46        	j	21de <wifi_station_ap_number_set+0x42>
	...
    2200:	010000        	slli	a0, a0, 32
    2203:	0e0000        	excw
    2206:	006000        	rsil	a0, 0
	...
    2239:	000000        	ill
    223c:	e0c112        	addi	a1, a1, -32
    223f:	41d9      	s32i.n	a13, a1, 16
    2241:	0149      	s32i.n	a4, a1, 0
    2243:	2109      	s32i.n	a0, a1, 8
    2245:	51e9      	s32i.n	a14, a1, 20
    2247:	31c9      	s32i.n	a12, a1, 12
    2249:	61f9      	s32i.n	a15, a1, 24
    224b:	02cd      	mov.n	a12, a2
    224d:	ffe7f1        	l32r	a15, 21ec <wifi_station_ap_number_set+0x50>
    2250:	03ed      	mov.n	a14, a3
    2252:	7d4f32        	s8i	a3, a15, 125
    2255:	fff101        	l32r	a0, 221c <wifi_station_ap_number_set+0x80>
    2258:	0000c0        	callx0	a0
    225b:	002c      	movi.n	a0, 32
    225d:	ffe431        	l32r	a3, 21f0 <wifi_station_ap_number_set+0x54>
    2260:	64a0d2        	movi	a13, 100
    2263:	d1dde0        	mul16s	a13, a13, a14
    2266:	d3da      	add.n	a13, a3, a13
    2268:	013027        	bltu	a0, a2, 226d <wifi_station_ap_number_set+0xd1>
    226b:	020d      	mov.n	a0, a2
    226d:	0c3d      	mov.n	a3, a12
    226f:	042c      	movi.n	a4, 32
    2271:	c46d02        	s32i	a0, a13, 0x310
    2274:	03dd22        	addmi	a2, a13, 0x300
    2277:	14c222        	addi	a2, a2, 20
    227a:	ffe901        	l32r	a0, 2220 <wifi_station_ap_number_set+0x84>
    227d:	0000c0        	callx0	a0
    2280:	044c      	movi.n	a4, 64
    2282:	20cc32        	addi	a3, a12, 32
    2285:	03dd22        	addmi	a2, a13, 0x300
    2288:	34c222        	addi	a2, a2, 52
    228b:	1139      	s32i.n	a3, a1, 4
    228d:	ffe501        	l32r	a0, 2224 <wifi_station_ap_number_set+0x88>
    2290:	0000c0        	callx0	a0
    2293:	0c3d      	mov.n	a3, a12
    2295:	042c      	movi.n	a4, 32
    2297:	c42d02        	l32i	a0, a13, 0x310
    229a:	ffd621        	l32r	a2, 21f4 <wifi_station_ap_number_set+0x58>
    229d:	7129      	s32i.n	a2, a1, 28
    229f:	476202        	s32i	a0, a2, 0x11c
    22a2:	71d8      	l32i.n	a13, a1, 28
    22a4:	ffd521        	l32r	a2, 21f8 <wifi_station_ap_number_set+0x5c>
    22a7:	ffe001        	l32r	a0, 2228 <wifi_station_ap_number_set+0x8c>
    22aa:	0000c0        	callx0	a0
    22ad:	1138      	l32i.n	a3, a1, 4
    22af:	ffd321        	l32r	a2, 21fc <wifi_station_ap_number_set+0x60>
    22b2:	044c      	movi.n	a4, 64
    22b4:	ffde01        	l32r	a0, 222c <wifi_station_ap_number_set+0x90>
    22b7:	0000c0        	callx0	a0
    22ba:	ffdf62        	addmi	a6, a15, 0xffffff00
    22bd:	030c      	movi.n	a3, 0
    22bf:	01dd72        	addmi	a7, a13, 0x100
    22c2:	120c      	movi.n	a2, 1
    22c4:	464722        	s8i	a2, a7, 70
    22c7:	b74632        	s8i	a3, a6, 183
    22ca:	ffcd41        	l32r	a4, 2200 <wifi_station_ap_number_set+0x64>
    22cd:	ffcd51        	l32r	a5, 2204 <wifi_station_ap_number_set+0x68>
    22d0:	0020c0        	memw
    22d3:	ffcd01        	l32r	a0, 2208 <wifi_station_ap_number_set+0x6c>
    22d6:	f0dee0        	subx8	a13, a14, a14
    22d9:	fd6542        	s32i	a4, a5, 0x3f4
    22dc:	600c42        	l8ui	a4, a12, 96
    22df:	0d0a      	add.n	a0, a13, a0
    22e1:	301466        	bnei	a4, 1, 2315 <wifi_station_ap_number_set+0x179>
    22e4:	640c      	movi.n	a4, 6
    22e6:	61ccc2        	addi	a12, a12, 97
    22e9:	ffdf82        	addmi	a8, a15, 0xffffff00
    22ec:	e94822        	s8i	a2, a8, 233
    22ef:	0c3d      	mov.n	a3, a12
    22f1:	804022        	s8i	a2, a0, 128
    22f4:	ffc621        	l32r	a2, 220c <wifi_station_ap_number_set+0x70>
    22f7:	ffce01        	l32r	a0, 2230 <wifi_station_ap_number_set+0x94>
    22fa:	0000c0        	callx0	a0
    22fd:	0c3d      	mov.n	a3, a12
    22ff:	ffc421        	l32r	a2, 2210 <wifi_station_ap_number_set+0x74>
    2302:	640c      	movi.n	a4, 6
    2304:	05d222        	addmi	a2, a2, 0x500
    2307:	19c222        	addi	a2, a2, 25
    230a:	2d2a      	add.n	a2, a13, a2
    230c:	ffca01        	l32r	a0, 2234 <wifi_station_ap_number_set+0x98>
    230f:	0000c0        	callx0	a0
    2312:	000206        	j	231e <wifi_station_ap_number_set+0x182>
    2315:	ffdf42        	addmi	a4, a15, 0xffffff00
    2318:	e94432        	s8i	a3, a4, 233
    231b:	804032        	s8i	a3, a0, 128
    231e:	31c8      	l32i.n	a12, a1, 12
    2320:	41d8      	l32i.n	a13, a1, 16
    2322:	51e8      	l32i.n	a14, a1, 20
    2324:	0158      	l32i.n	a5, a1, 0
    2326:	61f8      	l32i.n	a15, a1, 24
    2328:	1d1566        	bnei	a5, 1, 2349 <wifi_station_ap_number_set+0x1ad>
    232b:	ffba31        	l32r	a3, 2214 <wifi_station_ap_number_set+0x78>
    232e:	0338      	l32i.n	a3, a3, 0
    2330:	1328      	l32i.n	a2, a3, 4
    2332:	3338      	l32i.n	a3, a3, 12
    2334:	ffc101        	l32r	a0, 2238 <wifi_station_ap_number_set+0x9c>
    2337:	0000c0        	callx0	a0
    233a:	ffb731        	l32r	a3, 2218 <wifi_station_ap_number_set+0x7c>
    233d:	78a342        	movi	a4, 0x378
    2340:	fdc222        	addi	a2, a2, -3
    2343:	f42020        	extui	a2, a2, 0, 16
    2346:	000005        	call0	2348 <wifi_station_ap_number_set+0x1ac>
    2349:	2108      	l32i.n	a0, a1, 8
    234b:	20c112        	addi	a1, a1, 32
    234e:	f00d      	ret.n
    2350:	001b      	addi.n	a0, a0, 1
	...
    2366:	500000        	excw
    2369:	000001        	l32r	a0, fffc236c <system_get_sdk_version+0xfffbe668>
	...
    237c:	d0c112        	addi	a1, a1, -48
    237f:	51d9      	s32i.n	a13, a1, 20
    2381:	71f9      	s32i.n	a15, a1, 28
    2383:	3109      	s32i.n	a0, a1, 12
    2385:	41c9      	s32i.n	a12, a1, 16
    2387:	61e9      	s32i.n	a14, a1, 24
    2389:	03cd      	mov.n	a12, a3
    238b:	02ed      	mov.n	a14, a2
    238d:	000005        	call0	2390 <wifi_station_ap_number_set+0x1f4>
    2390:	0fce16        	beqz	a14, 2490 <wifi_station_ap_number_set+0x2f4>
    2393:	fec202        	addi	a0, a2, -2
    2396:	0f6016        	beqz	a0, 2490 <wifi_station_ap_number_set+0x2f4>
    2399:	0f3216        	beqz	a2, 2490 <wifi_station_ap_number_set+0x2f4>
    239c:	320c      	movi.n	a2, 3
    239e:	fe6305        	call0	9d0 <system_restore-0x3d0>
    23a1:	160266        	bnei	a2, -1, 23bb <wifi_station_ap_number_set+0x21f>
    23a4:	0e3d      	mov.n	a3, a14
    23a6:	ffea21        	l32r	a2, 2350 <wifi_station_ap_number_set+0x1b4>
    23a9:	67a042        	movi	a4, 103
    23ac:	fff001        	l32r	a0, 236c <wifi_station_ap_number_set+0x1d0>
    23af:	0000c0        	callx0	a0
    23b2:	ffe821        	l32r	a2, 2354 <wifi_station_ap_number_set+0x1b8>
    23b5:	8242c2        	s8i	a12, a2, 130
    23b8:	0030c6        	j	247f <wifi_station_ap_number_set+0x2e3>
    23bb:	ffe701        	l32r	a0, 2358 <wifi_station_ap_number_set+0x1bc>
    23be:	800032        	l8ui	a3, a0, 128
    23c1:	21c9      	s32i.n	a12, a1, 8
    23c3:	03dd      	mov.n	a13, a3
    23c5:	079316        	beqz	a3, 2442 <wifi_station_ap_number_set+0x2a6>
    23c8:	0c0c      	movi.n	a12, 0
    23ca:	0109      	s32i.n	a0, a1, 0
    23cc:	61ce82        	addi	a8, a14, 97
    23cf:	20ce92        	addi	a9, a14, 32
    23d2:	8199      	s32i.n	a9, a1, 32
    23d4:	1189      	s32i.n	a8, a1, 4
    23d6:	0e3d      	mov.n	a3, a14
    23d8:	042c      	movi.n	a4, 32
    23da:	ffe0f1        	l32r	a15, 235c <wifi_station_ap_number_set+0x1c0>
    23dd:	64a002        	movi	a0, 100
    23e0:	d10c00        	mul16s	a0, a12, a0
    23e3:	ff0a      	add.n	a15, a15, a0
    23e5:	03df22        	addmi	a2, a15, 0x300
    23e8:	14c222        	addi	a2, a2, 20
    23eb:	ffe101        	l32r	a0, 2370 <wifi_station_ap_number_set+0x1d4>
    23ee:	0000c0        	callx0	a0
    23f1:	045256        	bnez	a2, 243a <wifi_station_ap_number_set+0x29e>
    23f4:	8138      	l32i.n	a3, a1, 32
    23f6:	044c      	movi.n	a4, 64
    23f8:	03df22        	addmi	a2, a15, 0x300
    23fb:	34c222        	addi	a2, a2, 52
    23fe:	ffdd01        	l32r	a0, 2374 <wifi_station_ap_number_set+0x1d8>
    2401:	0000c0        	callx0	a0
    2404:	22fc      	bnez.n	a2, 243a <wifi_station_ap_number_set+0x29e>
    2406:	600e32        	l8ui	a3, a14, 96
    2409:	100c      	movi.n	a0, 1
    240b:	211366        	bnei	a3, 1, 2430 <wifi_station_ap_number_set+0x294>
    240e:	f03cc0        	subx8	a3, a12, a12
    2411:	ffd321        	l32r	a2, 2360 <wifi_station_ap_number_set+0x1c4>
    2414:	640c      	movi.n	a4, 6
    2416:	223a      	add.n	a2, a2, a3
    2418:	1138      	l32i.n	a3, a1, 4
    241a:	05d222        	addmi	a2, a2, 0x500
    241d:	19c222        	addi	a2, a2, 25
    2420:	ffd601        	l32r	a0, 2378 <wifi_station_ap_number_set+0x1dc>
    2423:	0000c0        	callx0	a0
    2426:	140c      	movi.n	a4, 1
    2428:	000c      	movi.n	a0, 0
    242a:	830420        	moveqz	a0, a4, a2
    242d:	ffffc6        	j	2430 <wifi_station_ap_number_set+0x294>
    2430:	608c      	beqz.n	a0, 243a <wifi_station_ap_number_set+0x29e>
    2432:	0158      	l32i.n	a5, a1, 0
    2434:	810552        	l8ui	a5, a5, 129
    2437:	4415c7        	beq	a5, a12, 247f <wifi_station_ap_number_set+0x2e3>
    243a:	cc1b      	addi.n	a12, a12, 1
    243c:	74c0c0        	extui	a12, a12, 0, 8
    243f:	939dc7        	bne	a13, a12, 23d6 <wifi_station_ap_number_set+0x23a>
    2442:	cd9c      	beqz.n	a13, 2462 <wifi_station_ap_number_set+0x2c6>
    2444:	ffc801        	l32r	a0, 2364 <wifi_station_ap_number_set+0x1c8>
    2447:	ffa022        	movi	a2, 255
    244a:	0c0c      	movi.n	a12, 0
    244c:	64a0f2        	movi	a15, 100
    244f:	d1fcf0        	mul16s	a15, a12, a15
    2452:	f0fa      	add.n	a15, a0, a15
    2454:	800ff2        	l8ui	a15, a15, 128
    2457:	3a1f27        	beq	a15, a2, 2495 <wifi_station_ap_number_set+0x2f9>
    245a:	cc1b      	addi.n	a12, a12, 1
    245c:	74c0c0        	extui	a12, a12, 0, 8
    245f:	e99dc7        	bne	a13, a12, 244c <wifi_station_ap_number_set+0x2b0>
    2462:	ffc1c1        	l32r	a12, 2368 <wifi_station_ap_number_set+0x1cc>
    2465:	000c32        	l8ui	a3, a12, 0
    2468:	049d37        	bne	a13, a3, 2470 <wifi_station_ap_number_set+0x2d4>
    246b:	030c      	movi.n	a3, 0
    246d:	004c32        	s8i	a3, a12, 0
    2470:	0e2d      	mov.n	a2, a14
    2472:	2148      	l32i.n	a4, a1, 8
    2474:	ffdc45        	call0	223c <wifi_station_ap_number_set+0xa0>
    2477:	000cd2        	l8ui	a13, a12, 0
    247a:	dd1b      	addi.n	a13, a13, 1
    247c:	004cd2        	s8i	a13, a12, 0
    247f:	120c      	movi.n	a2, 1
    2481:	41c8      	l32i.n	a12, a1, 16
    2483:	51d8      	l32i.n	a13, a1, 20
    2485:	61e8      	l32i.n	a14, a1, 24
    2487:	71f8      	l32i.n	a15, a1, 28
    2489:	3108      	l32i.n	a0, a1, 12
    248b:	30c112        	addi	a1, a1, 48
    248e:	f00d      	ret.n
    2490:	020c      	movi.n	a2, 0
    2492:	fffac6        	j	2481 <wifi_station_ap_number_set+0x2e5>
    2495:	0c3d      	mov.n	a3, a12
    2497:	0e2d      	mov.n	a2, a14
    2499:	2148      	l32i.n	a4, a1, 8
    249b:	ffda05        	call0	223c <wifi_station_ap_number_set+0xa0>
    249e:	fff746        	j	247f <wifi_station_ap_number_set+0x2e3>
    24a1:	000000        	ill

000024a4 <wifi_station_set_config>:
    24a4:	130c      	movi.n	a3, 1
    24a6:	f0c112        	addi	a1, a1, -16
    24a9:	0109      	s32i.n	a0, a1, 0
    24ab:	ffed05        	call0	237c <wifi_station_ap_number_set+0x1e0>
    24ae:	0108      	l32i.n	a0, a1, 0
    24b0:	10c112        	addi	a1, a1, 16
    24b3:	f00d      	ret.n
    24b5:	000000        	ill

000024b8 <wifi_station_set_config_current>:
    24b8:	030c      	movi.n	a3, 0
    24ba:	f0c112        	addi	a1, a1, -16
    24bd:	0109      	s32i.n	a0, a1, 0
    24bf:	ffebc5        	call0	237c <wifi_station_ap_number_set+0x1e0>
    24c2:	0108      	l32i.n	a0, a1, 0
    24c4:	10c112        	addi	a1, a1, 16
    24c7:	f00d      	ret.n
    24c9:	000000        	ill
    24cc:	000000        	ill
	...

000024d0 <wifi_station_get_current_ap_id>:
    24d0:	ffff21        	l32r	a2, 24cc <wifi_station_set_config_current+0x14>
    24d3:	7d0222        	l8ui	a2, a2, 125
    24d6:	ffa032        	movi	a3, 255
    24d9:	011237        	beq	a2, a3, 24de <wifi_station_get_current_ap_id+0xe>
    24dc:	f00d      	ret.n
    24de:	020c      	movi.n	a2, 0
    24e0:	f00d      	ret.n
    24e2:	000000        	ill
    24e5:	000000        	ill

000024e8 <wifi_station_ap_check>:
    24e8:	2212a6        	blti	a2, 1, 250e <wifi_station_ap_check+0x26>
    24eb:	ffa082        	movi	a8, 255
    24ee:	c8a092        	movi	a9, 200
    24f1:	060c      	movi.n	a6, 0
    24f3:	fffc51        	l32r	a5, 24e4 <wifi_station_get_current_ap_id+0x14>
    24f6:	64a072        	movi	a7, 100
    24f9:	d17720        	mul16s	a7, a7, a2
    24fc:	775a      	add.n	a7, a7, a5
    24fe:	8005a2        	l8ui	a10, a5, 128
    2501:	662b      	addi.n	a6, a6, 2
    2503:	109a87        	bne	a10, a8, 2517 <wifi_station_ap_check+0x2f>
    2506:	559a      	add.n	a5, a5, a9
    2508:	f23577        	bltu	a5, a7, 24fe <wifi_station_ap_check+0x16>
    250b:	000046        	j	2510 <wifi_station_ap_check+0x28>
    250e:	060c      	movi.n	a6, 0
    2510:	019627        	bne	a6, a2, 2515 <wifi_station_ap_check+0x2d>
    2513:	020c      	movi.n	a2, 0
    2515:	f00d      	ret.n
    2517:	120c      	movi.n	a2, 1
    2519:	f00d      	ret.n
	...
    2527:	027000        	excw
	...
    253e:	000001        	l32r	a0, fffc2540 <system_get_sdk_version+0xfffbe83c>
    2541:	0e          	.byte 0xe
    2542:	006000        	rsil	a0, 0
	...

00002560 <wifi_station_ap_change>:
    2560:	e0c112        	addi	a1, a1, -32
    2563:	2109      	s32i.n	a0, a1, 8
    2565:	41d9      	s32i.n	a13, a1, 16
    2567:	51e9      	s32i.n	a14, a1, 20
    2569:	31c9      	s32i.n	a12, a1, 12
    256b:	ffece1        	l32r	a14, 251c <wifi_station_ap_check+0x34>
    256e:	02cd      	mov.n	a12, a2
    2570:	800ed2        	l8ui	a13, a14, 128
    2573:	000005        	call0	2574 <wifi_station_ap_change+0x14>
    2576:	0c2226        	beqi	a2, 2, 2586 <wifi_station_ap_change+0x26>
    2579:	928c      	beqz.n	a2, 2586 <wifi_station_ap_change+0x26>
    257b:	07bcd7        	bgeu	a12, a13, 2586 <wifi_station_ap_change+0x26>
    257e:	ffe801        	l32r	a0, 2520 <wifi_station_ap_check+0x38>
    2581:	3e0002        	l8ui	a0, a0, 62
    2584:	d08c      	beqz.n	a0, 2595 <wifi_station_ap_change+0x35>
    2586:	020c      	movi.n	a2, 0
    2588:	31c8      	l32i.n	a12, a1, 12
    258a:	41d8      	l32i.n	a13, a1, 16
    258c:	51e8      	l32i.n	a14, a1, 20
    258e:	2108      	l32i.n	a0, a1, 8
    2590:	20c112        	addi	a1, a1, 32
    2593:	f00d      	ret.n
    2595:	0d2d      	mov.n	a2, a13
    2597:	000005        	call0	2598 <wifi_station_ap_change+0x38>
    259a:	fe8216        	beqz	a2, 2586 <wifi_station_ap_change+0x26>
    259d:	ffe101        	l32r	a0, 2524 <wifi_station_ap_check+0x3c>
    25a0:	64a0d2        	movi	a13, 100
    25a3:	d1ddc0        	mul16s	a13, a13, a12
    25a6:	11d9      	s32i.n	a13, a1, 4
    25a8:	dd0a      	add.n	a13, a13, a0
    25aa:	800d22        	l8ui	a2, a13, 128
    25ad:	ffa032        	movi	a3, 255
    25b0:	d21237        	beq	a2, a3, 2586 <wifi_station_ap_change+0x26>
    25b3:	ffdd21        	l32r	a2, 2528 <wifi_station_ap_check+0x40>
    25b6:	0c3d      	mov.n	a3, a12
    25b8:	ffe601        	l32r	a0, 2550 <wifi_station_ap_check+0x68>
    25bb:	0000c0        	callx0	a0
    25be:	810e02        	l8ui	a0, a14, 129
    25c1:	0290c7        	bne	a0, a12, 25c7 <wifi_station_ap_change+0x67>
    25c4:	002046        	j	2649 <wifi_station_ap_change+0xe9>
    25c7:	814ec2        	s8i	a12, a14, 129
    25ca:	042c      	movi.n	a4, 32
    25cc:	ffd901        	l32r	a0, 2530 <wifi_station_ap_check+0x48>
    25cf:	1f2d22        	l32i	a2, a13, 124
    25d2:	ffd631        	l32r	a3, 252c <wifi_station_ap_check+0x44>
    25d5:	0139      	s32i.n	a3, a1, 0
    25d7:	11d8      	l32i.n	a13, a1, 4
    25d9:	476322        	s32i	a2, a3, 0x11c
    25dc:	ffd621        	l32r	a2, 2534 <wifi_station_ap_check+0x4c>
    25df:	dd0a      	add.n	a13, a13, a0
    25e1:	03dd32        	addmi	a3, a13, 0x300
    25e4:	14c332        	addi	a3, a3, 20
    25e7:	ffdb01        	l32r	a0, 2554 <wifi_station_ap_check+0x6c>
    25ea:	0000c0        	callx0	a0
    25ed:	ffd221        	l32r	a2, 2538 <wifi_station_ap_check+0x50>
    25f0:	044c      	movi.n	a4, 64
    25f2:	03dd32        	addmi	a3, a13, 0x300
    25f5:	34c332        	addi	a3, a3, 52
    25f8:	ffd801        	l32r	a0, 2558 <wifi_station_ap_check+0x70>
    25fb:	0000c0        	callx0	a0
    25fe:	180c      	movi.n	a8, 1
    2600:	ffde72        	addmi	a7, a14, 0xffffff00
    2603:	0198      	l32i.n	a9, a1, 0
    2605:	060c      	movi.n	a6, 0
    2607:	01d992        	addmi	a9, a9, 0x100
    260a:	bb4762        	s8i	a6, a7, 187
    260d:	464982        	s8i	a8, a9, 70
    2610:	ffcb41        	l32r	a4, 253c <wifi_station_ap_check+0x54>
    2613:	ffcb51        	l32r	a5, 2540 <wifi_station_ap_check+0x58>
    2616:	0020c0        	memw
    2619:	ffcc21        	l32r	a2, 254c <wifi_station_ap_check+0x64>
    261c:	ffcb61        	l32r	a6, 2548 <wifi_station_ap_check+0x60>
    261f:	fd6542        	s32i	a4, a5, 0x3f4
    2622:	ffc831        	l32r	a3, 2544 <wifi_station_ap_check+0x5c>
    2625:	ffde52        	addmi	a5, a14, 0xffffff00
    2628:	05d332        	addmi	a3, a3, 0x500
    262b:	f04cc0        	subx8	a4, a12, a12
    262e:	19c332        	addi	a3, a3, 25
    2631:	343a      	add.n	a3, a4, a3
    2633:	446a      	add.n	a4, a4, a6
    2635:	800442        	l8ui	a4, a4, 128
    2638:	ed4542        	s8i	a4, a5, 237
    263b:	640c      	movi.n	a4, 6
    263d:	ffc701        	l32r	a0, 255c <wifi_station_ap_check+0x74>
    2640:	0000c0        	callx0	a0
    2643:	000005        	call0	2644 <wifi_station_ap_change+0xe4>
    2646:	000005        	call0	2648 <wifi_station_ap_change+0xe8>
    2649:	120c      	movi.n	a2, 1
    264b:	ffce46        	j	2588 <wifi_station_ap_change+0x28>
	...

00002660 <wifi_station_scan>:
    2660:	f0c112        	addi	a1, a1, -16
    2663:	3109      	s32i.n	a0, a1, 12
    2665:	0129      	s32i.n	a2, a1, 0
    2667:	fffa01        	l32r	a0, 2650 <wifi_station_ap_change+0xf0>
    266a:	1139      	s32i.n	a3, a1, 4
    266c:	4008      	l32i.n	a0, a0, 16
    266e:	2109      	s32i.n	a0, a1, 8
    2670:	000005        	call0	2674 <wifi_station_scan+0x14>
    2673:	2b2226        	beqi	a2, 2, 26a2 <wifi_station_scan+0x42>
    2676:	82ac      	beqz.n	a2, 26a2 <wifi_station_scan+0x42>
    2678:	2128      	l32i.n	a2, a1, 8
    267a:	fff601        	l32r	a0, 2654 <wifi_station_ap_change+0xf4>
    267d:	12ac      	beqz.n	a2, 26a2 <wifi_station_scan+0x42>
    267f:	3e0032        	l8ui	a3, a0, 62
    2682:	c3dc      	bnez.n	a3, 26a2 <wifi_station_scan+0x42>
    2684:	0128      	l32i.n	a2, a1, 0
    2686:	1138      	l32i.n	a3, a1, 4
    2688:	dcc042        	addi	a4, a0, -36
    268b:	fff361        	l32r	a6, 2658 <wifi_station_ap_change+0xf8>
    268e:	050c      	movi.n	a5, 0
    2690:	005652        	s16i	a5, a6, 0
    2693:	fff201        	l32r	a0, 265c <wifi_station_ap_change+0xfc>
    2696:	0000c0        	callx0	a0
    2699:	120c      	movi.n	a2, 1
    269b:	3108      	l32i.n	a0, a1, 12
    269d:	10c112        	addi	a1, a1, 16
    26a0:	f00d      	ret.n
    26a2:	020c      	movi.n	a2, 0
    26a4:	fffcc6        	j	269b <wifi_station_scan+0x3b>
    26a7:	000000        	ill
	...

000026ac <wifi_station_get_auto_connect>:
    26ac:	ffff31        	l32r	a3, 26a8 <wifi_station_scan+0x48>
    26af:	800332        	l8ui	a3, a3, 128
    26b2:	140c      	movi.n	a4, 1
    26b4:	0123f6        	bgeui	a3, 2, 26b9 <wifi_station_get_auto_connect+0xd>
    26b7:	034d      	mov.n	a4, a3
    26b9:	742040        	extui	a2, a4, 0, 8
    26bc:	f00d      	ret.n
	...

000026d0 <wifi_station_set_auto_connect>:
    26d0:	f0c112        	addi	a1, a1, -16
    26d3:	11c9      	s32i.n	a12, a1, 4
    26d5:	0109      	s32i.n	a0, a1, 0
    26d7:	02cd      	mov.n	a12, a2
    26d9:	000005        	call0	26dc <wifi_station_set_auto_connect+0xc>
    26dc:	392cf6        	bgeui	a12, 2, 2719 <wifi_station_set_auto_connect+0x49>
    26df:	362226        	beqi	a2, 2, 2719 <wifi_station_set_auto_connect+0x49>
    26e2:	32bc      	beqz.n	a2, 2719 <wifi_station_set_auto_connect+0x49>
    26e4:	fff701        	l32r	a0, 26c0 <wifi_station_get_auto_connect+0x14>
    26e7:	800022        	l8ui	a2, a0, 128
    26ea:	2012c7        	beq	a2, a12, 270e <wifi_station_set_auto_connect+0x3e>
    26ed:	fff531        	l32r	a3, 26c4 <wifi_station_get_auto_connect+0x18>
    26f0:	0338      	l32i.n	a3, a3, 0
    26f2:	8040c2        	s8i	a12, a0, 128
    26f5:	1328      	l32i.n	a2, a3, 4
    26f7:	3338      	l32i.n	a3, a3, 12
    26f9:	fff401        	l32r	a0, 26cc <wifi_station_get_auto_connect+0x20>
    26fc:	0000c0        	callx0	a0
    26ff:	fff231        	l32r	a3, 26c8 <wifi_station_get_auto_connect+0x1c>
    2702:	78a342        	movi	a4, 0x378
    2705:	fdc222        	addi	a2, a2, -3
    2708:	f42020        	extui	a2, a2, 0, 16
    270b:	000005        	call0	270c <wifi_station_set_auto_connect+0x3c>
    270e:	120c      	movi.n	a2, 1
    2710:	11c8      	l32i.n	a12, a1, 4
    2712:	0108      	l32i.n	a0, a1, 0
    2714:	10c112        	addi	a1, a1, 16
    2717:	f00d      	ret.n
    2719:	020c      	movi.n	a2, 0
    271b:	fffc46        	j	2710 <wifi_station_set_auto_connect+0x40>
	...
    272e:	ff          	.byte 0xff
    272f:	ff          	.byte 0xff
    2730:	000e00        	excw
    2733:	000060        	excw
	...

00002744 <wifi_station_connect>:
    2744:	f0c112        	addi	a1, a1, -16
    2747:	1109      	s32i.n	a0, a1, 4
    2749:	fff501        	l32r	a0, 2720 <wifi_station_set_auto_connect+0x50>
    274c:	4008      	l32i.n	a0, a0, 16
    274e:	0109      	s32i.n	a0, a1, 0
    2750:	000005        	call0	2754 <wifi_station_connect+0x10>
    2753:	602226        	beqi	a2, 2, 27b7 <wifi_station_connect+0x73>
    2756:	05d216        	beqz	a2, 27b7 <wifi_station_connect+0x73>
    2759:	0128      	l32i.n	a2, a1, 0
    275b:	fff231        	l32r	a3, 2724 <wifi_station_set_auto_connect+0x54>
    275e:	055216        	beqz	a2, 27b7 <wifi_station_connect+0x73>
    2761:	3e0332        	l8ui	a3, a3, 62
    2764:	04f356        	bnez	a3, 27b7 <wifi_station_connect+0x73>
    2767:	220c      	movi.n	a2, 2
    2769:	fe2645        	call0	9d0 <system_restore-0x3d0>
    276c:	540226        	beqi	a2, -1, 27c4 <wifi_station_connect+0x80>
    276f:	ffee01        	l32r	a0, 2728 <wifi_station_set_auto_connect+0x58>
    2772:	4028      	l32i.n	a2, a0, 16
    2774:	040c      	movi.n	a4, 0
    2776:	b84242        	s8i	a4, a2, 184
    2779:	4058      	l32i.n	a5, a0, 16
    277b:	772002        	l32i	a0, a0, 0x1dc
    277e:	b94542        	s8i	a4, a5, 185
    2781:	3f0026        	beqi	a0, -1, 27c4 <wifi_station_connect+0x80>
    2784:	c0bc      	beqz.n	a0, 27c4 <wifi_station_connect+0x80>
    2786:	ffe951        	l32r	a5, 272c <wifi_station_set_auto_connect+0x5c>
    2789:	ffe931        	l32r	a3, 2730 <wifi_station_set_auto_connect+0x60>
    278c:	0020c0        	memw
    278f:	fd2342        	l32i	a4, a3, 0x3f4
    2792:	104450        	and	a4, a4, a5
    2795:	f54040        	extui	a4, a4, 16, 16
    2798:	0020c0        	memw
    279b:	fd2332        	l32i	a3, a3, 0x3f4
    279e:	ffe521        	l32r	a2, 2734 <wifi_station_set_auto_connect+0x64>
    27a1:	743030        	extui	a3, a3, 0, 8
    27a4:	141466        	bnei	a4, 1, 27bc <wifi_station_connect+0x78>
    27a7:	d60c      	movi.n	a6, 13
    27a9:	20b637        	bgeu	a6, a3, 27cd <wifi_station_connect+0x89>
    27ac:	030c      	movi.n	a3, 0
    27ae:	ffe201        	l32r	a0, 2738 <wifi_station_set_auto_connect+0x68>
    27b1:	0000c0        	callx0	a0
    27b4:	000306        	j	27c4 <wifi_station_connect+0x80>
    27b7:	020c      	movi.n	a2, 0
    27b9:	000246        	j	27c6 <wifi_station_connect+0x82>
    27bc:	030c      	movi.n	a3, 0
    27be:	ffdf01        	l32r	a0, 273c <wifi_station_set_auto_connect+0x6c>
    27c1:	0000c0        	callx0	a0
    27c4:	120c      	movi.n	a2, 1
    27c6:	1108      	l32i.n	a0, a1, 4
    27c8:	10c112        	addi	a1, a1, 16
    27cb:	f00d      	ret.n
    27cd:	ffdc01        	l32r	a0, 2740 <wifi_station_set_auto_connect+0x70>
    27d0:	0000c0        	callx0	a0
    27d3:	fffb46        	j	27c4 <wifi_station_connect+0x80>
	...
    27de:	900000        	addx2	a0, a0, a0
    27e1:	000000        	ill
    27e4:	000000        	ill
    27e7:	009000        	excw
    27ea:	000000        	ill
    27ed:	000100        	excw
    27f0:	000e00        	excw
    27f3:	000060        	excw
	...

0000281c <wifi_station_disconnect>:
    281c:	f0c112        	addi	a1, a1, -16
    281f:	11c9      	s32i.n	a12, a1, 4
    2821:	ffedc1        	l32r	a12, 27d8 <wifi_station_connect+0x94>
    2824:	0109      	s32i.n	a0, a1, 0
    2826:	4cc8      	l32i.n	a12, a12, 16
    2828:	000005        	call0	282c <wifi_station_disconnect+0x10>
    282b:	069c16        	beqz	a12, 2898 <wifi_station_disconnect+0x7c>
    282e:	ffeb01        	l32r	a0, 27dc <wifi_station_connect+0x98>
    2831:	3e0002        	l8ui	a0, a0, 62
    2834:	060056        	bnez	a0, 2898 <wifi_station_disconnect+0x7c>
    2837:	ffea01        	l32r	a0, 27e0 <wifi_station_connect+0x9c>
    283a:	542226        	beqi	a2, 2, 2892 <wifi_station_disconnect+0x76>
    283d:	051216        	beqz	a2, 2892 <wifi_station_disconnect+0x76>
    2840:	120c      	movi.n	a2, 1
    2842:	fe18c5        	call0	9d0 <system_restore-0x3d0>
    2845:	020266        	bnei	a2, -1, 284b <wifi_station_disconnect+0x2f>
    2848:	002286        	j	28d6 <wifi_station_disconnect+0xba>
    284b:	ffe641        	l32r	a4, 27e4 <wifi_station_connect+0xa0>
    284e:	4468      	l32i.n	a6, a4, 16
    2850:	030c      	movi.n	a3, 0
    2852:	b84632        	s8i	a3, a6, 184
    2855:	4458      	l32i.n	a5, a4, 16
    2857:	ba4532        	s8i	a3, a5, 186
    285a:	4448      	l32i.n	a4, a4, 16
    285c:	ffe321        	l32r	a2, 27e8 <wifi_station_connect+0xa4>
    285f:	b94432        	s8i	a3, a4, 185
    2862:	670222        	l8ui	a2, a2, 103
    2865:	a2cc      	bnez.n	a2, 2873 <wifi_station_disconnect+0x57>
    2867:	ffe171        	l32r	a7, 27ec <wifi_station_connect+0xa8>
    286a:	ffe181        	l32r	a8, 27f0 <wifi_station_connect+0xac>
    286d:	0020c0        	memw
    2870:	fd6872        	s32i	a7, a8, 0x3f4
    2873:	ffe401        	l32r	a0, 2804 <wifi_station_connect+0xc0>
    2876:	0000c0        	callx0	a0
    2879:	ffde01        	l32r	a0, 27f4 <wifi_station_connect+0xb0>
    287c:	4008      	l32i.n	a0, a0, 16
    287e:	b098      	l32i.n	a9, a0, 44
    2880:	999c      	beqz.n	a9, 289d <wifi_station_disconnect+0x81>
    2882:	ffdd21        	l32r	a2, 27f8 <wifi_station_connect+0xb4>
    2885:	030c      	movi.n	a3, 0
    2887:	040c      	movi.n	a4, 0
    2889:	ffdf01        	l32r	a0, 2808 <wifi_station_connect+0xc4>
    288c:	0000c0        	callx0	a0
    288f:	000806        	j	28b3 <wifi_station_disconnect+0x97>
    2892:	950022        	l8ui	a2, a0, 149
    2895:	fa7256        	bnez	a2, 2840 <wifi_station_disconnect+0x24>
    2898:	020c      	movi.n	a2, 0
    289a:	000e86        	j	28d8 <wifi_station_disconnect+0xbc>
    289d:	204b      	addi.n	a2, a0, 4
    289f:	ffdb01        	l32r	a0, 280c <wifi_station_connect+0xc8>
    28a2:	0000c0        	callx0	a0
    28a5:	ffd521        	l32r	a2, 27fc <wifi_station_connect+0xb8>
    28a8:	4228      	l32i.n	a2, a2, 16
    28aa:	18c222        	addi	a2, a2, 24
    28ad:	ffd801        	l32r	a0, 2810 <wifi_station_connect+0xcc>
    28b0:	0000c0        	callx0	a0
    28b3:	ffd331        	l32r	a3, 2800 <wifi_station_connect+0xbc>
    28b6:	4338      	l32i.n	a3, a3, 16
    28b8:	2e2332        	l32i	a3, a3, 184
    28bb:	17f397        	bbsi	a3, 25, 28d6 <wifi_station_disconnect+0xba>
    28be:	0c2d      	mov.n	a2, a12
    28c0:	ffd501        	l32r	a0, 2814 <wifi_station_connect+0xd0>
    28c3:	0000c0        	callx0	a0
    28c6:	020c      	movi.n	a2, 0
    28c8:	030c      	movi.n	a3, 0
    28ca:	040c      	movi.n	a4, 0
    28cc:	050c      	movi.n	a5, 0
    28ce:	060c      	movi.n	a6, 0
    28d0:	ffd201        	l32r	a0, 2818 <wifi_station_connect+0xd4>
    28d3:	0000c0        	callx0	a0
    28d6:	120c      	movi.n	a2, 1
    28d8:	11c8      	l32i.n	a12, a1, 4
    28da:	0108      	l32i.n	a0, a1, 0
    28dc:	10c112        	addi	a1, a1, 16
    28df:	f00d      	ret.n
	...

000028ec <wifi_station_get_connect_status>:
    28ec:	f0c112        	addi	a1, a1, -16
    28ef:	1109      	s32i.n	a0, a1, 4
    28f1:	fffc01        	l32r	a0, 28e4 <wifi_station_disconnect+0xc8>
    28f4:	4008      	l32i.n	a0, a0, 16
    28f6:	0109      	s32i.n	a0, a1, 0
    28f8:	000005        	call0	28fc <wifi_station_get_connect_status+0x10>
    28fb:	1108      	l32i.n	a0, a1, 4
    28fd:	122226        	beqi	a2, 2, 2913 <wifi_station_get_connect_status+0x27>
    2900:	f28c      	beqz.n	a2, 2913 <wifi_station_get_connect_status+0x27>
    2902:	0128      	l32i.n	a2, a1, 0
    2904:	b28c      	beqz.n	a2, 2913 <wifi_station_get_connect_status+0x27>
    2906:	fff821        	l32r	a2, 28e8 <wifi_station_disconnect+0xcc>
    2909:	4228      	l32i.n	a2, a2, 16
    290b:	ba0222        	l8ui	a2, a2, 186
    290e:	10c112        	addi	a1, a1, 16
    2911:	f00d      	ret.n
    2913:	ffa022        	movi	a2, 255
    2916:	fffd06        	j	290e <wifi_station_get_connect_status+0x22>
    2919:	000000        	ill
    291c:	000000        	ill
	...

00002920 <wifi_station_set_reconnect_policy>:
    2920:	728c      	beqz.n	a2, 292b <wifi_station_set_reconnect_policy+0xb>
    2922:	051226        	beqi	a2, 1, 292b <wifi_station_set_reconnect_policy+0xb>
    2925:	040c      	movi.n	a4, 0
    2927:	042d      	mov.n	a2, a4
    2929:	f00d      	ret.n
    292b:	fffc31        	l32r	a3, 291c <wifi_station_get_connect_status+0x30>
    292e:	140c      	movi.n	a4, 1
    2930:	044322        	s8i	a2, a3, 4
    2933:	fffc06        	j	2927 <wifi_station_set_reconnect_policy+0x7>
    2936:	000000        	ill
    2939:	000000        	ill

0000293c <wifi_station_get_reconnect_policy>:
    293c:	ffff21        	l32r	a2, 2938 <wifi_station_set_reconnect_policy+0x18>
    293f:	040222        	l8ui	a2, a2, 4
    2942:	f00d      	ret.n
	...

0000294c <wifi_station_get_rssi>:
    294c:	f0c112        	addi	a1, a1, -16
    294f:	0109      	s32i.n	a0, a1, 0
    2951:	000005        	call0	2954 <wifi_station_get_rssi+0x8>
    2954:	0b1226        	beqi	a2, 1, 2963 <wifi_station_get_rssi+0x17>
    2957:	083226        	beqi	a2, 3, 2963 <wifi_station_get_rssi+0x17>
    295a:	f21c      	movi.n	a2, 31
    295c:	0108      	l32i.n	a0, a1, 0
    295e:	10c112        	addi	a1, a1, 16
    2961:	f00d      	ret.n
    2963:	fff801        	l32r	a0, 2944 <wifi_station_get_reconnect_policy+0x8>
    2966:	4008      	l32i.n	a0, a0, 16
    2968:	909c      	beqz.n	a0, 2985 <wifi_station_get_rssi+0x39>
    296a:	1e2032        	l32i	a3, a0, 120
    296d:	f21c      	movi.n	a2, 31
    296f:	f38c      	beqz.n	a3, 2982 <wifi_station_get_rssi+0x36>
    2971:	020c      	movi.n	a2, 0
    2973:	fff501        	l32r	a0, 2948 <wifi_station_get_reconnect_policy+0xc>
    2976:	0000c0        	callx0	a0
    2979:	012280        	slli	a2, a2, 24
    297c:	312820        	srai	a2, a2, 24
    297f:	fff646        	j	295c <wifi_station_get_rssi+0x10>
    2982:	fff586        	j	295c <wifi_station_get_rssi+0x10>
    2985:	f21c      	movi.n	a2, 31
    2987:	fff446        	j	295c <wifi_station_get_rssi+0x10>
	...

000029ac <wifi_station_set_default_hostname>:
    29ac:	d0c112        	addi	a1, a1, -48
    29af:	028d      	mov.n	a8, a2
    29b1:	fff621        	l32r	a2, 298c <wifi_station_get_rssi+0x40>
    29b4:	9109      	s32i.n	a0, a1, 36
    29b6:	0228      	l32i.n	a2, a2, 0
    29b8:	8189      	s32i.n	a8, a1, 32
    29ba:	b28c      	beqz.n	a2, 29c9 <wifi_station_set_default_hostname+0x1d>
    29bc:	fff901        	l32r	a0, 29a0 <wifi_station_get_rssi+0x54>
    29bf:	0000c0        	callx0	a0
    29c2:	fff341        	l32r	a4, 2990 <wifi_station_get_rssi+0x44>
    29c5:	030c      	movi.n	a3, 0
    29c7:	0439      	s32i.n	a3, a4, 0
    29c9:	022c      	movi.n	a2, 32
    29cb:	fff601        	l32r	a0, 29a4 <wifi_station_get_rssi+0x58>
    29ce:	0000c0        	callx0	a0
    29d1:	fff051        	l32r	a5, 2994 <wifi_station_get_rssi+0x48>
    29d4:	0529      	s32i.n	a2, a5, 0
    29d6:	02ac      	beqz.n	a2, 29fa <wifi_station_set_default_hostname+0x4e>
    29d8:	fff021        	l32r	a2, 2998 <wifi_station_get_rssi+0x4c>
    29db:	013d      	mov.n	a3, a1
    29dd:	441c      	movi.n	a4, 20
    29df:	000005        	call0	29e0 <wifi_station_set_default_hostname+0x34>
    29e2:	013d      	mov.n	a3, a1
    29e4:	8168      	l32i.n	a6, a1, 32
    29e6:	ffed21        	l32r	a2, 299c <wifi_station_get_rssi+0x50>
    29e9:	030642        	l8ui	a4, a6, 3
    29ec:	040652        	l8ui	a5, a6, 4
    29ef:	0228      	l32i.n	a2, a2, 0
    29f1:	050662        	l8ui	a6, a6, 5
    29f4:	ffed01        	l32r	a0, 29a8 <wifi_station_get_rssi+0x5c>
    29f7:	0000c0        	callx0	a0
    29fa:	9108      	l32i.n	a0, a1, 36
    29fc:	30c112        	addi	a1, a1, 48
    29ff:	f00d      	ret.n
    2a01:	000000        	ill
    2a04:	000000        	ill
	...

00002a08 <wifi_station_get_hostname>:
    2a08:	f0c112        	addi	a1, a1, -16
    2a0b:	0109      	s32i.n	a0, a1, 0
    2a0d:	000005        	call0	2a10 <wifi_station_get_hostname+0x8>
    2a10:	0108      	l32i.n	a0, a1, 0
    2a12:	091226        	beqi	a2, 1, 2a1f <wifi_station_get_hostname+0x17>
    2a15:	063226        	beqi	a2, 3, 2a1f <wifi_station_get_hostname+0x17>
    2a18:	020c      	movi.n	a2, 0
    2a1a:	10c112        	addi	a1, a1, 16
    2a1d:	f00d      	ret.n
    2a1f:	fff921        	l32r	a2, 2a04 <wifi_station_set_default_hostname+0x58>
    2a22:	0228      	l32i.n	a2, a2, 0
    2a24:	fffc86        	j	2a1a <wifi_station_get_hostname+0x12>
	...

00002a54 <wifi_station_set_hostname>:
    2a54:	f0c112        	addi	a1, a1, -16
    2a57:	21c9      	s32i.n	a12, a1, 8
    2a59:	1109      	s32i.n	a0, a1, 4
    2a5b:	02cd      	mov.n	a12, a2
    2a5d:	929c      	beqz.n	a2, 2a7a <wifi_station_set_hostname+0x26>
    2a5f:	fff801        	l32r	a0, 2a40 <wifi_station_get_hostname+0x38>
    2a62:	0000c0        	callx0	a0
    2a65:	0129      	s32i.n	a2, a1, 0
    2a67:	002c      	movi.n	a0, 32
    2a69:	0d3027        	bltu	a0, a2, 2a7a <wifi_station_set_hostname+0x26>
    2a6c:	000005        	call0	2a70 <wifi_station_set_hostname+0x1c>
    2a6f:	121226        	beqi	a2, 1, 2a85 <wifi_station_set_hostname+0x31>
    2a72:	0f3226        	beqi	a2, 3, 2a85 <wifi_station_set_hostname+0x31>
    2a75:	020c      	movi.n	a2, 0
    2a77:	000046        	j	2a7c <wifi_station_set_hostname+0x28>
    2a7a:	020c      	movi.n	a2, 0
    2a7c:	21c8      	l32i.n	a12, a1, 8
    2a7e:	1108      	l32i.n	a0, a1, 4
    2a80:	10c112        	addi	a1, a1, 16
    2a83:	f00d      	ret.n
    2a85:	ffe841        	l32r	a4, 2a28 <wifi_station_get_hostname+0x20>
    2a88:	ffe921        	l32r	a2, 2a2c <wifi_station_get_hostname+0x24>
    2a8b:	030c      	movi.n	a3, 0
    2a8d:	0228      	l32i.n	a2, a2, 0
    2a8f:	004432        	s8i	a3, a4, 0
    2a92:	b28c      	beqz.n	a2, 2aa1 <wifi_station_set_hostname+0x4d>
    2a94:	ffec01        	l32r	a0, 2a44 <wifi_station_get_hostname+0x3c>
    2a97:	0000c0        	callx0	a0
    2a9a:	ffe541        	l32r	a4, 2a30 <wifi_station_get_hostname+0x28>
    2a9d:	030c      	movi.n	a3, 0
    2a9f:	0439      	s32i.n	a3, a4, 0
    2aa1:	0128      	l32i.n	a2, a1, 0
    2aa3:	ffe901        	l32r	a0, 2a48 <wifi_station_get_hostname+0x40>
    2aa6:	0000c0        	callx0	a0
    2aa9:	ffe251        	l32r	a5, 2a34 <wifi_station_get_hostname+0x2c>
    2aac:	0529      	s32i.n	a2, a5, 0
    2aae:	52ac      	beqz.n	a2, 2ad7 <wifi_station_set_hostname+0x83>
    2ab0:	020c      	movi.n	a2, 0
    2ab2:	ffe601        	l32r	a0, 2a4c <wifi_station_get_hostname+0x44>
    2ab5:	0000c0        	callx0	a0
    2ab8:	3129      	s32i.n	a2, a1, 12
    2aba:	ffdf21        	l32r	a2, 2a38 <wifi_station_get_hostname+0x30>
    2abd:	0c3d      	mov.n	a3, a12
    2abf:	0228      	l32i.n	a2, a2, 0
    2ac1:	ffe301        	l32r	a0, 2a50 <wifi_station_get_hostname+0x48>
    2ac4:	0000c0        	callx0	a0
    2ac7:	3108      	l32i.n	a0, a1, 12
    2ac9:	120c      	movi.n	a2, 1
    2acb:	508c      	beqz.n	a0, 2ad4 <wifi_station_set_hostname+0x80>
    2acd:	ffdb31        	l32r	a3, 2a3c <wifi_station_get_hostname+0x34>
    2ad0:	0338      	l32i.n	a3, a3, 0
    2ad2:	a039      	s32i.n	a3, a0, 40
    2ad4:	ffe906        	j	2a7c <wifi_station_set_hostname+0x28>
    2ad7:	020c      	movi.n	a2, 0
    2ad9:	ffe7c6        	j	2a7c <wifi_station_set_hostname+0x28>
	...

00002ae4 <wifi_softap_cacl_mac>:
    2ae4:	e0c112        	addi	a1, a1, -32
    2ae7:	11c9      	s32i.n	a12, a1, 4
    2ae9:	41f9      	s32i.n	a15, a1, 16
    2aeb:	0109      	s32i.n	a0, a1, 0
    2aed:	21d9      	s32i.n	a13, a1, 8
    2aef:	31e9      	s32i.n	a14, a1, 12
    2af1:	02dd      	mov.n	a13, a2
    2af3:	03ed      	mov.n	a14, a3
    2af5:	044216        	beqz	a2, 2b3d <wifi_softap_cacl_mac+0x59>
    2af8:	041316        	beqz	a3, 2b3d <wifi_softap_cacl_mac+0x59>
    2afb:	640c      	movi.n	a4, 6
    2afd:	fff701        	l32r	a0, 2adc <wifi_station_set_hostname+0x88>
    2b00:	0000c0        	callx0	a0
    2b03:	0c0c      	movi.n	a12, 0
    2b05:	2f0c      	movi.n	a15, 2
    2b07:	0d2d      	mov.n	a2, a13
    2b09:	0e3d      	mov.n	a3, a14
    2b0b:	640c      	movi.n	a4, 6
    2b0d:	000e02        	l8ui	a0, a14, 0
    2b10:	115ce0        	slli	a5, a12, 2
    2b13:	2000f0        	or	a0, a0, a15
    2b16:	300050        	xor	a0, a0, a5
    2b19:	004d02        	s8i	a0, a13, 0
    2b1c:	fff101        	l32r	a0, 2ae0 <wifi_station_set_hostname+0x8c>
    2b1f:	0000c0        	callx0	a0
    2b22:	62cc      	bnez.n	a2, 2b2c <wifi_softap_cacl_mac+0x48>
    2b24:	cc1b      	addi.n	a12, a12, 1
    2b26:	74c0c0        	extui	a12, a12, 0, 8
    2b29:	dadc66        	bnei	a12, 64, 2b07 <wifi_softap_cacl_mac+0x23>
    2b2c:	120c      	movi.n	a2, 1
    2b2e:	11c8      	l32i.n	a12, a1, 4
    2b30:	21d8      	l32i.n	a13, a1, 8
    2b32:	31e8      	l32i.n	a14, a1, 12
    2b34:	41f8      	l32i.n	a15, a1, 16
    2b36:	0108      	l32i.n	a0, a1, 0
    2b38:	20c112        	addi	a1, a1, 32
    2b3b:	f00d      	ret.n
    2b3d:	020c      	movi.n	a2, 0
    2b3f:	fffac6        	j	2b2e <wifi_softap_cacl_mac+0x4a>
	...

00002b64 <wifi_softap_set_default_ssid>:
    2b64:	120c      	movi.n	a2, 1
    2b66:	c0c112        	addi	a1, a1, -64
    2b69:	013d      	mov.n	a3, a1
    2b6b:	c109      	s32i.n	a0, a1, 48
    2b6d:	000005        	call0	2b70 <wifi_softap_set_default_ssid+0xc>
    2b70:	fff521        	l32r	a2, 2b44 <wifi_softap_cacl_mac+0x60>
    2b73:	fff501        	l32r	a0, 2b48 <wifi_softap_cacl_mac+0x64>
    2b76:	a02222        	l32i	a2, a2, 0x280
    2b79:	040032        	l8ui	a3, a0, 4
    2b7c:	050226        	beqi	a2, -1, 2b85 <wifi_softap_set_default_ssid+0x21>
    2b7f:	ffa042        	movi	a4, 255
    2b82:	329347        	bne	a3, a4, 2bb8 <wifi_softap_set_default_ssid+0x54>
    2b85:	fff121        	l32r	a2, 2b4c <wifi_softap_cacl_mac+0x68>
    2b88:	10c132        	addi	a3, a1, 16
    2b8b:	441c      	movi.n	a4, 20
    2b8d:	000005        	call0	2b90 <wifi_softap_set_default_ssid+0x2c>
    2b90:	fff021        	l32r	a2, 2b50 <wifi_softap_cacl_mac+0x6c>
    2b93:	432c      	movi.n	a3, 36
    2b95:	fff101        	l32r	a0, 2b5c <wifi_softap_cacl_mac+0x78>
    2b98:	0000c0        	callx0	a0
    2b9b:	ffee21        	l32r	a2, 2b54 <wifi_softap_cacl_mac+0x70>
    2b9e:	10c132        	addi	a3, a1, 16
    2ba1:	030142        	l8ui	a4, a1, 3
    2ba4:	040152        	l8ui	a5, a1, 4
    2ba7:	050162        	l8ui	a6, a1, 5
    2baa:	ffed01        	l32r	a0, 2b60 <wifi_softap_cacl_mac+0x7c>
    2bad:	0000c0        	callx0	a0
    2bb0:	ffea61        	l32r	a6, 2b58 <wifi_softap_cacl_mac+0x74>
    2bb3:	a50c      	movi.n	a5, 10
    2bb5:	606652        	s32i	a5, a6, 0x180
    2bb8:	120c      	movi.n	a2, 1
    2bba:	c108      	l32i.n	a0, a1, 48
    2bbc:	40c112        	addi	a1, a1, 64
    2bbf:	f00d      	ret.n
	...
    2bc9:	000000        	ill
    2bcc:	00ea60        	excw
	...
    2bf3:	c11200        	mul16u	a1, a2, a0
    2bf6:	d1d9b0        	mul16s	a13, a9, a11
    2bf9:	e1e9      	s32i.n	a14, a1, 56
    2bfb:	f1f9      	s32i.n	a15, a1, 60
    2bfd:	c1c9      	s32i.n	a12, a1, 48
    2bff:	b109      	s32i.n	a0, a1, 44
    2c01:	02cd      	mov.n	a12, a2
    2c03:	32cc      	bnez.n	a2, 2c0a <wifi_softap_set_default_ssid+0xa6>
    2c05:	020c      	movi.n	a2, 0
    2c07:	003a86        	j	2cf5 <wifi_softap_set_default_ssid+0x191>
    2c0a:	a139      	s32i.n	a3, a1, 40
    2c0c:	051366        	bnei	a3, 1, 2c15 <wifi_softap_set_default_ssid+0xb1>
    2c0f:	ffedd1        	l32r	a13, 2bc4 <wifi_softap_set_default_ssid+0x60>
    2c12:	000a46        	j	2c3f <wifi_softap_set_default_ssid+0xdb>
    2c15:	78a322        	movi	a2, 0x378
    2c18:	ffef01        	l32r	a0, 2bd4 <wifi_softap_set_default_ssid+0x70>
    2c1b:	0000c0        	callx0	a0
    2c1e:	ffea31        	l32r	a3, 2bc8 <wifi_softap_set_default_ssid+0x64>
    2c21:	0338      	l32i.n	a3, a3, 0
    2c23:	02dd      	mov.n	a13, a2
    2c25:	1328      	l32i.n	a2, a3, 4
    2c27:	3338      	l32i.n	a3, a3, 12
    2c29:	ffeb01        	l32r	a0, 2bd8 <wifi_softap_set_default_ssid+0x74>
    2c2c:	0000c0        	callx0	a0
    2c2f:	030c      	movi.n	a3, 0
    2c31:	0d4d      	mov.n	a4, a13
    2c33:	78a352        	movi	a5, 0x378
    2c36:	fdc222        	addi	a2, a2, -3
    2c39:	f42020        	extui	a2, a2, 0, 16
    2c3c:	000005        	call0	2c40 <wifi_softap_set_default_ssid+0xdc>
    2c3f:	0f0c      	movi.n	a15, 0
    2c41:	78cde2        	addi	a14, a13, 120
    2c44:	be0e02        	l8ui	a0, a14, 190
    2c47:	d4a022        	movi	a2, 212
    2c4a:	0250b6        	bltui	a0, 5, 2c50 <wifi_softap_set_default_ssid+0xec>
    2c4d:	002cc6        	j	2d04 <wifi_softap_set_default_ssid+0x1a0>
    2c50:	300b      	addi.n	a3, a0, -1
    2c52:	0ae316        	beqz	a3, 2d04 <wifi_softap_set_default_ssid+0x1a0>
    2c55:	196c02        	s32i	a0, a12, 100
    2c58:	01dd42        	addmi	a4, a13, 0x100
    2c5b:	d4c442        	addi	a4, a4, -44
    2c5e:	106142        	s32i	a4, a1, 64
    2c61:	ee58      	l32i.n	a5, a14, 56
    2c63:	3c0e62        	l8ui	a6, a14, 60
    2c66:	551b      	addi.n	a5, a5, 1
    2c68:	0ab516        	beqz	a5, 2d17 <wifi_softap_set_default_ssid+0x1b3>
    2c6b:	ffa072        	movi	a7, 255
    2c6e:	c06670        	sub	a6, a6, a7
    2c71:	0a2616        	beqz	a6, 2d17 <wifi_softap_set_default_ssid+0x1b3>
    2c74:	01dd02        	addmi	a0, a13, 0x100
    2c77:	b4c002        	addi	a0, a0, -76
    2c7a:	0c2d      	mov.n	a2, a12
    2c7c:	042c      	movi.n	a4, 32
    2c7e:	003d      	mov.n	a3, a0
    2c80:	ffd701        	l32r	a0, 2bdc <wifi_softap_set_default_ssid+0x78>
    2c83:	0000c0        	callx0	a0
    2c86:	102132        	l32i	a3, a1, 64
    2c89:	20cc22        	addi	a2, a12, 32
    2c8c:	044c      	movi.n	a4, 64
    2c8e:	ffd401        	l32r	a0, 2be0 <wifi_softap_set_default_ssid+0x7c>
    2c91:	0000c0        	callx0	a0
    2c94:	ee08      	l32i.n	a0, a14, 56
    2c96:	022c      	movi.n	a2, 32
    2c98:	022207        	blt	a2, a0, 2c9e <wifi_softap_set_default_ssid+0x13a>
    2c9b:	0510e6        	bgei	a0, 1, 2ca4 <wifi_softap_set_default_ssid+0x140>
    2c9e:	604cf2        	s8i	a15, a12, 96
    2ca1:	000086        	j	2ca7 <wifi_softap_set_default_ssid+0x143>
    2ca4:	604c02        	s8i	a0, a12, 96
    2ca7:	bd0e02        	l8ui	a0, a14, 189
    2caa:	e30c      	movi.n	a3, 14
    2cac:	013307        	bltu	a3, a0, 2cb1 <wifi_softap_set_default_ssid+0x14d>
    2caf:	00cc      	bnez.n	a0, 2cb3 <wifi_softap_set_default_ssid+0x14f>
    2cb1:	100c      	movi.n	a0, 1
    2cb3:	614c02        	s8i	a0, a12, 97
    2cb6:	bf0e02        	l8ui	a0, a14, 191
    2cb9:	0120f6        	bgeui	a0, 2, 2cbe <wifi_softap_set_default_ssid+0x15a>
    2cbc:	00fd      	mov.n	a15, a0
    2cbe:	ffc341        	l32r	a4, 2bcc <wifi_softap_set_default_ssid+0x68>
    2cc1:	684cf2        	s8i	a15, a12, 104
    2cc4:	c00e22        	l8ui	a2, a14, 192
    2cc7:	800c      	movi.n	a0, 8
    2cc9:	013027        	bltu	a0, a2, 2cce <wifi_softap_set_default_ssid+0x16a>
    2ccc:	020d      	mov.n	a0, a2
    2cce:	694c02        	s8i	a0, a12, 105
    2cd1:	03dd02        	addmi	a0, a13, 0x300
    2cd4:	361002        	l16ui	a0, a0, 108
    2cd7:	a138      	l32i.n	a3, a1, 40
    2cd9:	053407        	bltu	a4, a0, 2ce2 <wifi_softap_set_default_ssid+0x17e>
    2cdc:	63a022        	movi	a2, 99
    2cdf:	023207        	bltu	a2, a0, 2ce5 <wifi_softap_set_default_ssid+0x181>
    2ce2:	64a002        	movi	a0, 100
    2ce5:	355c02        	s16i	a0, a12, 106
    2ce8:	071326        	beqi	a3, 1, 2cf3 <wifi_softap_set_default_ssid+0x18f>
    2ceb:	0d2d      	mov.n	a2, a13
    2ced:	ffbd01        	l32r	a0, 2be4 <wifi_softap_set_default_ssid+0x80>
    2cf0:	0000c0        	callx0	a0
    2cf3:	120c      	movi.n	a2, 1
    2cf5:	c1c8      	l32i.n	a12, a1, 48
    2cf7:	d1d8      	l32i.n	a13, a1, 52
    2cf9:	e1e8      	l32i.n	a14, a1, 56
    2cfb:	f1f8      	l32i.n	a15, a1, 60
    2cfd:	b108      	l32i.n	a0, a1, 44
    2cff:	50c112        	addi	a1, a1, 80
    2d02:	f00d      	ret.n
    2d04:	196cf2        	s32i	a15, a12, 100
    2d07:	034c      	movi.n	a3, 64
    2d09:	2d2a      	add.n	a2, a13, a2
    2d0b:	106122        	s32i	a2, a1, 64
    2d0e:	ffb601        	l32r	a0, 2be8 <wifi_softap_set_default_ssid+0x84>
    2d11:	0000c0        	callx0	a0
    2d14:	ffd246        	j	2c61 <wifi_softap_set_default_ssid+0xfd>
    2d17:	ffae21        	l32r	a2, 2bd0 <wifi_softap_set_default_ssid+0x6c>
    2d1a:	013d      	mov.n	a3, a1
    2d1c:	441c      	movi.n	a4, 20
    2d1e:	000005        	call0	2d20 <wifi_softap_set_default_ssid+0x1bc>
    2d21:	120c      	movi.n	a2, 1
    2d23:	20c132        	addi	a3, a1, 32
    2d26:	000005        	call0	2d28 <wifi_softap_set_default_ssid+0x1c4>
    2d29:	432c      	movi.n	a3, 36
    2d2b:	01dd22        	addmi	a2, a13, 0x100
    2d2e:	b0c222        	addi	a2, a2, -80
    2d31:	ffae01        	l32r	a0, 2bec <wifi_softap_set_default_ssid+0x88>
    2d34:	0000c0        	callx0	a0
    2d37:	013d      	mov.n	a3, a1
    2d39:	230142        	l8ui	a4, a1, 35
    2d3c:	240152        	l8ui	a5, a1, 36
    2d3f:	250162        	l8ui	a6, a1, 37
    2d42:	01dd22        	addmi	a2, a13, 0x100
    2d45:	b4c222        	addi	a2, a2, -76
    2d48:	116122        	s32i	a2, a1, 68
    2d4b:	ffa901        	l32r	a0, 2bf0 <wifi_softap_set_default_ssid+0x8c>
    2d4e:	0000c0        	callx0	a0
    2d51:	112102        	l32i	a0, a1, 68
    2d54:	a30c      	movi.n	a3, 10
    2d56:	ee39      	s32i.n	a3, a14, 56
    2d58:	ffc786        	j	2c7a <wifi_softap_set_default_ssid+0x116>
	...

00002d5c <wifi_softap_get_config>:
    2d5c:	130c      	movi.n	a3, 1
    2d5e:	f0c112        	addi	a1, a1, -16
    2d61:	0109      	s32i.n	a0, a1, 0
    2d63:	ffe905        	call0	2bf4 <wifi_softap_set_default_ssid+0x90>
    2d66:	0108      	l32i.n	a0, a1, 0
    2d68:	10c112        	addi	a1, a1, 16
    2d6b:	f00d      	ret.n
    2d6d:	000000        	ill

00002d70 <wifi_softap_get_config_default>:
    2d70:	030c      	movi.n	a3, 0
    2d72:	f0c112        	addi	a1, a1, -16
    2d75:	0109      	s32i.n	a0, a1, 0
    2d77:	ffe7c5        	call0	2bf4 <wifi_softap_set_default_ssid+0x90>
    2d7a:	0108      	l32i.n	a0, a1, 0
    2d7c:	10c112        	addi	a1, a1, 16
    2d7f:	f00d      	ret.n
    2d81:	000000        	ill
    2d84:	000000        	ill
    2d87:	008800        	excw
    2d8a:	800000        	add	a0, a0, a0
	...
    2da1:	000000        	ill
    2da4:	00ea60        	excw
    2da7:	000000        	ill
    2daa:	000000        	ill
    2dad:	000190        	excw
    2db0:	000000        	ill
    2db3:	100000        	and	a0, a0, a0
	...
    2e0a:	120000        	excw
    2e0d:	e9e0c1        	l32r	a12, ffffd590 <system_get_sdk_version+0xffff988c>
    2e10:	61f951        	l32r	a5, fffdb5f4 <system_get_sdk_version+0xfffd78f0>
    2e13:	2109      	s32i.n	a0, a1, 8
    2e15:	31c9      	s32i.n	a12, a1, 12
    2e17:	41d9      	s32i.n	a13, a1, 16
    2e19:	02cd      	mov.n	a12, a2
    2e1b:	03dd      	mov.n	a13, a3
    2e1d:	000005        	call0	2e20 <wifi_softap_get_config_default+0xb0>
    2e20:	cc8c      	beqz.n	a12, 2e30 <wifi_softap_get_config_default+0xc0>
    2e22:	0a1226        	beqi	a2, 1, 2e30 <wifi_softap_get_config_default+0xc0>
    2e25:	728c      	beqz.n	a2, 2e30 <wifi_softap_get_config_default+0xc0>
    2e27:	ffd731        	l32r	a3, 2d84 <wifi_softap_get_config_default+0x14>
    2e2a:	3e0302        	l8ui	a0, a3, 62
    2e2d:	041066        	bnei	a0, 1, 2e35 <wifi_softap_get_config_default+0xc5>
    2e30:	020c      	movi.n	a2, 0
    2e32:	000b06        	j	2e62 <wifi_softap_get_config_default+0xf2>
    2e35:	620c      	movi.n	a2, 6
    2e37:	11d9      	s32i.n	a13, a1, 4
    2e39:	fdb945        	call0	9d0 <system_restore-0x3d0>
    2e3c:	310266        	bnei	a2, -1, 2e71 <wifi_softap_get_config_default+0x101>
    2e3f:	0c3d      	mov.n	a3, a12
    2e41:	ffd121        	l32r	a2, 2d88 <wifi_softap_get_config_default+0x18>
    2e44:	6ca042        	movi	a4, 108
    2e47:	ffe101        	l32r	a0, 2dcc <wifi_softap_get_config_default+0x5c>
    2e4a:	0000c0        	callx0	a0
    2e4d:	ffcf31        	l32r	a3, 2d8c <wifi_softap_get_config_default+0x1c>
    2e50:	1128      	l32i.n	a2, a1, 4
    2e52:	744322        	s8i	a2, a3, 116
    2e55:	0001c6        	j	2e60 <wifi_softap_get_config_default+0xf0>
    2e58:	ffce51        	l32r	a5, 2d90 <wifi_softap_get_config_default+0x20>
    2e5b:	140c      	movi.n	a4, 1
    2e5d:	004542        	s8i	a4, a5, 0
    2e60:	120c      	movi.n	a2, 1
    2e62:	31c8      	l32i.n	a12, a1, 12
    2e64:	41d8      	l32i.n	a13, a1, 16
    2e66:	51e8      	l32i.n	a14, a1, 20
    2e68:	61f8      	l32i.n	a15, a1, 24
    2e6a:	2108      	l32i.n	a0, a1, 8
    2e6c:	20c112        	addi	a1, a1, 32
    2e6f:	f00d      	ret.n
    2e71:	0c3d      	mov.n	a3, a12
    2e73:	042c      	movi.n	a4, 32
    2e75:	ffc7f1        	l32r	a15, 2d94 <wifi_softap_get_config_default+0x24>
    2e78:	01f9      	s32i.n	a15, a1, 0
    2e7a:	0f2d      	mov.n	a2, a15
    2e7c:	ffd501        	l32r	a0, 2dd0 <wifi_softap_get_config_default+0x60>
    2e7f:	0000c0        	callx0	a0
    2e82:	ffc551        	l32r	a5, 2d98 <wifi_softap_get_config_default+0x28>
    2e85:	20cce2        	addi	a14, a12, 32
    2e88:	ccc5d2        	addi	a13, a5, -52
    2e8b:	170216        	beqz	a2, 2fff <wifi_softap_get_config_default+0x28f>
    2e8e:	192c02        	l32i	a0, a12, 100
    2e91:	1f0c      	movi.n	a15, 1
    2e93:	2720b6        	bltui	a0, 2, 2ebe <wifi_softap_get_config_default+0x14e>
    2e96:	0e2d      	mov.n	a2, a14
    2e98:	ffcf01        	l32r	a0, 2dd4 <wifi_softap_get_config_default+0x64>
    2e9b:	0000c0        	callx0	a0
    2e9e:	8e82a6        	blti	a2, 8, 2e30 <wifi_softap_get_config_default+0xc0>
    2ea1:	0e2d      	mov.n	a2, a14
    2ea3:	ffcd01        	l32r	a0, 2dd8 <wifi_softap_get_config_default+0x68>
    2ea6:	0000c0        	callx0	a0
    2ea9:	11d2a6        	blti	a2, 64, 2ebe <wifi_softap_get_config_default+0x14e>
    2eac:	0e2d      	mov.n	a2, a14
    2eae:	ffbb31        	l32r	a3, 2d9c <wifi_softap_get_config_default+0x2c>
    2eb1:	042c      	movi.n	a4, 32
    2eb3:	ffca01        	l32r	a0, 2ddc <wifi_softap_get_config_default+0x6c>
    2eb6:	0000c0        	callx0	a0
    2eb9:	721b      	addi.n	a7, a2, 1
    2ebb:	f71716        	beqz	a7, 2e30 <wifi_softap_get_config_default+0xc0>
    2ebe:	000c82        	l8ui	a8, a12, 0
    2ec1:	ffa002        	movi	a0, 255
    2ec4:	0b9807        	bne	a8, a0, 2ed3 <wifi_softap_get_config_default+0x163>
    2ec7:	010c92        	l8ui	a9, a12, 1
    2eca:	059907        	bne	a9, a0, 2ed3 <wifi_softap_get_config_default+0x163>
    2ecd:	000005        	call0	2ed0 <wifi_softap_get_config_default+0x160>
    2ed0:	000986        	j	2efa <wifi_softap_get_config_default+0x18a>
    2ed3:	600c02        	l8ui	a0, a12, 96
    2ed6:	90cc      	bnez.n	a0, 2ee3 <wifi_softap_get_config_default+0x173>
    2ed8:	0c2d      	mov.n	a2, a12
    2eda:	ffc101        	l32r	a0, 2de0 <wifi_softap_get_config_default+0x70>
    2edd:	0000c0        	callx0	a0
    2ee0:	740020        	extui	a0, a2, 0, 8
    2ee3:	082c      	movi.n	a8, 32
    2ee5:	1a2c      	movi.n	a10, 33
    2ee7:	0130a7        	bltu	a0, a10, 2eec <wifi_softap_get_config_default+0x17c>
    2eea:	080d      	mov.n	a0, a8
    2eec:	0128      	l32i.n	a2, a1, 0
    2eee:	0c3d      	mov.n	a3, a12
    2ef0:	042c      	movi.n	a4, 32
    2ef2:	4d09      	s32i.n	a0, a13, 16
    2ef4:	ffbc01        	l32r	a0, 2de4 <wifi_softap_get_config_default+0x74>
    2ef7:	0000c0        	callx0	a0
    2efa:	044c      	movi.n	a4, 64
    2efc:	0e3d      	mov.n	a3, a14
    2efe:	ffa821        	l32r	a2, 2da0 <wifi_softap_get_config_default+0x30>
    2f01:	7129      	s32i.n	a2, a1, 28
    2f03:	ffb901        	l32r	a0, 2de8 <wifi_softap_get_config_default+0x78>
    2f06:	0000c0        	callx0	a0
    2f09:	71e8      	l32i.n	a14, a1, 28
    2f0b:	070c      	movi.n	a7, 0
    2f0d:	744d72        	s8i	a7, a13, 116
    2f10:	192c02        	l32i	a0, a12, 100
    2f13:	180c      	movi.n	a8, 1
    2f15:	0250f6        	bgeui	a0, 5, 2f1b <wifi_softap_get_config_default+0x1ab>
    2f18:	051066        	bnei	a0, 1, 2f21 <wifi_softap_get_config_default+0x1b1>
    2f1b:	964d72        	s8i	a7, a13, 150
    2f1e:	000086        	j	2f24 <wifi_softap_get_config_default+0x1b4>
    2f21:	964d02        	s8i	a0, a13, 150
    2f24:	610c02        	l8ui	a0, a12, 97
    2f27:	e20c      	movi.n	a2, 14
    2f29:	013207        	bltu	a2, a0, 2f2e <wifi_softap_get_config_default+0x1be>
    2f2c:	40cc      	bnez.n	a0, 2f34 <wifi_softap_get_config_default+0x1c4>
    2f2e:	954d82        	s8i	a8, a13, 149
    2f31:	000086        	j	2f37 <wifi_softap_get_config_default+0x1c7>
    2f34:	954d02        	s8i	a0, a13, 149
    2f37:	680c02        	l8ui	a0, a12, 104
    2f3a:	0120f6        	bgeui	a0, 2, 2f3f <wifi_softap_get_config_default+0x1cf>
    2f3d:	007d      	mov.n	a7, a0
    2f3f:	974d72        	s8i	a7, a13, 151
    2f42:	690c72        	l8ui	a7, a12, 105
    2f45:	800c      	movi.n	a0, 8
    2f47:	013077        	bltu	a0, a7, 2f4c <wifi_softap_get_config_default+0x1dc>
    2f4a:	070d      	mov.n	a0, a7
    2f4c:	ff9631        	l32r	a3, 2da4 <wifi_softap_get_config_default+0x34>
    2f4f:	984d02        	s8i	a0, a13, 152
    2f52:	351c22        	l16ui	a2, a12, 106
    2f55:	083327        	bltu	a3, a2, 2f61 <wifi_softap_get_config_default+0x1f1>
    2f58:	63a042        	movi	a4, 99
    2f5b:	02b427        	bgeu	a4, a2, 2f61 <wifi_softap_get_config_default+0x1f1>
    2f5e:	002606        	j	2ffa <wifi_softap_get_config_default+0x28a>
    2f61:	64a022        	movi	a2, 100
    2f64:	64a002        	movi	a0, 100
    2f67:	ff9051        	l32r	a5, 2da8 <wifi_softap_get_config_default+0x38>
    2f6a:	64a032        	movi	a3, 100
    2f6d:	7e5502        	s16i	a0, a5, 252
    2f70:	ff9f01        	l32r	a0, 2dec <wifi_softap_get_config_default+0x7c>
    2f73:	0000c0        	callx0	a0
    2f76:	ff8d31        	l32r	a3, 2dac <wifi_softap_get_config_default+0x3c>
    2f79:	f42020        	extui	a2, a2, 0, 16
    2f7c:	822230        	mull	a2, a2, a3
    2f7f:	ff9c01        	l32r	a0, 2df0 <wifi_softap_get_config_default+0x80>
    2f82:	0000c0        	callx0	a0
    2f85:	192c42        	l32i	a4, a12, 100
    2f88:	2724b6        	bltui	a4, 2, 2fb3 <wifi_softap_get_config_default+0x243>
    2f8b:	0e2d      	mov.n	a2, a14
    2f8d:	ff9901        	l32r	a0, 2df4 <wifi_softap_get_config_default+0x84>
    2f90:	0000c0        	callx0	a0
    2f93:	1cd2e6        	bgei	a2, 64, 2fb3 <wifi_softap_get_config_default+0x243>
    2f96:	191f66        	bnei	a15, 1, 2fb3 <wifi_softap_get_config_default+0x243>
    2f99:	000005        	call0	2f9c <wifi_softap_get_config_default+0x22c>
    2f9c:	0e2d      	mov.n	a2, a14
    2f9e:	0138      	l32i.n	a3, a1, 0
    2fa0:	4d48      	l32i.n	a4, a13, 16
    2fa2:	ff8361        	l32r	a6, 2db0 <wifi_softap_get_config_default+0x40>
    2fa5:	ff8351        	l32r	a5, 2db4 <wifi_softap_get_config_default+0x44>
    2fa8:	072c      	movi.n	a7, 32
    2faa:	ff9301        	l32r	a0, 2df8 <wifi_softap_get_config_default+0x88>
    2fad:	0000c0        	callx0	a0
    2fb0:	000005        	call0	2fb4 <wifi_softap_get_config_default+0x244>
    2fb3:	1158      	l32i.n	a5, a1, 4
    2fb5:	1d1566        	bnei	a5, 1, 2fd6 <wifi_softap_get_config_default+0x266>
    2fb8:	ff8031        	l32r	a3, 2db8 <wifi_softap_get_config_default+0x48>
    2fbb:	0338      	l32i.n	a3, a3, 0
    2fbd:	1328      	l32i.n	a2, a3, 4
    2fbf:	3338      	l32i.n	a3, a3, 12
    2fc1:	ff8e01        	l32r	a0, 2dfc <wifi_softap_get_config_default+0x8c>
    2fc4:	0000c0        	callx0	a0
    2fc7:	ff7d31        	l32r	a3, 2dbc <wifi_softap_get_config_default+0x4c>
    2fca:	78a342        	movi	a4, 0x378
    2fcd:	fdc222        	addi	a2, a2, -3
    2fd0:	f42020        	extui	a2, a2, 0, 16
    2fd3:	000005        	call0	2fd4 <wifi_softap_get_config_default+0x264>
    2fd6:	ff7a31        	l32r	a3, 2dc0 <wifi_softap_get_config_default+0x50>
    2fd9:	5338      	l32i.n	a3, a3, 20
    2fdb:	e81316        	beqz	a3, 2e60 <wifi_softap_get_config_default+0xf0>
    2fde:	ff7941        	l32r	a4, 2dc4 <wifi_softap_get_config_default+0x54>
    2fe1:	3e0442        	l8ui	a4, a4, 62
    2fe4:	e70456        	bnez	a4, 2e58 <wifi_softap_get_config_default+0xe8>
    2fe7:	020c      	movi.n	a2, 0
    2fe9:	ff8501        	l32r	a0, 2e00 <wifi_softap_get_config_default+0x90>
    2fec:	0000c0        	callx0	a0
    2fef:	020c      	movi.n	a2, 0
    2ff1:	ff8401        	l32r	a0, 2e04 <wifi_softap_get_config_default+0x94>
    2ff4:	0000c0        	callx0	a0
    2ff7:	ff9946        	j	2e60 <wifi_softap_get_config_default+0xf0>
    2ffa:	020d      	mov.n	a0, a2
    2ffc:	ffd9c6        	j	2f67 <wifi_softap_get_config_default+0x1f7>
    2fff:	052d      	mov.n	a2, a5
    3001:	0e3d      	mov.n	a3, a14
    3003:	044c      	movi.n	a4, 64
    3005:	ff8001        	l32r	a0, 2e08 <wifi_softap_get_config_default+0x98>
    3008:	0000c0        	callx0	a0
    300b:	192c02        	l32i	a0, a12, 100
    300e:	e7f256        	bnez	a2, 2e91 <wifi_softap_get_config_default+0x121>
    3011:	960d62        	l8ui	a6, a13, 150
    3014:	0f1067        	beq	a0, a6, 3027 <wifi_softap_get_config_default+0x2b7>
    3017:	76cc      	bnez.n	a6, 3022 <wifi_softap_get_config_default+0x2b2>
    3019:	392026        	beqi	a0, 2, 3056 <wifi_softap_get_config_default+0x2e6>
    301c:	363026        	beqi	a0, 3, 3056 <wifi_softap_get_config_default+0x2e6>
    301f:	334026        	beqi	a0, 4, 3056 <wifi_softap_get_config_default+0x2e6>
    3022:	0f0c      	movi.n	a15, 0
    3024:	ff9ac6        	j	2e93 <wifi_softap_get_config_default+0x123>
    3027:	950d62        	l8ui	a6, a13, 149
    302a:	610c52        	l8ui	a5, a12, 97
    302d:	209567        	bne	a5, a6, 3051 <wifi_softap_get_config_default+0x2e1>
    3030:	980d82        	l8ui	a8, a13, 152
    3033:	690c72        	l8ui	a7, a12, 105
    3036:	179787        	bne	a7, a8, 3051 <wifi_softap_get_config_default+0x2e1>
    3039:	970da2        	l8ui	a10, a13, 151
    303c:	680c92        	l8ui	a9, a12, 104
    303f:	0e99a7        	bne	a9, a10, 3051 <wifi_softap_get_config_default+0x2e1>
    3042:	ff61f1        	l32r	a15, 2dc8 <wifi_softap_get_config_default+0x58>
    3045:	351cb2        	l16ui	a11, a12, 106
    3048:	7e1ff2        	l16ui	a15, a15, 252
    304b:	c0bbf0        	sub	a11, a11, a15
    304e:	e0eb16        	beqz	a11, 2e60 <wifi_softap_get_config_default+0xf0>
    3051:	0f0c      	movi.n	a15, 0
    3053:	ff8f06        	j	2e93 <wifi_softap_get_config_default+0x123>
    3056:	1f0c      	movi.n	a15, 1
    3058:	ff8dc6        	j	2e93 <wifi_softap_get_config_default+0x123>
	...

0000305c <wifi_softap_set_config>:
    305c:	130c      	movi.n	a3, 1
    305e:	f0c112        	addi	a1, a1, -16
    3061:	0109      	s32i.n	a0, a1, 0
    3063:	ffda85        	call0	2e0c <wifi_softap_get_config_default+0x9c>
    3066:	0108      	l32i.n	a0, a1, 0
    3068:	10c112        	addi	a1, a1, 16
    306b:	f00d      	ret.n
    306d:	000000        	ill

00003070 <wifi_softap_set_config_current>:
    3070:	030c      	movi.n	a3, 0
    3072:	f0c112        	addi	a1, a1, -16
    3075:	0109      	s32i.n	a0, a1, 0
    3077:	ffd945        	call0	2e0c <wifi_softap_get_config_default+0x9c>
    307a:	0108      	l32i.n	a0, a1, 0
    307c:	10c112        	addi	a1, a1, 16
    307f:	f00d      	ret.n
	...

00003094 <wifi_softap_set_station_info>:
    3094:	e0c112        	addi	a1, a1, -32
    3097:	41e9      	s32i.n	a14, a1, 16
    3099:	51f9      	s32i.n	a15, a1, 20
    309b:	21c9      	s32i.n	a12, a1, 8
    309d:	31d9      	s32i.n	a13, a1, 12
    309f:	1109      	s32i.n	a0, a1, 4
    30a1:	fff801        	l32r	a0, 3084 <wifi_softap_set_config_current+0x14>
    30a4:	fff9d1        	l32r	a13, 3088 <wifi_softap_set_config_current+0x18>
    30a7:	880002        	l8ui	a0, a0, 136
    30aa:	5dd8      	l32i.n	a13, a13, 20
    30ac:	029096        	bltz	a0, 30d9 <wifi_softap_set_station_info+0x45>
    30af:	1c0c      	movi.n	a12, 1
    30b1:	02fd      	mov.n	a15, a2
    30b3:	0139      	s32i.n	a3, a1, 0
    30b5:	a0ecd0        	addx4	a14, a12, a13
    30b8:	202e32        	l32i	a3, a14, 128
    30bb:	039c      	beqz.n	a3, 30cf <wifi_softap_set_station_info+0x3b>
    30bd:	0f2d      	mov.n	a2, a15
    30bf:	640c      	movi.n	a4, 6
    30c1:	fff301        	l32r	a0, 3090 <wifi_softap_set_config_current+0x20>
    30c4:	0000c0        	callx0	a0
    30c7:	f29c      	beqz.n	a2, 30ea <wifi_softap_set_station_info+0x56>
    30c9:	fff001        	l32r	a0, 308c <wifi_softap_set_config_current+0x1c>
    30cc:	880002        	l8ui	a0, a0, 136
    30cf:	cc1b      	addi.n	a12, a12, 1
    30d1:	202b      	addi.n	a2, a0, 2
    30d3:	74c0c0        	extui	a12, a12, 0, 8
    30d6:	db2c27        	blt	a12, a2, 30b5 <wifi_softap_set_station_info+0x21>
    30d9:	020c      	movi.n	a2, 0
    30db:	21c8      	l32i.n	a12, a1, 8
    30dd:	31d8      	l32i.n	a13, a1, 12
    30df:	41e8      	l32i.n	a14, a1, 16
    30e1:	51f8      	l32i.n	a15, a1, 20
    30e3:	1108      	l32i.n	a0, a1, 4
    30e5:	20c112        	addi	a1, a1, 32
    30e8:	f00d      	ret.n
    30ea:	120c      	movi.n	a2, 1
    30ec:	01d8      	l32i.n	a13, a1, 0
    30ee:	202ef2        	l32i	a15, a14, 128
    30f1:	0dd8      	l32i.n	a13, a13, 0
    30f3:	426fd2        	s32i	a13, a15, 0x108
    30f6:	fff846        	j	30db <wifi_softap_set_station_info+0x47>
	...

00003120 <wifi_softap_get_station_info>:
    3120:	e0c112        	addi	a1, a1, -32
    3123:	11c9      	s32i.n	a12, a1, 4
    3125:	21d9      	s32i.n	a13, a1, 8
    3127:	41f9      	s32i.n	a15, a1, 16
    3129:	31e9      	s32i.n	a14, a1, 12
    312b:	fff4e1        	l32r	a14, 30fc <wifi_softap_set_station_info+0x68>
    312e:	0109      	s32i.n	a0, a1, 0
    3130:	5ee8      	l32i.n	a14, a14, 20
    3132:	000005        	call0	3134 <wifi_softap_get_station_info+0x14>
    3135:	086e16        	beqz	a14, 31bf <wifi_softap_get_station_info+0x9f>
    3138:	021266        	bnei	a2, 1, 313e <wifi_softap_get_station_info+0x1e>
    313b:	002006        	j	31bf <wifi_softap_get_station_info+0x9f>
    313e:	07d216        	beqz	a2, 31bf <wifi_softap_get_station_info+0x9f>
    3141:	ffef01        	l32r	a0, 3100 <wifi_softap_set_station_info+0x6c>
    3144:	fff031        	l32r	a3, 3104 <wifi_softap_set_station_info+0x70>
    3147:	040c      	movi.n	a4, 0
    3149:	196342        	s32i	a4, a3, 100
    314c:	64c3f2        	addi	a15, a3, 100
    314f:	880022        	l8ui	a2, a0, 136
    3152:	1a63f2        	s32i	a15, a3, 104
    3155:	051296        	bltz	a2, 31aa <wifi_softap_get_station_info+0x8a>
    3158:	1c0c      	movi.n	a12, 1
    315a:	a0dce0        	addx4	a13, a12, a14
    315d:	202d42        	l32i	a4, a13, 128
    3160:	c4bc      	beqz.n	a4, 31a0 <wifi_softap_get_station_info+0x80>
    3162:	422452        	l32i	a5, a4, 0x108
    3165:	45bc      	beqz.n	a5, 319d <wifi_softap_get_station_info+0x7d>
    3167:	021c      	movi.n	a2, 16
    3169:	ffeb01        	l32r	a0, 3118 <wifi_softap_set_station_info+0x84>
    316c:	0000c0        	callx0	a0
    316f:	02fd      	mov.n	a15, a2
    3171:	52bc      	beqz.n	a2, 31aa <wifi_softap_get_station_info+0x8a>
    3173:	224b      	addi.n	a2, a2, 4
    3175:	202d32        	l32i	a3, a13, 128
    3178:	640c      	movi.n	a4, 6
    317a:	ffe801        	l32r	a0, 311c <wifi_softap_set_station_info+0x88>
    317d:	0000c0        	callx0	a0
    3180:	ffe201        	l32r	a0, 3108 <wifi_softap_set_station_info+0x74>
    3183:	ffe271        	l32r	a7, 310c <wifi_softap_set_station_info+0x78>
    3186:	090c      	movi.n	a9, 0
    3188:	202d82        	l32i	a8, a13, 128
    318b:	0f99      	s32i.n	a9, a15, 0
    318d:	422882        	l32i	a8, a8, 0x108
    3190:	3f89      	s32i.n	a8, a15, 12
    3192:	5a2772        	l32i	a7, a7, 0x168
    3195:	ffde61        	l32r	a6, 3110 <wifi_softap_set_station_info+0x7c>
    3198:	07f9      	s32i.n	a15, a7, 0
    319a:	1a66f2        	s32i	a15, a6, 104
    319d:	880022        	l8ui	a2, a0, 136
    31a0:	cc1b      	addi.n	a12, a12, 1
    31a2:	a22b      	addi.n	a10, a2, 2
    31a4:	74c0c0        	extui	a12, a12, 0, 8
    31a7:	af2ca7        	blt	a12, a10, 315a <wifi_softap_get_station_info+0x3a>
    31aa:	ffda21        	l32r	a2, 3114 <wifi_softap_set_station_info+0x80>
    31ad:	592222        	l32i	a2, a2, 0x164
    31b0:	11c8      	l32i.n	a12, a1, 4
    31b2:	21d8      	l32i.n	a13, a1, 8
    31b4:	31e8      	l32i.n	a14, a1, 12
    31b6:	41f8      	l32i.n	a15, a1, 16
    31b8:	0108      	l32i.n	a0, a1, 0
    31ba:	20c112        	addi	a1, a1, 32
    31bd:	f00d      	ret.n
    31bf:	020c      	movi.n	a2, 0
    31c1:	fffac6        	j	31b0 <wifi_softap_get_station_info+0x90>
	...

000031d0 <wifi_softap_free_station_info>:
    31d0:	f0c112        	addi	a1, a1, -16
    31d3:	0109      	s32i.n	a0, a1, 0
    31d5:	11c9      	s32i.n	a12, a1, 4
    31d7:	31e9      	s32i.n	a14, a1, 12
    31d9:	21d9      	s32i.n	a13, a1, 8
    31db:	fffad1        	l32r	a13, 31c4 <wifi_softap_get_station_info+0xa4>
    31de:	fffae1        	l32r	a14, 31c8 <wifi_softap_get_station_info+0xa8>
    31e1:	01ddc2        	addmi	a12, a13, 0x100
    31e4:	592d22        	l32i	a2, a13, 0x164
    31e7:	129c      	beqz.n	a2, 31fc <wifi_softap_free_station_info+0x2c>
    31e9:	0208      	l32i.n	a0, a2, 0
    31eb:	196c02        	s32i	a0, a12, 100
    31ee:	10cc      	bnez.n	a0, 31f3 <wifi_softap_free_station_info+0x23>
    31f0:	1a6ce2        	s32i	a14, a12, 104
    31f3:	fff601        	l32r	a0, 31cc <wifi_softap_get_station_info+0xac>
    31f6:	0000c0        	callx0	a0
    31f9:	fff9c6        	j	31e4 <wifi_softap_free_station_info+0x14>
    31fc:	11c8      	l32i.n	a12, a1, 4
    31fe:	21d8      	l32i.n	a13, a1, 8
    3200:	31e8      	l32i.n	a14, a1, 12
    3202:	0108      	l32i.n	a0, a1, 0
    3204:	10c112        	addi	a1, a1, 16
    3207:	f00d      	ret.n
	...

00003214 <wifi_softap_get_station_num>:
    3214:	f0c112        	addi	a1, a1, -16
    3217:	11c9      	s32i.n	a12, a1, 4
    3219:	fffcc1        	l32r	a12, 320c <wifi_softap_free_station_info+0x3c>
    321c:	0109      	s32i.n	a0, a1, 0
    321e:	5cc8      	l32i.n	a12, a12, 20
    3220:	000005        	call0	3224 <wifi_softap_get_station_num+0x10>
    3223:	6cbc      	beqz.n	a12, 325d <wifi_softap_get_station_num+0x49>
    3225:	341226        	beqi	a2, 1, 325d <wifi_softap_get_station_num+0x49>
    3228:	12bc      	beqz.n	a2, 325d <wifi_softap_get_station_num+0x49>
    322a:	fff901        	l32r	a0, 3210 <wifi_softap_free_station_info+0x40>
    322d:	880002        	l8ui	a0, a0, 136
    3230:	01e096        	bltz	a0, 3252 <wifi_softap_get_station_num+0x3e>
    3233:	020c      	movi.n	a2, 0
    3235:	502b      	addi.n	a5, a0, 2
    3237:	100c      	movi.n	a0, 1
    3239:	321b      	addi.n	a3, a2, 1
    323b:	a040c0        	addx4	a4, a0, a12
    323e:	202442        	l32i	a4, a4, 128
    3241:	743030        	extui	a3, a3, 0, 8
    3244:	001b      	addi.n	a0, a0, 1
    3246:	740000        	extui	a0, a0, 0, 8
    3249:	932340        	movnez	a2, a3, a4
    324c:	e99507        	bne	a5, a0, 3239 <wifi_softap_get_station_num+0x25>
    324f:	000046        	j	3254 <wifi_softap_get_station_num+0x40>
    3252:	020c      	movi.n	a2, 0
    3254:	11c8      	l32i.n	a12, a1, 4
    3256:	0108      	l32i.n	a0, a1, 0
    3258:	10c112        	addi	a1, a1, 16
    325b:	f00d      	ret.n
    325d:	020c      	movi.n	a2, 0
    325f:	fffc46        	j	3254 <wifi_softap_get_station_num+0x40>
	...

0000328c <wifi_softap_deauth>:
    328c:	e0c112        	addi	a1, a1, -32
    328f:	31d9      	s32i.n	a13, a1, 12
    3291:	1109      	s32i.n	a0, a1, 4
    3293:	21c9      	s32i.n	a12, a1, 8
    3295:	41e9      	s32i.n	a14, a1, 16
    3297:	fff3c1        	l32r	a12, 3264 <wifi_softap_get_station_num+0x50>
    329a:	02ed      	mov.n	a14, a2
    329c:	5cc8      	l32i.n	a12, a12, 20
    329e:	000005        	call0	32a0 <wifi_softap_deauth+0x14>
    32a1:	271226        	beqi	a2, 1, 32cc <wifi_softap_deauth+0x40>
    32a4:	42ac      	beqz.n	a2, 32cc <wifi_softap_deauth+0x40>
    32a6:	2cac      	beqz.n	a12, 32cc <wifi_softap_deauth+0x40>
    32a8:	fff0d1        	l32r	a13, 3268 <wifi_softap_get_station_num+0x54>
    32ab:	3e0dd2        	l8ui	a13, a13, 62
    32ae:	addc      	bnez.n	a13, 32cc <wifi_softap_deauth+0x40>
    32b0:	30cc22        	addi	a2, a12, 48
    32b3:	1e2cd2        	l32i	a13, a12, 120
    32b6:	202c02        	l32i	a0, a12, 128
    32b9:	1e6c02        	s32i	a0, a12, 120
    32bc:	0eec      	bnez.n	a14, 32e0 <wifi_softap_deauth+0x54>
    32be:	ffeb31        	l32r	a3, 326c <wifi_softap_get_station_num+0x58>
    32c1:	640c      	movi.n	a4, 6
    32c3:	ffed01        	l32r	a0, 3278 <wifi_softap_get_station_num+0x64>
    32c6:	0000c0        	callx0	a0
    32c9:	000746        	j	32ea <wifi_softap_deauth+0x5e>
    32cc:	020c      	movi.n	a2, 0
    32ce:	000046        	j	32d3 <wifi_softap_deauth+0x47>
    32d1:	120c      	movi.n	a2, 1
    32d3:	21c8      	l32i.n	a12, a1, 8
    32d5:	31d8      	l32i.n	a13, a1, 12
    32d7:	41e8      	l32i.n	a14, a1, 16
    32d9:	1108      	l32i.n	a0, a1, 4
    32db:	20c112        	addi	a1, a1, 32
    32de:	f00d      	ret.n
    32e0:	0e3d      	mov.n	a3, a14
    32e2:	640c      	movi.n	a4, 6
    32e4:	ffe601        	l32r	a0, 327c <wifi_softap_get_station_num+0x68>
    32e7:	0000c0        	callx0	a0
    32ea:	0c2d      	mov.n	a2, a12
    32ec:	c0a032        	movi	a3, 192
    32ef:	240c      	movi.n	a4, 2
    32f1:	ffe301        	l32r	a0, 3280 <wifi_softap_get_station_num+0x6c>
    32f4:	0000c0        	callx0	a0
    32f7:	ffde21        	l32r	a2, 3270 <wifi_softap_get_station_num+0x5c>
    32fa:	1e6cd2        	s32i	a13, a12, 120
    32fd:	880222        	l8ui	a2, a2, 136
    3300:	1d0c      	movi.n	a13, 1
    3302:	fcb296        	bltz	a2, 32d1 <wifi_softap_deauth+0x45>
    3305:	a00dc0        	addx4	a0, a13, a12
    3308:	202032        	l32i	a3, a0, 128
    330b:	13ac      	beqz.n	a3, 3330 <wifi_softap_deauth+0xa4>
    330d:	0109      	s32i.n	a0, a1, 0
    330f:	fe8c      	beqz.n	a14, 3322 <wifi_softap_deauth+0x96>
    3311:	0e2d      	mov.n	a2, a14
    3313:	640c      	movi.n	a4, 6
    3315:	ffdb01        	l32r	a0, 3284 <wifi_softap_get_station_num+0x70>
    3318:	0000c0        	callx0	a0
    331b:	b2cc      	bnez.n	a2, 332a <wifi_softap_deauth+0x9e>
    331d:	0138      	l32i.n	a3, a1, 0
    331f:	202332        	l32i	a3, a3, 128
    3322:	0c2d      	mov.n	a2, a12
    3324:	ffd901        	l32r	a0, 3288 <wifi_softap_get_station_num+0x74>
    3327:	0000c0        	callx0	a0
    332a:	ffd221        	l32r	a2, 3274 <wifi_softap_get_station_num+0x60>
    332d:	880222        	l8ui	a2, a2, 136
    3330:	dd1b      	addi.n	a13, a13, 1
    3332:	322b      	addi.n	a3, a2, 2
    3334:	74d0d0        	extui	a13, a13, 0, 8
    3337:	ca2d37        	blt	a13, a3, 3305 <wifi_softap_deauth+0x79>
    333a:	ffe4c6        	j	32d1 <wifi_softap_deauth+0x45>
    333d:	000000        	ill
    3340:	000000        	ill
	...

00003344 <wifi_softap_get_beacon_only_mode>:
    3344:	ffff41        	l32r	a4, 3340 <wifi_softap_deauth+0xb4>
    3347:	030c      	movi.n	a3, 0
    3349:	3e0442        	l8ui	a4, a4, 62
    334c:	120c      	movi.n	a2, 1
    334e:	fec442        	addi	a4, a4, -2
    3351:	932340        	movnez	a2, a3, a4
    3354:	f00d      	ret.n
	...

00003370 <wifi_softap_set_beacon_only_mode>:
    3370:	f0c112        	addi	a1, a1, -16
    3373:	0129      	s32i.n	a2, a1, 0
    3375:	1109      	s32i.n	a0, a1, 4
    3377:	000005        	call0	3378 <wifi_softap_set_beacon_only_mode+0x8>
    337a:	082226        	beqi	a2, 2, 3386 <wifi_softap_set_beacon_only_mode+0x16>
    337d:	020c      	movi.n	a2, 0
    337f:	1108      	l32i.n	a0, a1, 4
    3381:	10c112        	addi	a1, a1, 16
    3384:	f00d      	ret.n
    3386:	250c      	movi.n	a5, 2
    3388:	fff421        	l32r	a2, 3358 <wifi_softap_get_beacon_only_mode+0x14>
    338b:	fff441        	l32r	a4, 335c <wifi_softap_get_beacon_only_mode+0x18>
    338e:	000222        	l8ui	a2, a2, 0
    3391:	3e0402        	l8ui	a0, a4, 62
    3394:	92cc      	bnez.n	a2, 33a1 <wifi_softap_set_beacon_only_mode+0x31>
    3396:	0138      	l32i.n	a3, a1, 0
    3398:	930530        	movnez	a0, a5, a3
    339b:	3e4402        	s8i	a0, a4, 62
    339e:	000646        	j	33bb <wifi_softap_set_beacon_only_mode+0x4b>
    33a1:	0168      	l32i.n	a6, a1, 0
    33a3:	969c      	beqz.n	a6, 33c0 <wifi_softap_set_beacon_only_mode+0x50>
    33a5:	122026        	beqi	a0, 2, 33bb <wifi_softap_set_beacon_only_mode+0x4b>
    33a8:	3e4452        	s8i	a5, a4, 62
    33ab:	020c      	movi.n	a2, 0
    33ad:	ffec01        	l32r	a0, 3360 <wifi_softap_get_beacon_only_mode+0x1c>
    33b0:	0000c0        	callx0	a0
    33b3:	120c      	movi.n	a2, 1
    33b5:	ffeb01        	l32r	a0, 3364 <wifi_softap_get_beacon_only_mode+0x20>
    33b8:	0000c0        	callx0	a0
    33bb:	120c      	movi.n	a2, 1
    33bd:	ffef86        	j	337f <wifi_softap_set_beacon_only_mode+0xf>
    33c0:	ff7016        	beqz	a0, 33bb <wifi_softap_set_beacon_only_mode+0x4b>
    33c3:	120c      	movi.n	a2, 1
    33c5:	070c      	movi.n	a7, 0
    33c7:	3e4472        	s8i	a7, a4, 62
    33ca:	ffe701        	l32r	a0, 3368 <wifi_softap_get_beacon_only_mode+0x24>
    33cd:	0000c0        	callx0	a0
    33d0:	020c      	movi.n	a2, 0
    33d2:	ffe601        	l32r	a0, 336c <wifi_softap_get_beacon_only_mode+0x28>
    33d5:	0000c0        	callx0	a0
    33d8:	fff7c6        	j	33bb <wifi_softap_set_beacon_only_mode+0x4b>
    33db:	00ac00        	excw
	...

000033f4 <wifi_set_user_ie>:
    33f4:	f0c112        	addi	a1, a1, -16
    33f7:	0139      	s32i.n	a3, a1, 0
    33f9:	1109      	s32i.n	a0, a1, 4
    33fb:	21c9      	s32i.n	a12, a1, 8
    33fd:	31d9      	s32i.n	a13, a1, 12
    33ff:	04cd      	mov.n	a12, a4
    3401:	02dd      	mov.n	a13, a2
    3403:	000005        	call0	3404 <wifi_set_user_ie+0x10>
    3406:	4dcc      	bnez.n	a13, 340e <wifi_set_user_ie+0x1a>
    3408:	0108      	l32i.n	a0, a1, 0
    340a:	008c      	beqz.n	a0, 340e <wifi_set_user_ie+0x1a>
    340c:	3ccc      	bnez.n	a12, 3413 <wifi_set_user_ie+0x1f>
    340e:	020c      	movi.n	a2, 0
    3410:	001006        	j	3454 <wifi_set_user_ie+0x60>
    3413:	bdfc      	bnez.n	a13, 3452 <wifi_set_user_ie+0x5e>
    3415:	022226        	beqi	a2, 2, 341b <wifi_set_user_ie+0x27>
    3418:	f23266        	bnei	a2, 3, 340e <wifi_set_user_ie+0x1a>
    341b:	fff0d1        	l32r	a13, 33dc <wifi_softap_set_beacon_only_mode+0x6c>
    341e:	1f2d22        	l32i	a2, a13, 124
    3421:	428c      	beqz.n	a2, 3429 <wifi_set_user_ie+0x35>
    3423:	fff101        	l32r	a0, 33e8 <wifi_softap_set_beacon_only_mode+0x78>
    3426:	0000c0        	callx0	a0
    3429:	0c2d      	mov.n	a2, a12
    342b:	fff001        	l32r	a0, 33ec <wifi_softap_set_beacon_only_mode+0x7c>
    342e:	0000c0        	callx0	a0
    3431:	1f6d22        	s32i	a2, a13, 124
    3434:	0138      	l32i.n	a3, a1, 0
    3436:	0c4d      	mov.n	a4, a12
    3438:	ffee01        	l32r	a0, 33f0 <wifi_softap_set_beacon_only_mode+0x80>
    343b:	0000c0        	callx0	a0
    343e:	ffe821        	l32r	a2, 33e0 <wifi_softap_set_beacon_only_mode+0x70>
    3441:	000222        	l8ui	a2, a2, 0
    3444:	804dc2        	s8i	a12, a13, 128
    3447:	071266        	bnei	a2, 1, 3452 <wifi_set_user_ie+0x5e>
    344a:	ffe641        	l32r	a4, 33e4 <wifi_softap_set_beacon_only_mode+0x74>
    344d:	130c      	movi.n	a3, 1
    344f:	004432        	s8i	a3, a4, 0
    3452:	120c      	movi.n	a2, 1
    3454:	21c8      	l32i.n	a12, a1, 8
    3456:	31d8      	l32i.n	a13, a1, 12
    3458:	1108      	l32i.n	a0, a1, 4
    345a:	10c112        	addi	a1, a1, 16
    345d:	f00d      	ret.n
    345f:	012800        	slli	a2, a8, 32
	...

00003464 <wifi_get_user_ie>:
    3464:	ffff31        	l32r	a3, 3460 <wifi_set_user_ie+0x6c>
    3467:	040c      	movi.n	a4, 0
    3469:	834320        	moveqz	a4, a3, a2
    346c:	042d      	mov.n	a2, a4
    346e:	f00d      	ret.n
    3470:	000000        	ill
	...

00003474 <wifi_get_phy_mode>:
    3474:	ffff21        	l32r	a2, 3470 <wifi_get_user_ie+0xc>
    3477:	b92222        	l32i	a2, a2, 0x2e4
    347a:	f00d      	ret.n
	...

000034c0 <wifi_set_phy_mode>:
    34c0:	f0c112        	addi	a1, a1, -16
    34c3:	3109      	s32i.n	a0, a1, 12
    34c5:	0c3216        	beqz	a2, 358c <wifi_set_phy_mode+0xcc>
    34c8:	0242b6        	bltui	a2, 4, 34ce <wifi_set_phy_mode+0xe>
    34cb:	002f46        	j	358c <wifi_set_phy_mode+0xcc>
    34ce:	ffeb01        	l32r	a0, 347c <wifi_get_phy_mode+0x8>
    34d1:	3e0002        	l8ui	a0, a0, 62
    34d4:	0b4056        	bnez	a0, 358c <wifi_set_phy_mode+0xcc>
    34d7:	ffea31        	l32r	a3, 3480 <wifi_get_phy_mode+0xc>
    34da:	c52332        	l32i	a3, a3, 0x314
    34dd:	2129      	s32i.n	a2, a1, 8
    34df:	029327        	bne	a3, a2, 34e5 <wifi_set_phy_mode+0x25>
    34e2:	002746        	j	3583 <wifi_set_phy_mode+0xc3>
    34e5:	000005        	call0	34e8 <wifi_set_phy_mode+0x28>
    34e8:	0129      	s32i.n	a2, a1, 0
    34ea:	ffe751        	l32r	a5, 3488 <wifi_get_phy_mode+0x14>
    34ed:	ffe531        	l32r	a3, 3484 <wifi_get_phy_mode+0x10>
    34f0:	2148      	l32i.n	a4, a1, 8
    34f2:	0338      	l32i.n	a3, a3, 0
    34f4:	c56542        	s32i	a4, a5, 0x314
    34f7:	1328      	l32i.n	a2, a3, 4
    34f9:	3338      	l32i.n	a3, a3, 12
    34fb:	ffe901        	l32r	a0, 34a0 <wifi_get_phy_mode+0x2c>
    34fe:	0000c0        	callx0	a0
    3501:	ffe231        	l32r	a3, 348c <wifi_get_phy_mode+0x18>
    3504:	78a342        	movi	a4, 0x378
    3507:	fdc222        	addi	a2, a2, -3
    350a:	f42020        	extui	a2, a2, 0, 16
    350d:	000005        	call0	3510 <wifi_set_phy_mode+0x50>
    3510:	ffe031        	l32r	a3, 3490 <wifi_get_phy_mode+0x1c>
    3513:	000332        	l8ui	a3, a3, 0
    3516:	0b1366        	bnei	a3, 1, 3525 <wifi_set_phy_mode+0x65>
    3519:	ffe201        	l32r	a0, 34a4 <wifi_get_phy_mode+0x30>
    351c:	0000c0        	callx0	a0
    351f:	ffe201        	l32r	a0, 34a8 <wifi_get_phy_mode+0x34>
    3522:	0000c0        	callx0	a0
    3525:	2128      	l32i.n	a2, a1, 8
    3527:	ffe101        	l32r	a0, 34ac <wifi_get_phy_mode+0x38>
    352a:	0000c0        	callx0	a0
    352d:	2148      	l32i.n	a4, a1, 8
    352f:	ffd971        	l32r	a7, 3494 <wifi_get_phy_mode+0x20>
    3532:	060c      	movi.n	a6, 0
    3534:	c16762        	s32i	a6, a7, 0x304
    3537:	fed752        	addmi	a5, a7, 0xfffffe00
    353a:	073466        	bnei	a4, 3, 3545 <wifi_set_phy_mode+0x85>
    353d:	052d      	mov.n	a2, a5
    353f:	ffdc01        	l32r	a0, 34b0 <wifi_get_phy_mode+0x3c>
    3542:	0000c0        	callx0	a0
    3545:	ffd481        	l32r	a8, 3498 <wifi_get_phy_mode+0x24>
    3548:	000882        	l8ui	a8, a8, 0
    354b:	0198      	l32i.n	a9, a1, 0
    354d:	321866        	bnei	a8, 1, 3583 <wifi_set_phy_mode+0xc3>
    3550:	1199      	s32i.n	a9, a1, 4
    3552:	021926        	beqi	a9, 1, 3558 <wifi_set_phy_mode+0x98>
    3555:	083966        	bnei	a9, 3, 3561 <wifi_set_phy_mode+0xa1>
    3558:	ffd701        	l32r	a0, 34b4 <wifi_get_phy_mode+0x40>
    355b:	0000c0        	callx0	a0
    355e:	000005        	call0	3560 <wifi_set_phy_mode+0xa0>
    3561:	1108      	l32i.n	a0, a1, 4
    3563:	022026        	beqi	a0, 2, 3569 <wifi_set_phy_mode+0xa9>
    3566:	053066        	bnei	a0, 3, 356f <wifi_set_phy_mode+0xaf>
    3569:	ffd301        	l32r	a0, 34b8 <wifi_get_phy_mode+0x44>
    356c:	0000c0        	callx0	a0
    356f:	1138      	l32i.n	a3, a1, 4
    3571:	0e1366        	bnei	a3, 1, 3583 <wifi_set_phy_mode+0xc3>
    3574:	ffca01        	l32r	a0, 349c <wifi_get_phy_mode+0x28>
    3577:	4008      	l32i.n	a0, a0, 16
    3579:	608c      	beqz.n	a0, 3583 <wifi_set_phy_mode+0xc3>
    357b:	0028      	l32i.n	a2, a0, 0
    357d:	ffcf01        	l32r	a0, 34bc <wifi_get_phy_mode+0x48>
    3580:	0000c0        	callx0	a0
    3583:	120c      	movi.n	a2, 1
    3585:	3108      	l32i.n	a0, a1, 12
    3587:	10c112        	addi	a1, a1, 16
    358a:	f00d      	ret.n
    358c:	020c      	movi.n	a2, 0
    358e:	fffcc6        	j	3585 <wifi_set_phy_mode+0xc5>
    3591:	000000        	ill
    3594:	000000        	ill
	...

00003598 <wifi_set_sleep_type>:
    3598:	f0c112        	addi	a1, a1, -16
    359b:	0109      	s32i.n	a0, a1, 0
    359d:	0432b6        	bltui	a2, 3, 35a5 <wifi_set_sleep_type+0xd>
    35a0:	020c      	movi.n	a2, 0
    35a2:	000286        	j	35b0 <wifi_set_sleep_type+0x18>
    35a5:	742020        	extui	a2, a2, 0, 8
    35a8:	fffb01        	l32r	a0, 3594 <wifi_set_phy_mode+0xd4>
    35ab:	0000c0        	callx0	a0
    35ae:	120c      	movi.n	a2, 1
    35b0:	0108      	l32i.n	a0, a1, 0
    35b2:	10c112        	addi	a1, a1, 16
    35b5:	f00d      	ret.n
    35b7:	000000        	ill
	...

000035bc <wifi_get_sleep_type>:
    35bc:	f0c112        	addi	a1, a1, -16
    35bf:	0109      	s32i.n	a0, a1, 0
    35c1:	fffd01        	l32r	a0, 35b8 <wifi_set_sleep_type+0x20>
    35c4:	0000c0        	callx0	a0
    35c7:	0108      	l32i.n	a0, a1, 0
    35c9:	10c112        	addi	a1, a1, 16
    35cc:	f00d      	ret.n
    35ce:	000000        	ill
    35d1:	000000        	ill

000035d4 <wifi_get_channel>:
    35d4:	f0c112        	addi	a1, a1, -16
    35d7:	0109      	s32i.n	a0, a1, 0
    35d9:	fffd01        	l32r	a0, 35d0 <wifi_get_sleep_type+0x14>
    35dc:	0000c0        	callx0	a0
    35df:	060222        	l8ui	a2, a2, 6
    35e2:	0108      	l32i.n	a0, a1, 0
    35e4:	10c112        	addi	a1, a1, 16
    35e7:	f00d      	ret.n
	...

000035fc <wifi_set_channel>:
    35fc:	f0c112        	addi	a1, a1, -16
    35ff:	11c9      	s32i.n	a12, a1, 4
    3601:	0109      	s32i.n	a0, a1, 0
    3603:	02cd      	mov.n	a12, a2
    3605:	e00c      	movi.n	a0, 14
    3607:	04b027        	bgeu	a0, a2, 360f <wifi_set_channel+0x13>
    360a:	020c      	movi.n	a2, 0
    360c:	000906        	j	3634 <wifi_set_channel+0x38>
    360f:	fff801        	l32r	a0, 35f0 <wifi_get_channel+0x1c>
    3612:	0000c0        	callx0	a0
    3615:	fff521        	l32r	a2, 35ec <wifi_get_channel+0x18>
    3618:	90ccc0        	addx2	a12, a12, a12
    361b:	a0cc20        	addx4	a12, a12, a2
    361e:	78ccc2        	addi	a12, a12, 120
    3621:	4b62c2        	s32i	a12, a2, 0x12c
    3624:	fff401        	l32r	a0, 35f4 <wifi_get_channel+0x20>
    3627:	0000c0        	callx0	a0
    362a:	0c2d      	mov.n	a2, a12
    362c:	fff301        	l32r	a0, 35f8 <wifi_get_channel+0x24>
    362f:	0000c0        	callx0	a0
    3632:	120c      	movi.n	a2, 1
    3634:	11c8      	l32i.n	a12, a1, 4
    3636:	0108      	l32i.n	a0, a1, 0
    3638:	10c112        	addi	a1, a1, 16
    363b:	f00d      	ret.n
	...
    3645:	fe          	.byte 0xfe
    3646:	003ff1        	l32r	a15, fffc3744 <system_get_sdk_version+0xfffbfa40>
    3649:	000000        	ill

0000364c <wifi_promiscuous_set_mac>:
    364c:	f0c112        	addi	a1, a1, -16
    364f:	0109      	s32i.n	a0, a1, 0
    3651:	fffb01        	l32r	a0, 3640 <wifi_set_channel+0x44>
    3654:	023d      	mov.n	a3, a2
    3656:	3e0002        	l8ui	a0, a0, 62
    3659:	020c      	movi.n	a2, 0
    365b:	021026        	beqi	a0, 1, 3661 <wifi_promiscuous_set_mac+0x15>
    365e:	000fc6        	j	36a1 <wifi_promiscuous_set_mac+0x55>
    3661:	190c      	movi.n	a9, 1
    3663:	fff841        	l32r	a4, 3644 <wifi_set_channel+0x48>
    3666:	0020c0        	memw
    3669:	9b2482        	l32i	a8, a4, 0x26c
    366c:	208890        	or	a8, a8, a9
    366f:	0020c0        	memw
    3672:	9b6482        	s32i	a8, a4, 0x26c
    3675:	270c      	movi.n	a7, 2
    3677:	0020c0        	memw
    367a:	9b2462        	l32i	a6, a4, 0x26c
    367d:	206670        	or	a6, a6, a7
    3680:	0020c0        	memw
    3683:	9b6462        	s32i	a6, a4, 0x26c
    3686:	450c      	movi.n	a5, 4
    3688:	0020c0        	memw
    368b:	9b2422        	l32i	a2, a4, 0x26c
    368e:	202250        	or	a2, a2, a5
    3691:	0020c0        	memw
    3694:	9b6422        	s32i	a2, a4, 0x26c
    3697:	020c      	movi.n	a2, 0
    3699:	ffeb01        	l32r	a0, 3648 <wifi_set_channel+0x4c>
    369c:	0000c0        	callx0	a0
    369f:	120c      	movi.n	a2, 1
    36a1:	0108      	l32i.n	a0, a1, 0
    36a3:	10c112        	addi	a1, a1, 16
    36a6:	f00d      	ret.n
	...
    36b0:	f1fe00        	excw
    36b3:	3f          	.byte 0x3f
	...
    36bc:	f1fe00        	excw
    36bf:	3f          	.byte 0x3f
	...

000036e0 <wifi_promiscuous_enable>:
    36e0:	f0c112        	addi	a1, a1, -16
    36e3:	0129      	s32i.n	a2, a1, 0
    36e5:	1109      	s32i.n	a0, a1, 4
    36e7:	000005        	call0	36e8 <wifi_promiscuous_enable+0x8>
    36ea:	ffef01        	l32r	a0, 36a8 <wifi_promiscuous_set_mac+0x5c>
    36ed:	000002        	l8ui	a0, a0, 0
    36f0:	e08c      	beqz.n	a0, 3702 <wifi_promiscuous_enable+0x22>
    36f2:	0c1266        	bnei	a2, 1, 3702 <wifi_promiscuous_enable+0x22>
    36f5:	ffed51        	l32r	a5, 36ac <wifi_promiscuous_set_mac+0x60>
    36f8:	01b8      	l32i.n	a11, a1, 0
    36fa:	3e0562        	l8ui	a6, a5, 62
    36fd:	140c      	movi.n	a4, 1
    36ff:	683666        	bnei	a6, 3, 376b <wifi_promiscuous_enable+0x8b>
    3702:	020c      	movi.n	a2, 0
    3704:	001706        	j	3764 <wifi_promiscuous_enable+0x84>
    3707:	ffef01        	l32r	a0, 36c4 <wifi_promiscuous_set_mac+0x78>
    370a:	0000c0        	callx0	a0
    370d:	ffee01        	l32r	a0, 36c8 <wifi_promiscuous_set_mac+0x7c>
    3710:	0000c0        	callx0	a0
    3713:	0020c0        	memw
    3716:	ffe631        	l32r	a3, 36b0 <wifi_promiscuous_set_mac+0x64>
    3719:	9b2372        	l32i	a7, a3, 0x26c
    371c:	180c      	movi.n	a8, 1
    371e:	207780        	or	a7, a7, a8
    3721:	0020c0        	memw
    3724:	9b6372        	s32i	a7, a3, 0x26c
    3727:	260c      	movi.n	a6, 2
    3729:	0020c0        	memw
    372c:	9b2352        	l32i	a5, a3, 0x26c
    372f:	205560        	or	a5, a5, a6
    3732:	0020c0        	memw
    3735:	9b6352        	s32i	a5, a3, 0x26c
    3738:	440c      	movi.n	a4, 4
    373a:	0020c0        	memw
    373d:	9b2322        	l32i	a2, a3, 0x26c
    3740:	202240        	or	a2, a2, a4
    3743:	0020c0        	memw
    3746:	9b6322        	s32i	a2, a3, 0x26c
    3749:	020c      	movi.n	a2, 0
    374b:	ffda31        	l32r	a3, 36b4 <wifi_promiscuous_set_mac+0x68>
    374e:	ffdf01        	l32r	a0, 36cc <wifi_promiscuous_set_mac+0x80>
    3751:	0000c0        	callx0	a0
    3754:	ffd9a1        	l32r	a10, 36b8 <wifi_promiscuous_set_mac+0x6c>
    3757:	090c      	movi.n	a9, 0
    3759:	3e4a92        	s8i	a9, a10, 62
    375c:	ffdd01        	l32r	a0, 36d0 <wifi_promiscuous_set_mac+0x84>
    375f:	0000c0        	callx0	a0
    3762:	120c      	movi.n	a2, 1
    3764:	1108      	l32i.n	a0, a1, 4
    3766:	10c112        	addi	a1, a1, 16
    3769:	f00d      	ret.n
    376b:	058b16        	beqz	a11, 37c7 <wifi_promiscuous_enable+0xe7>
    376e:	581626        	beqi	a6, 1, 37ca <wifi_promiscuous_enable+0xea>
    3771:	000005        	call0	3774 <wifi_promiscuous_enable+0x94>
    3774:	ffd801        	l32r	a0, 36d4 <wifi_promiscuous_set_mac+0x88>
    3777:	0000c0        	callx0	a0
    377a:	e97c      	movi.n	a9, -2
    377c:	0020c0        	memw
    377f:	ffcf41        	l32r	a4, 36bc <wifi_promiscuous_set_mac+0x70>
    3782:	9b2482        	l32i	a8, a4, 0x26c
    3785:	108890        	and	a8, a8, a9
    3788:	0020c0        	memw
    378b:	9b6482        	s32i	a8, a4, 0x26c
    378e:	d77c      	movi.n	a7, -3
    3790:	0020c0        	memw
    3793:	9b2462        	l32i	a6, a4, 0x26c
    3796:	106670        	and	a6, a6, a7
    3799:	0020c0        	memw
    379c:	9b6462        	s32i	a6, a4, 0x26c
    379f:	b57c      	movi.n	a5, -5
    37a1:	0020c0        	memw
    37a4:	9b2432        	l32i	a3, a4, 0x26c
    37a7:	103350        	and	a3, a3, a5
    37aa:	0020c0        	memw
    37ad:	9b6432        	s32i	a3, a4, 0x26c
    37b0:	ffc421        	l32r	a2, 36c0 <wifi_promiscuous_set_mac+0x74>
    37b3:	100c      	movi.n	a0, 1
    37b5:	3e4202        	s8i	a0, a2, 62
    37b8:	ffc801        	l32r	a0, 36d8 <wifi_promiscuous_set_mac+0x8c>
    37bb:	0000c0        	callx0	a0
    37be:	ffc701        	l32r	a0, 36dc <wifi_promiscuous_set_mac+0x90>
    37c1:	0000c0        	callx0	a0
    37c4:	ffe686        	j	3762 <wifi_promiscuous_enable+0x82>
    37c7:	f3c656        	bnez	a6, 3707 <wifi_promiscuous_enable+0x27>
    37ca:	042d      	mov.n	a2, a4
    37cc:	ffe506        	j	3764 <wifi_promiscuous_enable+0x84>
    37cf:	000000        	ill
	...

000037d4 <wifi_set_promiscuous_rx_cb>:
    37d4:	ffff31        	l32r	a3, 37d0 <wifi_promiscuous_enable+0xf0>
    37d7:	4c6322        	s32i	a2, a3, 0x130
    37da:	f00d      	ret.n
	...

000037ec <wifi_get_ip_info>:
    37ec:	f0c112        	addi	a1, a1, -16
    37ef:	0109      	s32i.n	a0, a1, 0
    37f1:	21d9      	s32i.n	a13, a1, 8
    37f3:	11c9      	s32i.n	a12, a1, 4
    37f5:	02dd      	mov.n	a13, a2
    37f7:	03cd      	mov.n	a12, a3
    37f9:	2022f6        	bgeui	a2, 2, 381d <wifi_get_ip_info+0x31>
    37fc:	d39c      	beqz.n	a3, 381d <wifi_get_ip_info+0x31>
    37fe:	fffa01        	l32r	a0, 37e8 <wifi_set_promiscuous_rx_cb+0x14>
    3801:	0000c0        	callx0	a0
    3804:	22ac      	beqz.n	a2, 382a <wifi_get_ip_info+0x3e>
    3806:	350202        	l8ui	a0, a2, 53
    3809:	1d6007        	bbci	a0, 0, 382a <wifi_get_ip_info+0x3e>
    380c:	1248      	l32i.n	a4, a2, 4
    380e:	0c49      	s32i.n	a4, a12, 0
    3810:	2238      	l32i.n	a3, a2, 8
    3812:	1c39      	s32i.n	a3, a12, 4
    3814:	3208      	l32i.n	a0, a2, 12
    3816:	2c09      	s32i.n	a0, a12, 8
    3818:	120c      	movi.n	a2, 1
    381a:	000046        	j	381f <wifi_get_ip_info+0x33>
    381d:	020c      	movi.n	a2, 0
    381f:	11c8      	l32i.n	a12, a1, 4
    3821:	21d8      	l32i.n	a13, a1, 8
    3823:	0108      	l32i.n	a0, a1, 0
    3825:	10c112        	addi	a1, a1, 16
    3828:	f00d      	ret.n
    382a:	000c      	movi.n	a0, 0
    382c:	ffec21        	l32r	a2, 37dc <wifi_set_promiscuous_rx_cb+0x8>
    382f:	bdcc      	bnez.n	a13, 383e <wifi_get_ip_info+0x52>
    3831:	030252        	l8ui	a5, a2, 3
    3834:	231566        	bnei	a5, 1, 385b <wifi_get_ip_info+0x6f>
    3837:	0c09      	s32i.n	a0, a12, 0
    3839:	1c09      	s32i.n	a0, a12, 4
    383b:	fff5c6        	j	3816 <wifi_get_ip_info+0x2a>
    383e:	020262        	l8ui	a6, a2, 2
    3841:	061666        	bnei	a6, 1, 384b <wifi_get_ip_info+0x5f>
    3844:	0c09      	s32i.n	a0, a12, 0
    3846:	1c09      	s32i.n	a0, a12, 4
    3848:	fff286        	j	3816 <wifi_get_ip_info+0x2a>
    384b:	ffe501        	l32r	a0, 37e0 <wifi_set_promiscuous_rx_cb+0xc>
    384e:	0038      	l32i.n	a3, a0, 0
    3850:	0c39      	s32i.n	a3, a12, 0
    3852:	1028      	l32i.n	a2, a0, 4
    3854:	1c29      	s32i.n	a2, a12, 4
    3856:	2008      	l32i.n	a0, a0, 8
    3858:	ffee86        	j	3816 <wifi_get_ip_info+0x2a>
    385b:	ffe201        	l32r	a0, 37e4 <wifi_set_promiscuous_rx_cb+0x10>
    385e:	0038      	l32i.n	a3, a0, 0
    3860:	0c39      	s32i.n	a3, a12, 0
    3862:	1028      	l32i.n	a2, a0, 4
    3864:	1c29      	s32i.n	a2, a12, 4
    3866:	2008      	l32i.n	a0, a0, 8
    3868:	ffea86        	j	3816 <wifi_get_ip_info+0x2a>
	...

00003880 <wifi_set_ip_info>:
    3880:	f0c112        	addi	a1, a1, -16
    3883:	0109      	s32i.n	a0, a1, 0
    3885:	11c9      	s32i.n	a12, a1, 4
    3887:	21d9      	s32i.n	a13, a1, 8
    3889:	02cd      	mov.n	a12, a2
    388b:	03dd      	mov.n	a13, a3
    388d:	b39c      	beqz.n	a3, 38ac <wifi_set_ip_info+0x2c>
    388f:	1922f6        	bgeui	a2, 2, 38ac <wifi_set_ip_info+0x2c>
    3892:	fff901        	l32r	a0, 3878 <wifi_get_ip_info+0x8c>
    3895:	0000c0        	callx0	a0
    3898:	fff501        	l32r	a0, 386c <wifi_get_ip_info+0x80>
    389b:	4ccc      	bnez.n	a12, 38a3 <wifi_set_ip_info+0x23>
    389d:	030032        	l8ui	a3, a0, 3
    38a0:	081326        	beqi	a3, 1, 38ac <wifi_set_ip_info+0x2c>
    38a3:	0a1c66        	bnei	a12, 1, 38b1 <wifi_set_ip_info+0x31>
    38a6:	020042        	l8ui	a4, a0, 2
    38a9:	041466        	bnei	a4, 1, 38b1 <wifi_set_ip_info+0x31>
    38ac:	020c      	movi.n	a2, 0
    38ae:	000986        	j	38d8 <wifi_set_ip_info+0x58>
    38b1:	ecec      	bnez.n	a12, 38e3 <wifi_set_ip_info+0x63>
    38b3:	ffef01        	l32r	a0, 3870 <wifi_get_ip_info+0x84>
    38b6:	0d68      	l32i.n	a6, a13, 0
    38b8:	0069      	s32i.n	a6, a0, 0
    38ba:	1d58      	l32i.n	a5, a13, 4
    38bc:	1059      	s32i.n	a5, a0, 4
    38be:	2d78      	l32i.n	a7, a13, 8
    38c0:	2079      	s32i.n	a7, a0, 8
    38c2:	029c      	beqz.n	a2, 38d6 <wifi_set_ip_info+0x56>
    38c4:	350282        	l8ui	a8, a2, 53
    38c7:	0b6807        	bbci	a8, 0, 38d6 <wifi_set_ip_info+0x56>
    38ca:	0d3d      	mov.n	a3, a13
    38cc:	4d4b      	addi.n	a4, a13, 4
    38ce:	5d8b      	addi.n	a5, a13, 8
    38d0:	ffeb01        	l32r	a0, 387c <wifi_get_ip_info+0x90>
    38d3:	0000c0        	callx0	a0
    38d6:	120c      	movi.n	a2, 1
    38d8:	11c8      	l32i.n	a12, a1, 4
    38da:	21d8      	l32i.n	a13, a1, 8
    38dc:	0108      	l32i.n	a0, a1, 0
    38de:	10c112        	addi	a1, a1, 16
    38e1:	f00d      	ret.n
    38e3:	ffe401        	l32r	a0, 3874 <wifi_get_ip_info+0x88>
    38e6:	0da8      	l32i.n	a10, a13, 0
    38e8:	00a9      	s32i.n	a10, a0, 0
    38ea:	1d98      	l32i.n	a9, a13, 4
    38ec:	1099      	s32i.n	a9, a0, 4
    38ee:	fff306        	j	38be <wifi_set_ip_info+0x3e>
	...

0000390c <wifi_get_macaddr>:
    390c:	f0c112        	addi	a1, a1, -16
    390f:	0109      	s32i.n	a0, a1, 0
    3911:	11c9      	s32i.n	a12, a1, 4
    3913:	21d9      	s32i.n	a13, a1, 8
    3915:	02cd      	mov.n	a12, a2
    3917:	03dd      	mov.n	a13, a3
    3919:	1b22f6        	bgeui	a2, 2, 3938 <wifi_get_macaddr+0x2c>
    391c:	839c      	beqz.n	a3, 3938 <wifi_get_macaddr+0x2c>
    391e:	fff701        	l32r	a0, 38fc <wifi_set_ip_info+0x7c>
    3921:	0000c0        	callx0	a0
    3924:	020d      	mov.n	a0, a2
    3926:	d2ac      	beqz.n	a2, 3957 <wifi_get_macaddr+0x4b>
    3928:	0d2d      	mov.n	a2, a13
    392a:	640c      	movi.n	a4, 6
    392c:	2fc032        	addi	a3, a0, 47
    392f:	fff401        	l32r	a0, 3900 <wifi_set_ip_info+0x80>
    3932:	0000c0        	callx0	a0
    3935:	000446        	j	394a <wifi_get_macaddr+0x3e>
    3938:	020c      	movi.n	a2, 0
    393a:	000386        	j	394c <wifi_get_macaddr+0x40>
    393d:	0d2d      	mov.n	a2, a13
    393f:	ffed31        	l32r	a3, 38f4 <wifi_set_ip_info+0x74>
    3942:	640c      	movi.n	a4, 6
    3944:	fff001        	l32r	a0, 3904 <wifi_set_ip_info+0x84>
    3947:	0000c0        	callx0	a0
    394a:	120c      	movi.n	a2, 1
    394c:	11c8      	l32i.n	a12, a1, 4
    394e:	21d8      	l32i.n	a13, a1, 8
    3950:	0108      	l32i.n	a0, a1, 0
    3952:	10c112        	addi	a1, a1, 16
    3955:	f00d      	ret.n
    3957:	fe2c56        	bnez	a12, 393d <wifi_get_macaddr+0x31>
    395a:	0d2d      	mov.n	a2, a13
    395c:	ffe731        	l32r	a3, 38f8 <wifi_set_ip_info+0x78>
    395f:	640c      	movi.n	a4, 6
    3961:	ffe901        	l32r	a0, 3908 <wifi_set_ip_info+0x88>
    3964:	0000c0        	callx0	a0
    3967:	fff7c6        	j	394a <wifi_get_macaddr+0x3e>
	...

000039b0 <wifi_set_macaddr>:
    39b0:	e0c112        	addi	a1, a1, -32
    39b3:	31e9      	s32i.n	a14, a1, 12
    39b5:	0109      	s32i.n	a0, a1, 0
    39b7:	11c9      	s32i.n	a12, a1, 4
    39b9:	21d9      	s32i.n	a13, a1, 8
    39bb:	03cd      	mov.n	a12, a3
    39bd:	02dd      	mov.n	a13, a2
    39bf:	000005        	call0	39c0 <wifi_set_macaddr+0x10>
    39c2:	023d      	mov.n	a3, a2
    39c4:	05fc16        	beqz	a12, 3a27 <wifi_set_macaddr+0x77>
    39c7:	5c2df6        	bgeui	a13, 2, 3a27 <wifi_set_macaddr+0x77>
    39ca:	0d2d      	mov.n	a2, a13
    39cc:	4139      	s32i.n	a3, a1, 16
    39ce:	ffeb01        	l32r	a0, 397c <wifi_get_macaddr+0x70>
    39d1:	0000c0        	callx0	a0
    39d4:	02ed      	mov.n	a14, a2
    39d6:	4108      	l32i.n	a0, a1, 16
    39d8:	045d56        	bnez	a13, 3a21 <wifi_set_macaddr+0x71>
    39db:	482026        	beqi	a0, 2, 3a27 <wifi_set_macaddr+0x77>
    39de:	045016        	beqz	a0, 3a27 <wifi_set_macaddr+0x77>
    39e1:	0c3d      	mov.n	a3, a12
    39e3:	ffe2d1        	l32r	a13, 396c <wifi_get_macaddr+0x60>
    39e6:	640c      	movi.n	a4, 6
    39e8:	0d2d      	mov.n	a2, a13
    39ea:	ffe501        	l32r	a0, 3980 <wifi_get_macaddr+0x74>
    39ed:	0000c0        	callx0	a0
    39f0:	09b216        	beqz	a2, 3a8f <wifi_set_macaddr+0xdf>
    39f3:	0d2d      	mov.n	a2, a13
    39f5:	0c3d      	mov.n	a3, a12
    39f7:	640c      	movi.n	a4, 6
    39f9:	ffe201        	l32r	a0, 3984 <wifi_get_macaddr+0x78>
    39fc:	0000c0        	callx0	a0
    39ff:	091e16        	beqz	a14, 3a94 <wifi_set_macaddr+0xe4>
    3a02:	0c3d      	mov.n	a3, a12
    3a04:	2fce22        	addi	a2, a14, 47
    3a07:	640c      	movi.n	a4, 6
    3a09:	ffdf01        	l32r	a0, 3988 <wifi_get_macaddr+0x7c>
    3a0c:	0000c0        	callx0	a0
    3a0f:	ffdf01        	l32r	a0, 398c <wifi_get_macaddr+0x80>
    3a12:	0000c0        	callx0	a0
    3a15:	ffde01        	l32r	a0, 3990 <wifi_get_macaddr+0x84>
    3a18:	0000c0        	callx0	a0
    3a1b:	000005        	call0	3a1c <wifi_set_macaddr+0x6c>
    3a1e:	001b46        	j	3a8f <wifi_set_macaddr+0xdf>
    3a21:	000005        	call0	3a24 <wifi_set_macaddr+0x74>
    3a24:	0e1266        	bnei	a2, 1, 3a36 <wifi_set_macaddr+0x86>
    3a27:	020c      	movi.n	a2, 0
    3a29:	11c8      	l32i.n	a12, a1, 4
    3a2b:	21d8      	l32i.n	a13, a1, 8
    3a2d:	31e8      	l32i.n	a14, a1, 12
    3a2f:	0108      	l32i.n	a0, a1, 0
    3a31:	20c112        	addi	a1, a1, 32
    3a34:	f00d      	ret.n
    3a36:	0c3d      	mov.n	a3, a12
    3a38:	ffced1        	l32r	a13, 3970 <wifi_get_macaddr+0x64>
    3a3b:	640c      	movi.n	a4, 6
    3a3d:	0d2d      	mov.n	a2, a13
    3a3f:	ffd501        	l32r	a0, 3994 <wifi_get_macaddr+0x88>
    3a42:	0000c0        	callx0	a0
    3a45:	046216        	beqz	a2, 3a8f <wifi_set_macaddr+0xdf>
    3a48:	0d2d      	mov.n	a2, a13
    3a4a:	0c3d      	mov.n	a3, a12
    3a4c:	640c      	movi.n	a4, 6
    3a4e:	ffd201        	l32r	a0, 3998 <wifi_get_macaddr+0x8c>
    3a51:	0000c0        	callx0	a0
    3a54:	7ebc      	beqz.n	a14, 3a8f <wifi_set_macaddr+0xdf>
    3a56:	0c3d      	mov.n	a3, a12
    3a58:	2fce22        	addi	a2, a14, 47
    3a5b:	640c      	movi.n	a4, 6
    3a5d:	ffcf01        	l32r	a0, 399c <wifi_get_macaddr+0x90>
    3a60:	0000c0        	callx0	a0
    3a63:	ffc401        	l32r	a0, 3974 <wifi_get_macaddr+0x68>
    3a66:	3e0002        	l8ui	a0, a0, 62
    3a69:	122066        	bnei	a0, 2, 3a7f <wifi_set_macaddr+0xcf>
    3a6c:	120c      	movi.n	a2, 1
    3a6e:	ffcc01        	l32r	a0, 39a0 <wifi_get_macaddr+0x94>
    3a71:	0000c0        	callx0	a0
    3a74:	120c      	movi.n	a2, 1
    3a76:	ffcb01        	l32r	a0, 39a4 <wifi_get_macaddr+0x98>
    3a79:	0000c0        	callx0	a0
    3a7c:	0003c6        	j	3a8f <wifi_set_macaddr+0xdf>
    3a7f:	020c      	movi.n	a2, 0
    3a81:	ffc901        	l32r	a0, 39a8 <wifi_get_macaddr+0x9c>
    3a84:	0000c0        	callx0	a0
    3a87:	020c      	movi.n	a2, 0
    3a89:	ffc801        	l32r	a0, 39ac <wifi_get_macaddr+0xa0>
    3a8c:	0000c0        	callx0	a0
    3a8f:	120c      	movi.n	a2, 1
    3a91:	ffe506        	j	3a29 <wifi_set_macaddr+0x79>
    3a94:	ffb921        	l32r	a2, 3978 <wifi_get_macaddr+0x6c>
    3a97:	000222        	l8ui	a2, a2, 0
    3a9a:	f11266        	bnei	a2, 1, 3a8f <wifi_set_macaddr+0xdf>
    3a9d:	0d2d      	mov.n	a2, a13
    3a9f:	000005        	call0	3aa0 <wifi_set_macaddr+0xf0>
    3aa2:	fffa46        	j	3a8f <wifi_set_macaddr+0xdf>
    3aa5:	000000        	ill
    3aa8:	000000        	ill
	...

00003aac <wifi_enable_6m_rate>:
    3aac:	ffff31        	l32r	a3, 3aa8 <wifi_set_macaddr+0xf8>
    3aaf:	4d4322        	s8i	a2, a3, 77
    3ab2:	f00d      	ret.n
    3ab4:	000000        	ill
	...

00003ab8 <wifi_get_user_fixed_rate>:
    3ab8:	529c      	beqz.n	a2, 3ad1 <wifi_get_user_fixed_rate+0x19>
    3aba:	339c      	beqz.n	a3, 3ad1 <wifi_get_user_fixed_rate+0x19>
    3abc:	fffe41        	l32r	a4, 3ab4 <wifi_enable_6m_rate+0x8>
    3abf:	050c      	movi.n	a5, 0
    3ac1:	4f0462        	l8ui	a6, a4, 79
    3ac4:	004362        	s8i	a6, a3, 0
    3ac7:	4e0442        	l8ui	a4, a4, 78
    3aca:	004242        	s8i	a4, a2, 0
    3acd:	052d      	mov.n	a2, a5
    3acf:	f00d      	ret.n
    3ad1:	f57c      	movi.n	a5, -1
    3ad3:	fffd86        	j	3acd <wifi_get_user_fixed_rate+0x15>
    3ad6:	000000        	ill
    3ad9:	000000        	ill

00003adc <wifi_set_user_fixed_rate>:
    3adc:	04c3b6        	bltui	a3, 32, 3ae4 <wifi_set_user_fixed_rate+0x8>
    3adf:	f57c      	movi.n	a5, -1
    3ae1:	000486        	j	3af7 <wifi_set_user_fixed_rate+0x1b>
    3ae4:	0d42f6        	bgeui	a2, 4, 3af5 <wifi_set_user_fixed_rate+0x19>
    3ae7:	fffc41        	l32r	a4, 3ad8 <wifi_get_user_fixed_rate+0x20>
    3aea:	050c      	movi.n	a5, 0
    3aec:	4f4432        	s8i	a3, a4, 79
    3aef:	4e4422        	s8i	a2, a4, 78
    3af2:	000046        	j	3af7 <wifi_set_user_fixed_rate+0x1b>
    3af5:	e57c      	movi.n	a5, -2
    3af7:	052d      	mov.n	a2, a5
    3af9:	f00d      	ret.n
	...

00003b04 <wifi_send_pkt_freedom>:
    3b04:	f0c112        	addi	a1, a1, -16
    3b07:	0109      	s32i.n	a0, a1, 0
    3b09:	11c9      	s32i.n	a12, a1, 4
    3b0b:	21d9      	s32i.n	a13, a1, 8
    3b0d:	02cd      	mov.n	a12, a2
    3b0f:	03dd      	mov.n	a13, a3
    3b11:	729c      	beqz.n	a2, 3b2c <wifi_send_pkt_freedom+0x28>
    3b13:	701c      	movi.n	a0, 23
    3b15:	13b037        	bgeu	a0, a3, 3b2c <wifi_send_pkt_freedom+0x28>
    3b18:	000005        	call0	3b1c <wifi_send_pkt_freedom+0x18>
    3b1b:	fff801        	l32r	a0, 3afc <wifi_set_user_fixed_rate+0x20>
    3b1e:	291226        	beqi	a2, 1, 3b4b <wifi_send_pkt_freedom+0x47>
    3b21:	2142e6        	bgei	a2, 4, 3b46 <wifi_send_pkt_freedom+0x42>
    3b24:	1e22a6        	blti	a2, 2, 3b46 <wifi_send_pkt_freedom+0x42>
    3b27:	5028      	l32i.n	a2, a0, 20
    3b29:	000806        	j	3b4d <wifi_send_pkt_freedom+0x49>
    3b2c:	f27c      	movi.n	a2, -1
    3b2e:	000246        	j	3b3b <wifi_send_pkt_freedom+0x37>
    3b31:	0d4d      	mov.n	a4, a13
    3b33:	0c3d      	mov.n	a3, a12
    3b35:	fff201        	l32r	a0, 3b00 <wifi_set_user_fixed_rate+0x24>
    3b38:	0000c0        	callx0	a0
    3b3b:	11c8      	l32i.n	a12, a1, 4
    3b3d:	21d8      	l32i.n	a13, a1, 8
    3b3f:	0108      	l32i.n	a0, a1, 0
    3b41:	10c112        	addi	a1, a1, 16
    3b44:	f00d      	ret.n
    3b46:	020c      	movi.n	a2, 0
    3b48:	000046        	j	3b4d <wifi_send_pkt_freedom+0x49>
    3b4b:	4028      	l32i.n	a2, a0, 16
    3b4d:	fe0256        	bnez	a2, 3b31 <wifi_send_pkt_freedom+0x2d>
    3b50:	627c      	movi.n	a2, -10
    3b52:	fff946        	j	3b3b <wifi_send_pkt_freedom+0x37>
    3b55:	000000        	ill
    3b58:	000000        	ill
	...

00003b5c <wifi_status_led_install>:
    3b5c:	146040        	extui	a6, a4, 0, 2
    3b5f:	180c      	movi.n	a8, 1
    3b61:	fffd91        	l32r	a9, 3b58 <wifi_send_pkt_freedom+0x54>
    3b64:	470c      	movi.n	a7, 4
    3b66:	107470        	and	a7, a4, a7
    3b69:	7e4922        	s8i	a2, a9, 126
    3b6c:	7f4982        	s8i	a8, a9, 127
    3b6f:	7d4982        	s8i	a8, a9, 125
    3b72:	1177e0        	slli	a7, a7, 2
    3b75:	206670        	or	a6, a6, a7
    3b78:	1166c0        	slli	a6, a6, 4
    3b7b:	cfae72        	movi	a7, 0xfffffecf
    3b7e:	0020c0        	memw
    3b81:	0358      	l32i.n	a5, a3, 0
    3b83:	105570        	and	a5, a5, a7
    3b86:	205560        	or	a5, a5, a6
    3b89:	0020c0        	memw
    3b8c:	0359      	s32i.n	a5, a3, 0
    3b8e:	f00d      	ret.n
	...

00003b9c <wifi_status_led_uninstall>:
    3b9c:	f0c112        	addi	a1, a1, -16
    3b9f:	0109      	s32i.n	a0, a1, 0
    3ba1:	fffb01        	l32r	a0, 3b90 <wifi_status_led_install+0x34>
    3ba4:	7d0022        	l8ui	a2, a0, 125
    3ba7:	0d1266        	bnei	a2, 1, 3bb8 <wifi_status_led_uninstall+0x1c>
    3baa:	fffa21        	l32r	a2, 3b94 <wifi_status_led_install+0x38>
    3bad:	030c      	movi.n	a3, 0
    3baf:	7d4032        	s8i	a3, a0, 125
    3bb2:	fff901        	l32r	a0, 3b98 <wifi_status_led_install+0x3c>
    3bb5:	0000c0        	callx0	a0
    3bb8:	0108      	l32i.n	a0, a1, 0
    3bba:	10c112        	addi	a1, a1, 16
    3bbd:	f00d      	ret.n
    3bbf:	008000        	excw
	...

00003bc4 <wifi_set_status_led_output_level>:
    3bc4:	ffff41        	l32r	a4, 3bc0 <wifi_status_led_uninstall+0x24>
    3bc7:	620b      	addi.n	a6, a2, -1
    3bc9:	150c      	movi.n	a5, 1
    3bcb:	030c      	movi.n	a3, 0
    3bcd:	833560        	moveqz	a3, a5, a6
    3bd0:	804432        	s8i	a3, a4, 128
    3bd3:	f00d      	ret.n
    3bd5:	000000        	ill
    3bd8:	000000        	ill
	...

00003bdc <wifi_set_event_handler_cb>:
    3bdc:	ffff31        	l32r	a3, 3bd8 <wifi_set_status_led_output_level+0x14>
    3bdf:	3f6322        	s32i	a2, a3, 252
    3be2:	f00d      	ret.n
    3be4:	000290        	excw
    3be7:	02b000        	excw
	...

00003bf8 <system_os_task>:
    3bf8:	f0c112        	addi	a1, a1, -16
    3bfb:	0109      	s32i.n	a0, a1, 0
    3bfd:	0f33b6        	bltui	a3, 3, 3c10 <system_os_task+0x18>
    3c00:	fff921        	l32r	a2, 3be4 <wifi_set_event_handler_cb+0x8>
    3c03:	330c      	movi.n	a3, 3
    3c05:	fff901        	l32r	a0, 3bec <wifi_set_event_handler_cb+0x10>
    3c08:	0000c0        	callx0	a0
    3c0b:	020c      	movi.n	a2, 0
    3c0d:	000446        	j	3c22 <system_os_task+0x2a>
    3c10:	549c      	beqz.n	a4, 3c29 <system_os_task+0x31>
    3c12:	359c      	beqz.n	a5, 3c29 <system_os_task+0x31>
    3c14:	16c332        	addi	a3, a3, 22
    3c17:	743030        	extui	a3, a3, 0, 8
    3c1a:	fff501        	l32r	a0, 3bf0 <wifi_set_event_handler_cb+0x14>
    3c1d:	0000c0        	callx0	a0
    3c20:	120c      	movi.n	a2, 1
    3c22:	0108      	l32i.n	a0, a1, 0
    3c24:	10c112        	addi	a1, a1, 16
    3c27:	f00d      	ret.n
    3c29:	ffef21        	l32r	a2, 3be8 <wifi_set_event_handler_cb+0xc>
    3c2c:	fff201        	l32r	a0, 3bf4 <wifi_set_event_handler_cb+0x18>
    3c2f:	0000c0        	callx0	a0
    3c32:	fff546        	j	3c0b <system_os_task+0x13>
    3c35:	000000        	ill
    3c38:	07a120        	excw
    3c3b:	a12000        	sll	a2, a0
    3c3e:	000007        	bnone	a0, a0, 3c42 <system_os_task+0x4a>
    3c41:	fe          	.byte 0xfe
    3c42:	ef          	.byte 0xef
    3c43:	3f          	.byte 0x3f
    3c44:	000600        	excw
    3c47:	000060        	excw
    3c4a:	000000        	ill
    3c4d:	000000        	ill

00003c50 <system_uart_swap>:
    3c50:	020c      	movi.n	a2, 0
    3c52:	fff931        	l32r	a3, 3c38 <system_os_task+0x40>
    3c55:	f0c112        	addi	a1, a1, -16
    3c58:	0109      	s32i.n	a0, a1, 0
    3c5a:	fffb01        	l32r	a0, 3c48 <system_os_task+0x50>
    3c5d:	0000c0        	callx0	a0
    3c60:	120c      	movi.n	a2, 1
    3c62:	fff631        	l32r	a3, 3c3c <system_os_task+0x44>
    3c65:	fff901        	l32r	a0, 3c4c <system_os_task+0x54>
    3c68:	0000c0        	callx0	a0
    3c6b:	fff521        	l32r	a2, 3c40 <system_os_task+0x48>
    3c6e:	cfae72        	movi	a7, 0xfffffecf
    3c71:	00a162        	movi	a6, 0x100
    3c74:	fff451        	l32r	a5, 3c44 <system_os_task+0x4c>
    3c77:	0020c0        	memw
    3c7a:	822582        	l32i	a8, a5, 0x208
    3c7d:	108870        	and	a8, a8, a7
    3c80:	208860        	or	a8, a8, a6
    3c83:	0020c0        	memw
    3c86:	826582        	s32i	a8, a5, 0x208
    3c89:	0020c0        	memw
    3c8c:	842542        	l32i	a4, a5, 0x210
    3c8f:	104470        	and	a4, a4, a7
    3c92:	204460        	or	a4, a4, a6
    3c95:	0020c0        	memw
    3c98:	846542        	s32i	a4, a5, 0x210
    3c9b:	430c      	movi.n	a3, 4
    3c9d:	0020c0        	memw
    3ca0:	8a2202        	l32i	a0, a2, 0x228
    3ca3:	200030        	or	a0, a0, a3
    3ca6:	0020c0        	memw
    3ca9:	8a6202        	s32i	a0, a2, 0x228
    3cac:	0108      	l32i.n	a0, a1, 0
    3cae:	10c112        	addi	a1, a1, 16
    3cb1:	f00d      	ret.n
    3cb3:	a12000        	sll	a2, a0
    3cb6:	200007        	bnone	a0, a0, 3cda <system_uart_de_swap+0x12>
    3cb9:	0007a1        	l32r	a10, fffc3cd8 <system_get_sdk_version+0xfffbffd4>
    3cbc:	effe00        	excw
    3cbf:	3f          	.byte 0x3f
	...

00003cc8 <system_uart_de_swap>:
    3cc8:	020c      	movi.n	a2, 0
    3cca:	fffa31        	l32r	a3, 3cb4 <system_uart_swap+0x64>
    3ccd:	f0c112        	addi	a1, a1, -16
    3cd0:	0109      	s32i.n	a0, a1, 0
    3cd2:	fffb01        	l32r	a0, 3cc0 <system_uart_swap+0x70>
    3cd5:	0000c0        	callx0	a0
    3cd8:	120c      	movi.n	a2, 1
    3cda:	fff731        	l32r	a3, 3cb8 <system_uart_swap+0x68>
    3cdd:	fff901        	l32r	a0, 3cc4 <system_uart_swap+0x74>
    3ce0:	0000c0        	callx0	a0
    3ce3:	b37c      	movi.n	a3, -5
    3ce5:	fff521        	l32r	a2, 3cbc <system_uart_swap+0x6c>
    3ce8:	0020c0        	memw
    3ceb:	8a2202        	l32i	a0, a2, 0x228
    3cee:	100030        	and	a0, a0, a3
    3cf1:	0020c0        	memw
    3cf4:	8a6202        	s32i	a0, a2, 0x228
    3cf7:	0108      	l32i.n	a0, a1, 0
    3cf9:	10c112        	addi	a1, a1, 16
    3cfc:	f00d      	ret.n
    3cfe:	000000        	ill
    3d01:	000000        	ill

00003d04 <system_get_sdk_version>:
    3d04:	ffff21        	l32r	a2, 3d00 <system_uart_de_swap+0x38>
    3d07:	f00d      	ret.n

Disassembly of section .irom.text:

00004680 <default_ssid>:
    4680:	5345 5f50 3025 5832 3025 5832 3025 5832     ESP_%02X%02X%02X
	...
    46a0:	0010 0000 0000 0000 0000 0000 0000 0000     ................
    46b0:	4544 4546 5252 4445 4620 4e55 2043 554e     DEFERRED FUNC NU
    46c0:	424d 5245 4920 2053 4942 4747 5245 5420     MBER IS BIGGER T
    46d0:	4148 204e 3031 000a 0000 0000 0000 0000     HAN 10..........
    46e0:	6166 6c69 6465 203a 656e 6465 6220 6f6f     failed: need boo
    46f0:	2074 3d3e 3120 332e 000a 0000 0000 0000     t >= 1.3........
    4700:	6f64 276e 2074 7573 7070 726f 6574 2064     don't supported 
    4710:	6c66 7361 2068 616d 2e70 000a 0000 0000     flash map.......
    4720:	6572 7473 7261 2074 6f74 7520 6573 7520     restart to use u
    4730:	6573 2072 6962 206e 2040 7825 000a 0000     ser bin @ %x....
    4740:	6574 7473 6120 726c 6165 7964 7020 7361     test already pas
    4750:	6573 2e64 000a 0000 0000 0000 0000 0000     sed.............
    4760:	6572 6f62 746f 7420 206f 7375 2065 6574     reboot to use te
    4770:	7473 6220 6e69 4020 2520 0a78 0000 0000     st bin @ %x.....
    4780:	6f64 276e 2074 7573 7070 726f 6574 2064     don't supported 
    4790:	7974 6570 0a2e 0000 0000 0000 0000 0000     type............
    47a0:	6572 6f62 746f 7420 206f 7375 0065 0000     reboot to use...
    47b0:	0a31 0000 0a32 0000 0a32 0000 0a31 0000     1...2...2...1...
    47c0:	0a31 0000 0a32 0000 0000 0000 0000 0000     1...2...........
    47d0:	6564 7065 7320 656c 7065 2520 7364 0a0a     deep sleep %ds..
	...
    47f0:	7069 253a 2e64 6425 252e 2e64 6425 6d2c     ip:%d.%d.%d.%d,m
    4800:	7361 3a6b 6425 252e 2e64 6425 252e 2c64     ask:%d.%d.%d.%d,
    4810:	7767 253a 2e64 6425 252e 2e64 6425 0000     gw:%d.%d.%d.%d..
    4820:	000a 0000 0000 0000 0000 0000 0000 0000     ................
    4830:	6164 6174 2020 203a 7830 7825 7e20 3020     data  : 0x%x ~ 0
    4840:	2578 2c78 6c20 6e65 203a 6425 000a 0000     x%x, len: %d....
    4850:	6f72 6164 6174 203a 7830 7825 7e20 3020     rodata: 0x%x ~ 0
    4860:	2578 2c78 6c20 6e65 203a 6425 000a 0000     x%x, len: %d....
    4870:	7362 2073 2020 203a 7830 7825 7e20 3020     bss   : 0x%x ~ 0
    4880:	2578 2c78 6c20 6e65 203a 6425 000a 0000     x%x, len: %d....
    4890:	6568 7061 2020 203a 7830 7825 7e20 3020     heap  : 0x%x ~ 0
    48a0:	2578 2c78 6c20 6e65 203a 6425 000a 0000     x%x, len: %d....
    48b0:	7265 6f72 2072 6170 6172 656d 6574 0a72     error parameter.
	...
    48d0:	575b 735d 6365 2520 2078 7265 6f72 0a72     [W]sec %x error.
	...
    48f0:	7563 7272 6e65 5f74 6f72 7475 7265 695f     current_router_i
    4900:	2064 7369 2520 0a64 0000 0000 0000 0000     d is %d.........
    4910:	7265 3a72 7420 7361 206b 7270 6f69 3c20     err: task prio <
    4920:	2520 0a64 0000 0000 0000 0000 0000 0000      %d.............
    4930:	7265 3a72 7420 7361 206b 7571 7565 2065     err: task queue 
    4940:	7265 6f72 0a72 0000 0000 0000 0000 0000     error...........
    4950:	7265 3a72 7020 736f 2074 7270 6f69 3c20     err: post prio <
    4960:	2520 0a64 1000                                    %d..
