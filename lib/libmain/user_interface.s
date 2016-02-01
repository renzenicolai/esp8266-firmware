
user_interface.o:     file format elf32-xtensa-le


Disassembly of section .text:

00000000 <os_printf_plus-0x38>:
   0:	200000        	or	a0, a0, a0
   3:	000040        	excw
	...

00000038 <os_printf_plus>:
  38:	b0a082        	movi	a8, 176
  3b:	c01180        	sub	a1, a1, a8
  3e:	1e61c2        	s32i	a12, a1, 120
  41:	1f61d2        	s32i	a13, a1, 124
  44:	2061e2        	s32i	a14, a1, 128
  47:	246122        	s32i	a2, a1, 144
  4a:	256132        	s32i	a3, a1, 148
  4d:	266142        	s32i	a4, a1, 152
  50:	276152        	s32i	a5, a1, 156
  53:	286162        	s32i	a6, a1, 160
  56:	296172        	s32i	a7, a1, 164
  59:	1d6102        	s32i	a0, a1, 116
  5c:	ffee01        	l32r	a0, 14 <os_printf_plus-0x24>
  5f:	0000c0        	callx0	a0
  62:	021226        	beqi	a2, 1, 68 <os_printf_plus+0x30>
  65:	001fc6        	j	e8 <os_printf_plus+0xb0>
  68:	440c      	movi.n	a4, 4
  6a:	ffe6d1        	l32r	a13, 4 <os_printf_plus-0x34>
  6d:	ffe421        	l32r	a2, 0 <os_printf_plus-0x38>
  70:	242132        	l32i	a3, a1, 144
  73:	01d102        	addmi	a0, a1, 0x100
  76:	01d1e2        	addmi	a14, a1, 0x100
  79:	90cee2        	addi	a14, a14, -112
  7c:	90c002        	addi	a0, a0, -112
  7f:	1c6102        	s32i	a0, a1, 112
  82:	46c327        	bnall	a3, a2, cc <os_printf_plus+0x94>
  85:	032d      	mov.n	a2, a3
  87:	ffe401        	l32r	a0, 18 <os_printf_plus-0x20>
  8a:	0000c0        	callx0	a0
  8d:	020b      	addi.n	a0, a2, -1
  8f:	c22b      	addi.n	a12, a2, 2
  91:	b3c000        	movgez	a12, a0, a0
  94:	400c      	movi.n	a0, 4
  96:	21c2c0        	srai	a12, a12, 2
  99:	a0cc00        	addx4	a12, a12, a0
  9c:	f4c0c0        	extui	a12, a12, 0, 16
  9f:	2c1b      	addi.n	a2, a12, 1
  a1:	1a6122        	s32i	a2, a1, 104
  a4:	ffde01        	l32r	a0, 1c <os_printf_plus-0x1c>
  a7:	0000c0        	callx0	a0
  aa:	02dd      	mov.n	a13, a2
  ac:	ffdd01        	l32r	a0, 20 <os_printf_plus-0x18>
  af:	0000c0        	callx0	a0
  b2:	ffd501        	l32r	a0, 8 <os_printf_plus-0x30>
  b5:	42b2d7        	bgeu	a2, a13, fb <os_printf_plus+0xc3>
  b8:	01dd      	mov.n	a13, a1
  ba:	044c      	movi.n	a4, 64
  bc:	120c      	movi.n	a2, 1
  be:	1b6122        	s32i	a2, a1, 108
  c1:	0134c7        	bltu	a4, a12, c6 <os_printf_plus+0x8e>
  c4:	0c4d      	mov.n	a4, a12
  c6:	f4c040        	extui	a12, a4, 0, 16
  c9:	0010c6        	j	110 <os_printf_plus+0xd8>
  cc:	0d2d      	mov.n	a2, a13
  ce:	1861e2        	s32i	a14, a1, 96
  d1:	196142        	s32i	a4, a1, 100
  d4:	5cc162        	addi	a6, a1, 92
  d7:	007d      	mov.n	a7, a0
  d9:	176172        	s32i	a7, a1, 92
  dc:	0648      	l32i.n	a4, a6, 0
  de:	1658      	l32i.n	a5, a6, 4
  e0:	2668      	l32i.n	a6, a6, 8
  e2:	ffd001        	l32r	a0, 24 <os_printf_plus-0x14>
  e5:	0000c0        	callx0	a0
  e8:	1e21c2        	l32i	a12, a1, 120
  eb:	1f21d2        	l32i	a13, a1, 124
  ee:	2021e2        	l32i	a14, a1, 128
  f1:	b0a022        	movi	a2, 176
  f4:	1d2102        	l32i	a0, a1, 116
  f7:	112a      	add.n	a1, a1, a2
  f9:	f00d      	ret.n
  fb:	1a2122        	l32i	a2, a1, 104
  fe:	6ca042        	movi	a4, 108
 101:	003d      	mov.n	a3, a0
 103:	ffc901        	l32r	a0, 28 <os_printf_plus-0x10>
 106:	0000c0        	callx0	a0
 109:	02dd      	mov.n	a13, a2
 10b:	080c      	movi.n	a8, 0
 10d:	1b6182        	s32i	a8, a1, 108
 110:	242132        	l32i	a3, a1, 144
 113:	0d2d      	mov.n	a2, a13
 115:	0c4d      	mov.n	a4, a12
 117:	ffc501        	l32r	a0, 2c <os_printf_plus-0xc>
 11a:	0000c0        	callx0	a0
 11d:	ffbb21        	l32r	a2, c <os_printf_plus-0x2c>
 120:	0d3d      	mov.n	a3, a13
 122:	1561e2        	s32i	a14, a1, 84
 125:	50c162        	addi	a6, a1, 80
 128:	8cda      	add.n	a8, a12, a13
 12a:	070c      	movi.n	a7, 0
 12c:	1c2192        	l32i	a9, a1, 112
 12f:	4a0c      	movi.n	a10, 4
 131:	1661a2        	s32i	a10, a1, 88
 134:	146192        	s32i	a9, a1, 80
 137:	004872        	s8i	a7, a8, 0
 13a:	0648      	l32i.n	a4, a6, 0
 13c:	1658      	l32i.n	a5, a6, 4
 13e:	2668      	l32i.n	a6, a6, 8
 140:	ffbc01        	l32r	a0, 30 <os_printf_plus-0x8>
 143:	0000c0        	callx0	a0
 146:	1b21b2        	l32i	a11, a1, 108
 149:	f9bb56        	bnez	a11, e8 <os_printf_plus+0xb0>
 14c:	0d2d      	mov.n	a2, a13
 14e:	ffb031        	l32r	a3, 10 <os_printf_plus-0x28>
 151:	7ba042        	movi	a4, 123
 154:	ffb801        	l32r	a0, 34 <os_printf_plus-0x4>
 157:	0000c0        	callx0	a0
 15a:	ffe286        	j	e8 <os_printf_plus+0xb0>
	...
 165:	fe          	.byte 0xfe
 166:	ef          	.byte 0xef
 167:	3f          	.byte 0x3f
 168:	000080        	ret
 16b:	000040        	excw
 16e:	000000        	ill
 171:	000000        	ill

00000174 <system_restart_core>:
 174:	fffb21        	l32r	a2, 160 <os_printf_plus+0x128>
 177:	f0c112        	addi	a1, a1, -16
 17a:	0109      	s32i.n	a0, a1, 0
 17c:	0228      	l32i.n	a2, a2, 0
 17e:	fffb01        	l32r	a0, 16c <os_printf_plus+0x134>
 181:	0000c0        	callx0	a0
 184:	fffb01        	l32r	a0, 170 <os_printf_plus+0x138>
 187:	0000c0        	callx0	a0
 18a:	746c      	movi.n	a4, -25
 18c:	fff631        	l32r	a3, 164 <os_printf_plus+0x12c>
 18f:	0020c0        	memw
 192:	892322        	l32i	a2, a3, 0x224
 195:	102240        	and	a2, a2, a4
 198:	0020c0        	memw
 19b:	fff301        	l32r	a0, 168 <os_printf_plus+0x130>
 19e:	896322        	s32i	a2, a3, 0x224
 1a1:	0000c0        	callx0	a0
 1a4:	0108      	l32i.n	a0, a1, 0
 1a6:	10c112        	addi	a1, a1, 16
 1a9:	f00d      	ret.n
 1ab:	000000        	ill
 1ae:	000000        	ill
 1b1:	002000        	isync
 1b4:	000200        	excw
 1b7:	060060        	excw
 1ba:	006000        	rsil	a0, 0
 1bd:	001000        	excw
 1c0:	000600        	excw
 1c3:	000060        	excw
	...

000001d4 <system_deep_sleep_local_2>:
 1d4:	e0c112        	addi	a1, a1, -32
 1d7:	7109      	s32i.n	a0, a1, 28
 1d9:	fffa01        	l32r	a0, 1c4 <system_restart_core+0x50>
 1dc:	0000c0        	callx0	a0
 1df:	fff321        	l32r	a2, 1ac <system_restart_core+0x38>
 1e2:	0228      	l32i.n	a2, a2, 0
 1e4:	fff901        	l32r	a0, 1c8 <system_restart_core+0x54>
 1e7:	0000c0        	callx0	a0
 1ea:	fff801        	l32r	a0, 1cc <system_restart_core+0x58>
 1ed:	0000c0        	callx0	a0
 1f0:	fff041        	l32r	a4, 1b0 <system_restart_core+0x3c>
 1f3:	fff001        	l32r	a0, 1b4 <system_restart_core+0x40>
 1f6:	0020c0        	memw
 1f9:	0049      	s32i.n	a4, a0, 0
 1fb:	0020c0        	memw
 1fe:	0038      	l32i.n	a3, a0, 0
 200:	638c      	beqz.n	a3, 20a <system_deep_sleep_local_2+0x36>
 202:	0020c0        	memw
 205:	0058      	l32i.n	a5, a0, 0
 207:	ff7556        	bnez	a5, 202 <system_deep_sleep_local_2+0x2e>
 20a:	012d      	mov.n	a2, a1
 20c:	030c      	movi.n	a3, 0
 20e:	c41c      	movi.n	a4, 28
 210:	fff001        	l32r	a0, 1d0 <system_restart_core+0x5c>
 213:	0000c0        	callx0	a0
 216:	560c      	movi.n	a6, 5
 218:	ffe871        	l32r	a7, 1b8 <system_restart_core+0x44>
 21b:	0020c0        	memw
 21e:	020c      	movi.n	a2, 0
 220:	013d      	mov.n	a3, a1
 222:	c41c      	movi.n	a4, 28
 224:	4c6762        	s32i	a6, a7, 0x130
 227:	0169      	s32i.n	a6, a1, 0
 229:	000005        	call0	22c <system_deep_sleep_local_2+0x58>
 22c:	ffe481        	l32r	a8, 1bc <system_restart_core+0x48>
 22f:	0020c0        	memw
 232:	ffe391        	l32r	a9, 1c0 <system_restart_core+0x4c>
 235:	7108      	l32i.n	a0, a1, 28
 237:	20c112        	addi	a1, a1, 32
 23a:	426982        	s32i	a8, a9, 0x108
 23d:	f00d      	ret.n
 23f:	000000        	ill
 242:	000000        	ill
 245:	f20a      	add.n	a15, a2, a0
 247:	3f          	.byte 0x3f

00000248 <system_get_time>:
 248:	fffe31        	l32r	a3, 240 <system_deep_sleep_local_2+0x6c>
 24b:	fffe21        	l32r	a2, 244 <system_deep_sleep_local_2+0x70>
 24e:	0338      	l32i.n	a3, a3, 0
 250:	0020c0        	memw
 253:	802222        	l32i	a2, a2, 0x200
 256:	223a      	add.n	a2, a2, a3
 258:	f00d      	ret.n
 25a:	c00000        	sub	a0, a0, a0
 25d:	000002        	l8ui	a0, a0, 0
 260:	000000        	ill
	...

00000264 <system_os_post>:
 264:	f0c112        	addi	a1, a1, -16
 267:	0109      	s32i.n	a0, a1, 0
 269:	0c32b6        	bltui	a2, 3, 279 <system_deep_sleep_local_2+0xa5>
 26c:	fffc21        	l32r	a2, 25c <system_deep_sleep_local_2+0x88>
 26f:	330c      	movi.n	a3, 3
 271:	000005        	call0	274 <system_deep_sleep_local_2+0xa0>
 274:	020c      	movi.n	a2, 0
 276:	000486        	j	28c <system_deep_sleep_local_2+0xb8>
 279:	222b      	addi.n	a2, a2, 2
 27b:	742020        	extui	a2, a2, 0, 8
 27e:	fff801        	l32r	a0, 260 <system_deep_sleep_local_2+0x8c>
 281:	0000c0        	callx0	a0
 284:	743020        	extui	a3, a2, 0, 8
 287:	fe9356        	bnez	a3, 274 <system_deep_sleep_local_2+0xa0>
 28a:	120c      	movi.n	a2, 1
 28c:	0108      	l32i.n	a0, a1, 0
 28e:	10c112        	addi	a1, a1, 16
 291:	f00d      	ret.n
 293:	0e0000        	excw
 296:	526000        	excw

00000298 <system_rtc_mem_write>:
 298:	bfa052        	movi	a5, 191
 29b:	143527        	bltu	a5, a2, 2b3 <system_deep_sleep_local_2+0xdf>
 29e:	139c      	beqz.n	a3, 2b3 <system_deep_sleep_local_2+0xdf>
 2a0:	370c      	movi.n	a7, 3
 2a2:	146030        	extui	a6, a3, 0, 2
 2a5:	a6cc      	bnez.n	a6, 2b3 <system_deep_sleep_local_2+0xdf>
 2a7:	1192e0        	slli	a9, a2, 2
 2aa:	00a382        	movi	a8, 0x300
 2ad:	c08890        	sub	a8, a8, a9
 2b0:	03a847        	bge	a8, a4, 2b7 <system_deep_sleep_local_2+0xe3>
 2b3:	020c      	movi.n	a2, 0
 2b5:	f00d      	ret.n
 2b7:	0a0747        	bnone	a7, a4, 2c5 <system_deep_sleep_local_2+0xf1>
 2ba:	450c      	movi.n	a5, 4
 2bc:	414240        	srli	a4, a4, 2
 2bf:	a04450        	addx4	a4, a4, a5
 2c2:	f44040        	extui	a4, a4, 0, 16
 2c5:	418240        	srli	a8, a4, 2
 2c8:	e89c      	beqz.n	a8, 2ea <system_deep_sleep_local_2+0x116>
 2ca:	fff271        	l32r	a7, 294 <system_deep_sleep_local_2+0xc0>
 2cd:	040c      	movi.n	a4, 0
 2cf:	624a      	add.n	a6, a2, a4
 2d1:	a05430        	addx4	a5, a4, a3
 2d4:	a06670        	addx4	a6, a6, a7
 2d7:	0020c0        	memw
 2da:	0558      	l32i.n	a5, a5, 0
 2dc:	0020c0        	memw
 2df:	c06652        	s32i	a5, a6, 0x300
 2e2:	441b      	addi.n	a4, a4, 1
 2e4:	744040        	extui	a4, a4, 0, 8
 2e7:	e43487        	bltu	a4, a8, 2cf <system_deep_sleep_local_2+0xfb>
 2ea:	120c      	movi.n	a2, 1
 2ec:	f00d      	ret.n
 2ee:	000000        	ill
 2f1:	0e          	.byte 0xe
 2f2:	526000        	excw

000002f4 <system_rtc_mem_read>:
 2f4:	bfa052        	movi	a5, 191
 2f7:	143527        	bltu	a5, a2, 30f <system_deep_sleep_local_2+0x13b>
 2fa:	139c      	beqz.n	a3, 30f <system_deep_sleep_local_2+0x13b>
 2fc:	370c      	movi.n	a7, 3
 2fe:	146030        	extui	a6, a3, 0, 2
 301:	a6cc      	bnez.n	a6, 30f <system_deep_sleep_local_2+0x13b>
 303:	1192e0        	slli	a9, a2, 2
 306:	00a382        	movi	a8, 0x300
 309:	c08890        	sub	a8, a8, a9
 30c:	03a847        	bge	a8, a4, 313 <system_deep_sleep_local_2+0x13f>
 30f:	020c      	movi.n	a2, 0
 311:	f00d      	ret.n
 313:	0a0747        	bnone	a7, a4, 321 <system_deep_sleep_local_2+0x14d>
 316:	450c      	movi.n	a5, 4
 318:	414240        	srli	a4, a4, 2
 31b:	a04450        	addx4	a4, a4, a5
 31e:	f44040        	extui	a4, a4, 0, 16
 321:	418240        	srli	a8, a4, 2
 324:	e89c      	beqz.n	a8, 346 <system_deep_sleep_local_2+0x172>
 326:	fff271        	l32r	a7, 2f0 <system_deep_sleep_local_2+0x11c>
 329:	040c      	movi.n	a4, 0
 32b:	524a      	add.n	a5, a2, a4
 32d:	a06430        	addx4	a6, a4, a3
 330:	a05570        	addx4	a5, a5, a7
 333:	0020c0        	memw
 336:	c02552        	l32i	a5, a5, 0x300
 339:	0020c0        	memw
 33c:	0659      	s32i.n	a5, a6, 0
 33e:	441b      	addi.n	a4, a4, 1
 340:	744040        	extui	a4, a4, 0, 8
 343:	e43487        	bltu	a4, a8, 32b <system_deep_sleep_local_2+0x157>
 346:	120c      	movi.n	a2, 1
 348:	f00d      	ret.n

Disassembly of section .irom0.text:

000006a0 <system_get_os_print-0x18>:
     6a0:	000000        	ill
     6a3:	ff3100        	excw
     6a6:	ff          	.byte 0xff
     6a7:	140c      	movi.n	a4, 1
     6a9:	932420        	movnez	a2, a4, a2
     6ac:	004322        	s8i	a2, a3, 0
     6af:	f00d      	ret.n
     6b1:	000000        	ill
     6b4:	000000        	ill
	...

000006b8 <system_get_os_print>:
     6b8:	ffff21        	l32r	a2, 6b4 <system_get_os_print-0x4>
     6bb:	000222        	l8ui	a2, a2, 0
     6be:	f00d      	ret.n
     6c0:	000004        	excw
     6c3:	000400        	excw
     6c6:	500000        	excw
     6c9:	000001        	l32r	a0, fffc06cc <system_get_sdk_version+0xfffbc200>
     6cc:	000004        	excw
     6cf:	000400        	excw
     6d2:	400000        	ssr	a0
     6d5:	000000        	ill
     6d8:	00ac      	beqz.n	a0, 6fc <system_get_os_print+0x44>
	...
     6fe:	120000        	excw
     701:	c9f0c1        	l32r	a12, ffff2ec4 <system_get_sdk_version+0xfffee9f8>
     704:	012921        	l32r	a2, fffc0ba8 <system_get_sdk_version+0xfffbc6dc>
     707:	1109      	s32i.n	a0, a1, 4
     709:	fff401        	l32r	a0, 6dc <system_get_os_print+0x24>
     70c:	0000c0        	callx0	a0
     70f:	42cc      	bnez.n	a2, 717 <system_get_os_print+0x5f>
     711:	fff301        	l32r	a0, 6e0 <system_get_os_print+0x28>
     714:	0000c0        	callx0	a0
     717:	fff301        	l32r	a0, 6e4 <system_get_os_print+0x2c>
     71a:	0000c0        	callx0	a0
     71d:	a2ac      	beqz.n	a2, 74b <system_get_os_print+0x93>
     71f:	ffe8c1        	l32r	a12, 6c0 <system_get_os_print+0x8>
     722:	fcccc2        	addi	a12, a12, -4
     725:	000c02        	l8ui	a0, a12, 0
     728:	10dc      	bnez.n	a0, 73d <system_get_os_print+0x85>
     72a:	ffe621        	l32r	a2, 6c4 <system_get_os_print+0xc>
     72d:	ffe631        	l32r	a3, 6c8 <system_get_os_print+0x10>
     730:	040c      	movi.n	a4, 0
     732:	ffed01        	l32r	a0, 6e8 <system_get_os_print+0x30>
     735:	0000c0        	callx0	a0
     738:	100c      	movi.n	a0, 1
     73a:	004c02        	s8i	a0, a12, 0
     73d:	ffeb01        	l32r	a0, 6ec <system_get_os_print+0x34>
     740:	0000c0        	callx0	a0
     743:	180c02        	l8ui	a0, a12, 24
     746:	629c      	beqz.n	a2, 760 <system_get_os_print+0xa8>
     748:	141026        	beqi	a0, 1, 760 <system_get_os_print+0xa8>
     74b:	020c      	movi.n	a2, 0
     74d:	000186        	j	757 <system_get_os_print+0x9f>
     750:	0128      	l32i.n	a2, a1, 0
     752:	834022        	s8i	a2, a0, 131
     755:	f27c      	movi.n	a2, -1
     757:	21c8      	l32i.n	a12, a1, 8
     759:	1108      	l32i.n	a0, a1, 4
     75b:	10c112        	addi	a1, a1, 16
     75e:	f00d      	ret.n
     760:	30ec      	bnez.n	a0, 787 <system_get_os_print+0xcf>
     762:	120c      	movi.n	a2, 1
     764:	ffe301        	l32r	a0, 6f0 <system_get_os_print+0x38>
     767:	0000c0        	callx0	a0
     76a:	ffd821        	l32r	a2, 6cc <system_get_os_print+0x14>
     76d:	ffe101        	l32r	a0, 6f4 <system_get_os_print+0x3c>
     770:	0000c0        	callx0	a0
     773:	ffd721        	l32r	a2, 6d0 <system_get_os_print+0x18>
     776:	a30c      	movi.n	a3, 10
     778:	040c      	movi.n	a4, 0
     77a:	150c      	movi.n	a5, 1
     77c:	ffdf01        	l32r	a0, 6f8 <system_get_os_print+0x40>
     77f:	0000c0        	callx0	a0
     782:	130c      	movi.n	a3, 1
     784:	184c32        	s8i	a3, a12, 24
     787:	190c02        	l8ui	a0, a12, 25
     78a:	a40c      	movi.n	a4, 10
     78c:	001b      	addi.n	a0, a0, 1
     78e:	740000        	extui	a0, a0, 0, 8
     791:	194c02        	s8i	a0, a12, 25
     794:	0db407        	bgeu	a4, a0, 7a5 <system_get_os_print+0xed>
     797:	ffcf21        	l32r	a2, 6d4 <system_get_os_print+0x1c>
     79a:	ffd801        	l32r	a0, 6fc <system_get_os_print+0x44>
     79d:	0000c0        	callx0	a0
     7a0:	a00c      	movi.n	a0, 10
     7a2:	194c02        	s8i	a0, a12, 25
     7a5:	a20c      	movi.n	a2, 10
     7a7:	1a0c32        	l8ui	a3, a12, 26
     7aa:	ffcb41        	l32r	a4, 6d8 <system_get_os_print+0x20>
     7ad:	330a      	add.n	a3, a3, a0
     7af:	034a      	add.n	a0, a3, a4
     7b1:	9ba237        	bge	a2, a3, 750 <system_get_os_print+0x98>
     7b4:	0148      	l32i.n	a4, a1, 0
     7b6:	794042        	s8i	a4, a0, 121
     7b9:	ffe606        	j	755 <system_get_os_print+0x9d>
     7bc:	000010        	excw
     7bf:	013000        	slli	a3, a0, 32
     7c2:	880000        	excw
     7c5:	000000        	ill
     7c8:	001b      	addi.n	a0, a0, 1
     7ca:	040000        	extui	a0, a0, 0, 1
	...
     7ed:	000000        	ill
     7f0:	f0c112        	addi	a1, a1, -16
     7f3:	31e9      	s32i.n	a14, a1, 12
     7f5:	0109      	s32i.n	a0, a1, 0
     7f7:	21d9      	s32i.n	a13, a1, 8
     7f9:	11c9      	s32i.n	a12, a1, 4
     7fb:	fff0c1        	l32r	a12, 7bc <system_get_os_print+0x104>
     7fe:	0d0c      	movi.n	a13, 0
     800:	090c02        	l8ui	a0, a12, 9
     803:	084cd2        	s8i	a13, a12, 8
     806:	088016        	beqz	a0, 892 <system_get_os_print+0x1da>
     809:	ffede1        	l32r	a14, 7c0 <system_get_os_print+0x108>
     80c:	fff101        	l32r	a0, 7d0 <system_get_os_print+0x118>
     80f:	0000c0        	callx0	a0
     812:	72cc      	bnez.n	a2, 81d <system_get_os_print+0x165>
     814:	fff001        	l32r	a0, 7d4 <system_get_os_print+0x11c>
     817:	0000c0        	callx0	a0
     81a:	071256        	bnez	a2, 88f <system_get_os_print+0x1d7>
     81d:	0a0c42        	l8ui	a4, a12, 10
     820:	04ea      	add.n	a0, a4, a14
     822:	000002        	l8ui	a0, a0, 0
     825:	571026        	beqi	a0, 1, 880 <system_get_os_print+0x1c8>
     828:	4e2026        	beqi	a0, 2, 87a <system_get_os_print+0x1c2>
     82b:	3f3026        	beqi	a0, 3, 86e <system_get_os_print+0x1b6>
     82e:	364026        	beqi	a0, 4, 868 <system_get_os_print+0x1b0>
     831:	275026        	beqi	a0, 5, 85c <system_get_os_print+0x1a4>
     834:	0b6066        	bnei	a0, 6, 843 <system_get_os_print+0x18b>
     837:	ffe321        	l32r	a2, 7c4 <system_get_os_print+0x10c>
     83a:	e40c32        	l8ui	a3, a12, 228
     83d:	029885        	call0	31c8 <wifi_softap_get_config_default+0xd0>
     840:	0a0c42        	l8ui	a4, a12, 10
     843:	090c02        	l8ui	a0, a12, 9
     846:	441b      	addi.n	a4, a4, 1
     848:	744040        	extui	a4, a4, 0, 8
     84b:	000b      	addi.n	a0, a0, -1
     84d:	740000        	extui	a0, a0, 0, 8
     850:	094c02        	s8i	a0, a12, 9
     853:	2f9466        	bnei	a4, 10, 886 <system_get_os_print+0x1ce>
     856:	0a4cd2        	s8i	a13, a12, 10
     859:	000b06        	j	889 <system_get_os_print+0x1d1>
     85c:	730c22        	l8ui	a2, a12, 115
     85f:	740c32        	l8ui	a3, a12, 116
     862:	014dc5        	call0	1d40 <wifi_set_broadcast_if+0xbc>
     865:	fff5c6        	j	840 <system_get_os_print+0x188>
     868:	000005        	call0	86c <system_get_os_print+0x1b4>
     86b:	fff446        	j	840 <system_get_os_print+0x188>
     86e:	ffd621        	l32r	a2, 7c8 <system_get_os_print+0x110>
     871:	720c32        	l8ui	a3, a12, 114
     874:	01d505        	call0	25c8 <wifi_station_ap_number_set+0x320>
     877:	fff146        	j	840 <system_get_os_print+0x188>
     87a:	000005        	call0	87c <system_get_os_print+0x1c4>
     87d:	ffefc6        	j	840 <system_get_os_print+0x188>
     880:	000005        	call0	884 <system_get_os_print+0x1cc>
     883:	ffee46        	j	840 <system_get_os_print+0x188>
     886:	0a4c42        	s8i	a4, a12, 10
     889:	f7f056        	bnez	a0, 80c <system_get_os_print+0x154>
     88c:	000086        	j	892 <system_get_os_print+0x1da>
     88f:	090c02        	l8ui	a0, a12, 9
     892:	ffcee1        	l32r	a14, 7cc <system_get_os_print+0x114>
     895:	60dc      	bnez.n	a0, 8af <system_get_os_print+0x1f7>
     897:	0e2d      	mov.n	a2, a14
     899:	ffcf01        	l32r	a0, 7d8 <system_get_os_print+0x120>
     89c:	0000c0        	callx0	a0
     89f:	0108      	l32i.n	a0, a1, 0
     8a1:	084cd2        	s8i	a13, a12, 8
     8a4:	31e8      	l32i.n	a14, a1, 12
     8a6:	11c8      	l32i.n	a12, a1, 4
     8a8:	21d8      	l32i.n	a13, a1, 8
     8aa:	10c112        	addi	a1, a1, 16
     8ad:	f00d      	ret.n
     8af:	ffcb01        	l32r	a0, 7dc <system_get_os_print+0x124>
     8b2:	0000c0        	callx0	a0
     8b5:	42cc      	bnez.n	a2, 8bd <system_get_os_print+0x205>
     8b7:	ffca01        	l32r	a0, 7e0 <system_get_os_print+0x128>
     8ba:	0000c0        	callx0	a0
     8bd:	120c      	movi.n	a2, 1
     8bf:	ffc901        	l32r	a0, 7e4 <system_get_os_print+0x12c>
     8c2:	0000c0        	callx0	a0
     8c5:	0e2d      	mov.n	a2, a14
     8c7:	ffc801        	l32r	a0, 7e8 <system_get_os_print+0x130>
     8ca:	0000c0        	callx0	a0
     8cd:	0e2d      	mov.n	a2, a14
     8cf:	a30c      	movi.n	a3, 10
     8d1:	040c      	movi.n	a4, 0
     8d3:	150c      	movi.n	a5, 1
     8d5:	ffc501        	l32r	a0, 7ec <system_get_os_print+0x134>
     8d8:	0000c0        	callx0	a0
     8db:	1d0c      	movi.n	a13, 1
     8dd:	ffef86        	j	89f <system_get_os_print+0x1e7>
     8e0:	000000        	ill
	...

000008e4 <system_pp_recycle_rx_pkt>:
     8e4:	f0c112        	addi	a1, a1, -16
     8e7:	0109      	s32i.n	a0, a1, 0
     8e9:	fffd01        	l32r	a0, 8e0 <system_get_os_print+0x228>
     8ec:	0000c0        	callx0	a0
     8ef:	0108      	l32i.n	a0, a1, 0
     8f1:	10c112        	addi	a1, a1, 16
     8f4:	f00d      	ret.n
     8f6:	000000        	ill
     8f9:	000000        	ill

000008fc <system_adc_read>:
     8fc:	020c      	movi.n	a2, 0
     8fe:	f0c112        	addi	a1, a1, -16
     901:	0109      	s32i.n	a0, a1, 0
     903:	fffd01        	l32r	a0, 8f8 <system_pp_recycle_rx_pkt+0x14>
     906:	0000c0        	callx0	a0
     909:	f42020        	extui	a2, a2, 0, 16
     90c:	0108      	l32i.n	a0, a1, 0
     90e:	10c112        	addi	a1, a1, 16
     911:	f00d      	ret.n
     913:	000000        	ill
	...

00000918 <system_get_vdd33>:
     918:	f0c112        	addi	a1, a1, -16
     91b:	0109      	s32i.n	a0, a1, 0
     91d:	fffd01        	l32r	a0, 914 <system_adc_read+0x18>
     920:	0000c0        	callx0	a0
     923:	f42020        	extui	a2, a2, 0, 16
     926:	0108      	l32i.n	a0, a1, 0
     928:	10c112        	addi	a1, a1, 16
     92b:	f00d      	ret.n
     92d:	000000        	ill

00000930 <system_restart_hook>:
     930:	f00d      	ret.n
     932:	000000        	ill
     935:	fe          	.byte 0xfe
     936:	ef          	.byte 0xef
     937:	3f          	.byte 0x3f
     938:	ff          	.byte 0xff
     939:	ffff00        	excw
     93c:	000600        	excw
     93f:	a12060        	excw
     942:	200007        	bnone	a0, a0, 966 <system_restart_hook+0x36>
     945:	0007a1        	l32r	a10, fffc0964 <system_get_sdk_version+0xfffbc498>
     948:	000a00        	excw
     94b:	000060        	excw
	...

00000974 <system_restart_local>:
     974:	420c      	movi.n	a2, 4
     976:	d0c112        	addi	a1, a1, -48
     979:	81c9      	s32i.n	a12, a1, 32
     97b:	7109      	s32i.n	a0, a1, 28
     97d:	ffd805        	call0	700 <system_get_os_print+0x48>
     980:	ffedc1        	l32r	a12, 934 <system_restart_hook+0x4>
     983:	160266        	bnei	a2, -1, 99d <system_restart_local+0x29>
     986:	020c      	movi.n	a2, 0
     988:	fff101        	l32r	a0, 94c <system_restart_hook+0x1c>
     98b:	0000c0        	callx0	a0
     98e:	ffea01        	l32r	a0, 938 <system_restart_hook+0x8>
     991:	0020c0        	memw
     994:	866c02        	s32i	a0, a12, 0x218
     997:	ffee01        	l32r	a0, 950 <system_restart_hook+0x20>
     99a:	0000c0        	callx0	a0
     99d:	020c      	movi.n	a2, 0
     99f:	013d      	mov.n	a3, a1
     9a1:	c41c      	movi.n	a4, 28
     9a3:	ffec01        	l32r	a0, 954 <system_restart_hook+0x24>
     9a6:	0000c0        	callx0	a0
     9a9:	0108      	l32i.n	a0, a1, 0
     9ab:	273026        	beqi	a0, 3, 9d6 <system_restart_local+0x62>
     9ae:	242026        	beqi	a0, 2, 9d6 <system_restart_local+0x62>
     9b1:	012d      	mov.n	a2, a1
     9b3:	030c      	movi.n	a3, 0
     9b5:	c41c      	movi.n	a4, 28
     9b7:	ffe801        	l32r	a0, 958 <system_restart_hook+0x28>
     9ba:	0000c0        	callx0	a0
     9bd:	420c      	movi.n	a2, 4
     9bf:	ffdf31        	l32r	a3, 93c <system_restart_hook+0xc>
     9c2:	0020c0        	memw
     9c5:	c41c      	movi.n	a4, 28
     9c7:	4c6322        	s32i	a2, a3, 0x130
     9ca:	0129      	s32i.n	a2, a1, 0
     9cc:	013d      	mov.n	a3, a1
     9ce:	020c      	movi.n	a2, 0
     9d0:	ffe301        	l32r	a0, 95c <system_restart_hook+0x2c>
     9d3:	0000c0        	callx0	a0
     9d6:	012d      	mov.n	a2, a1
     9d8:	ffe201        	l32r	a0, 960 <system_restart_hook+0x30>
     9db:	0000c0        	callx0	a0
     9de:	020c      	movi.n	a2, 0
     9e0:	ffd831        	l32r	a3, 940 <system_restart_hook+0x10>
     9e3:	ffe001        	l32r	a0, 964 <system_restart_hook+0x34>
     9e6:	0000c0        	callx0	a0
     9e9:	120c      	movi.n	a2, 1
     9eb:	ffd631        	l32r	a3, 944 <system_restart_hook+0x14>
     9ee:	ffde01        	l32r	a0, 968 <system_restart_hook+0x38>
     9f1:	0000c0        	callx0	a0
     9f4:	ffde01        	l32r	a0, 96c <system_restart_hook+0x3c>
     9f7:	0000c0        	callx0	a0
     9fa:	300c      	movi.n	a0, 3
     9fc:	ffd371        	l32r	a7, 948 <system_restart_hook+0x18>
     9ff:	0020c0        	memw
     a02:	d227b2        	l32i	a11, a7, 0x348
     a05:	20bb00        	or	a11, a11, a0
     a08:	0020c0        	memw
     a0b:	d267b2        	s32i	a11, a7, 0x348
     a0e:	00a1a2        	movi	a10, 0x100
     a11:	0020c0        	memw
     a14:	862c92        	l32i	a9, a12, 0x218
     a17:	2099a0        	or	a9, a9, a10
     a1a:	0020c0        	memw
     a1d:	866c92        	s32i	a9, a12, 0x218
     a20:	c87c      	movi.n	a8, -4
     a22:	0020c0        	memw
     a25:	d22762        	l32i	a6, a7, 0x348
     a28:	106680        	and	a6, a6, a8
     a2b:	0020c0        	memw
     a2e:	d26762        	s32i	a6, a7, 0x348
     a31:	ffae52        	movi	a5, 0xfffffeff
     a34:	0020c0        	memw
     a37:	862c42        	l32i	a4, a12, 0x218
     a3a:	104450        	and	a4, a4, a5
     a3d:	0020c0        	memw
     a40:	866c42        	s32i	a4, a12, 0x218
     a43:	81c8      	l32i.n	a12, a1, 32
     a45:	ffca01        	l32r	a0, 970 <system_restart_hook+0x40>
     a48:	0000c0        	callx0	a0
     a4b:	7108      	l32i.n	a0, a1, 28
     a4d:	30c112        	addi	a1, a1, 48
     a50:	f00d      	ret.n
	...

00000a78 <system_restart>:
     a78:	f0c112        	addi	a1, a1, -16
     a7b:	0109      	s32i.n	a0, a1, 0
     a7d:	000005        	call0	a80 <system_restart+0x8>
     a80:	020d      	mov.n	a0, a2
     a82:	1129      	s32i.n	a2, a1, 4
     a84:	043226        	beqi	a2, 3, a8c <system_restart+0x14>
     a87:	1129      	s32i.n	a2, a1, 4
     a89:	071266        	bnei	a2, 1, a94 <system_restart+0x1c>
     a8c:	fff601        	l32r	a0, a64 <system_restart_local+0xf0>
     a8f:	0000c0        	callx0	a0
     a92:	1108      	l32i.n	a0, a1, 4
     a94:	023026        	beqi	a0, 3, a9a <system_restart+0x22>
     a97:	052066        	bnei	a0, 2, aa0 <system_restart+0x28>
     a9a:	fff301        	l32r	a0, a68 <system_restart_local+0xf4>
     a9d:	0000c0        	callx0	a0
     aa0:	ffed21        	l32r	a2, a54 <system_restart_local+0xe0>
     aa3:	fff201        	l32r	a0, a6c <system_restart_local+0xf8>
     aa6:	0000c0        	callx0	a0
     aa9:	ffeb21        	l32r	a2, a58 <system_restart_local+0xe4>
     aac:	ffec31        	l32r	a3, a5c <system_restart_local+0xe8>
     aaf:	040c      	movi.n	a4, 0
     ab1:	ffef01        	l32r	a0, a70 <system_restart_local+0xfc>
     ab4:	0000c0        	callx0	a0
     ab7:	ffea21        	l32r	a2, a60 <system_restart_local+0xec>
     aba:	64a032        	movi	a3, 100
     abd:	040c      	movi.n	a4, 0
     abf:	150c      	movi.n	a5, 1
     ac1:	ffec01        	l32r	a0, a74 <system_restart_local+0x100>
     ac4:	0000c0        	callx0	a0
     ac7:	0108      	l32i.n	a0, a1, 0
     ac9:	10c112        	addi	a1, a1, 16
     acc:	f00d      	ret.n
	...

00000af4 <system_restore>:
     af4:	84a422        	movi	a2, 0x484
     af7:	fff631        	l32r	a3, ad0 <system_restart+0x58>
     afa:	98a142        	movi	a4, 0x198
     afd:	f0c112        	addi	a1, a1, -16
     b00:	11c9      	s32i.n	a12, a1, 4
     b02:	0109      	s32i.n	a0, a1, 0
     b04:	fff701        	l32r	a0, ae0 <system_restart+0x68>
     b07:	0000c0        	callx0	a0
     b0a:	02cd      	mov.n	a12, a2
     b0c:	043216        	beqz	a2, b53 <system_restore+0x5f>
     b0f:	ffa032        	movi	a3, 255
     b12:	84a442        	movi	a4, 0x484
     b15:	fff301        	l32r	a0, ae4 <system_restart+0x6c>
     b18:	0000c0        	callx0	a0
     b1b:	0c2d      	mov.n	a2, a12
     b1d:	ffed31        	l32r	a3, ad4 <system_restart+0x5c>
     b20:	840c      	movi.n	a4, 8
     b22:	fff101        	l32r	a0, ae8 <system_restart+0x70>
     b25:	0000c0        	callx0	a0
     b28:	ffec31        	l32r	a3, ad8 <system_restart+0x60>
     b2b:	0338      	l32i.n	a3, a3, 0
     b2d:	1328      	l32i.n	a2, a3, 4
     b2f:	3338      	l32i.n	a3, a3, 12
     b31:	ffee01        	l32r	a0, aec <system_restart+0x74>
     b34:	0000c0        	callx0	a0
     b37:	0c3d      	mov.n	a3, a12
     b39:	84a442        	movi	a4, 0x484
     b3c:	fdc222        	addi	a2, a2, -3
     b3f:	f42020        	extui	a2, a2, 0, 16
     b42:	000005        	call0	b44 <system_restore+0x50>
     b45:	0c2d      	mov.n	a2, a12
     b47:	ffe531        	l32r	a3, adc <system_restart+0x64>
     b4a:	a3a142        	movi	a4, 0x1a3
     b4d:	ffe801        	l32r	a0, af0 <system_restart+0x78>
     b50:	0000c0        	callx0	a0
     b53:	11c8      	l32i.n	a12, a1, 4
     b55:	0108      	l32i.n	a0, a1, 0
     b57:	10c112        	addi	a1, a1, 16
     b5a:	f00d      	ret.n
     b5c:	000000        	ill
	...

00000b60 <system_get_flash_size_map>:
     b60:	020c      	movi.n	a2, 0
     b62:	840c      	movi.n	a4, 8
     b64:	f0c112        	addi	a1, a1, -16
     b67:	013d      	mov.n	a3, a1
     b69:	2109      	s32i.n	a0, a1, 8
     b6b:	fffc01        	l32r	a0, b5c <system_restore+0x68>
     b6e:	0000c0        	callx0	a0
     b71:	0128      	l32i.n	a2, a1, 0
     b73:	2108      	l32i.n	a0, a1, 8
     b75:	352c20        	extui	a2, a2, 28, 4
     b78:	10c112        	addi	a1, a1, 16
     b7b:	f00d      	ret.n
     b7d:	000000        	ill
     b80:	000000        	ill
	...

00000b84 <system_get_boot_version>:
     b84:	ffff21        	l32r	a2, b80 <system_get_flash_size_map+0x20>
     b87:	7e2222        	l32i	a2, a2, 0x1f8
     b8a:	442820        	extui	a2, a2, 8, 5
     b8d:	f00d      	ret.n
     b8f:	007000        	waiti	0
     b92:	000000        	ill
     b95:	000000        	ill
     b98:	f0c112        	addi	a1, a1, -16
     b9b:	0109      	s32i.n	a0, a1, 0
     b9d:	000005        	call0	ba0 <system_get_boot_version+0x1c>
     ba0:	0d32b6        	bltui	a2, 3, bb1 <system_get_boot_version+0x2d>
     ba3:	f01c      	movi.n	a0, 31
     ba5:	081207        	beq	a2, a0, bb1 <system_get_boot_version+0x2d>
     ba8:	120c      	movi.n	a2, 1
     baa:	0108      	l32i.n	a0, a1, 0
     bac:	10c112        	addi	a1, a1, 16
     baf:	f00d      	ret.n
     bb1:	fff721        	l32r	a2, b90 <system_get_boot_version+0xc>
     bb4:	fff801        	l32r	a0, b94 <system_get_boot_version+0x10>
     bb7:	0000c0        	callx0	a0
     bba:	020c      	movi.n	a2, 0
     bbc:	fffa86        	j	baa <system_get_boot_version+0x26>
     bbf:	000000        	ill
	...

00000bc4 <system_get_test_result>:
     bc4:	f0c112        	addi	a1, a1, -16
     bc7:	0109      	s32i.n	a0, a1, 0
     bc9:	fffcc5        	call0	b98 <system_get_boot_version+0x14>
     bcc:	fffd41        	l32r	a4, bc0 <system_get_boot_version+0x3c>
     bcf:	7e2442        	l32i	a4, a4, 0x1f8
     bd2:	f07c      	movi.n	a0, -1
     bd4:	044d40        	extui	a4, a4, 13, 1
     bd7:	930420        	movnez	a0, a4, a2
     bda:	002d      	mov.n	a2, a0
     bdc:	0108      	l32i.n	a0, a1, 0
     bde:	10c112        	addi	a1, a1, 16
     be1:	f00d      	ret.n
     be3:	000000        	ill
     be6:	000000        	ill
     be9:	000010        	excw

00000bec <system_get_userbin_addr>:
     bec:	f0c112        	addi	a1, a1, -16
     bef:	21c9      	s32i.n	a12, a1, 8
     bf1:	fffcc1        	l32r	a12, be4 <system_get_test_result+0x20>
     bf4:	1109      	s32i.n	a0, a1, 4
     bf6:	7d0c02        	l8ui	a0, a12, 125
     bf9:	7c0c22        	l8ui	a2, a12, 124
     bfc:	410700        	srli	a0, a0, 7
     bff:	90dc      	bnez.n	a0, c1c <system_get_userbin_addr+0x30>
     c01:	596227        	bbci	a2, 2, c5e <system_get_userbin_addr+0x72>
     c04:	810c22        	l8ui	a2, a12, 129
     c07:	830c42        	l8ui	a4, a12, 131
     c0a:	820c32        	l8ui	a3, a12, 130
     c0d:	114400        	slli	a4, a4, 16
     c10:	113380        	slli	a3, a3, 8
     c13:	203340        	or	a3, a3, a4
     c16:	202230        	or	a2, a2, a3
     c19:	000e06        	j	c55 <system_get_userbin_addr+0x69>
     c1c:	000005        	call0	c20 <system_get_userbin_addr+0x34>
     c1f:	0129      	s32i.n	a2, a1, 0
     c21:	000005        	call0	c24 <system_get_userbin_addr+0x38>
     c24:	22dc      	bnez.n	a2, c3a <system_get_userbin_addr+0x4e>
     c26:	fff051        	l32r	a5, be8 <system_get_test_result+0x24>
     c29:	7d0c62        	l8ui	a6, a12, 125
     c2c:	020c      	movi.n	a2, 0
     c2e:	446060        	extui	a6, a6, 0, 5
     c31:	e1c662        	addi	a6, a6, -31
     c34:	932560        	movnez	a2, a5, a6
     c37:	000686        	j	c55 <system_get_userbin_addr+0x69>
     c3a:	0108      	l32i.n	a0, a1, 0
     c3c:	740000        	extui	a0, a0, 0, 8
     c3f:	d08c      	beqz.n	a0, c50 <system_get_userbin_addr+0x64>
     c41:	0250e6        	bgei	a0, 5, c47 <system_get_userbin_addr+0x5b>
     c44:	2e20e6        	bgei	a0, 2, c76 <system_get_userbin_addr+0x8a>
     c47:	0270e6        	bgei	a0, 7, c4d <system_get_userbin_addr+0x61>
     c4a:	2e50e6        	bgei	a0, 5, c7c <system_get_userbin_addr+0x90>
     c4d:	000046        	j	c52 <system_get_userbin_addr+0x66>
     c50:	104c      	movi.n	a0, 65
     c52:	112040        	slli	a2, a0, 12
     c55:	21c8      	l32i.n	a12, a1, 8
     c57:	1108      	l32i.n	a0, a1, 4
     c59:	10c112        	addi	a1, a1, 16
     c5c:	f00d      	ret.n
     c5e:	7e0c22        	l8ui	a2, a12, 126
     c61:	800c42        	l8ui	a4, a12, 128
     c64:	7f0c32        	l8ui	a3, a12, 127
     c67:	114400        	slli	a4, a4, 16
     c6a:	113380        	slli	a3, a3, 8
     c6d:	203340        	or	a3, a3, a4
     c70:	202230        	or	a2, a2, a3
     c73:	fff786        	j	c55 <system_get_userbin_addr+0x69>
     c76:	81a002        	movi	a0, 129
     c79:	fff546        	j	c52 <system_get_userbin_addr+0x66>
     c7c:	01a102        	movi	a0, 0x101
     c7f:	fff3c6        	j	c52 <system_get_userbin_addr+0x66>
     c82:	000000        	ill
     c85:	000000        	ill

00000c88 <system_get_boot_mode>:
     c88:	ffff51        	l32r	a5, c84 <system_get_userbin_addr+0x98>
     c8b:	7d0552        	l8ui	a5, a5, 125
     c8e:	f61c      	movi.n	a6, 31
     c90:	442050        	extui	a2, a5, 0, 5
     c93:	0732a6        	blti	a2, 3, c9e <system_get_boot_mode+0x16>
     c96:	041267        	beq	a2, a6, c9e <system_get_boot_mode+0x16>
     c99:	412750        	srli	a2, a5, 7
     c9c:	f00d      	ret.n
     c9e:	120c      	movi.n	a2, 1
     ca0:	f00d      	ret.n
     ca2:	900000        	addx2	a0, a0, a0
     ca5:	000000        	ill
     ca8:	0000d0        	excw
     cab:	011000        	slli	a1, a0, 32
     cae:	f00000        	subx8	a0, a0, a0
	...
     cbd:	000000        	ill
     cc0:	0000b0        	excw
	...

00000cf0 <system_restart_enhance>:
     cf0:	e0c112        	addi	a1, a1, -32
     cf3:	2109      	s32i.n	a0, a1, 8
     cf5:	31c9      	s32i.n	a12, a1, 12
     cf7:	41d9      	s32i.n	a13, a1, 16
     cf9:	02cd      	mov.n	a12, a2
     cfb:	03dd      	mov.n	a13, a3
     cfd:	ffe985        	call0	b98 <system_get_boot_version+0x14>
     d00:	050216        	beqz	a2, d54 <system_restart_enhance+0x64>
     d03:	0cfc      	bnez.n	a12, d37 <system_restart_enhance+0x47>
     d05:	020c      	movi.n	a2, 0
     d07:	013d      	mov.n	a3, a1
     d09:	840c      	movi.n	a4, 8
     d0b:	fff101        	l32r	a0, cd0 <system_get_boot_mode+0x48>
     d0e:	0000c0        	callx0	a0
     d11:	0108      	l32i.n	a0, a1, 0
     d13:	350c00        	extui	a0, a0, 28, 4
     d16:	096016        	beqz	a0, db0 <system_restart_enhance+0xc0>
     d19:	022066        	bnei	a0, 2, d1f <system_restart_enhance+0x2f>
     d1c:	002406        	j	db0 <system_restart_enhance+0xc0>
     d1f:	023066        	bnei	a0, 3, d25 <system_restart_enhance+0x35>
     d22:	002286        	j	db0 <system_restart_enhance+0xc0>
     d25:	024066        	bnei	a0, 4, d2b <system_restart_enhance+0x3b>
     d28:	002106        	j	db0 <system_restart_enhance+0xc0>
     d2b:	ffde21        	l32r	a2, ca4 <system_get_boot_mode+0x1c>
     d2e:	ffe901        	l32r	a0, cd4 <system_get_boot_mode+0x4c>
     d31:	0000c0        	callx0	a0
     d34:	000706        	j	d54 <system_restart_enhance+0x64>
     d37:	101c66        	bnei	a12, 1, d4b <system_restart_enhance+0x5b>
     d3a:	000005        	call0	d3c <system_restart_enhance+0x4c>
     d3d:	02ec      	bnez.n	a2, d61 <system_restart_enhance+0x71>
     d3f:	ffda21        	l32r	a2, ca8 <system_get_boot_mode+0x20>
     d42:	ffe501        	l32r	a0, cd8 <system_get_boot_mode+0x50>
     d45:	0000c0        	callx0	a0
     d48:	000206        	j	d54 <system_restart_enhance+0x64>
     d4b:	ffd821        	l32r	a2, cac <system_get_boot_mode+0x24>
     d4e:	ffe301        	l32r	a0, cdc <system_get_boot_mode+0x54>
     d51:	0000c0        	callx0	a0
     d54:	020c      	movi.n	a2, 0
     d56:	31c8      	l32i.n	a12, a1, 12
     d58:	41d8      	l32i.n	a13, a1, 16
     d5a:	2108      	l32i.n	a0, a1, 8
     d5c:	20c112        	addi	a1, a1, 32
     d5f:	f00d      	ret.n
     d61:	ffd321        	l32r	a2, cb0 <system_get_boot_mode+0x28>
     d64:	0d3d      	mov.n	a3, a13
     d66:	ffde01        	l32r	a0, ce0 <system_get_boot_mode+0x58>
     d69:	0000c0        	callx0	a0
     d6c:	4168d0        	srli	a6, a13, 8
     d6f:	f540d0        	extui	a4, a13, 16, 16
     d72:	ffd051        	l32r	a5, cb4 <system_get_boot_mode+0x2c>
     d75:	ffd031        	l32r	a3, cb8 <system_get_boot_mode+0x30>
     d78:	7e45d2        	s8i	a13, a5, 126
     d7b:	0338      	l32i.n	a3, a3, 0
     d7d:	804542        	s8i	a4, a5, 128
     d80:	7f4562        	s8i	a6, a5, 127
     d83:	7d0542        	l8ui	a4, a5, 125
     d86:	bfa062        	movi	a6, 191
     d89:	104460        	and	a4, a4, a6
     d8c:	7d4542        	s8i	a4, a5, 125
     d8f:	1328      	l32i.n	a2, a3, 4
     d91:	3338      	l32i.n	a3, a3, 12
     d93:	ffd401        	l32r	a0, ce4 <system_get_boot_mode+0x5c>
     d96:	0000c0        	callx0	a0
     d99:	ffc831        	l32r	a3, cbc <system_get_boot_mode+0x34>
     d9c:	84a442        	movi	a4, 0x484
     d9f:	fdc222        	addi	a2, a2, -3
     da2:	f42020        	extui	a2, a2, 0, 16
     da5:	000005        	call0	da8 <system_restart_enhance+0xb8>
     da8:	000005        	call0	dac <system_restart_enhance+0xbc>
     dab:	120c      	movi.n	a2, 1
     dad:	ffe946        	j	d56 <system_restart_enhance+0x66>
     db0:	000005        	call0	db4 <system_restart_enhance+0xc4>
     db3:	02cd      	mov.n	a12, a2
     db5:	0d3d      	mov.n	a3, a13
     db7:	ffc221        	l32r	a2, cc0 <system_get_boot_mode+0x38>
     dba:	ffcb01        	l32r	a0, ce8 <system_get_boot_mode+0x60>
     dbd:	0000c0        	callx0	a0
     dc0:	ffc231        	l32r	a3, cc8 <system_get_boot_mode+0x40>
     dc3:	f560d0        	extui	a6, a13, 16, 16
     dc6:	4198c0        	srli	a9, a12, 8
     dc9:	f580c0        	extui	a8, a12, 16, 16
     dcc:	ffbe51        	l32r	a5, cc4 <system_get_boot_mode+0x3c>
     dcf:	4178d0        	srli	a7, a13, 8
     dd2:	824572        	s8i	a7, a5, 130
     dd5:	8145d2        	s8i	a13, a5, 129
     dd8:	804582        	s8i	a8, a5, 128
     ddb:	7f4592        	s8i	a9, a5, 127
     dde:	7e45c2        	s8i	a12, a5, 126
     de1:	834562        	s8i	a6, a5, 131
     de4:	7d0542        	l8ui	a4, a5, 125
     de7:	fba062        	movi	a6, 251
     dea:	644040        	extui	a4, a4, 0, 7
     ded:	7d4542        	s8i	a4, a5, 125
     df0:	7c0542        	l8ui	a4, a5, 124
     df3:	0338      	l32i.n	a3, a3, 0
     df5:	104460        	and	a4, a4, a6
     df8:	460c      	movi.n	a6, 4
     dfa:	204460        	or	a4, a4, a6
     dfd:	7c4542        	s8i	a4, a5, 124
     e00:	1328      	l32i.n	a2, a3, 4
     e02:	3338      	l32i.n	a3, a3, 12
     e04:	ffba01        	l32r	a0, cec <system_get_boot_mode+0x64>
     e07:	0000c0        	callx0	a0
     e0a:	ffb031        	l32r	a3, ccc <system_get_boot_mode+0x44>
     e0d:	84a442        	movi	a4, 0x484
     e10:	fdc222        	addi	a2, a2, -3
     e13:	f42020        	extui	a2, a2, 0, 16
     e16:	000005        	call0	e18 <system_restart_enhance+0x128>
     e19:	000005        	call0	e1c <system_restart_enhance+0x12c>
     e1c:	ffe2c6        	j	dab <system_restart_enhance+0xbb>
     e1f:	000000        	ill
	...

00000e24 <system_upgrade_userbin_set>:
     e24:	f0c112        	addi	a1, a1, -16
     e27:	11c9      	s32i.n	a12, a1, 4
     e29:	0109      	s32i.n	a0, a1, 0
     e2b:	02cd      	mov.n	a12, a2
     e2d:	000005        	call0	e30 <system_upgrade_userbin_set+0xc>
     e30:	042cb6        	bltui	a12, 2, e38 <system_upgrade_userbin_set+0x14>
     e33:	020c      	movi.n	a2, 0
     e35:	000ac6        	j	e64 <system_upgrade_userbin_set+0x40>
     e38:	fffa51        	l32r	a5, e20 <system_restart_enhance+0x130>
     e3b:	042226        	beqi	a2, 2, e43 <system_upgrade_userbin_set+0x1f>
     e3e:	f01c      	movi.n	a0, 31
     e40:	0d9207        	bne	a2, a0, e51 <system_upgrade_userbin_set+0x2d>
     e43:	3400c0        	extui	a0, a12, 0, 4
     e46:	7e2542        	l32i	a4, a5, 0x1f8
     e49:	067c      	movi.n	a6, -16
     e4b:	104460        	and	a4, a4, a6
     e4e:	000286        	j	e5c <system_upgrade_userbin_set+0x38>
     e51:	1400c0        	extui	a0, a12, 0, 2
     e54:	7e2542        	l32i	a4, a5, 0x1f8
     e57:	c67c      	movi.n	a6, -4
     e59:	104460        	and	a4, a4, a6
     e5c:	120c      	movi.n	a2, 1
     e5e:	207040        	or	a7, a0, a4
     e61:	7e6572        	s32i	a7, a5, 0x1f8
     e64:	11c8      	l32i.n	a12, a1, 4
     e66:	0108      	l32i.n	a0, a1, 0
     e68:	10c112        	addi	a1, a1, 16
     e6b:	f00d      	ret.n
     e6d:	000000        	ill
     e70:	000000        	ill
	...

00000e74 <system_upgrade_userbin_check>:
     e74:	f0c112        	addi	a1, a1, -16
     e77:	0109      	s32i.n	a0, a1, 0
     e79:	000005        	call0	e7c <system_upgrade_userbin_check+0x8>
     e7c:	fffd01        	l32r	a0, e70 <system_upgrade_userbin_set+0x4c>
     e7f:	f31c      	movi.n	a3, 31
     e81:	1d1237        	beq	a2, a3, ea2 <system_upgrade_userbin_check+0x2e>
     e84:	1a2226        	beqi	a2, 2, ea2 <system_upgrade_userbin_check+0x2e>
     e87:	7e2002        	l32i	a0, a0, 0x1f8
     e8a:	144000        	extui	a4, a0, 0, 2
     e8d:	0b1466        	bnei	a4, 1, e9c <system_upgrade_userbin_check+0x28>
     e90:	17e027        	bbsi	a0, 2, eab <system_upgrade_userbin_check+0x37>
     e93:	020c      	movi.n	a2, 0
     e95:	0108      	l32i.n	a0, a1, 0
     e97:	10c112        	addi	a1, a1, 16
     e9a:	f00d      	ret.n
     e9c:	f3e027        	bbsi	a0, 2, e93 <system_upgrade_userbin_check+0x1f>
     e9f:	000206        	j	eab <system_upgrade_userbin_check+0x37>
     ea2:	7e2052        	l32i	a5, a0, 0x1f8
     ea5:	345050        	extui	a5, a5, 0, 4
     ea8:	e71566        	bnei	a5, 1, e93 <system_upgrade_userbin_check+0x1f>
     eab:	120c      	movi.n	a2, 1
     ead:	fff906        	j	e95 <system_upgrade_userbin_check+0x21>
     eb0:	000000        	ill
	...

00000eb4 <system_upgrade_flag_set>:
     eb4:	0a32f6        	bgeui	a2, 3, ec2 <system_upgrade_flag_set+0xe>
     eb7:	fffe31        	l32r	a3, eb0 <system_upgrade_userbin_check+0x3c>
     eba:	140c      	movi.n	a4, 1
     ebc:	f54322        	s8i	a2, a3, 245
     ebf:	000046        	j	ec4 <system_upgrade_flag_set+0x10>
     ec2:	040c      	movi.n	a4, 0
     ec4:	042d      	mov.n	a2, a4
     ec6:	f00d      	ret.n
     ec8:	000000        	ill
	...

00000ecc <system_upgrade_flag_check>:
     ecc:	ffff21        	l32r	a2, ec8 <system_upgrade_flag_set+0x14>
     ecf:	f50222        	l8ui	a2, a2, 245
     ed2:	f00d      	ret.n
     ed4:	000000        	ill
     ed7:	014000        	slli	a4, a0, 32
	...
     ee6:	300000        	xor	a0, a0, a0
     ee9:	000001        	l32r	a0, fffc0eec <system_get_sdk_version+0xfffbca20>
     eec:	000000        	ill
     eef:	800000        	add	a0, a0, a0
     ef2:	480000        	excw
     ef5:	000001        	l32r	a0, fffc0ef8 <system_get_sdk_version+0xfffbca2c>
     ef8:	000000        	ill
     efb:	015000        	slli	a5, a0, 32
     efe:	000000        	ill
     f01:	000000        	ill
     f04:	014c      	movi.n	a1, 64
     f06:	000000        	ill
     f09:	000000        	ill
     f0c:	000154        	excw
     f0f:	000000        	ill
     f12:	440000        	extui	a0, a0, 0, 5
     f15:	000001        	l32r	a0, fffc0f18 <system_get_sdk_version+0xfffbca4c>
	...

00000f3c <system_upgrade_reboot>:
     f3c:	f0c112        	addi	a1, a1, -16
     f3f:	1109      	s32i.n	a0, a1, 4
     f41:	000005        	call0	f44 <system_upgrade_reboot+0x8>
     f44:	ffe401        	l32r	a0, ed4 <system_upgrade_flag_check+0x8>
     f47:	0129      	s32i.n	a2, a1, 0
     f49:	f50002        	l8ui	a0, a0, 245
     f4c:	020c      	movi.n	a2, 0
     f4e:	4e2026        	beqi	a0, 2, fa0 <system_upgrade_reboot+0x64>
     f51:	001106        	j	f99 <system_upgrade_reboot+0x5d>
     f54:	7e2022        	l32i	a2, a0, 0x1f8
     f57:	342020        	extui	a2, a2, 0, 4
     f5a:	220b      	addi.n	a2, a2, -1
     f5c:	0ca256        	bnez	a2, 102a <system_upgrade_reboot+0xee>
     f5f:	ffde21        	l32r	a2, ed8 <system_upgrade_flag_check+0xc>
     f62:	ffee01        	l32r	a0, f1c <system_upgrade_flag_check+0x50>
     f65:	0000c0        	callx0	a0
     f68:	ffdd01        	l32r	a0, edc <system_upgrade_flag_check+0x10>
     f6b:	7e2022        	l32i	a2, a0, 0x1f8
     f6e:	037c      	movi.n	a3, -16
     f70:	102230        	and	a2, a2, a3
     f73:	ffdb31        	l32r	a3, ee0 <system_upgrade_flag_check+0x14>
     f76:	7e6022        	s32i	a2, a0, 0x1f8
     f79:	0338      	l32i.n	a3, a3, 0
     f7b:	1328      	l32i.n	a2, a3, 4
     f7d:	3338      	l32i.n	a3, a3, 12
     f7f:	ffe801        	l32r	a0, f20 <system_upgrade_flag_check+0x54>
     f82:	0000c0        	callx0	a0
     f85:	ffd731        	l32r	a3, ee4 <system_upgrade_flag_check+0x18>
     f88:	84a442        	movi	a4, 0x484
     f8b:	fdc222        	addi	a2, a2, -3
     f8e:	f42020        	extui	a2, a2, 0, 16
     f91:	000005        	call0	f94 <system_upgrade_reboot+0x58>
     f94:	000005        	call0	f98 <system_upgrade_reboot+0x5c>
     f97:	120c      	movi.n	a2, 1
     f99:	1108      	l32i.n	a0, a1, 4
     f9b:	10c112        	addi	a1, a1, 16
     f9e:	f00d      	ret.n
     fa0:	ffd221        	l32r	a2, ee8 <system_upgrade_flag_check+0x1c>
     fa3:	ffe001        	l32r	a0, f24 <system_upgrade_flag_check+0x58>
     fa6:	0000c0        	callx0	a0
     fa9:	0138      	l32i.n	a3, a1, 0
     fab:	ffd001        	l32r	a0, eec <system_upgrade_flag_check+0x20>
     fae:	a22326        	beqi	a3, 2, f54 <system_upgrade_reboot+0x18>
     fb1:	f41c      	movi.n	a4, 31
     fb3:	9d1347        	beq	a3, a4, f54 <system_upgrade_reboot+0x18>
     fb6:	ffce61        	l32r	a6, ef0 <system_upgrade_flag_check+0x24>
     fb9:	7e2052        	l32i	a5, a0, 0x1f8
     fbc:	205560        	or	a5, a5, a6
     fbf:	7e6052        	s32i	a5, a0, 0x1f8
     fc2:	142050        	extui	a2, a5, 0, 2
     fc5:	11e527        	bbsi	a5, 2, fda <system_upgrade_reboot+0x9e>
     fc8:	301266        	bnei	a2, 1, ffc <system_upgrade_reboot+0xc0>
     fcb:	ffca21        	l32r	a2, ef4 <system_upgrade_flag_check+0x28>
     fce:	ffd601        	l32r	a0, f28 <system_upgrade_flag_check+0x5c>
     fd1:	0000c0        	callx0	a0
     fd4:	ffc901        	l32r	a0, ef8 <system_upgrade_flag_check+0x2c>
     fd7:	000b46        	j	1008 <system_upgrade_reboot+0xcc>
     fda:	301266        	bnei	a2, 1, 100e <system_upgrade_reboot+0xd2>
     fdd:	ffc721        	l32r	a2, efc <system_upgrade_flag_check+0x30>
     fe0:	ffd301        	l32r	a0, f2c <system_upgrade_flag_check+0x60>
     fe3:	0000c0        	callx0	a0
     fe6:	ffc601        	l32r	a0, f00 <system_upgrade_flag_check+0x34>
     fe9:	7e2022        	l32i	a2, a0, 0x1f8
     fec:	c37c      	movi.n	a3, -4
     fee:	102230        	and	a2, a2, a3
     ff1:	7e6022        	s32i	a2, a0, 0x1f8
     ff4:	440c      	movi.n	a4, 4
     ff6:	202240        	or	a2, a2, a4
     ff9:	ffdd86        	j	f73 <system_upgrade_reboot+0x37>
     ffc:	ffc221        	l32r	a2, f04 <system_upgrade_flag_check+0x38>
     fff:	ffcc01        	l32r	a0, f30 <system_upgrade_flag_check+0x64>
    1002:	0000c0        	callx0	a0
    1005:	ffc001        	l32r	a0, f08 <system_upgrade_flag_check+0x3c>
    1008:	7e2022        	l32i	a2, a0, 0x1f8
    100b:	fff946        	j	ff4 <system_upgrade_reboot+0xb8>
    100e:	ffbf21        	l32r	a2, f0c <system_upgrade_flag_check+0x40>
    1011:	ffc801        	l32r	a0, f34 <system_upgrade_flag_check+0x68>
    1014:	0000c0        	callx0	a0
    1017:	ffbe01        	l32r	a0, f10 <system_upgrade_flag_check+0x44>
    101a:	7e2022        	l32i	a2, a0, 0x1f8
    101d:	c37c      	movi.n	a3, -4
    101f:	102230        	and	a2, a2, a3
    1022:	130c      	movi.n	a3, 1
    1024:	202230        	or	a2, a2, a3
    1027:	fff186        	j	ff1 <system_upgrade_reboot+0xb5>
    102a:	ffba21        	l32r	a2, f14 <system_upgrade_flag_check+0x48>
    102d:	ffc201        	l32r	a0, f38 <system_upgrade_flag_check+0x6c>
    1030:	0000c0        	callx0	a0
    1033:	ffb901        	l32r	a0, f18 <system_upgrade_flag_check+0x4c>
    1036:	7e2022        	l32i	a2, a0, 0x1f8
    1039:	037c      	movi.n	a3, -16
    103b:	102230        	and	a2, a2, a3
    103e:	130c      	movi.n	a3, 1
    1040:	202230        	or	a2, a2, a3
    1043:	ffcb06        	j	f73 <system_upgrade_reboot+0x37>
    1046:	000000        	ill
    1049:	000000        	ill
    104c:	003333        	excw
    104f:	0a0000        	excw
    1052:	203ff2        	excw
    1055:	0007a1        	l32r	a10, fffc1074 <system_get_sdk_version+0xfffbcba8>
    1058:	07a120        	excw
    105b:	060000        	excw
    105e:	ff6000        	excw
    1061:	bf          	.byte 0xbf
    1062:	ff          	.byte 0xff
    1063:	ff          	.byte 0xff
    1064:	010010        	slli	a0, a0, 31
    1067:	01ff00        	slli	a15, a15, 32
    106a:	ff          	.byte 0xff
    106b:	ff          	.byte 0xff
    106c:	00fc00        	excw
    106f:	000000        	ill
    1072:	000010        	excw
    1075:	fe          	.byte 0xfe
    1076:	ef          	.byte 0xef
    1077:	3f          	.byte 0x3f
    1078:	40c8      	l32i.n	a12, a0, 16
    107a:	000006        	j	107e <system_upgrade_reboot+0x142>
	...

000010a0 <system_deep_sleep_instant>:
    10a0:	f0c112        	addi	a1, a1, -16
    10a3:	21d9      	s32i.n	a13, a1, 8
    10a5:	11c9      	s32i.n	a12, a1, 4
    10a7:	31e9      	s32i.n	a14, a1, 12
    10a9:	02cd      	mov.n	a12, a2
    10ab:	ffe721        	l32r	a2, 1048 <system_upgrade_reboot+0x10c>
    10ae:	0109      	s32i.n	a0, a1, 0
    10b0:	f60222        	l8ui	a2, a2, 246
    10b3:	fff201        	l32r	a0, 107c <system_upgrade_reboot+0x140>
    10b6:	0000c0        	callx0	a0
    10b9:	ffe431        	l32r	a3, 104c <system_upgrade_reboot+0x110>
    10bc:	ffe541        	l32r	a4, 1050 <system_upgrade_reboot+0x114>
    10bf:	0020c0        	memw
    10c2:	f86432        	s32i	a3, a4, 0x3e0
    10c5:	421c      	movi.n	a2, 20
    10c7:	ffee01        	l32r	a0, 1080 <system_upgrade_reboot+0x144>
    10ca:	0000c0        	callx0	a0
    10cd:	020c      	movi.n	a2, 0
    10cf:	ffe131        	l32r	a3, 1054 <system_upgrade_reboot+0x118>
    10d2:	ffec01        	l32r	a0, 1084 <system_upgrade_reboot+0x148>
    10d5:	0000c0        	callx0	a0
    10d8:	120c      	movi.n	a2, 1
    10da:	ffdf31        	l32r	a3, 1058 <system_upgrade_reboot+0x11c>
    10dd:	ffea01        	l32r	a0, 1088 <system_upgrade_reboot+0x14c>
    10e0:	0000c0        	callx0	a0
    10e3:	080c      	movi.n	a8, 0
    10e5:	860c      	movi.n	a6, 8
    10e7:	ffddd1        	l32r	a13, 105c <system_upgrade_reboot+0x120>
    10ea:	0020c0        	memw
    10ed:	406d82        	s32i	a8, a13, 0x100
    10f0:	ffdca1        	l32r	a10, 1060 <system_upgrade_reboot+0x124>
    10f3:	0020c0        	memw
    10f6:	402d92        	l32i	a9, a13, 0x100
    10f9:	1099a0        	and	a9, a9, a10
    10fc:	0020c0        	memw
    10ff:	406d92        	s32i	a9, a13, 0x100
    1102:	073c      	movi.n	a7, 48
    1104:	0020c0        	memw
    1107:	402d52        	l32i	a5, a13, 0x100
    110a:	205570        	or	a5, a5, a7
    110d:	0020c0        	memw
    1110:	406d52        	s32i	a5, a13, 0x100
    1113:	440c      	movi.n	a4, 4
    1115:	0020c0        	memw
    1118:	516d42        	s32i	a4, a13, 0x144
    111b:	ffd231        	l32r	a3, 1064 <system_upgrade_reboot+0x128>
    111e:	0020c0        	memw
    1121:	436d32        	s32i	a3, a13, 0x10c
    1124:	ffd121        	l32r	a2, 1068 <system_upgrade_reboot+0x12c>
    1127:	ffd101        	l32r	a0, 106c <system_upgrade_reboot+0x130>
    112a:	0020c0        	memw
    112d:	522de2        	l32i	a14, a13, 0x148
    1130:	10ee20        	and	a14, a14, a2
    1133:	20ee00        	or	a14, a14, a0
    1136:	0020c0        	memw
    1139:	526de2        	s32i	a14, a13, 0x148
    113c:	00aeb2        	movi	a11, 0xfffffe00
    113f:	80a0a2        	movi	a10, 128
    1142:	0020c0        	memw
    1145:	522d92        	l32i	a9, a13, 0x148
    1148:	1099b0        	and	a9, a9, a11
    114b:	2099a0        	or	a9, a9, a10
    114e:	0020c0        	memw
    1151:	526d92        	s32i	a9, a13, 0x148
    1154:	0020c0        	memw
    1157:	446d82        	s32i	a8, a13, 0x110
    115a:	0020c0        	memw
    115d:	472d72        	l32i	a7, a13, 0x11c
    1160:	01d772        	addmi	a7, a7, 0x100
    1163:	88c772        	addi	a7, a7, -120
    1166:	0020c0        	memw
    1169:	416d72        	s32i	a7, a13, 0x104
    116c:	0020c0        	memw
    116f:	466d62        	s32i	a6, a13, 0x118
    1172:	ffbf51        	l32r	a5, 1070 <system_upgrade_reboot+0x134>
    1175:	0020c0        	memw
    1178:	426d52        	s32i	a5, a13, 0x108
    117b:	c8a022        	movi	a2, 200
    117e:	ffc301        	l32r	a0, 108c <system_upgrade_reboot+0x150>
    1181:	0000c0        	callx0	a0
    1184:	ffbce1        	l32r	a14, 1074 <system_upgrade_reboot+0x138>
    1187:	320c      	movi.n	a2, 3
    1189:	131c      	movi.n	a3, 17
    118b:	0020c0        	memw
    118e:	676d32        	s32i	a3, a13, 0x19c
    1191:	0020c0        	memw
    1194:	686d22        	s32i	a2, a13, 0x1a0
    1197:	ffb861        	l32r	a6, 1078 <system_upgrade_reboot+0x13c>
    119a:	0020c0        	memw
    119d:	436d62        	s32i	a6, a13, 0x10c
    11a0:	cfaf52        	movi	a5, -49
    11a3:	0020c0        	memw
    11a6:	402d42        	l32i	a4, a13, 0x100
    11a9:	104450        	and	a4, a4, a5
    11ac:	0020c0        	memw
    11af:	406d42        	s32i	a4, a13, 0x100
    11b2:	0020c0        	memw
    11b5:	676d32        	s32i	a3, a13, 0x19c
    11b8:	0020c0        	memw
    11bb:	686d22        	s32i	a2, a13, 0x1a0
    11be:	e07c      	movi.n	a0, -2
    11c0:	0020c0        	memw
    11c3:	812eb2        	l32i	a11, a14, 0x204
    11c6:	10bb00        	and	a11, a11, a0
    11c9:	0020c0        	memw
    11cc:	816eb2        	s32i	a11, a14, 0x204
    11cf:	00a122        	movi	a2, 0x100
    11d2:	ffaf01        	l32r	a0, 1090 <system_upgrade_reboot+0x154>
    11d5:	0000c0        	callx0	a0
    11d8:	e20c      	movi.n	a2, 14
    11da:	006c      	movi.n	a0, -32
    11dc:	0020c0        	memw
    11df:	802e82        	l32i	a8, a14, 0x200
    11e2:	108800        	and	a8, a8, a0
    11e5:	208820        	or	a8, a8, a2
    11e8:	0020c0        	memw
    11eb:	806e82        	s32i	a8, a14, 0x200
    11ee:	0020c0        	memw
    11f1:	802e72        	l32i	a7, a14, 0x200
    11f4:	e4e707        	bbsi	a7, 0, 11dc <system_deep_sleep_instant+0x13c>
    11f7:	fa7c      	movi.n	a10, -1
    11f9:	0020c0        	memw
    11fc:	506da2        	s32i	a10, a13, 0x140
    11ff:	092c      	movi.n	a9, 32
    1201:	0020c0        	memw
    1204:	516d92        	s32i	a9, a13, 0x144
    1207:	ffa301        	l32r	a0, 1094 <system_upgrade_reboot+0x158>
    120a:	0000c0        	callx0	a0
    120d:	0c2d      	mov.n	a2, a12
    120f:	ffa201        	l32r	a0, 1098 <system_upgrade_reboot+0x15c>
    1212:	0000c0        	callx0	a0
    1215:	9ccc      	bnez.n	a12, 1222 <system_deep_sleep_instant+0x182>
    1217:	0020c0        	memw
    121a:	0b0c      	movi.n	a11, 0
    121c:	466db2        	s32i	a11, a13, 0x118
    121f:	0001c6        	j	122a <system_deep_sleep_instant+0x18a>
    1222:	0020c0        	memw
    1225:	8c0c      	movi.n	a12, 8
    1227:	466dc2        	s32i	a12, a13, 0x118
    122a:	11c8      	l32i.n	a12, a1, 4
    122c:	21d8      	l32i.n	a13, a1, 8
    122e:	31e8      	l32i.n	a14, a1, 12
    1230:	ff9b01        	l32r	a0, 109c <system_upgrade_reboot+0x160>
    1233:	0000c0        	callx0	a0
    1236:	0108      	l32i.n	a0, a1, 0
    1238:	10c112        	addi	a1, a1, 16
    123b:	f00d      	ret.n
	...

00001268 <system_deep_sleep>:
    1268:	f0c112        	addi	a1, a1, -16
    126b:	0129      	s32i.n	a2, a1, 0
    126d:	1109      	s32i.n	a0, a1, 4
    126f:	000005        	call0	1270 <system_deep_sleep+0x8>
    1272:	020d      	mov.n	a0, a2
    1274:	2129      	s32i.n	a2, a1, 8
    1276:	fff231        	l32r	a3, 1240 <system_deep_sleep_instant+0x1a0>
    1279:	120c      	movi.n	a2, 1
    127b:	f74322        	s8i	a2, a3, 247
    127e:	043026        	beqi	a0, 3, 1286 <system_deep_sleep+0x1e>
    1281:	2109      	s32i.n	a0, a1, 8
    1283:	071066        	bnei	a0, 1, 128e <system_deep_sleep+0x26>
    1286:	fff301        	l32r	a0, 1254 <system_deep_sleep_instant+0x1b4>
    1289:	0000c0        	callx0	a0
    128c:	2108      	l32i.n	a0, a1, 8
    128e:	023026        	beqi	a0, 3, 1294 <system_deep_sleep+0x2c>
    1291:	052066        	bnei	a0, 2, 129a <system_deep_sleep+0x32>
    1294:	fff101        	l32r	a0, 1258 <system_deep_sleep_instant+0x1b8>
    1297:	0000c0        	callx0	a0
    129a:	ffea21        	l32r	a2, 1244 <system_deep_sleep_instant+0x1a4>
    129d:	ffef01        	l32r	a0, 125c <system_deep_sleep_instant+0x1bc>
    12a0:	0000c0        	callx0	a0
    12a3:	ffe921        	l32r	a2, 1248 <system_deep_sleep_instant+0x1a8>
    12a6:	ffe931        	l32r	a3, 124c <system_deep_sleep_instant+0x1ac>
    12a9:	0148      	l32i.n	a4, a1, 0
    12ab:	ffed01        	l32r	a0, 1260 <system_deep_sleep_instant+0x1c0>
    12ae:	0000c0        	callx0	a0
    12b1:	ffe721        	l32r	a2, 1250 <system_deep_sleep_instant+0x1b0>
    12b4:	64a032        	movi	a3, 100
    12b7:	040c      	movi.n	a4, 0
    12b9:	150c      	movi.n	a5, 1
    12bb:	ffea01        	l32r	a0, 1264 <system_deep_sleep_instant+0x1c4>
    12be:	0000c0        	callx0	a0
    12c1:	1108      	l32i.n	a0, a1, 4
    12c3:	10c112        	addi	a1, a1, 16
    12c6:	f00d      	ret.n
    12c8:	000000        	ill
	...

000012cc <system_deep_sleep_set_option>:
    12cc:	d28c      	beqz.n	a2, 12dd <system_deep_sleep_set_option+0x11>
    12ce:	0b1226        	beqi	a2, 1, 12dd <system_deep_sleep_set_option+0x11>
    12d1:	082226        	beqi	a2, 2, 12dd <system_deep_sleep_set_option+0x11>
    12d4:	054226        	beqi	a2, 4, 12dd <system_deep_sleep_set_option+0x11>
    12d7:	040c      	movi.n	a4, 0
    12d9:	042d      	mov.n	a2, a4
    12db:	f00d      	ret.n
    12dd:	fffa31        	l32r	a3, 12c8 <system_deep_sleep+0x60>
    12e0:	140c      	movi.n	a4, 1
    12e2:	f64322        	s8i	a2, a3, 246
    12e5:	fffc06        	j	12d9 <system_deep_sleep_set_option+0xd>
    12e8:	000000        	ill
	...

000012ec <system_phy_temperature_alert>:
    12ec:	020c      	movi.n	a2, 0
    12ee:	f0c112        	addi	a1, a1, -16
    12f1:	0109      	s32i.n	a0, a1, 0
    12f3:	fffd01        	l32r	a0, 12e8 <system_deep_sleep_set_option+0x1c>
    12f6:	0000c0        	callx0	a0
    12f9:	0108      	l32i.n	a0, a1, 0
    12fb:	10c112        	addi	a1, a1, 16
    12fe:	f00d      	ret.n
    1300:	000000        	ill
	...

00001304 <system_phy_set_max_tpw>:
    1304:	f0c112        	addi	a1, a1, -16
    1307:	0109      	s32i.n	a0, a1, 0
    1309:	fffd01        	l32r	a0, 1300 <system_phy_temperature_alert+0x14>
    130c:	0000c0        	callx0	a0
    130f:	0108      	l32i.n	a0, a1, 0
    1311:	10c112        	addi	a1, a1, 16
    1314:	f00d      	ret.n
    1316:	000000        	ill
    1319:	000000        	ill

0000131c <system_phy_set_tpw_via_vdd33>:
    131c:	f0c112        	addi	a1, a1, -16
    131f:	0109      	s32i.n	a0, a1, 0
    1321:	fffd01        	l32r	a0, 1318 <system_phy_set_max_tpw+0x14>
    1324:	0000c0        	callx0	a0
    1327:	0108      	l32i.n	a0, a1, 0
    1329:	10c112        	addi	a1, a1, 16
    132c:	f00d      	ret.n
    132e:	000000        	ill
    1331:	000000        	ill

00001334 <system_phy_set_rfoption>:
    1334:	f0c112        	addi	a1, a1, -16
    1337:	0109      	s32i.n	a0, a1, 0
    1339:	fffd01        	l32r	a0, 1330 <system_phy_set_tpw_via_vdd33+0x14>
    133c:	0000c0        	callx0	a0
    133f:	0108      	l32i.n	a0, a1, 0
    1341:	10c112        	addi	a1, a1, 16
    1344:	f00d      	ret.n
    1346:	000000        	ill
    1349:	000000        	ill

0000134c <system_phy_set_powerup_option>:
    134c:	f0c112        	addi	a1, a1, -16
    134f:	0109      	s32i.n	a0, a1, 0
    1351:	fffd01        	l32r	a0, 1348 <system_phy_set_rfoption+0x14>
    1354:	0000c0        	callx0	a0
    1357:	0108      	l32i.n	a0, a1, 0
    1359:	10c112        	addi	a1, a1, 16
    135c:	f00d      	ret.n
    135e:	000000        	ill
    1361:	fe          	.byte 0xfe
    1362:	ef          	.byte 0xef
    1363:	3f          	.byte 0x3f
	...

0000136c <system_update_cpu_freq>:
    136c:	f0c112        	addi	a1, a1, -16
    136f:	055c      	movi.n	a5, 80
    1371:	0109      	s32i.n	a0, a1, 0
    1373:	fffb01        	l32r	a0, 1360 <system_phy_set_powerup_option+0x14>
    1376:	1b9257        	bne	a2, a5, 1395 <system_update_cpu_freq+0x29>
    1379:	e37c      	movi.n	a3, -2
    137b:	0020c0        	memw
    137e:	852022        	l32i	a2, a0, 0x214
    1381:	102230        	and	a2, a2, a3
    1384:	0020c0        	memw
    1387:	856022        	s32i	a2, a0, 0x214
    138a:	052d      	mov.n	a2, a5
    138c:	fff601        	l32r	a0, 1364 <system_phy_set_powerup_option+0x18>
    138f:	0000c0        	callx0	a0
    1392:	000786        	j	13b4 <system_update_cpu_freq+0x48>
    1395:	a0a052        	movi	a5, 160
    1398:	1d9257        	bne	a2, a5, 13b9 <system_update_cpu_freq+0x4d>
    139b:	052d      	mov.n	a2, a5
    139d:	160c      	movi.n	a6, 1
    139f:	0020c0        	memw
    13a2:	852042        	l32i	a4, a0, 0x214
    13a5:	204460        	or	a4, a4, a6
    13a8:	0020c0        	memw
    13ab:	856042        	s32i	a4, a0, 0x214
    13ae:	ffee01        	l32r	a0, 1368 <system_phy_set_powerup_option+0x1c>
    13b1:	0000c0        	callx0	a0
    13b4:	120c      	movi.n	a2, 1
    13b6:	000046        	j	13bb <system_update_cpu_freq+0x4f>
    13b9:	020c      	movi.n	a2, 0
    13bb:	0108      	l32i.n	a0, a1, 0
    13bd:	10c112        	addi	a1, a1, 16
    13c0:	f00d      	ret.n
    13c2:	000000        	ill
    13c5:	000000        	ill

000013c8 <system_get_cpu_freq>:
    13c8:	f0c112        	addi	a1, a1, -16
    13cb:	0109      	s32i.n	a0, a1, 0
    13cd:	fffd01        	l32r	a0, 13c4 <system_update_cpu_freq+0x58>
    13d0:	0000c0        	callx0	a0
    13d3:	742020        	extui	a2, a2, 0, 8
    13d6:	0108      	l32i.n	a0, a1, 0
    13d8:	10c112        	addi	a1, a1, 16
    13db:	f00d      	ret.n
    13dd:	000000        	ill
    13e0:	000000        	ill
	...

000013e4 <system_overclock>:
    13e4:	f0c112        	addi	a1, a1, -16
    13e7:	0109      	s32i.n	a0, a1, 0
    13e9:	000005        	call0	13ec <system_overclock+0x8>
    13ec:	005c      	movi.n	a0, 80
    13ee:	129207        	bne	a2, a0, 1404 <system_overclock+0x20>
    13f1:	fffb31        	l32r	a3, 13e0 <system_get_cpu_freq+0x18>
    13f4:	120c      	movi.n	a2, 1
    13f6:	f84322        	s8i	a2, a3, 248
    13f9:	a0a022        	movi	a2, 160
    13fc:	000005        	call0	1400 <system_overclock+0x1c>
    13ff:	120c      	movi.n	a2, 1
    1401:	000046        	j	1406 <system_overclock+0x22>
    1404:	020c      	movi.n	a2, 0
    1406:	0108      	l32i.n	a0, a1, 0
    1408:	10c112        	addi	a1, a1, 16
    140b:	f00d      	ret.n
    140d:	000000        	ill
    1410:	000000        	ill
	...

00001414 <system_restoreclock>:
    1414:	f0c112        	addi	a1, a1, -16
    1417:	0109      	s32i.n	a0, a1, 0
    1419:	000005        	call0	141c <system_restoreclock+0x8>
    141c:	a0a002        	movi	a0, 160
    141f:	179207        	bne	a2, a0, 143a <system_restoreclock+0x26>
    1422:	fffb01        	l32r	a0, 1410 <system_overclock+0x2c>
    1425:	f80022        	l8ui	a2, a0, 248
    1428:	0e1266        	bnei	a2, 1, 143a <system_restoreclock+0x26>
    142b:	025c      	movi.n	a2, 80
    142d:	030c      	movi.n	a3, 0
    142f:	f84032        	s8i	a3, a0, 248
    1432:	000005        	call0	1434 <system_restoreclock+0x20>
    1435:	120c      	movi.n	a2, 1
    1437:	000046        	j	143c <system_restoreclock+0x28>
    143a:	020c      	movi.n	a2, 0
    143c:	0108      	l32i.n	a0, a1, 0
    143e:	10c112        	addi	a1, a1, 16
    1441:	f00d      	ret.n
    1443:	000000        	ill
    1446:	000000        	ill
    1449:	600006        	j	1944d <system_get_sdk_version+0x14f81>

0000144c <system_timer_reinit>:
    144c:	fffe51        	l32r	a5, 1444 <system_restoreclock+0x30>
    144f:	040c      	movi.n	a4, 0
    1451:	014542        	s8i	a4, a5, 1
    1454:	84a022        	movi	a2, 132
    1457:	fffc31        	l32r	a3, 1448 <system_restoreclock+0x34>
    145a:	0020c0        	memw
    145d:	a329      	s32i.n	a2, a3, 40
    145f:	f00d      	ret.n
    1461:	000000        	ill
    1464:	f20a00        	excw
    1467:	3f          	.byte 0x3f

00001468 <system_relative_time>:
    1468:	ffff31        	l32r	a3, 1464 <system_timer_reinit+0x18>
    146b:	0020c0        	memw
    146e:	802332        	l32i	a3, a3, 0x200
    1471:	c02320        	sub	a2, a3, a2
    1474:	f00d      	ret.n
    1476:	000000        	ill
    1479:	000000        	ill
    147c:	000080        	ret
	...
    1487:	016000        	slli	a6, a0, 32
    148a:	000000        	ill
    148d:	000000        	ill
    1490:	000190        	excw
	...
    149b:	008000        	excw
	...

000014bc <system_station_got_ip_set>:
    14bc:	d0c112        	addi	a1, a1, -48
    14bf:	a1c9      	s32i.n	a12, a1, 40
    14c1:	ffedc1        	l32r	a12, 1478 <system_relative_time+0x10>
    14c4:	9109      	s32i.n	a0, a1, 36
    14c6:	4cc8      	l32i.n	a12, a12, 16
    14c8:	ffed01        	l32r	a0, 147c <system_relative_time+0x14>
    14cb:	0cc8      	l32i.n	a12, a12, 0
    14cd:	1f2052        	l32i	a5, a0, 124
    14d0:	053c16        	beqz	a12, 1527 <system_station_got_ip_set+0x6b>
    14d3:	050516        	beqz	a5, 1527 <system_station_got_ip_set+0x6b>
    14d6:	1c78      	l32i.n	a7, a12, 4
    14d8:	0268      	l32i.n	a6, a2, 0
    14da:	2c98      	l32i.n	a9, a12, 8
    14dc:	0b9677        	bne	a6, a7, 14eb <system_station_got_ip_set+0x2f>
    14df:	0388      	l32i.n	a8, a3, 0
    14e1:	069897        	bne	a8, a9, 14eb <system_station_got_ip_set+0x2f>
    14e4:	3cb8      	l32i.n	a11, a12, 12
    14e6:	04a8      	l32i.n	a10, a4, 0
    14e8:	3b1ab7        	beq	a10, a11, 1527 <system_station_got_ip_set+0x6b>
    14eb:	c22c      	movi.n	a2, 44
    14ed:	ffe431        	l32r	a3, 1480 <system_relative_time+0x18>
    14f0:	e3a342        	movi	a4, 0x3e3
    14f3:	ffeb01        	l32r	a0, 14a0 <system_relative_time+0x38>
    14f6:	0000c0        	callx0	a0
    14f9:	8129      	s32i.n	a2, a1, 32
    14fb:	82ac      	beqz.n	a2, 1527 <system_station_got_ip_set+0x6b>
    14fd:	3c08      	l32i.n	a0, a12, 12
    14ff:	024d      	mov.n	a4, a2
    1501:	1c58      	l32i.n	a5, a12, 4
    1503:	330c      	movi.n	a3, 3
    1505:	0239      	s32i.n	a3, a2, 0
    1507:	1259      	s32i.n	a5, a2, 4
    1509:	2c28      	l32i.n	a2, a12, 8
    150b:	2429      	s32i.n	a2, a4, 8
    150d:	3409      	s32i.n	a0, a4, 12
    150f:	521c      	movi.n	a2, 21
    1511:	ffe401        	l32r	a0, 14a4 <system_relative_time+0x3c>
    1514:	0000c0        	callx0	a0
    1517:	c28c      	beqz.n	a2, 1527 <system_station_got_ip_set+0x6b>
    1519:	8128      	l32i.n	a2, a1, 32
    151b:	ffda31        	l32r	a3, 1484 <system_relative_time+0x1c>
    151e:	eca342        	movi	a4, 0x3ec
    1521:	ffe101        	l32r	a0, 14a8 <system_relative_time+0x40>
    1524:	0000c0        	callx0	a0
    1527:	080c72        	l8ui	a7, a12, 8
    152a:	070c62        	l8ui	a6, a12, 7
    152d:	060c52        	l8ui	a5, a12, 6
    1530:	050c42        	l8ui	a4, a12, 5
    1533:	040c32        	l8ui	a3, a12, 4
    1536:	090c82        	l8ui	a8, a12, 9
    1539:	0189      	s32i.n	a8, a1, 0
    153b:	0a0c22        	l8ui	a2, a12, 10
    153e:	1129      	s32i.n	a2, a1, 4
    1540:	ffd221        	l32r	a2, 1488 <system_relative_time+0x20>
    1543:	0b0c02        	l8ui	a0, a12, 11
    1546:	2109      	s32i.n	a0, a1, 8
    1548:	0c0cb2        	l8ui	a11, a12, 12
    154b:	31b9      	s32i.n	a11, a1, 12
    154d:	0d0ca2        	l8ui	a10, a12, 13
    1550:	41a9      	s32i.n	a10, a1, 16
    1552:	0e0c92        	l8ui	a9, a12, 14
    1555:	5199      	s32i.n	a9, a1, 20
    1557:	0f0c82        	l8ui	a8, a12, 15
    155a:	6189      	s32i.n	a8, a1, 24
    155c:	ffd401        	l32r	a0, 14ac <system_relative_time+0x44>
    155f:	0000c0        	callx0	a0
    1562:	ffcac1        	l32r	a12, 148c <system_relative_time+0x24>
    1565:	ffca21        	l32r	a2, 1490 <system_relative_time+0x28>
    1568:	ffd201        	l32r	a0, 14b0 <system_relative_time+0x48>
    156b:	0000c0        	callx0	a0
    156e:	4c08      	l32i.n	a0, a12, 16
    1570:	5a0c      	movi.n	a10, 5
    1572:	d240a2        	s8i	a10, a0, 210
    1575:	4cb8      	l32i.n	a11, a12, 16
    1577:	ffc721        	l32r	a2, 1494 <system_relative_time+0x2c>
    157a:	d04ba2        	s8i	a10, a11, 208
    157d:	810292        	l8ui	a9, a2, 129
    1580:	800232        	l8ui	a3, a2, 128
    1583:	341966        	bnei	a9, 1, 15bb <system_station_got_ip_set+0xff>
    1586:	311366        	bnei	a3, 1, 15bb <system_station_got_ip_set+0xff>
    1589:	02cd      	mov.n	a12, a2
    158b:	ffc321        	l32r	a2, 1498 <system_relative_time+0x30>
    158e:	ffc901        	l32r	a0, 14b4 <system_relative_time+0x4c>
    1591:	0000c0        	callx0	a0
    1594:	140c      	movi.n	a4, 1
    1596:	820c32        	l8ui	a3, a12, 130
    1599:	ffc021        	l32r	a2, 149c <system_relative_time+0x34>
    159c:	401300        	ssl	a3
    159f:	800222        	l8ui	a2, a2, 128
    15a2:	030c      	movi.n	a3, 0
    15a4:	045020        	extui	a5, a2, 0, 1
    15a7:	833450        	moveqz	a3, a4, a5
    15aa:	a12200        	sll	a2, a2
    15ad:	a14400        	sll	a4, a4
    15b0:	a13300        	sll	a3, a3
    15b3:	050c      	movi.n	a5, 0
    15b5:	ffc001        	l32r	a0, 14b8 <system_relative_time+0x50>
    15b8:	0000c0        	callx0	a0
    15bb:	a1c8      	l32i.n	a12, a1, 40
    15bd:	9108      	l32i.n	a0, a1, 36
    15bf:	30c112        	addi	a1, a1, 48
    15c2:	f00d      	ret.n
	...
    15cc:	0001a0        	jx	a1
	...
    15d7:	01c000        	slli	a12, a0, 32
	...
    15e2:	e00000        	subx4	a0, a0, a0
    15e5:	000001        	l32r	a0, fffc15e8 <system_get_sdk_version+0xfffbd11c>
    15e8:	000000        	ill
    15eb:	c00000        	sub	a0, a0, a0
    15ee:	ff          	.byte 0xff
    15ef:	3f          	.byte 0x3f
    15f0:	000200        	excw
    15f3:	c00000        	sub	a0, a0, a0
    15f6:	ff          	.byte 0xff
    15f7:	3f          	.byte 0x3f
	...

00001608 <system_print_meminfo>:
    1608:	fff121        	l32r	a2, 15cc <system_station_got_ip_set+0x110>
    160b:	ffef41        	l32r	a4, 15c8 <system_station_got_ip_set+0x10c>
    160e:	ffed51        	l32r	a5, 15c4 <system_station_got_ip_set+0x108>
    1611:	f0c112        	addi	a1, a1, -16
    1614:	0109      	s32i.n	a0, a1, 0
    1616:	053d      	mov.n	a3, a5
    1618:	c05450        	sub	a5, a4, a5
    161b:	fff701        	l32r	a0, 15f8 <system_station_got_ip_set+0x13c>
    161e:	0000c0        	callx0	a0
    1621:	ffed21        	l32r	a2, 15d8 <system_station_got_ip_set+0x11c>
    1624:	ffeb51        	l32r	a5, 15d0 <system_station_got_ip_set+0x114>
    1627:	ffeb41        	l32r	a4, 15d4 <system_station_got_ip_set+0x118>
    162a:	053d      	mov.n	a3, a5
    162c:	c05450        	sub	a5, a4, a5
    162f:	fff301        	l32r	a0, 15fc <system_station_got_ip_set+0x140>
    1632:	0000c0        	callx0	a0
    1635:	ffeb21        	l32r	a2, 15e4 <system_station_got_ip_set+0x128>
    1638:	ffe951        	l32r	a5, 15dc <system_station_got_ip_set+0x120>
    163b:	ffe941        	l32r	a4, 15e0 <system_station_got_ip_set+0x124>
    163e:	053d      	mov.n	a3, a5
    1640:	c05450        	sub	a5, a4, a5
    1643:	ffef01        	l32r	a0, 1600 <system_station_got_ip_set+0x144>
    1646:	0000c0        	callx0	a0
    1649:	ffe921        	l32r	a2, 15f0 <system_station_got_ip_set+0x134>
    164c:	ffea41        	l32r	a4, 15f4 <system_station_got_ip_set+0x138>
    164f:	ffe661        	l32r	a6, 15e8 <system_station_got_ip_set+0x12c>
    1652:	ffe651        	l32r	a5, 15ec <system_station_got_ip_set+0x130>
    1655:	063d      	mov.n	a3, a6
    1657:	c05560        	sub	a5, a5, a6
    165a:	ffea01        	l32r	a0, 1604 <system_station_got_ip_set+0x148>
    165d:	0000c0        	callx0	a0
    1660:	0108      	l32i.n	a0, a1, 0
    1662:	10c112        	addi	a1, a1, 16
    1665:	f00d      	ret.n
    1667:	000000        	ill
	...

0000166c <system_get_free_heap_size>:
    166c:	f0c112        	addi	a1, a1, -16
    166f:	0109      	s32i.n	a0, a1, 0
    1671:	fffd01        	l32r	a0, 1668 <system_print_meminfo+0x60>
    1674:	0000c0        	callx0	a0
    1677:	0108      	l32i.n	a0, a1, 0
    1679:	10c112        	addi	a1, a1, 16
    167c:	f00d      	ret.n
    167e:	000000        	ill
    1681:	ff0000        	excw
    1684:	effe00        	excw
    1687:	3f          	.byte 0x3f
    1688:	ff          	.byte 0xff
    1689:	ff          	.byte 0xff
    168a:	ff          	.byte 0xff
	...

0000168c <system_get_chip_id>:
    168c:	fffd41        	l32r	a4, 1680 <system_get_free_heap_size+0x14>
    168f:	fffd21        	l32r	a2, 1684 <system_get_free_heap_size+0x18>
    1692:	0020c0        	memw
    1695:	942232        	l32i	a3, a2, 0x250
    1698:	103340        	and	a3, a3, a4
    169b:	fffb41        	l32r	a4, 1688 <system_get_free_heap_size+0x1c>
    169e:	0020c0        	memw
    16a1:	952222        	l32i	a2, a2, 0x254
    16a4:	404810        	ssai	24
    16a7:	102240        	and	a2, a2, a4
    16aa:	812230        	src	a2, a2, a3
    16ad:	f00d      	ret.n
    16af:	000000        	ill
	...

000016b4 <system_rtc_clock_cali_proc>:
    16b4:	f0c112        	addi	a1, a1, -16
    16b7:	0109      	s32i.n	a0, a1, 0
    16b9:	fffd01        	l32r	a0, 16b0 <system_get_chip_id+0x24>
    16bc:	0000c0        	callx0	a0
    16bf:	0108      	l32i.n	a0, a1, 0
    16c1:	10c112        	addi	a1, a1, 16
    16c4:	f00d      	ret.n
    16c6:	000000        	ill
    16c9:	600006        	j	196cd <system_get_sdk_version+0x15201>

000016cc <system_get_rtc_time>:
    16cc:	ffff21        	l32r	a2, 16c8 <system_rtc_clock_cali_proc+0x14>
    16cf:	0020c0        	memw
    16d2:	472222        	l32i	a2, a2, 0x11c
    16d5:	f00d      	ret.n
    16d7:	bf8000        	excw
    16da:	0086b1        	l32r	a11, fffc18f4 <system_get_sdk_version+0xfffbd428>
	...

000016f4 <system_mktime>:
    16f4:	d0c112        	addi	a1, a1, -48
    16f7:	9109      	s32i.n	a0, a1, 36
    16f9:	2149      	s32i.n	a4, a1, 8
    16fb:	a1c9      	s32i.n	a12, a1, 40
    16fd:	b1d9      	s32i.n	a13, a1, 44
    16ff:	02cd      	mov.n	a12, a2
    1701:	fec3d2        	addi	a13, a3, -2
    1704:	031de6        	bgei	a13, 1, 170b <system_mktime+0x17>
    1707:	d3ab      	addi.n	a13, a3, 10
    1709:	c20b      	addi.n	a12, a2, -1
    170b:	4159      	s32i.n	a5, a1, 16
    170d:	6169      	s32i.n	a6, a1, 24
    170f:	1179      	s32i.n	a7, a1, 4
    1711:	030c      	movi.n	a3, 0
    1713:	020c      	movi.n	a2, 0
    1715:	000c      	movi.n	a0, 0
    1717:	3109      	s32i.n	a0, a1, 12
    1719:	5129      	s32i.n	a2, a1, 20
    171b:	0139      	s32i.n	a3, a1, 0
    171d:	0c2d      	mov.n	a2, a12
    171f:	90a132        	movi	a3, 0x190
    1722:	ffee01        	l32r	a0, 16dc <system_get_rtc_time+0x10>
    1725:	0000c0        	callx0	a0
    1728:	7129      	s32i.n	a2, a1, 28
    172a:	64a032        	movi	a3, 100
    172d:	0c2d      	mov.n	a2, a12
    172f:	ffec01        	l32r	a0, 16e0 <system_get_rtc_time+0x14>
    1732:	0000c0        	callx0	a0
    1735:	8129      	s32i.n	a2, a1, 32
    1737:	c30c      	movi.n	a3, 12
    1739:	6fa122        	movi	a2, 0x16f
    173c:	822d20        	mull	a2, a13, a2
    173f:	ffe901        	l32r	a0, 16e4 <system_get_rtc_time+0x18>
    1742:	0000c0        	callx0	a0
    1745:	030c      	movi.n	a3, 0
    1747:	41d8      	l32i.n	a13, a1, 16
    1749:	7158      	l32i.n	a5, a1, 28
    174b:	8178      	l32i.n	a7, a1, 32
    174d:	2148      	l32i.n	a4, a1, 8
    174f:	4162c0        	srli	a6, a12, 2
    1752:	442a      	add.n	a4, a4, a2
    1754:	c06670        	sub	a6, a6, a7
    1757:	6da122        	movi	a2, 0x16d
    175a:	822c20        	mull	a2, a12, a2
    175d:	556a      	add.n	a5, a5, a6
    175f:	31c8      	l32i.n	a12, a1, 12
    1761:	445a      	add.n	a4, a4, a5
    1763:	242a      	add.n	a2, a4, a2
    1765:	01b247        	bgeu	a2, a4, 176a <system_mktime+0x76>
    1768:	130c      	movi.n	a3, 1
    176a:	050c      	movi.n	a5, 0
    176c:	841c      	movi.n	a4, 24
    176e:	ffde01        	l32r	a0, 16e8 <system_get_rtc_time+0x1c>
    1771:	0000c0        	callx0	a0
    1774:	3c3a      	add.n	a3, a12, a3
    1776:	2d2a      	add.n	a2, a13, a2
    1778:	51c8      	l32i.n	a12, a1, 20
    177a:	01b2d7        	bgeu	a2, a13, 177f <system_mktime+0x8b>
    177d:	331b      	addi.n	a3, a3, 1
    177f:	61d8      	l32i.n	a13, a1, 24
    1781:	050c      	movi.n	a5, 0
    1783:	c43c      	movi.n	a4, 60
    1785:	ffd901        	l32r	a0, 16ec <system_get_rtc_time+0x20>
    1788:	0000c0        	callx0	a0
    178b:	3c3a      	add.n	a3, a12, a3
    178d:	2d2a      	add.n	a2, a13, a2
    178f:	01c8      	l32i.n	a12, a1, 0
    1791:	01b2d7        	bgeu	a2, a13, 1796 <system_mktime+0xa2>
    1794:	331b      	addi.n	a3, a3, 1
    1796:	11d8      	l32i.n	a13, a1, 4
    1798:	050c      	movi.n	a5, 0
    179a:	c43c      	movi.n	a4, 60
    179c:	ffd501        	l32r	a0, 16f0 <system_get_rtc_time+0x24>
    179f:	0000c0        	callx0	a0
    17a2:	4d2a      	add.n	a4, a13, a2
    17a4:	ffcd21        	l32r	a2, 16d8 <system_get_rtc_time+0xc>
    17a7:	0c3a      	add.n	a0, a12, a3
    17a9:	242a      	add.n	a2, a4, a2
    17ab:	01b4d7        	bgeu	a4, a13, 17b0 <system_mktime+0xbc>
    17ae:	001b      	addi.n	a0, a0, 1
    17b0:	f1c032        	addi	a3, a0, -15
    17b3:	a1c8      	l32i.n	a12, a1, 40
    17b5:	b1d8      	l32i.n	a13, a1, 44
    17b7:	02b247        	bgeu	a2, a4, 17bd <system_mktime+0xc9>
    17ba:	f2c032        	addi	a3, a0, -14
    17bd:	9108      	l32i.n	a0, a1, 36
    17bf:	30c112        	addi	a1, a1, 48
    17c2:	f00d      	ret.n
    17c4:	000000        	ill
	...

000017c8 <system_init_done_cb>:
    17c8:	ffff31        	l32r	a3, 17c4 <system_mktime+0xd0>
    17cb:	416322        	s32i	a2, a3, 0x104
    17ce:	f00d      	ret.n
    17d0:	0108      	l32i.n	a0, a1, 0
	...

000017d4 <system_get_rst_info>:
    17d4:	ffff21        	l32r	a2, 17d0 <system_init_done_cb+0x8>
    17d7:	f00d      	ret.n
    17d9:	000000        	ill

000017dc <system_get_data_of_array_8>:
    17dc:	f0c112        	addi	a1, a1, -16
    17df:	c67c      	movi.n	a6, -4
    17e1:	144020        	extui	a4, a2, 0, 2
    17e4:	434a      	add.n	a4, a3, a4
    17e6:	106260        	and	a6, a2, a6
    17e9:	415240        	srli	a5, a4, 2
    17ec:	142040        	extui	a2, a4, 0, 2
    17ef:	a05560        	addx4	a5, a5, a6
    17f2:	221a      	add.n	a2, a2, a1
    17f4:	0558      	l32i.n	a5, a5, 0
    17f6:	0159      	s32i.n	a5, a1, 0
    17f8:	000222        	l8ui	a2, a2, 0
    17fb:	10c112        	addi	a1, a1, 16
    17fe:	f00d      	ret.n

00001800 <system_get_data_of_array_16>:
    1800:	f0c112        	addi	a1, a1, -16
    1803:	c67c      	movi.n	a6, -4
    1805:	144020        	extui	a4, a2, 0, 2
    1808:	904340        	addx2	a4, a3, a4
    180b:	106260        	and	a6, a2, a6
    180e:	415240        	srli	a5, a4, 2
    1811:	142040        	extui	a2, a4, 0, 2
    1814:	a05560        	addx4	a5, a5, a6
    1817:	902210        	addx2	a2, a2, a1
    181a:	0558      	l32i.n	a5, a5, 0
    181c:	0159      	s32i.n	a5, a1, 0
    181e:	001222        	l16ui	a2, a2, 0
    1821:	10c112        	addi	a1, a1, 16
    1824:	f00d      	ret.n
	...

00001830 <system_get_string_from_flash>:
    1830:	e0c112        	addi	a1, a1, -32
    1833:	4139      	s32i.n	a3, a1, 16
    1835:	1109      	s32i.n	a0, a1, 4
    1837:	21c9      	s32i.n	a12, a1, 8
    1839:	31d9      	s32i.n	a13, a1, 12
    183b:	02cd      	mov.n	a12, a2
    183d:	04dd      	mov.n	a13, a4
    183f:	300c      	movi.n	a0, 3
    1841:	308027        	bany	a0, a2, 1875 <system_get_string_from_flash+0x45>
    1844:	fff901        	l32r	a0, 1828 <system_get_data_of_array_16+0x28>
    1847:	0000c0        	callx0	a0
    184a:	f40020        	extui	a0, a2, 0, 16
    184d:	500b      	addi.n	a5, a0, -1
    184f:	402b      	addi.n	a4, a0, 2
    1851:	b34550        	movgez	a4, a5, a5
    1854:	450c      	movi.n	a5, 4
    1856:	214240        	srai	a4, a4, 2
    1859:	a04450        	addx4	a4, a4, a5
    185c:	f44040        	extui	a4, a4, 0, 16
    185f:	059047        	bne	a0, a4, 1868 <system_get_string_from_flash+0x38>
    1862:	f460d0        	extui	a6, a13, 0, 16
    1865:	0cb067        	bgeu	a0, a6, 1875 <system_get_string_from_flash+0x45>
    1868:	0109      	s32i.n	a0, a1, 0
    186a:	0cb047        	bgeu	a0, a4, 187a <system_get_string_from_flash+0x4a>
    186d:	0109      	s32i.n	a0, a1, 0
    186f:	f470d0        	extui	a7, a13, 0, 16
    1872:	04b747        	bgeu	a7, a4, 187a <system_get_string_from_flash+0x4a>
    1875:	020c      	movi.n	a2, 0
    1877:	000586        	j	1891 <system_get_string_from_flash+0x61>
    187a:	41d8      	l32i.n	a13, a1, 16
    187c:	0c3d      	mov.n	a3, a12
    187e:	0d2d      	mov.n	a2, a13
    1880:	ffeb01        	l32r	a0, 182c <system_get_data_of_array_16+0x2c>
    1883:	0000c0        	callx0	a0
    1886:	120c      	movi.n	a2, 1
    1888:	0198      	l32i.n	a9, a1, 0
    188a:	080c      	movi.n	a8, 0
    188c:	99da      	add.n	a9, a9, a13
    188e:	004982        	s8i	a8, a9, 0
    1891:	21c8      	l32i.n	a12, a1, 8
    1893:	31d8      	l32i.n	a13, a1, 12
    1895:	1108      	l32i.n	a0, a1, 4
    1897:	20c112        	addi	a1, a1, 32
    189a:	f00d      	ret.n
	...

000018b0 <wifi_softap_dhcps_start>:
    18b0:	f0c112        	addi	a1, a1, -16
    18b3:	3109      	s32i.n	a0, a1, 12
    18b5:	000005        	call0	18b8 <wifi_softap_dhcps_start+0x8>
    18b8:	391226        	beqi	a2, 1, 18f5 <wifi_softap_dhcps_start+0x45>
    18bb:	62bc      	beqz.n	a2, 18f5 <wifi_softap_dhcps_start+0x45>
    18bd:	fff701        	l32r	a0, 189c <system_get_string_from_flash+0x6c>
    18c0:	560002        	l8ui	a0, a0, 86
    18c3:	e0ec      	bnez.n	a0, 18f5 <wifi_softap_dhcps_start+0x45>
    18c5:	120c      	movi.n	a2, 1
    18c7:	fff801        	l32r	a0, 18a8 <system_get_string_from_flash+0x78>
    18ca:	0000c0        	callx0	a0
    18cd:	fff401        	l32r	a0, 18a0 <system_get_string_from_flash+0x70>
    18d0:	529c      	beqz.n	a2, 18e9 <wifi_softap_dhcps_start+0x39>
    18d2:	020022        	l8ui	a2, a0, 2
    18d5:	02dc      	bnez.n	a2, 18e9 <wifi_softap_dhcps_start+0x39>
    18d7:	120c      	movi.n	a2, 1
    18d9:	013d      	mov.n	a3, a1
    18db:	000005        	call0	18dc <wifi_softap_dhcps_start+0x2c>
    18de:	012d      	mov.n	a2, a1
    18e0:	fff301        	l32r	a0, 18ac <system_get_string_from_flash+0x7c>
    18e3:	0000c0        	callx0	a0
    18e6:	ffef01        	l32r	a0, 18a4 <system_get_string_from_flash+0x74>
    18e9:	120c      	movi.n	a2, 1
    18eb:	024022        	s8i	a2, a0, 2
    18ee:	3108      	l32i.n	a0, a1, 12
    18f0:	10c112        	addi	a1, a1, 16
    18f3:	f00d      	ret.n
    18f5:	020c      	movi.n	a2, 0
    18f7:	fffcc6        	j	18ee <wifi_softap_dhcps_start+0x3e>
	...

00001910 <wifi_softap_dhcps_stop>:
    1910:	f0c112        	addi	a1, a1, -16
    1913:	0109      	s32i.n	a0, a1, 0
    1915:	000005        	call0	1918 <wifi_softap_dhcps_stop+0x8>
    1918:	331226        	beqi	a2, 1, 194f <wifi_softap_dhcps_stop+0x3f>
    191b:	02bc      	beqz.n	a2, 194f <wifi_softap_dhcps_stop+0x3f>
    191d:	fff701        	l32r	a0, 18fc <wifi_softap_dhcps_start+0x4c>
    1920:	560002        	l8ui	a0, a0, 86
    1923:	80ec      	bnez.n	a0, 194f <wifi_softap_dhcps_stop+0x3f>
    1925:	120c      	movi.n	a2, 1
    1927:	fff801        	l32r	a0, 1908 <wifi_softap_dhcps_start+0x58>
    192a:	0000c0        	callx0	a0
    192d:	fff401        	l32r	a0, 1900 <wifi_softap_dhcps_start+0x50>
    1930:	d28c      	beqz.n	a2, 1941 <wifi_softap_dhcps_stop+0x31>
    1932:	020022        	l8ui	a2, a0, 2
    1935:	081266        	bnei	a2, 1, 1941 <wifi_softap_dhcps_stop+0x31>
    1938:	fff501        	l32r	a0, 190c <wifi_softap_dhcps_start+0x5c>
    193b:	0000c0        	callx0	a0
    193e:	fff101        	l32r	a0, 1904 <wifi_softap_dhcps_start+0x54>
    1941:	120c      	movi.n	a2, 1
    1943:	030c      	movi.n	a3, 0
    1945:	024032        	s8i	a3, a0, 2
    1948:	0108      	l32i.n	a0, a1, 0
    194a:	10c112        	addi	a1, a1, 16
    194d:	f00d      	ret.n
    194f:	020c      	movi.n	a2, 0
    1951:	fffcc6        	j	1948 <wifi_softap_dhcps_stop+0x38>
    1954:	000000        	ill
	...

00001958 <wifi_softap_dhcps_status>:
    1958:	ffff21        	l32r	a2, 1954 <wifi_softap_dhcps_stop+0x44>
    195b:	020222        	l8ui	a2, a2, 2
    195e:	f00d      	ret.n
	...

00001974 <wifi_station_dhcpc_start>:
    1974:	f0c112        	addi	a1, a1, -16
    1977:	0109      	s32i.n	a0, a1, 0
    1979:	000005        	call0	197c <wifi_station_dhcpc_start+0x8>
    197c:	462226        	beqi	a2, 2, 19c6 <wifi_station_dhcpc_start+0x52>
    197f:	043216        	beqz	a2, 19c6 <wifi_station_dhcpc_start+0x52>
    1982:	fff701        	l32r	a0, 1960 <wifi_softap_dhcps_status+0x8>
    1985:	560002        	l8ui	a0, a0, 86
    1988:	a0fc      	bnez.n	a0, 19c6 <wifi_station_dhcpc_start+0x52>
    198a:	020c      	movi.n	a2, 0
    198c:	fff801        	l32r	a0, 196c <wifi_softap_dhcps_status+0x14>
    198f:	0000c0        	callx0	a0
    1992:	140c      	movi.n	a4, 1
    1994:	fff401        	l32r	a0, 1964 <wifi_softap_dhcps_status+0xc>
    1997:	928c      	beqz.n	a2, 19a4 <wifi_station_dhcpc_start+0x30>
    1999:	030032        	l8ui	a3, a0, 3
    199c:	43cc      	bnez.n	a3, 19a4 <wifi_station_dhcpc_start+0x30>
    199e:	390252        	l8ui	a5, a2, 57
    19a1:	0be507        	bbsi	a5, 0, 19b0 <wifi_station_dhcpc_start+0x3c>
    19a4:	034042        	s8i	a4, a0, 3
    19a7:	120c      	movi.n	a2, 1
    19a9:	0108      	l32i.n	a0, a1, 0
    19ab:	10c112        	addi	a1, a1, 16
    19ae:	f00d      	ret.n
    19b0:	060c      	movi.n	a6, 0
    19b2:	1269      	s32i.n	a6, a2, 4
    19b4:	2269      	s32i.n	a6, a2, 8
    19b6:	3269      	s32i.n	a6, a2, 12
    19b8:	ffee01        	l32r	a0, 1970 <wifi_softap_dhcps_status+0x18>
    19bb:	0000c0        	callx0	a0
    19be:	ffea01        	l32r	a0, 1968 <wifi_softap_dhcps_status+0x10>
    19c1:	140c      	movi.n	a4, 1
    19c3:	fdd216        	beqz	a2, 19a4 <wifi_station_dhcpc_start+0x30>
    19c6:	020c      	movi.n	a2, 0
    19c8:	fff746        	j	19a9 <wifi_station_dhcpc_start+0x35>
	...

000019e0 <wifi_station_dhcpc_stop>:
    19e0:	f0c112        	addi	a1, a1, -16
    19e3:	0109      	s32i.n	a0, a1, 0
    19e5:	000005        	call0	19e8 <wifi_station_dhcpc_stop+0x8>
    19e8:	332226        	beqi	a2, 2, 1a1f <wifi_station_dhcpc_stop+0x3f>
    19eb:	02bc      	beqz.n	a2, 1a1f <wifi_station_dhcpc_stop+0x3f>
    19ed:	fff701        	l32r	a0, 19cc <wifi_station_dhcpc_start+0x58>
    19f0:	560002        	l8ui	a0, a0, 86
    19f3:	80ec      	bnez.n	a0, 1a1f <wifi_station_dhcpc_stop+0x3f>
    19f5:	020c      	movi.n	a2, 0
    19f7:	fff801        	l32r	a0, 19d8 <wifi_station_dhcpc_start+0x64>
    19fa:	0000c0        	callx0	a0
    19fd:	fff401        	l32r	a0, 19d0 <wifi_station_dhcpc_start+0x5c>
    1a00:	d28c      	beqz.n	a2, 1a11 <wifi_station_dhcpc_stop+0x31>
    1a02:	030032        	l8ui	a3, a0, 3
    1a05:	081366        	bnei	a3, 1, 1a11 <wifi_station_dhcpc_stop+0x31>
    1a08:	fff501        	l32r	a0, 19dc <wifi_station_dhcpc_start+0x68>
    1a0b:	0000c0        	callx0	a0
    1a0e:	fff101        	l32r	a0, 19d4 <wifi_station_dhcpc_start+0x60>
    1a11:	120c      	movi.n	a2, 1
    1a13:	040c      	movi.n	a4, 0
    1a15:	034042        	s8i	a4, a0, 3
    1a18:	0108      	l32i.n	a0, a1, 0
    1a1a:	10c112        	addi	a1, a1, 16
    1a1d:	f00d      	ret.n
    1a1f:	020c      	movi.n	a2, 0
    1a21:	fffcc6        	j	1a18 <wifi_station_dhcpc_stop+0x38>
	...

00001a4c <wifi_station_dhcpc_event>:
    1a4c:	f0c112        	addi	a1, a1, -16
    1a4f:	0109      	s32i.n	a0, a1, 0
    1a51:	fff401        	l32r	a0, 1a24 <wifi_station_dhcpc_stop+0x44>
    1a54:	3f2002        	l32i	a0, a0, 252
    1a57:	11c9      	s32i.n	a12, a1, 4
    1a59:	055016        	beqz	a0, 1ab2 <wifi_station_dhcpc_event+0x66>
    1a5c:	020c      	movi.n	a2, 0
    1a5e:	fff401        	l32r	a0, 1a30 <wifi_station_dhcpc_stop+0x50>
    1a61:	0000c0        	callx0	a0
    1a64:	02cd      	mov.n	a12, a2
    1a66:	c28c      	beqz.n	a2, 1a76 <wifi_station_dhcpc_event+0x2a>
    1a68:	fff301        	l32r	a0, 1a34 <wifi_station_dhcpc_stop+0x54>
    1a6b:	0000c0        	callx0	a0
    1a6e:	0c2d      	mov.n	a2, a12
    1a70:	fff201        	l32r	a0, 1a38 <wifi_station_dhcpc_stop+0x58>
    1a73:	0000c0        	callx0	a0
    1a76:	c22c      	movi.n	a2, 44
    1a78:	ffec31        	l32r	a3, 1a28 <wifi_station_dhcpc_stop+0x48>
    1a7b:	f1a442        	movi	a4, 0x4f1
    1a7e:	ffef01        	l32r	a0, 1a3c <wifi_station_dhcpc_stop+0x5c>
    1a81:	0000c0        	callx0	a0
    1a84:	02cd      	mov.n	a12, a2
    1a86:	82ac      	beqz.n	a2, 1ab2 <wifi_station_dhcpc_event+0x66>
    1a88:	420c      	movi.n	a2, 4
    1a8a:	c30c      	movi.n	a3, 12
    1a8c:	0c29      	s32i.n	a2, a12, 0
    1a8e:	2c4b      	addi.n	a2, a12, 4
    1a90:	ffec01        	l32r	a0, 1a40 <wifi_station_dhcpc_stop+0x60>
    1a93:	0000c0        	callx0	a0
    1a96:	521c      	movi.n	a2, 21
    1a98:	430c      	movi.n	a3, 4
    1a9a:	0c4d      	mov.n	a4, a12
    1a9c:	ffea01        	l32r	a0, 1a44 <wifi_station_dhcpc_stop+0x64>
    1a9f:	0000c0        	callx0	a0
    1aa2:	c28c      	beqz.n	a2, 1ab2 <wifi_station_dhcpc_event+0x66>
    1aa4:	0c2d      	mov.n	a2, a12
    1aa6:	ffe131        	l32r	a3, 1a2c <wifi_station_dhcpc_stop+0x4c>
    1aa9:	f8a442        	movi	a4, 0x4f8
    1aac:	ffe701        	l32r	a0, 1a48 <wifi_station_dhcpc_stop+0x68>
    1aaf:	0000c0        	callx0	a0
    1ab2:	000005        	call0	1ab4 <wifi_station_dhcpc_event+0x68>
    1ab5:	11c8      	l32i.n	a12, a1, 4
    1ab7:	051266        	bnei	a2, 1, 1ac0 <wifi_station_dhcpc_event+0x74>
    1aba:	000005        	call0	1abc <wifi_station_dhcpc_event+0x70>
    1abd:	000005        	call0	1ac0 <wifi_station_dhcpc_event+0x74>
    1ac0:	0108      	l32i.n	a0, a1, 0
    1ac2:	10c112        	addi	a1, a1, 16
    1ac5:	f00d      	ret.n
    1ac7:	0e0000        	excw
    1aca:	316000        	srai	a6, a0, 16

00001acc <wifi_station_dhcpc_set_maxtry>:
    1acc:	ffff31        	l32r	a3, 1ac8 <wifi_station_dhcpc_event+0x7c>
    1acf:	0020c0        	memw
    1ad2:	f86322        	s32i	a2, a3, 0x3e0
    1ad5:	120c      	movi.n	a2, 1
    1ad7:	f00d      	ret.n
    1ad9:	000000        	ill
    1adc:	000000        	ill
	...

00001ae0 <wifi_station_dhcpc_status>:
    1ae0:	ffff21        	l32r	a2, 1adc <wifi_station_dhcpc_set_maxtry+0x10>
    1ae3:	030222        	l8ui	a2, a2, 3
    1ae6:	f00d      	ret.n
	...
    1b04:	fff931        	l32r	a3, 1ae8 <wifi_station_dhcpc_status+0x8>
    1b07:	f0c112        	addi	a1, a1, -16
    1b0a:	31e9      	s32i.n	a14, a1, 12
    1b0c:	0109      	s32i.n	a0, a1, 0
    1b0e:	21d9      	s32i.n	a13, a1, 8
    1b10:	11c9      	s32i.n	a12, a1, 4
    1b12:	02dd      	mov.n	a13, a2
    1b14:	051266        	bnei	a2, 1, 1b1d <wifi_station_dhcpc_status+0x3d>
    1b17:	fff5c1        	l32r	a12, 1aec <wifi_station_dhcpc_status+0xc>
    1b1a:	000b06        	j	1b4a <wifi_station_dhcpc_status+0x6a>
    1b1d:	84a422        	movi	a2, 0x484
    1b20:	27a542        	movi	a4, 0x527
    1b23:	fff501        	l32r	a0, 1af8 <wifi_station_dhcpc_status+0x18>
    1b26:	0000c0        	callx0	a0
    1b29:	fff131        	l32r	a3, 1af0 <wifi_station_dhcpc_status+0x10>
    1b2c:	0338      	l32i.n	a3, a3, 0
    1b2e:	02cd      	mov.n	a12, a2
    1b30:	1328      	l32i.n	a2, a3, 4
    1b32:	3338      	l32i.n	a3, a3, 12
    1b34:	fff201        	l32r	a0, 1afc <wifi_station_dhcpc_status+0x1c>
    1b37:	0000c0        	callx0	a0
    1b3a:	030c      	movi.n	a3, 0
    1b3c:	0c4d      	mov.n	a4, a12
    1b3e:	84a452        	movi	a5, 0x484
    1b41:	fdc222        	addi	a2, a2, -3
    1b44:	f42020        	extui	a2, a2, 0, 16
    1b47:	000005        	call0	1b48 <wifi_station_dhcpc_status+0x68>
    1b4a:	080ce2        	l8ui	a14, a12, 8
    1b4d:	014eb6        	bltui	a14, 4, 1b52 <wifi_station_dhcpc_status+0x72>
    1b50:	2e0c      	movi.n	a14, 2
    1b52:	0d1d26        	beqi	a13, 1, 1b63 <wifi_station_dhcpc_status+0x83>
    1b55:	0c2d      	mov.n	a2, a12
    1b57:	ffe731        	l32r	a3, 1af4 <wifi_station_dhcpc_status+0x14>
    1b5a:	2fa542        	movi	a4, 0x52f
    1b5d:	ffe801        	l32r	a0, 1b00 <wifi_station_dhcpc_status+0x20>
    1b60:	0000c0        	callx0	a0
    1b63:	0108      	l32i.n	a0, a1, 0
    1b65:	11c8      	l32i.n	a12, a1, 4
    1b67:	7420e0        	extui	a2, a14, 0, 8
    1b6a:	21d8      	l32i.n	a13, a1, 8
    1b6c:	31e8      	l32i.n	a14, a1, 12
    1b6e:	10c112        	addi	a1, a1, 16
    1b71:	f00d      	ret.n
	...

00001b74 <wifi_get_opmode>:
    1b74:	120c      	movi.n	a2, 1
    1b76:	f0c112        	addi	a1, a1, -16
    1b79:	0109      	s32i.n	a0, a1, 0
    1b7b:	fff885        	call0	1b04 <wifi_station_dhcpc_status+0x24>
    1b7e:	0108      	l32i.n	a0, a1, 0
    1b80:	10c112        	addi	a1, a1, 16
    1b83:	f00d      	ret.n
    1b85:	000000        	ill

00001b88 <wifi_get_opmode_default>:
    1b88:	020c      	movi.n	a2, 0
    1b8a:	f0c112        	addi	a1, a1, -16
    1b8d:	0109      	s32i.n	a0, a1, 0
    1b8f:	fff745        	call0	1b04 <wifi_station_dhcpc_status+0x24>
    1b92:	0108      	l32i.n	a0, a1, 0
    1b94:	10c112        	addi	a1, a1, 16
    1b97:	f00d      	ret.n
	...
    1bb5:	000000        	ill
    1bb8:	f0c112        	addi	a1, a1, -16
    1bbb:	11c9      	s32i.n	a12, a1, 4
    1bbd:	0109      	s32i.n	a0, a1, 0
    1bbf:	02cd      	mov.n	a12, a2
    1bc1:	100c      	movi.n	a0, 1
    1bc3:	0142f6        	bgeui	a2, 4, 1bc8 <wifi_get_opmode_default+0x40>
    1bc6:	000c      	movi.n	a0, 0
    1bc8:	220c      	movi.n	a2, 2
    1bca:	93c200        	movnez	a12, a2, a0
    1bcd:	011c26        	beqi	a12, 1, 1bd2 <wifi_get_opmode_default+0x4a>
    1bd0:	6ccc      	bnez.n	a12, 1bda <wifi_get_opmode_default+0x52>
    1bd2:	020c      	movi.n	a2, 0
    1bd4:	fff301        	l32r	a0, 1ba0 <wifi_get_opmode_default+0x18>
    1bd7:	0000c0        	callx0	a0
    1bda:	012c26        	beqi	a12, 2, 1bdf <wifi_get_opmode_default+0x57>
    1bdd:	4ccc      	bnez.n	a12, 1be5 <wifi_get_opmode_default+0x5d>
    1bdf:	fff101        	l32r	a0, 1ba4 <wifi_get_opmode_default+0x1c>
    1be2:	0000c0        	callx0	a0
    1be5:	0c2d      	mov.n	a2, a12
    1be7:	fff001        	l32r	a0, 1ba8 <wifi_get_opmode_default+0x20>
    1bea:	0000c0        	callx0	a0
    1bed:	021c26        	beqi	a12, 1, 1bf3 <wifi_get_opmode_default+0x6b>
    1bf0:	053c66        	bnei	a12, 3, 1bf9 <wifi_get_opmode_default+0x71>
    1bf3:	ffee01        	l32r	a0, 1bac <wifi_get_opmode_default+0x24>
    1bf6:	0000c0        	callx0	a0
    1bf9:	022c26        	beqi	a12, 2, 1bff <wifi_get_opmode_default+0x77>
    1bfc:	073c66        	bnei	a12, 3, 1c07 <wifi_get_opmode_default+0x7f>
    1bff:	020c      	movi.n	a2, 0
    1c01:	ffeb01        	l32r	a0, 1bb0 <wifi_get_opmode_default+0x28>
    1c04:	0000c0        	callx0	a0
    1c07:	0c1c66        	bnei	a12, 1, 1c17 <wifi_get_opmode_default+0x8f>
    1c0a:	ffe421        	l32r	a2, 1b9c <wifi_get_opmode_default+0x14>
    1c0d:	4228      	l32i.n	a2, a2, 16
    1c0f:	0228      	l32i.n	a2, a2, 0
    1c11:	ffe801        	l32r	a0, 1bb4 <wifi_get_opmode_default+0x2c>
    1c14:	0000c0        	callx0	a0
    1c17:	11c8      	l32i.n	a12, a1, 4
    1c19:	0108      	l32i.n	a0, a1, 0
    1c1b:	10c112        	addi	a1, a1, 16
    1c1e:	f00d      	ret.n
    1c20:	0000a4        	excw
	...

00001c2c <wifi_get_broadcast_if>:
    1c2c:	f0c112        	addi	a1, a1, -16
    1c2f:	0109      	s32i.n	a0, a1, 0
    1c31:	000005        	call0	1c34 <wifi_get_broadcast_if+0x8>
    1c34:	020d      	mov.n	a0, a2
    1c36:	1e3266        	bnei	a2, 3, 1c58 <wifi_get_broadcast_if+0x2c>
    1c39:	fff901        	l32r	a0, 1c20 <wifi_get_opmode_default+0x98>
    1c3c:	800002        	l8ui	a0, a0, 128
    1c3f:	50dc      	bnez.n	a0, 1c58 <wifi_get_broadcast_if+0x2c>
    1c41:	020c      	movi.n	a2, 0
    1c43:	fff901        	l32r	a0, 1c28 <wifi_get_opmode_default+0xa0>
    1c46:	0000c0        	callx0	a0
    1c49:	fff641        	l32r	a4, 1c24 <wifi_get_opmode_default+0x9c>
    1c4c:	130c      	movi.n	a3, 1
    1c4e:	0448      	l32i.n	a4, a4, 0
    1c50:	200c      	movi.n	a0, 2
    1c52:	c04420        	sub	a4, a4, a2
    1c55:	830340        	moveqz	a0, a3, a4
    1c58:	002d      	mov.n	a2, a0
    1c5a:	0108      	l32i.n	a0, a1, 0
    1c5c:	10c112        	addi	a1, a1, 16
    1c5f:	f00d      	ret.n
    1c61:	000000        	ill
    1c64:	0000a4        	excw
    1c67:	00a400        	excw
    1c6a:	000000        	ill
    1c6d:	000000        	ill
    1c70:	000220        	excw
	...

00001c84 <wifi_set_broadcast_if>:
    1c84:	f0c112        	addi	a1, a1, -16
    1c87:	0109      	s32i.n	a0, a1, 0
    1c89:	048216        	beqz	a2, 1cd5 <wifi_set_broadcast_if+0x51>
    1c8c:	4542f6        	bgeui	a2, 4, 1cd5 <wifi_set_broadcast_if+0x51>
    1c8f:	fff541        	l32r	a4, 1c64 <wifi_get_broadcast_if+0x38>
    1c92:	000c      	movi.n	a0, 0
    1c94:	804402        	s8i	a0, a4, 128
    1c97:	161226        	beqi	a2, 1, 1cb1 <wifi_set_broadcast_if+0x2d>
    1c9a:	452226        	beqi	a2, 2, 1ce3 <wifi_set_broadcast_if+0x5f>
    1c9d:	2b3266        	bnei	a2, 3, 1ccc <wifi_set_broadcast_if+0x48>
    1ca0:	000005        	call0	1ca4 <wifi_set_broadcast_if+0x20>
    1ca3:	373266        	bnei	a2, 3, 1cde <wifi_set_broadcast_if+0x5a>
    1ca6:	fff031        	l32r	a3, 1c68 <wifi_get_broadcast_if+0x3c>
    1ca9:	320c      	movi.n	a2, 3
    1cab:	804322        	s8i	a2, a3, 128
    1cae:	000686        	j	1ccc <wifi_set_broadcast_if+0x48>
    1cb1:	000005        	call0	1cb4 <wifi_set_broadcast_if+0x30>
    1cb4:	051226        	beqi	a2, 1, 1cbd <wifi_set_broadcast_if+0x39>
    1cb7:	000005        	call0	1cb8 <wifi_set_broadcast_if+0x34>
    1cba:	203266        	bnei	a2, 3, 1cde <wifi_set_broadcast_if+0x5a>
    1cbd:	ffeb01        	l32r	a0, 1c6c <wifi_get_broadcast_if+0x40>
    1cc0:	4008      	l32i.n	a0, a0, 16
    1cc2:	809c      	beqz.n	a0, 1cde <wifi_set_broadcast_if+0x5a>
    1cc4:	0028      	l32i.n	a2, a0, 0
    1cc6:	ffec01        	l32r	a0, 1c78 <wifi_get_broadcast_if+0x4c>
    1cc9:	0000c0        	callx0	a0
    1ccc:	120c      	movi.n	a2, 1
    1cce:	0108      	l32i.n	a0, a1, 0
    1cd0:	10c112        	addi	a1, a1, 16
    1cd3:	f00d      	ret.n
    1cd5:	ffe621        	l32r	a2, 1c70 <wifi_get_broadcast_if+0x44>
    1cd8:	ffe901        	l32r	a0, 1c7c <wifi_get_broadcast_if+0x50>
    1cdb:	0000c0        	callx0	a0
    1cde:	020c      	movi.n	a2, 0
    1ce0:	fffa86        	j	1cce <wifi_set_broadcast_if+0x4a>
    1ce3:	000005        	call0	1ce4 <wifi_set_broadcast_if+0x60>
    1ce6:	052226        	beqi	a2, 2, 1cef <wifi_set_broadcast_if+0x6b>
    1ce9:	000005        	call0	1cec <wifi_set_broadcast_if+0x68>
    1cec:	ee3266        	bnei	a2, 3, 1cde <wifi_set_broadcast_if+0x5a>
    1cef:	ffe101        	l32r	a0, 1c74 <wifi_get_broadcast_if+0x48>
    1cf2:	5008      	l32i.n	a0, a0, 20
    1cf4:	fe6016        	beqz	a0, 1cde <wifi_set_broadcast_if+0x5a>
    1cf7:	0028      	l32i.n	a2, a0, 0
    1cf9:	ffe101        	l32r	a0, 1c80 <wifi_get_broadcast_if+0x54>
    1cfc:	0000c0        	callx0	a0
    1cff:	fff246        	j	1ccc <wifi_set_broadcast_if+0x48>
	...
    1d0e:	540000        	extui	a0, a0, 0, 6
    1d11:	000000        	ill
    1d14:	000000        	ill
    1d17:	005400        	excw
	...
    1d26:	540000        	extui	a0, a0, 0, 6
	...
    1d3d:	000000        	ill
    1d40:	f0c112        	addi	a1, a1, -16
    1d43:	1109      	s32i.n	a0, a1, 4
    1d45:	31d9      	s32i.n	a13, a1, 12
    1d47:	21c9      	s32i.n	a12, a1, 8
    1d49:	03dd      	mov.n	a13, a3
    1d4b:	02cd      	mov.n	a12, a2
    1d4d:	0842f6        	bgeui	a2, 4, 1d59 <wifi_set_broadcast_if+0xd5>
    1d50:	ffed01        	l32r	a0, 1d04 <wifi_set_broadcast_if+0x80>
    1d53:	560002        	l8ui	a0, a0, 86
    1d56:	0a3016        	beqz	a0, 1dfd <wifi_set_broadcast_if+0x179>
    1d59:	020c      	movi.n	a2, 0
    1d5b:	0024c6        	j	1df2 <wifi_set_broadcast_if+0x16e>
    1d5e:	84a422        	movi	a2, 0x484
    1d61:	ffe931        	l32r	a3, 1d08 <wifi_set_broadcast_if+0x84>
    1d64:	c9a542        	movi	a4, 0x5c9
    1d67:	fff201        	l32r	a0, 1d30 <wifi_set_broadcast_if+0xac>
    1d6a:	0000c0        	callx0	a0
    1d6d:	ffe741        	l32r	a4, 1d0c <wifi_set_broadcast_if+0x88>
    1d70:	0448      	l32i.n	a4, a4, 0
    1d72:	0129      	s32i.n	a2, a1, 0
    1d74:	3438      	l32i.n	a3, a4, 12
    1d76:	1428      	l32i.n	a2, a4, 4
    1d78:	ffef01        	l32r	a0, 1d34 <wifi_set_broadcast_if+0xb0>
    1d7b:	0000c0        	callx0	a0
    1d7e:	030c      	movi.n	a3, 0
    1d80:	0148      	l32i.n	a4, a1, 0
    1d82:	84a452        	movi	a5, 0x484
    1d85:	fdc222        	addi	a2, a2, -3
    1d88:	f42020        	extui	a2, a2, 0, 16
    1d8b:	000005        	call0	1d8c <wifi_set_broadcast_if+0x108>
    1d8e:	ffe001        	l32r	a0, 1d10 <wifi_set_broadcast_if+0x8c>
    1d91:	0138      	l32i.n	a3, a1, 0
    1d93:	0158      	l32i.n	a5, a1, 0
    1d95:	080332        	l8ui	a3, a3, 8
    1d98:	ffdf41        	l32r	a4, 1d14 <wifi_set_broadcast_if+0x90>
    1d9b:	4013c7        	beq	a3, a12, 1ddf <wifi_set_broadcast_if+0x15b>
    1d9e:	0845c2        	s8i	a12, a5, 8
    1da1:	150c      	movi.n	a5, 1
    1da3:	000442        	l8ui	a4, a4, 0
    1da6:	d14052        	s8i	a5, a0, 209
    1da9:	071466        	bnei	a4, 1, 1db4 <wifi_set_broadcast_if+0x130>
    1dac:	0c2d      	mov.n	a2, a12
    1dae:	ffe085        	call0	1bb8 <wifi_get_opmode_default+0x30>
    1db1:	ffd901        	l32r	a0, 1d18 <wifi_set_broadcast_if+0x94>
    1db4:	060c      	movi.n	a6, 0
    1db6:	d14062        	s8i	a6, a0, 209
    1db9:	331d66        	bnei	a13, 1, 1df0 <wifi_set_broadcast_if+0x16c>
    1dbc:	ffd831        	l32r	a3, 1d1c <wifi_set_broadcast_if+0x98>
    1dbf:	0338      	l32i.n	a3, a3, 0
    1dc1:	1328      	l32i.n	a2, a3, 4
    1dc3:	3338      	l32i.n	a3, a3, 12
    1dc5:	ffdc01        	l32r	a0, 1d38 <wifi_set_broadcast_if+0xb4>
    1dc8:	0000c0        	callx0	a0
    1dcb:	0138      	l32i.n	a3, a1, 0
    1dcd:	84a442        	movi	a4, 0x484
    1dd0:	fdc222        	addi	a2, a2, -3
    1dd3:	f42020        	extui	a2, a2, 0, 16
    1dd6:	000005        	call0	1dd8 <wifi_set_broadcast_if+0x154>
    1dd9:	ffd131        	l32r	a3, 1d20 <wifi_set_broadcast_if+0x9c>
    1ddc:	0043c2        	s8i	a12, a3, 0
    1ddf:	0d1d66        	bnei	a13, 1, 1df0 <wifi_set_broadcast_if+0x16c>
    1de2:	0128      	l32i.n	a2, a1, 0
    1de4:	ffd031        	l32r	a3, 1d24 <wifi_set_broadcast_if+0xa0>
    1de7:	dda542        	movi	a4, 0x5dd
    1dea:	ffd401        	l32r	a0, 1d3c <wifi_set_broadcast_if+0xb8>
    1ded:	0000c0        	callx0	a0
    1df0:	120c      	movi.n	a2, 1
    1df2:	21c8      	l32i.n	a12, a1, 8
    1df4:	31d8      	l32i.n	a13, a1, 12
    1df6:	1108      	l32i.n	a0, a1, 4
    1df8:	10c112        	addi	a1, a1, 16
    1dfb:	f00d      	ret.n
    1dfd:	520c      	movi.n	a2, 5
    1dff:	fe9005        	call0	700 <system_get_os_print+0x48>
    1e02:	ffc901        	l32r	a0, 1d28 <wifi_set_broadcast_if+0xa4>
    1e05:	080266        	bnei	a2, -1, 1e11 <wifi_set_broadcast_if+0x18d>
    1e08:	2f40c2        	s8i	a12, a0, 47
    1e0b:	3040d2        	s8i	a13, a0, 48
    1e0e:	fff786        	j	1df0 <wifi_set_broadcast_if+0x16c>
    1e11:	f49d56        	bnez	a13, 1d5e <wifi_set_broadcast_if+0xda>
    1e14:	ffc641        	l32r	a4, 1d2c <wifi_set_broadcast_if+0xa8>
    1e17:	0149      	s32i.n	a4, a1, 0
    1e19:	ffdd06        	j	1d91 <wifi_set_broadcast_if+0x10d>

00001e1c <wifi_set_opmode>:
    1e1c:	130c      	movi.n	a3, 1
    1e1e:	f0c112        	addi	a1, a1, -16
    1e21:	0109      	s32i.n	a0, a1, 0
    1e23:	fff1c5        	call0	1d40 <wifi_set_broadcast_if+0xbc>
    1e26:	0108      	l32i.n	a0, a1, 0
    1e28:	10c112        	addi	a1, a1, 16
    1e2b:	f00d      	ret.n
    1e2d:	000000        	ill

00001e30 <wifi_set_opmode_current>:
    1e30:	030c      	movi.n	a3, 0
    1e32:	f0c112        	addi	a1, a1, -16
    1e35:	0109      	s32i.n	a0, a1, 0
    1e37:	fff085        	call0	1d40 <wifi_set_broadcast_if+0xbc>
    1e3a:	0108      	l32i.n	a0, a1, 0
    1e3c:	10c112        	addi	a1, a1, 16
    1e3f:	f00d      	ret.n
    1e41:	000000        	ill

00001e44 <system_get_checksum>:
    1e44:	f0c112        	addi	a1, a1, -16
    1e47:	0109      	s32i.n	a0, a1, 0
    1e49:	939c      	beqz.n	a3, 1e66 <system_get_checksum+0x22>
    1e4b:	efa002        	movi	a0, 239
    1e4e:	060c      	movi.n	a6, 0
    1e50:	561b      	addi.n	a5, a6, 1
    1e52:	426a      	add.n	a4, a2, a6
    1e54:	000442        	l8ui	a4, a4, 0
    1e57:	f46050        	extui	a6, a5, 0, 16
    1e5a:	300400        	xor	a0, a4, a0
    1e5d:	740000        	extui	a0, a0, 0, 8
    1e60:	ec9367        	bne	a3, a6, 1e50 <system_get_checksum+0xc>
    1e63:	000086        	j	1e69 <system_get_checksum+0x25>
    1e66:	efa002        	movi	a0, 239
    1e69:	002d      	mov.n	a2, a0
    1e6b:	0108      	l32i.n	a0, a1, 0
    1e6d:	10c112        	addi	a1, a1, 16
    1e70:	f00d      	ret.n
    1e72:	000000        	ill
    1e75:	000000        	ill
    1e78:	000240        	excw
	...

00001e9c <wifi_param_save_protect_with_check>:
    1e9c:	037d      	mov.n	a7, a3
    1e9e:	e0c112        	addi	a1, a1, -32
    1ea1:	51f9      	s32i.n	a15, a1, 20
    1ea3:	fff431        	l32r	a3, 1e74 <system_get_checksum+0x30>
    1ea6:	1109      	s32i.n	a0, a1, 4
    1ea8:	31d9      	s32i.n	a13, a1, 12
    1eaa:	21c9      	s32i.n	a12, a1, 8
    1eac:	41e9      	s32i.n	a14, a1, 16
    1eae:	05cd      	mov.n	a12, a5
    1eb0:	0179      	s32i.n	a7, a1, 0
    1eb2:	02ed      	mov.n	a14, a2
    1eb4:	04dd      	mov.n	a13, a4
    1eb6:	052d      	mov.n	a2, a5
    1eb8:	01a642        	movi	a4, 0x601
    1ebb:	71d9      	s32i.n	a13, a1, 28
    1ebd:	fff001        	l32r	a0, 1e80 <system_get_checksum+0x3c>
    1ec0:	0000c0        	callx0	a0
    1ec3:	02dd      	mov.n	a13, a2
    1ec5:	053216        	beqz	a2, 1f1c <wifi_param_save_protect_with_check+0x80>
    1ec8:	0128      	l32i.n	a2, a1, 0
    1eca:	71f8      	l32i.n	a15, a1, 28
    1ecc:	822e20        	mull	a2, a14, a2
    1ecf:	6129      	s32i.n	a2, a1, 24
    1ed1:	000286        	j	1edf <wifi_param_save_protect_with_check+0x43>
    1ed4:	ffe921        	l32r	a2, 1e78 <system_get_checksum+0x34>
    1ed7:	0e3d      	mov.n	a3, a14
    1ed9:	ffea01        	l32r	a0, 1e84 <system_get_checksum+0x40>
    1edc:	0000c0        	callx0	a0
    1edf:	0e2d      	mov.n	a2, a14
    1ee1:	ffe901        	l32r	a0, 1e88 <system_get_checksum+0x44>
    1ee4:	0000c0        	callx0	a0
    1ee7:	6128      	l32i.n	a2, a1, 24
    1ee9:	0f3d      	mov.n	a3, a15
    1eeb:	0c4d      	mov.n	a4, a12
    1eed:	ffe701        	l32r	a0, 1e8c <system_get_checksum+0x48>
    1ef0:	0000c0        	callx0	a0
    1ef3:	6128      	l32i.n	a2, a1, 24
    1ef5:	0d3d      	mov.n	a3, a13
    1ef7:	0c4d      	mov.n	a4, a12
    1ef9:	ffe501        	l32r	a0, 1e90 <system_get_checksum+0x4c>
    1efc:	0000c0        	callx0	a0
    1eff:	0d2d      	mov.n	a2, a13
    1f01:	0f3d      	mov.n	a3, a15
    1f03:	0c4d      	mov.n	a4, a12
    1f05:	ffe301        	l32r	a0, 1e94 <system_get_checksum+0x50>
    1f08:	0000c0        	callx0	a0
    1f0b:	fc5256        	bnez	a2, 1ed4 <wifi_param_save_protect_with_check+0x38>
    1f0e:	0d2d      	mov.n	a2, a13
    1f10:	ffdb31        	l32r	a3, 1e7c <system_get_checksum+0x38>
    1f13:	14a642        	movi	a4, 0x614
    1f16:	ffe001        	l32r	a0, 1e98 <system_get_checksum+0x54>
    1f19:	0000c0        	callx0	a0
    1f1c:	21c8      	l32i.n	a12, a1, 8
    1f1e:	31d8      	l32i.n	a13, a1, 12
    1f20:	41e8      	l32i.n	a14, a1, 16
    1f22:	51f8      	l32i.n	a15, a1, 20
    1f24:	1108      	l32i.n	a0, a1, 4
    1f26:	20c112        	addi	a1, a1, 32
    1f29:	f00d      	ret.n
	...
    1f33:	55aa00        	extui	a10, a0, 26, 6
    1f36:	55aa      	add.n	a5, a5, a10
	...

00001f40 <system_param_save_with_protect>:
    1f40:	d0c112        	addi	a1, a1, -48
    1f43:	8109      	s32i.n	a0, a1, 32
    1f45:	a1d9      	s32i.n	a13, a1, 40
    1f47:	b1e9      	s32i.n	a14, a1, 44
    1f49:	91c9      	s32i.n	a12, a1, 36
    1f4b:	02ed      	mov.n	a14, a2
    1f4d:	03cd      	mov.n	a12, a3
    1f4f:	04dd      	mov.n	a13, a4
    1f51:	08b316        	beqz	a3, 1fe0 <system_param_save_with_protect+0xa0>
    1f54:	fff601        	l32r	a0, 1f2c <wifi_param_save_protect_with_check+0x90>
    1f57:	0008      	l32i.n	a0, a0, 0
    1f59:	3008      	l32i.n	a0, a0, 12
    1f5b:	02b047        	bgeu	a0, a4, 1f61 <system_param_save_with_protect+0x21>
    1f5e:	001f86        	j	1fe0 <system_param_save_with_protect+0xa0>
    1f61:	013d      	mov.n	a3, a1
    1f63:	222b      	addi.n	a2, a2, 2
    1f65:	c41c      	movi.n	a4, 28
    1f67:	7129      	s32i.n	a2, a1, 28
    1f69:	822020        	mull	a2, a0, a2
    1f6c:	fff401        	l32r	a0, 1f3c <wifi_param_save_protect_with_check+0xa0>
    1f6f:	0000c0        	callx0	a0
    1f72:	000152        	l8ui	a5, a1, 0
    1f75:	140c      	movi.n	a4, 1
    1f77:	ffee31        	l32r	a3, 1f30 <wifi_param_save_protect_with_check+0x94>
    1f7a:	020c      	movi.n	a2, 0
    1f7c:	0338      	l32i.n	a3, a3, 0
    1f7e:	832450        	moveqz	a2, a4, a5
    1f81:	3338      	l32i.n	a3, a3, 12
    1f83:	0c4d      	mov.n	a4, a12
    1f85:	004122        	s8i	a2, a1, 0
    1f88:	0d5d      	mov.n	a5, a13
    1f8a:	2e2a      	add.n	a2, a14, a2
    1f8c:	71d8      	l32i.n	a13, a1, 28
    1f8e:	000005        	call0	1f90 <system_param_save_with_protect+0x50>
    1f91:	c41c      	movi.n	a4, 28
    1f93:	160c      	movi.n	a6, 1
    1f95:	2178      	l32i.n	a7, a1, 8
    1f97:	000152        	l8ui	a5, a1, 0
    1f9a:	ffe681        	l32r	a8, 1f34 <wifi_param_save_protect_with_check+0x98>
    1f9d:	1189      	s32i.n	a8, a1, 4
    1f9f:	a05510        	addx4	a5, a5, a1
    1fa2:	771b      	addi.n	a7, a7, 1
    1fa4:	936770        	movnez	a6, a7, a7
    1fa7:	2169      	s32i.n	a6, a1, 8
    1fa9:	3549      	s32i.n	a4, a5, 12
    1fab:	000132        	l8ui	a3, a1, 0
    1fae:	0c2d      	mov.n	a2, a12
    1fb0:	a03310        	addx4	a3, a3, a1
    1fb3:	061332        	l16ui	a3, a3, 12
    1fb6:	000005        	call0	1fb8 <system_param_save_with_protect+0x78>
    1fb9:	c51c      	movi.n	a5, 28
    1fbb:	000142        	l8ui	a4, a1, 0
    1fbe:	ffde31        	l32r	a3, 1f38 <wifi_param_save_protect_with_check+0x9c>
    1fc1:	a04410        	addx4	a4, a4, a1
    1fc4:	0338      	l32i.n	a3, a3, 0
    1fc6:	5429      	s32i.n	a2, a4, 20
    1fc8:	0d2d      	mov.n	a2, a13
    1fca:	3338      	l32i.n	a3, a3, 12
    1fcc:	014d      	mov.n	a4, a1
    1fce:	000005        	call0	1fd0 <system_param_save_with_protect+0x90>
    1fd1:	120c      	movi.n	a2, 1
    1fd3:	91c8      	l32i.n	a12, a1, 36
    1fd5:	a1d8      	l32i.n	a13, a1, 40
    1fd7:	b1e8      	l32i.n	a14, a1, 44
    1fd9:	8108      	l32i.n	a0, a1, 32
    1fdb:	30c112        	addi	a1, a1, 48
    1fde:	f00d      	ret.n
    1fe0:	020c      	movi.n	a2, 0
    1fe2:	fffb46        	j	1fd3 <system_param_save_with_protect+0x93>
	...

00001ff4 <system_save_sys_param>:
    1ff4:	fffd31        	l32r	a3, 1fe8 <system_param_save_with_protect+0xa8>
    1ff7:	f0c112        	addi	a1, a1, -16
    1ffa:	0338      	l32i.n	a3, a3, 0
    1ffc:	0109      	s32i.n	a0, a1, 0
    1ffe:	1328      	l32i.n	a2, a3, 4
    2000:	3338      	l32i.n	a3, a3, 12
    2002:	fffb01        	l32r	a0, 1ff0 <system_param_save_with_protect+0xb0>
    2005:	0000c0        	callx0	a0
    2008:	fff931        	l32r	a3, 1fec <system_param_save_with_protect+0xac>
    200b:	84a442        	movi	a4, 0x484
    200e:	fdc222        	addi	a2, a2, -3
    2011:	f42020        	extui	a2, a2, 0, 16
    2014:	000005        	call0	2018 <system_save_sys_param+0x24>
    2017:	0108      	l32i.n	a0, a1, 0
    2019:	10c112        	addi	a1, a1, 16
    201c:	f00d      	ret.n
	...

00002030 <system_param_load>:
    2030:	d0c112        	addi	a1, a1, -48
    2033:	8109      	s32i.n	a0, a1, 32
    2035:	a1d9      	s32i.n	a13, a1, 40
    2037:	91c9      	s32i.n	a12, a1, 36
    2039:	b1e9      	s32i.n	a14, a1, 44
    203b:	04cd      	mov.n	a12, a4
    203d:	03ed      	mov.n	a14, a3
    203f:	05dd      	mov.n	a13, a5
    2041:	c48c      	beqz.n	a4, 2051 <system_param_load+0x21>
    2043:	fff701        	l32r	a0, 2020 <system_save_sys_param+0x2c>
    2046:	0008      	l32i.n	a0, a0, 0
    2048:	7129      	s32i.n	a2, a1, 28
    204a:	3008      	l32i.n	a0, a0, 12
    204c:	335a      	add.n	a3, a3, a5
    204e:	04b037        	bgeu	a0, a3, 2056 <system_param_load+0x26>
    2051:	020c      	movi.n	a2, 0
    2053:	000d46        	j	208c <system_param_load+0x5c>
    2056:	013d      	mov.n	a3, a1
    2058:	c41c      	movi.n	a4, 28
    205a:	222b      	addi.n	a2, a2, 2
    205c:	822020        	mull	a2, a0, a2
    205f:	fff201        	l32r	a0, 2028 <system_save_sys_param+0x34>
    2062:	0000c0        	callx0	a0
    2065:	7138      	l32i.n	a3, a1, 28
    2067:	150c      	movi.n	a5, 1
    2069:	ffee21        	l32r	a2, 2024 <system_save_sys_param+0x30>
    206c:	000142        	l8ui	a4, a1, 0
    206f:	0228      	l32i.n	a2, a2, 0
    2071:	934540        	movnez	a4, a5, a4
    2074:	004142        	s8i	a4, a1, 0
    2077:	334a      	add.n	a3, a3, a4
    2079:	3228      	l32i.n	a2, a2, 12
    207b:	0d4d      	mov.n	a4, a13
    207d:	822230        	mull	a2, a2, a3
    2080:	0c3d      	mov.n	a3, a12
    2082:	2e2a      	add.n	a2, a14, a2
    2084:	ffea01        	l32r	a0, 202c <system_save_sys_param+0x38>
    2087:	0000c0        	callx0	a0
    208a:	120c      	movi.n	a2, 1
    208c:	91c8      	l32i.n	a12, a1, 36
    208e:	a1d8      	l32i.n	a13, a1, 40
    2090:	b1e8      	l32i.n	a14, a1, 44
    2092:	8108      	l32i.n	a0, a1, 32
    2094:	30c112        	addi	a1, a1, 48
    2097:	f00d      	ret.n
	...
    20c9:	000000        	ill
    20cc:	e0c112        	addi	a1, a1, -32
    20cf:	11c9      	s32i.n	a12, a1, 4
    20d1:	41f9      	s32i.n	a15, a1, 16
    20d3:	0109      	s32i.n	a0, a1, 0
    20d5:	31e9      	s32i.n	a14, a1, 12
    20d7:	21d9      	s32i.n	a13, a1, 8
    20d9:	03ed      	mov.n	a14, a3
    20db:	02dd      	mov.n	a13, a2
    20dd:	32cc      	bnez.n	a2, 20e4 <system_param_load+0xb4>
    20df:	020c      	movi.n	a2, 0
    20e1:	0028c6        	j	2188 <system_param_load+0x158>
    20e4:	ffee31        	l32r	a3, 209c <system_param_load+0x6c>
    20e7:	051e66        	bnei	a14, 1, 20f0 <system_param_load+0xc0>
    20ea:	ffedc1        	l32r	a12, 20a0 <system_param_load+0x70>
    20ed:	000b06        	j	211d <system_param_load+0xed>
    20f0:	84a422        	movi	a2, 0x484
    20f3:	6ba642        	movi	a4, 0x66b
    20f6:	ffed01        	l32r	a0, 20ac <system_param_load+0x7c>
    20f9:	0000c0        	callx0	a0
    20fc:	ffea31        	l32r	a3, 20a4 <system_param_load+0x74>
    20ff:	0338      	l32i.n	a3, a3, 0
    2101:	02cd      	mov.n	a12, a2
    2103:	1328      	l32i.n	a2, a3, 4
    2105:	3338      	l32i.n	a3, a3, 12
    2107:	ffea01        	l32r	a0, 20b0 <system_param_load+0x80>
    210a:	0000c0        	callx0	a0
    210d:	030c      	movi.n	a3, 0
    210f:	0c4d      	mov.n	a4, a12
    2111:	84a452        	movi	a5, 0x484
    2114:	fdc222        	addi	a2, a2, -3
    2117:	f42020        	extui	a2, a2, 0, 16
    211a:	000005        	call0	211c <system_param_load+0xec>
    211d:	3c38      	l32i.n	a3, a12, 12
    211f:	37ccf2        	addi	a15, a12, 55
    2122:	130366        	bnei	a3, -1, 2139 <system_param_load+0x109>
    2125:	2ccb      	addi.n	a2, a12, 12
    2127:	432c      	movi.n	a3, 36
    2129:	ffe201        	l32r	a0, 20b4 <system_param_load+0x84>
    212c:	0000c0        	callx0	a0
    212f:	0f2d      	mov.n	a2, a15
    2131:	034c      	movi.n	a3, 64
    2133:	ffe101        	l32r	a0, 20b8 <system_param_load+0x88>
    2136:	0000c0        	callx0	a0
    2139:	a90c42        	l8ui	a4, a12, 169
    213c:	050c      	movi.n	a5, 0
    213e:	0224b6        	bltui	a4, 2, 2144 <system_param_load+0x114>
    2141:	a94c52        	s8i	a5, a12, 169
    2144:	0d2d      	mov.n	a2, a13
    2146:	10cc32        	addi	a3, a12, 16
    2149:	042c      	movi.n	a4, 32
    214b:	ffdc01        	l32r	a0, 20bc <system_param_load+0x8c>
    214e:	0000c0        	callx0	a0
    2151:	0f3d      	mov.n	a3, a15
    2153:	20cd22        	addi	a2, a13, 32
    2156:	044c      	movi.n	a4, 64
    2158:	ffda01        	l32r	a0, 20c0 <system_param_load+0x90>
    215b:	0000c0        	callx0	a0
    215e:	61cd22        	addi	a2, a13, 97
    2161:	640c      	movi.n	a4, 6
    2163:	01dc32        	addmi	a3, a12, 0x100
    2166:	a90c62        	l8ui	a6, a12, 169
    2169:	604d62        	s8i	a6, a13, 96
    216c:	aac332        	addi	a3, a3, -86
    216f:	ffd501        	l32r	a0, 20c4 <system_param_load+0x94>
    2172:	0000c0        	callx0	a0
    2175:	0d1e26        	beqi	a14, 1, 2186 <system_param_load+0x156>
    2178:	0c2d      	mov.n	a2, a12
    217a:	ffcb31        	l32r	a3, 20a8 <system_param_load+0x78>
    217d:	80a642        	movi	a4, 0x680
    2180:	ffd201        	l32r	a0, 20c8 <system_param_load+0x98>
    2183:	0000c0        	callx0	a0
    2186:	120c      	movi.n	a2, 1
    2188:	11c8      	l32i.n	a12, a1, 4
    218a:	21d8      	l32i.n	a13, a1, 8
    218c:	31e8      	l32i.n	a14, a1, 12
    218e:	41f8      	l32i.n	a15, a1, 16
    2190:	0108      	l32i.n	a0, a1, 0
    2192:	20c112        	addi	a1, a1, 32
    2195:	f00d      	ret.n
	...

00002198 <wifi_station_get_config>:
    2198:	130c      	movi.n	a3, 1
    219a:	f0c112        	addi	a1, a1, -16
    219d:	0109      	s32i.n	a0, a1, 0
    219f:	fff2c5        	call0	20cc <system_param_load+0x9c>
    21a2:	0108      	l32i.n	a0, a1, 0
    21a4:	10c112        	addi	a1, a1, 16
    21a7:	f00d      	ret.n
    21a9:	000000        	ill

000021ac <wifi_station_get_config_default>:
    21ac:	030c      	movi.n	a3, 0
    21ae:	f0c112        	addi	a1, a1, -16
    21b1:	0109      	s32i.n	a0, a1, 0
    21b3:	fff185        	call0	20cc <system_param_load+0x9c>
    21b6:	0108      	l32i.n	a0, a1, 0
    21b8:	10c112        	addi	a1, a1, 16
    21bb:	f00d      	ret.n
	...

000021e0 <wifi_station_get_ap_info>:
    21e0:	fff871        	l32r	a7, 21c0 <wifi_station_get_config_default+0x14>
    21e3:	e0c112        	addi	a1, a1, -32
    21e6:	31d9      	s32i.n	a13, a1, 12
    21e8:	51f9      	s32i.n	a15, a1, 20
    21ea:	41e9      	s32i.n	a14, a1, 16
    21ec:	21c9      	s32i.n	a12, a1, 8
    21ee:	6179      	s32i.n	a7, a1, 24
    21f0:	800772        	l8ui	a7, a7, 128
    21f3:	1109      	s32i.n	a0, a1, 4
    21f5:	08b716        	beqz	a7, 2284 <wifi_station_get_ap_info+0xa4>
    21f8:	ffa052        	movi	a5, 255
    21fb:	0c0c      	movi.n	a12, 0
    21fd:	0e0c      	movi.n	a14, 0
    21ff:	0129      	s32i.n	a2, a1, 0
    2201:	6108      	l32i.n	a0, a1, 24
    2203:	64a082        	movi	a8, 100
    2206:	008b      	addi.n	a0, a0, 8
    2208:	d18c80        	mul16s	a8, a12, a8
    220b:	980a      	add.n	a9, a8, a0
    220d:	800992        	l8ui	a9, a9, 128
    2210:	621957        	beq	a9, a5, 2276 <wifi_station_get_ap_info+0x96>
    2213:	042c      	movi.n	a4, 32
    2215:	0108      	l32i.n	a0, a1, 0
    2217:	ffebf1        	l32r	a15, 21c4 <wifi_station_get_config_default+0x18>
    221a:	67a0d2        	movi	a13, 103
    221d:	d1ded0        	mul16s	a13, a14, a13
    2220:	f8fa      	add.n	a15, a8, a15
    2222:	dd0a      	add.n	a13, a13, a0
    2224:	0d2d      	mov.n	a2, a13
    2226:	03df32        	addmi	a3, a15, 0x300
    2229:	3cc332        	addi	a3, a3, 60
    222c:	ffea01        	l32r	a0, 21d4 <wifi_station_get_config_default+0x28>
    222f:	0000c0        	callx0	a0
    2232:	20cd22        	addi	a2, a13, 32
    2235:	044c      	movi.n	a4, 64
    2237:	03df32        	addmi	a3, a15, 0x300
    223a:	5cc332        	addi	a3, a3, 92
    223d:	ffe601        	l32r	a0, 21d8 <wifi_station_get_config_default+0x2c>
    2240:	0000c0        	callx0	a0
    2243:	61cd22        	addi	a2, a13, 97
    2246:	f0fcc0        	subx8	a15, a12, a12
    2249:	ffdf31        	l32r	a3, 21c8 <wifi_station_get_config_default+0x1c>
    224c:	41a542        	movi	a4, 0x541
    224f:	334a      	add.n	a3, a3, a4
    2251:	3f3a      	add.n	a3, a15, a3
    2253:	640c      	movi.n	a4, 6
    2255:	ffe101        	l32r	a0, 21dc <wifi_station_get_config_default+0x30>
    2258:	0000c0        	callx0	a0
    225b:	ffdc01        	l32r	a0, 21cc <wifi_station_get_config_default+0x20>
    225e:	ffa052        	movi	a5, 255
    2261:	ffdb61        	l32r	a6, 21d0 <wifi_station_get_config_default+0x24>
    2264:	6178      	l32i.n	a7, a1, 24
    2266:	ee1b      	addi.n	a14, a14, 1
    2268:	74e0e0        	extui	a14, a14, 0, 8
    226b:	800772        	l8ui	a7, a7, 128
    226e:	8f6a      	add.n	a8, a15, a6
    2270:	800882        	l8ui	a8, a8, 128
    2273:	604d82        	s8i	a8, a13, 96
    2276:	64a082        	movi	a8, 100
    2279:	cc1b      	addi.n	a12, a12, 1
    227b:	74c0c0        	extui	a12, a12, 0, 8
    227e:	863c77        	bltu	a12, a7, 2208 <wifi_station_get_ap_info+0x28>
    2281:	000046        	j	2286 <wifi_station_get_ap_info+0xa6>
    2284:	0e0c      	movi.n	a14, 0
    2286:	1108      	l32i.n	a0, a1, 4
    2288:	21c8      	l32i.n	a12, a1, 8
    228a:	31d8      	l32i.n	a13, a1, 12
    228c:	0e2d      	mov.n	a2, a14
    228e:	51f8      	l32i.n	a15, a1, 20
    2290:	41e8      	l32i.n	a14, a1, 16
    2292:	20c112        	addi	a1, a1, 32
    2295:	f00d      	ret.n
	...

000022a8 <wifi_station_ap_number_set>:
    22a8:	f0c112        	addi	a1, a1, -16
    22ab:	11c9      	s32i.n	a12, a1, 4
    22ad:	0109      	s32i.n	a0, a1, 0
    22af:	02cd      	mov.n	a12, a2
    22b1:	000005        	call0	22b4 <wifi_station_ap_number_set+0xc>
    22b4:	3b6cf6        	bgeui	a12, 6, 22f3 <wifi_station_ap_number_set+0x4b>
    22b7:	8cbc      	beqz.n	a12, 22f3 <wifi_station_ap_number_set+0x4b>
    22b9:	362226        	beqi	a2, 2, 22f3 <wifi_station_ap_number_set+0x4b>
    22bc:	32bc      	beqz.n	a2, 22f3 <wifi_station_ap_number_set+0x4b>
    22be:	fff601        	l32r	a0, 2298 <wifi_station_get_ap_info+0xb8>
    22c1:	800022        	l8ui	a2, a0, 128
    22c4:	2012c7        	beq	a2, a12, 22e8 <wifi_station_ap_number_set+0x40>
    22c7:	fff531        	l32r	a3, 229c <wifi_station_get_ap_info+0xbc>
    22ca:	0338      	l32i.n	a3, a3, 0
    22cc:	8040c2        	s8i	a12, a0, 128
    22cf:	1328      	l32i.n	a2, a3, 4
    22d1:	3338      	l32i.n	a3, a3, 12
    22d3:	fff401        	l32r	a0, 22a4 <wifi_station_get_ap_info+0xc4>
    22d6:	0000c0        	callx0	a0
    22d9:	fff131        	l32r	a3, 22a0 <wifi_station_get_ap_info+0xc0>
    22dc:	84a442        	movi	a4, 0x484
    22df:	fdc222        	addi	a2, a2, -3
    22e2:	f42020        	extui	a2, a2, 0, 16
    22e5:	000005        	call0	22e8 <wifi_station_ap_number_set+0x40>
    22e8:	120c      	movi.n	a2, 1
    22ea:	11c8      	l32i.n	a12, a1, 4
    22ec:	0108      	l32i.n	a0, a1, 0
    22ee:	10c112        	addi	a1, a1, 16
    22f1:	f00d      	ret.n
    22f3:	020c      	movi.n	a2, 0
    22f5:	fffc46        	j	22ea <wifi_station_ap_number_set+0x42>
    22f8:	010000        	slli	a0, a0, 32
    22fb:	0e0000        	excw
    22fe:	006000        	rsil	a0, 0
	...
    2321:	000000        	ill
    2324:	e0c112        	addi	a1, a1, -32
    2327:	51e9      	s32i.n	a14, a1, 20
    2329:	0159      	s32i.n	a5, a1, 0
    232b:	61f9      	s32i.n	a15, a1, 24
    232d:	2109      	s32i.n	a0, a1, 8
    232f:	41d9      	s32i.n	a13, a1, 16
    2331:	31c9      	s32i.n	a12, a1, 12
    2333:	03dd      	mov.n	a13, a3
    2335:	02cd      	mov.n	a12, a2
    2337:	01d202        	addmi	a0, a2, 0x100
    233a:	04fd      	mov.n	a15, a4
    233c:	032d      	mov.n	a2, a3
    233e:	3d40f2        	s8i	a15, a0, 61
    2341:	fff001        	l32r	a0, 2304 <wifi_station_ap_number_set+0x5c>
    2344:	0000c0        	callx0	a0
    2347:	002c      	movi.n	a0, 32
    2349:	64a0e2        	movi	a14, 100
    234c:	d1eef0        	mul16s	a14, a14, a15
    234f:	ecea      	add.n	a14, a12, a14
    2351:	013027        	bltu	a0, a2, 2356 <wifi_station_ap_number_set+0xae>
    2354:	020d      	mov.n	a0, a2
    2356:	0d3d      	mov.n	a3, a13
    2358:	042c      	movi.n	a4, 32
    235a:	506e02        	s32i	a0, a14, 0x140
    235d:	01de22        	addmi	a2, a14, 0x100
    2360:	44c222        	addi	a2, a2, 68
    2363:	ffe901        	l32r	a0, 2308 <wifi_station_ap_number_set+0x60>
    2366:	0000c0        	callx0	a0
    2369:	044c      	movi.n	a4, 64
    236b:	20cd32        	addi	a3, a13, 32
    236e:	01de22        	addmi	a2, a14, 0x100
    2371:	64c222        	addi	a2, a2, 100
    2374:	1139      	s32i.n	a3, a1, 4
    2376:	ffe501        	l32r	a0, 230c <wifi_station_ap_number_set+0x64>
    2379:	0000c0        	callx0	a0
    237c:	10cc22        	addi	a2, a12, 16
    237f:	0d3d      	mov.n	a3, a13
    2381:	042c      	movi.n	a4, 32
    2383:	502e02        	l32i	a0, a14, 0x140
    2386:	3c09      	s32i.n	a0, a12, 12
    2388:	ffe201        	l32r	a0, 2310 <wifi_station_ap_number_set+0x68>
    238b:	0000c0        	callx0	a0
    238e:	1138      	l32i.n	a3, a1, 4
    2390:	37cc22        	addi	a2, a12, 55
    2393:	044c      	movi.n	a4, 64
    2395:	ffdf01        	l32r	a0, 2314 <wifi_station_ap_number_set+0x6c>
    2398:	0000c0        	callx0	a0
    239b:	020c      	movi.n	a2, 0
    239d:	130c      	movi.n	a3, 1
    239f:	364c32        	s8i	a3, a12, 54
    23a2:	774c22        	s8i	a2, a12, 119
    23a5:	ffd401        	l32r	a0, 22f8 <wifi_station_ap_number_set+0x50>
    23a8:	ffd541        	l32r	a4, 22fc <wifi_station_ap_number_set+0x54>
    23ab:	0020c0        	memw
    23ae:	f0eff0        	subx8	a14, a15, a15
    23b1:	fd6402        	s32i	a0, a4, 0x3f4
    23b4:	600d42        	l8ui	a4, a13, 96
    23b7:	ecea      	add.n	a14, a12, a14
    23b9:	03de02        	addmi	a0, a14, 0x300
    23bc:	ccc002        	addi	a0, a0, -52
    23bf:	2b1466        	bnei	a4, 1, 23ee <wifi_station_ap_number_set+0x146>
    23c2:	640c      	movi.n	a4, 6
    23c4:	61cdd2        	addi	a13, a13, 97
    23c7:	01dc22        	addmi	a2, a12, 0x100
    23ca:	a94c32        	s8i	a3, a12, 169
    23cd:	7c4032        	s8i	a3, a0, 124
    23d0:	aac222        	addi	a2, a2, -86
    23d3:	0d3d      	mov.n	a3, a13
    23d5:	ffd001        	l32r	a0, 2318 <wifi_station_ap_number_set+0x70>
    23d8:	0000c0        	callx0	a0
    23db:	0d3d      	mov.n	a3, a13
    23dd:	640c      	movi.n	a4, 6
    23df:	03de22        	addmi	a2, a14, 0x300
    23e2:	49c222        	addi	a2, a2, 73
    23e5:	ffcd01        	l32r	a0, 231c <wifi_station_ap_number_set+0x74>
    23e8:	0000c0        	callx0	a0
    23eb:	000146        	j	23f4 <wifi_station_ap_number_set+0x14c>
    23ee:	a94c22        	s8i	a2, a12, 169
    23f1:	7c4022        	s8i	a2, a0, 124
    23f4:	41d8      	l32i.n	a13, a1, 16
    23f6:	51e8      	l32i.n	a14, a1, 20
    23f8:	0158      	l32i.n	a5, a1, 0
    23fa:	61f8      	l32i.n	a15, a1, 24
    23fc:	1c1566        	bnei	a5, 1, 241c <wifi_station_ap_number_set+0x174>
    23ff:	ffc031        	l32r	a3, 2300 <wifi_station_ap_number_set+0x58>
    2402:	0338      	l32i.n	a3, a3, 0
    2404:	1328      	l32i.n	a2, a3, 4
    2406:	3338      	l32i.n	a3, a3, 12
    2408:	ffc601        	l32r	a0, 2320 <wifi_station_ap_number_set+0x78>
    240b:	0000c0        	callx0	a0
    240e:	0c3d      	mov.n	a3, a12
    2410:	84a442        	movi	a4, 0x484
    2413:	fdc222        	addi	a2, a2, -3
    2416:	f42020        	extui	a2, a2, 0, 16
    2419:	000005        	call0	241c <wifi_station_ap_number_set+0x174>
    241c:	31c8      	l32i.n	a12, a1, 12
    241e:	2108      	l32i.n	a0, a1, 8
    2420:	20c112        	addi	a1, a1, 32
    2423:	f00d      	ret.n
	...
    2439:	000000        	ill
    243c:	fffb21        	l32r	a2, 2428 <wifi_station_ap_number_set+0x180>
    243f:	ffa032        	movi	a3, 255
    2442:	a4a042        	movi	a4, 164
    2445:	f0c112        	addi	a1, a1, -16
    2448:	0109      	s32i.n	a0, a1, 0
    244a:	fffa01        	l32r	a0, 2434 <wifi_station_ap_number_set+0x18c>
    244d:	0000c0        	callx0	a0
    2450:	fff731        	l32r	a3, 242c <wifi_station_ap_number_set+0x184>
    2453:	0338      	l32i.n	a3, a3, 0
    2455:	1328      	l32i.n	a2, a3, 4
    2457:	3338      	l32i.n	a3, a3, 12
    2459:	fff701        	l32r	a0, 2438 <wifi_station_ap_number_set+0x190>
    245c:	0000c0        	callx0	a0
    245f:	fff431        	l32r	a3, 2430 <wifi_station_ap_number_set+0x188>
    2462:	84a442        	movi	a4, 0x484
    2465:	fdc222        	addi	a2, a2, -3
    2468:	f42020        	extui	a2, a2, 0, 16
    246b:	000005        	call0	246c <wifi_station_ap_number_set+0x1c4>
    246e:	0108      	l32i.n	a0, a1, 0
    2470:	10c112        	addi	a1, a1, 16
    2473:	f00d      	ret.n
    2475:	000000        	ill
    2478:	000240        	excw
	...
    2487:	c11200        	mul16u	a1, a2, a0
    248a:	2149d0        	srai	a4, a13, 9
    248d:	41c9      	s32i.n	a12, a1, 16
    248f:	61e9      	s32i.n	a14, a1, 24
    2491:	71f9      	s32i.n	a15, a1, 28
    2493:	51d9      	s32i.n	a13, a1, 20
    2495:	03fd      	mov.n	a15, a3
    2497:	3109      	s32i.n	a0, a1, 12
    2499:	01d232        	addmi	a3, a2, 0x100
    249c:	c0c302        	addi	a0, a3, -64
    249f:	3c0332        	l8ui	a3, a3, 60
    24a2:	02dd      	mov.n	a13, a2
    24a4:	03ed      	mov.n	a14, a3
    24a6:	092316        	beqz	a3, 253c <wifi_station_ap_number_set+0x294>
    24a9:	0c0c      	movi.n	a12, 0
    24ab:	0109      	s32i.n	a0, a1, 0
    24ad:	61cf82        	addi	a8, a15, 97
    24b0:	20cf92        	addi	a9, a15, 32
    24b3:	8199      	s32i.n	a9, a1, 32
    24b5:	1189      	s32i.n	a8, a1, 4
    24b7:	0f3d      	mov.n	a3, a15
    24b9:	64a022        	movi	a2, 100
    24bc:	042c      	movi.n	a4, 32
    24be:	d12c20        	mul16s	a2, a12, a2
    24c1:	2d2a      	add.n	a2, a13, a2
    24c3:	9129      	s32i.n	a2, a1, 36
    24c5:	01d222        	addmi	a2, a2, 0x100
    24c8:	44c222        	addi	a2, a2, 68
    24cb:	ffec01        	l32r	a0, 247c <wifi_station_ap_number_set+0x1d4>
    24ce:	0000c0        	callx0	a0
    24d1:	05c256        	bnez	a2, 2531 <wifi_station_ap_number_set+0x289>
    24d4:	8138      	l32i.n	a3, a1, 32
    24d6:	9128      	l32i.n	a2, a1, 36
    24d8:	044c      	movi.n	a4, 64
    24da:	01d222        	addmi	a2, a2, 0x100
    24dd:	64c222        	addi	a2, a2, 100
    24e0:	ffe801        	l32r	a0, 2480 <wifi_station_ap_number_set+0x1d8>
    24e3:	0000c0        	callx0	a0
    24e6:	047256        	bnez	a2, 2531 <wifi_station_ap_number_set+0x289>
    24e9:	600f42        	l8ui	a4, a15, 96
    24ec:	100c      	movi.n	a0, 1
    24ee:	1e1466        	bnei	a4, 1, 2510 <wifi_station_ap_number_set+0x268>
    24f1:	1138      	l32i.n	a3, a1, 4
    24f3:	640c      	movi.n	a4, 6
    24f5:	f02cc0        	subx8	a2, a12, a12
    24f8:	2d2a      	add.n	a2, a13, a2
    24fa:	03d222        	addmi	a2, a2, 0x300
    24fd:	49c222        	addi	a2, a2, 73
    2500:	ffe101        	l32r	a0, 2484 <wifi_station_ap_number_set+0x1dc>
    2503:	0000c0        	callx0	a0
    2506:	130c      	movi.n	a3, 1
    2508:	000c      	movi.n	a0, 0
    250a:	830320        	moveqz	a0, a3, a2
    250d:	ffffc6        	j	2510 <wifi_station_ap_number_set+0x268>
    2510:	d09c      	beqz.n	a0, 2531 <wifi_station_ap_number_set+0x289>
    2512:	0148      	l32i.n	a4, a1, 0
    2514:	f05cc0        	subx8	a5, a12, a12
    2517:	7d0442        	l8ui	a4, a4, 125
    251a:	5d5a      	add.n	a5, a13, a5
    251c:	1194c7        	bne	a4, a12, 2531 <wifi_station_ap_number_set+0x289>
    251f:	03d552        	addmi	a5, a5, 0x300
    2522:	c8c552        	addi	a5, a5, -56
    2525:	800552        	l8ui	a5, a5, 128
    2528:	511566        	bnei	a5, 1, 257d <wifi_station_ap_number_set+0x2d5>
    252b:	600f62        	l8ui	a6, a15, 96
    252e:	4b1626        	beqi	a6, 1, 257d <wifi_station_ap_number_set+0x2d5>
    2531:	cc1b      	addi.n	a12, a12, 1
    2533:	74c0c0        	extui	a12, a12, 0, 8
    2536:	021ec7        	beq	a14, a12, 253c <wifi_station_ap_number_set+0x294>
    2539:	ffde86        	j	24b7 <wifi_station_ap_number_set+0x20f>
    253c:	ee9c      	beqz.n	a14, 255e <wifi_station_ap_number_set+0x2b6>
    253e:	ffa002        	movi	a0, 255
    2541:	c4a022        	movi	a2, 196
    2544:	0c0c      	movi.n	a12, 0
    2546:	64a032        	movi	a3, 100
    2549:	d13c30        	mul16s	a3, a12, a3
    254c:	3d3a      	add.n	a3, a13, a3
    254e:	332a      	add.n	a3, a3, a2
    2550:	800332        	l8ui	a3, a3, 128
    2553:	351307        	beq	a3, a0, 258c <wifi_station_ap_number_set+0x2e4>
    2556:	cc1b      	addi.n	a12, a12, 1
    2558:	74c0c0        	extui	a12, a12, 0, 8
    255b:	e79ec7        	bne	a14, a12, 2546 <wifi_station_ap_number_set+0x29e>
    255e:	ffc6c1        	l32r	a12, 2478 <wifi_station_ap_number_set+0x1d0>
    2561:	000c42        	l8ui	a4, a12, 0
    2564:	049e47        	bne	a14, a4, 256c <wifi_station_ap_number_set+0x2c4>
    2567:	040c      	movi.n	a4, 0
    2569:	004c42        	s8i	a4, a12, 0
    256c:	0f3d      	mov.n	a3, a15
    256e:	0d2d      	mov.n	a2, a13
    2570:	2158      	l32i.n	a5, a1, 8
    2572:	ffdb05        	call0	2324 <wifi_station_ap_number_set+0x7c>
    2575:	000cd2        	l8ui	a13, a12, 0
    2578:	dd1b      	addi.n	a13, a13, 1
    257a:	004cd2        	s8i	a13, a12, 0
    257d:	41c8      	l32i.n	a12, a1, 16
    257f:	51d8      	l32i.n	a13, a1, 20
    2581:	61e8      	l32i.n	a14, a1, 24
    2583:	71f8      	l32i.n	a15, a1, 28
    2585:	3108      	l32i.n	a0, a1, 12
    2587:	30c112        	addi	a1, a1, 48
    258a:	f00d      	ret.n
    258c:	0c4d      	mov.n	a4, a12
    258e:	0f3d      	mov.n	a3, a15
    2590:	0d2d      	mov.n	a2, a13
    2592:	2158      	l32i.n	a5, a1, 8
    2594:	ffd8c5        	call0	2324 <wifi_station_ap_number_set+0x7c>
    2597:	fff886        	j	257d <wifi_station_ap_number_set+0x2d5>
    259a:	000000        	ill
    259d:	000000        	ill
    25a0:	001b      	addi.n	a0, a0, 1
	...
    25c6:	120000        	excw
    25c9:	09f0c1        	l32r	a12, fffc4d8c <system_get_sdk_version+0xfffc08c0>
    25cc:	11c901        	l32r	a0, fffc6cf0 <system_get_sdk_version+0xfffc2824>
    25cf:	21d9      	s32i.n	a13, a1, 8
    25d1:	02cd      	mov.n	a12, a2
    25d3:	03dd      	mov.n	a13, a3
    25d5:	000005        	call0	25d8 <wifi_station_ap_number_set+0x330>
    25d8:	099c16        	beqz	a12, 2675 <wifi_station_ap_number_set+0x3cd>
    25db:	fec202        	addi	a0, a2, -2
    25de:	093016        	beqz	a0, 2675 <wifi_station_ap_number_set+0x3cd>
    25e1:	090216        	beqz	a2, 2675 <wifi_station_ap_number_set+0x3cd>
    25e4:	052d66        	bnei	a13, 2, 25ed <wifi_station_ap_number_set+0x345>
    25e7:	ffe545        	call0	243c <wifi_station_ap_number_set+0x194>
    25ea:	001e86        	j	2668 <wifi_station_ap_number_set+0x3c0>
    25ed:	ffeb31        	l32r	a3, 259c <wifi_station_ap_number_set+0x2f4>
    25f0:	020c      	movi.n	a2, 0
    25f2:	004322        	s8i	a2, a3, 0
    25f5:	320c      	movi.n	a2, 3
    25f7:	fe1085        	call0	700 <system_get_os_print+0x48>
    25fa:	160266        	bnei	a2, -1, 2614 <wifi_station_ap_number_set+0x36c>
    25fd:	0c3d      	mov.n	a3, a12
    25ff:	ffe821        	l32r	a2, 25a0 <wifi_station_ap_number_set+0x2f8>
    2602:	67a042        	movi	a4, 103
    2605:	ffec01        	l32r	a0, 25b8 <wifi_station_ap_number_set+0x310>
    2608:	0000c0        	callx0	a0
    260b:	ffe641        	l32r	a4, 25a4 <wifi_station_ap_number_set+0x2fc>
    260e:	8244d2        	s8i	a13, a4, 130
    2611:	0014c6        	j	2668 <wifi_station_ap_number_set+0x3c0>
    2614:	461d66        	bnei	a13, 1, 265e <wifi_station_ap_number_set+0x3b6>
    2617:	84a422        	movi	a2, 0x484
    261a:	ffe331        	l32r	a3, 25a8 <wifi_station_ap_number_set+0x300>
    261d:	4da742        	movi	a4, 0x74d
    2620:	ffe701        	l32r	a0, 25bc <wifi_station_ap_number_set+0x314>
    2623:	0000c0        	callx0	a0
    2626:	ffe131        	l32r	a3, 25ac <wifi_station_ap_number_set+0x304>
    2629:	0338      	l32i.n	a3, a3, 0
    262b:	02dd      	mov.n	a13, a2
    262d:	1328      	l32i.n	a2, a3, 4
    262f:	3338      	l32i.n	a3, a3, 12
    2631:	ffe301        	l32r	a0, 25c0 <wifi_station_ap_number_set+0x318>
    2634:	0000c0        	callx0	a0
    2637:	030c      	movi.n	a3, 0
    2639:	0d4d      	mov.n	a4, a13
    263b:	84a452        	movi	a5, 0x484
    263e:	fdc222        	addi	a2, a2, -3
    2641:	f42020        	extui	a2, a2, 0, 16
    2644:	000005        	call0	2648 <wifi_station_ap_number_set+0x3a0>
    2647:	0d2d      	mov.n	a2, a13
    2649:	0c3d      	mov.n	a3, a12
    264b:	140c      	movi.n	a4, 1
    264d:	ffe385        	call0	2488 <wifi_station_ap_number_set+0x1e0>
    2650:	0d2d      	mov.n	a2, a13
    2652:	ffd731        	l32r	a3, 25b0 <wifi_station_ap_number_set+0x308>
    2655:	52a742        	movi	a4, 0x752
    2658:	ffdb01        	l32r	a0, 25c4 <wifi_station_ap_number_set+0x31c>
    265b:	0000c0        	callx0	a0
    265e:	0c3d      	mov.n	a3, a12
    2660:	ffd521        	l32r	a2, 25b4 <wifi_station_ap_number_set+0x30c>
    2663:	040c      	movi.n	a4, 0
    2665:	ffe205        	call0	2488 <wifi_station_ap_number_set+0x1e0>
    2668:	120c      	movi.n	a2, 1
    266a:	11c8      	l32i.n	a12, a1, 4
    266c:	21d8      	l32i.n	a13, a1, 8
    266e:	0108      	l32i.n	a0, a1, 0
    2670:	10c112        	addi	a1, a1, 16
    2673:	f00d      	ret.n
    2675:	020c      	movi.n	a2, 0
    2677:	fffbc6        	j	266a <wifi_station_ap_number_set+0x3c2>
    267a:	000000        	ill
    267d:	000000        	ill

00002680 <wifi_station_set_config>:
    2680:	f0c112        	addi	a1, a1, -16
    2683:	0109      	s32i.n	a0, a1, 0
    2685:	fffd01        	l32r	a0, 267c <wifi_station_ap_number_set+0x3d4>
    2688:	130c      	movi.n	a3, 1
    268a:	044032        	s8i	a3, a0, 4
    268d:	fff385        	call0	25c8 <wifi_station_ap_number_set+0x320>
    2690:	0108      	l32i.n	a0, a1, 0
    2692:	10c112        	addi	a1, a1, 16
    2695:	f00d      	ret.n
    2697:	000000        	ill
	...

0000269c <wifi_station_set_config_current>:
    269c:	f0c112        	addi	a1, a1, -16
    269f:	0109      	s32i.n	a0, a1, 0
    26a1:	fffd01        	l32r	a0, 2698 <wifi_station_set_config+0x18>
    26a4:	030c      	movi.n	a3, 0
    26a6:	044032        	s8i	a3, a0, 4
    26a9:	fff1c5        	call0	25c8 <wifi_station_ap_number_set+0x320>
    26ac:	0108      	l32i.n	a0, a1, 0
    26ae:	10c112        	addi	a1, a1, 16
    26b1:	f00d      	ret.n
	...

000026b4 <wifi_station_restore_config>:
    26b4:	020c      	movi.n	a2, 0
    26b6:	230c      	movi.n	a3, 2
    26b8:	f0c112        	addi	a1, a1, -16
    26bb:	0109      	s32i.n	a0, a1, 0
    26bd:	fff085        	call0	25c8 <wifi_station_ap_number_set+0x320>
    26c0:	0108      	l32i.n	a0, a1, 0
    26c2:	10c112        	addi	a1, a1, 16
    26c5:	f00d      	ret.n
    26c7:	000000        	ill
	...

000026cc <wifi_station_get_current_ap_id>:
    26cc:	ffff21        	l32r	a2, 26c8 <wifi_station_restore_config+0x14>
    26cf:	7d0222        	l8ui	a2, a2, 125
    26d2:	ffa032        	movi	a3, 255
    26d5:	011237        	beq	a2, a3, 26da <wifi_station_get_current_ap_id+0xe>
    26d8:	f00d      	ret.n
    26da:	020c      	movi.n	a2, 0
    26dc:	f00d      	ret.n
    26de:	000000        	ill
    26e1:	000000        	ill

000026e4 <wifi_station_ap_check>:
    26e4:	2212a6        	blti	a2, 1, 270a <wifi_station_ap_check+0x26>
    26e7:	ffa082        	movi	a8, 255
    26ea:	c8a092        	movi	a9, 200
    26ed:	060c      	movi.n	a6, 0
    26ef:	fffc51        	l32r	a5, 26e0 <wifi_station_get_current_ap_id+0x14>
    26f2:	64a072        	movi	a7, 100
    26f5:	d17720        	mul16s	a7, a7, a2
    26f8:	775a      	add.n	a7, a7, a5
    26fa:	8005a2        	l8ui	a10, a5, 128
    26fd:	662b      	addi.n	a6, a6, 2
    26ff:	109a87        	bne	a10, a8, 2713 <wifi_station_ap_check+0x2f>
    2702:	559a      	add.n	a5, a5, a9
    2704:	f23577        	bltu	a5, a7, 26fa <wifi_station_ap_check+0x16>
    2707:	000046        	j	270c <wifi_station_ap_check+0x28>
    270a:	060c      	movi.n	a6, 0
    270c:	019627        	bne	a6, a2, 2711 <wifi_station_ap_check+0x2d>
    270f:	020c      	movi.n	a2, 0
    2711:	f00d      	ret.n
    2713:	120c      	movi.n	a2, 1
    2715:	f00d      	ret.n
	...
    2723:	026000        	excw
	...
    2746:	000001        	l32r	a0, fffc2748 <system_get_sdk_version+0xfffbe27c>
    2749:	0e          	.byte 0xe
    274a:	006000        	rsil	a0, 0
	...

0000276c <wifi_station_ap_change>:
    276c:	e0c112        	addi	a1, a1, -32
    276f:	3109      	s32i.n	a0, a1, 12
    2771:	61e9      	s32i.n	a14, a1, 24
    2773:	51d9      	s32i.n	a13, a1, 20
    2775:	41c9      	s32i.n	a12, a1, 16
    2777:	ffe8d1        	l32r	a13, 2718 <wifi_station_ap_check+0x34>
    277a:	02cd      	mov.n	a12, a2
    277c:	800de2        	l8ui	a14, a13, 128
    277f:	000005        	call0	2780 <wifi_station_ap_change+0x14>
    2782:	0c2226        	beqi	a2, 2, 2792 <wifi_station_ap_change+0x26>
    2785:	928c      	beqz.n	a2, 2792 <wifi_station_ap_change+0x26>
    2787:	07bce7        	bgeu	a12, a14, 2792 <wifi_station_ap_change+0x26>
    278a:	ffe401        	l32r	a0, 271c <wifi_station_ap_check+0x38>
    278d:	560002        	l8ui	a0, a0, 86
    2790:	d08c      	beqz.n	a0, 27a1 <wifi_station_ap_change+0x35>
    2792:	020c      	movi.n	a2, 0
    2794:	41c8      	l32i.n	a12, a1, 16
    2796:	51d8      	l32i.n	a13, a1, 20
    2798:	61e8      	l32i.n	a14, a1, 24
    279a:	3108      	l32i.n	a0, a1, 12
    279c:	20c112        	addi	a1, a1, 32
    279f:	f00d      	ret.n
    27a1:	0e2d      	mov.n	a2, a14
    27a3:	000005        	call0	27a4 <wifi_station_ap_change+0x38>
    27a6:	fe8216        	beqz	a2, 2792 <wifi_station_ap_change+0x26>
    27a9:	ffdd61        	l32r	a6, 2720 <wifi_station_ap_check+0x3c>
    27ac:	64a072        	movi	a7, 100
    27af:	d177c0        	mul16s	a7, a7, a12
    27b2:	676a      	add.n	a6, a7, a6
    27b4:	800622        	l8ui	a2, a6, 128
    27b7:	ffa082        	movi	a8, 255
    27ba:	d41287        	beq	a2, a8, 2792 <wifi_station_ap_change+0x26>
    27bd:	ffd921        	l32r	a2, 2724 <wifi_station_ap_check+0x40>
    27c0:	0c3d      	mov.n	a3, a12
    27c2:	1179      	s32i.n	a7, a1, 4
    27c4:	0169      	s32i.n	a6, a1, 0
    27c6:	ffe401        	l32r	a0, 2758 <wifi_station_ap_check+0x74>
    27c9:	0000c0        	callx0	a0
    27cc:	810d82        	l8ui	a8, a13, 129
    27cf:	0498c7        	bne	a8, a12, 27d7 <wifi_station_ap_change+0x6b>
    27d2:	120c      	movi.n	a2, 1
    27d4:	ffef06        	j	2794 <wifi_station_ap_change+0x28>
    27d7:	814dc2        	s8i	a12, a13, 129
    27da:	ffd521        	l32r	a2, 2730 <wifi_station_ap_check+0x4c>
    27dd:	ffd341        	l32r	a4, 272c <wifi_station_ap_check+0x48>
    27e0:	1138      	l32i.n	a3, a1, 4
    27e2:	0158      	l32i.n	a5, a1, 0
    27e4:	ffd1e1        	l32r	a14, 2728 <wifi_station_ap_check+0x44>
    27e7:	1f2552        	l32i	a5, a5, 124
    27ea:	516e52        	s32i	a5, a14, 0x144
    27ed:	334a      	add.n	a3, a3, a4
    27ef:	2139      	s32i.n	a3, a1, 8
    27f1:	042c      	movi.n	a4, 32
    27f3:	03d332        	addmi	a3, a3, 0x300
    27f6:	3cc332        	addi	a3, a3, 60
    27f9:	ffd801        	l32r	a0, 275c <wifi_station_ap_check+0x78>
    27fc:	0000c0        	callx0	a0
    27ff:	ffcd21        	l32r	a2, 2734 <wifi_station_ap_check+0x50>
    2802:	2138      	l32i.n	a3, a1, 8
    2804:	044c      	movi.n	a4, 64
    2806:	03d332        	addmi	a3, a3, 0x300
    2809:	5cc332        	addi	a3, a3, 92
    280c:	ffd501        	l32r	a0, 2760 <wifi_station_ap_check+0x7c>
    280f:	0000c0        	callx0	a0
    2812:	110cb0        	slli	a0, a12, 5
    2815:	ffdd62        	addmi	a6, a13, 0xffffff00
    2818:	050c      	movi.n	a5, 0
    281a:	ffc741        	l32r	a4, 2738 <wifi_station_ap_check+0x54>
    281d:	bb4652        	s8i	a5, a6, 187
    2820:	404a      	add.n	a4, a0, a4
    2822:	800442        	l8ui	a4, a4, 128
    2825:	ffa052        	movi	a5, 255
    2828:	231457        	beq	a4, a5, 284f <wifi_station_ap_change+0xe3>
    282b:	ffc521        	l32r	a2, 2740 <wifi_station_ap_check+0x5c>
    282e:	ffc331        	l32r	a3, 273c <wifi_station_ap_check+0x58>
    2831:	042c      	movi.n	a4, 32
    2833:	06d332        	addmi	a3, a3, 0x600
    2836:	dcc332        	addi	a3, a3, -36
    2839:	303a      	add.n	a3, a0, a3
    283b:	ffca01        	l32r	a0, 2764 <wifi_station_ap_check+0x80>
    283e:	0000c0        	callx0	a0
    2841:	040c      	movi.n	a4, 0
    2843:	01de52        	addmi	a5, a14, 0x100
    2846:	80c552        	addi	a5, a5, -128
    2849:	ee4542        	s8i	a4, a5, 238
    284c:	0001c6        	j	2857 <wifi_station_ap_change+0xeb>
    284f:	01de72        	addmi	a7, a14, 0x100
    2852:	160c      	movi.n	a6, 1
    2854:	6e4762        	s8i	a6, a7, 110
    2857:	ffbb41        	l32r	a4, 2744 <wifi_station_ap_check+0x60>
    285a:	ffbb51        	l32r	a5, 2748 <wifi_station_ap_check+0x64>
    285d:	0020c0        	memw
    2860:	ffbd21        	l32r	a2, 2754 <wifi_station_ap_check+0x70>
    2863:	ffdd92        	addmi	a9, a13, 0xffffff00
    2866:	ffbaa1        	l32r	a10, 2750 <wifi_station_ap_check+0x6c>
    2869:	f08cc0        	subx8	a8, a12, a12
    286c:	fd6542        	s32i	a4, a5, 0x3f4
    286f:	ffb731        	l32r	a3, 274c <wifi_station_ap_check+0x68>
    2872:	640c      	movi.n	a4, 6
    2874:	05d332        	addmi	a3, a3, 0x500
    2877:	41c332        	addi	a3, a3, 65
    287a:	383a      	add.n	a3, a8, a3
    287c:	88aa      	add.n	a8, a8, a10
    287e:	800882        	l8ui	a8, a8, 128
    2881:	ed4982        	s8i	a8, a9, 237
    2884:	ffb901        	l32r	a0, 2768 <wifi_station_ap_check+0x84>
    2887:	0000c0        	callx0	a0
    288a:	000005        	call0	288c <wifi_station_ap_change+0x120>
    288d:	000005        	call0	2890 <wifi_station_ap_change+0x124>
    2890:	ffcf86        	j	27d2 <wifi_station_ap_change+0x66>
	...

000028a4 <wifi_station_scan>:
    28a4:	f0c112        	addi	a1, a1, -16
    28a7:	3109      	s32i.n	a0, a1, 12
    28a9:	0129      	s32i.n	a2, a1, 0
    28ab:	fffa01        	l32r	a0, 2894 <wifi_station_ap_change+0x128>
    28ae:	1139      	s32i.n	a3, a1, 4
    28b0:	4008      	l32i.n	a0, a0, 16
    28b2:	2109      	s32i.n	a0, a1, 8
    28b4:	000005        	call0	28b8 <wifi_station_scan+0x14>
    28b7:	2b2226        	beqi	a2, 2, 28e6 <wifi_station_scan+0x42>
    28ba:	82ac      	beqz.n	a2, 28e6 <wifi_station_scan+0x42>
    28bc:	2128      	l32i.n	a2, a1, 8
    28be:	fff601        	l32r	a0, 2898 <wifi_station_ap_change+0x12c>
    28c1:	12ac      	beqz.n	a2, 28e6 <wifi_station_scan+0x42>
    28c3:	560032        	l8ui	a3, a0, 86
    28c6:	c3dc      	bnez.n	a3, 28e6 <wifi_station_scan+0x42>
    28c8:	0128      	l32i.n	a2, a1, 0
    28ca:	1138      	l32i.n	a3, a1, 4
    28cc:	f4c042        	addi	a4, a0, -12
    28cf:	fff361        	l32r	a6, 289c <wifi_station_ap_change+0x130>
    28d2:	050c      	movi.n	a5, 0
    28d4:	005652        	s16i	a5, a6, 0
    28d7:	fff201        	l32r	a0, 28a0 <wifi_station_ap_change+0x134>
    28da:	0000c0        	callx0	a0
    28dd:	120c      	movi.n	a2, 1
    28df:	3108      	l32i.n	a0, a1, 12
    28e1:	10c112        	addi	a1, a1, 16
    28e4:	f00d      	ret.n
    28e6:	020c      	movi.n	a2, 0
    28e8:	fffcc6        	j	28df <wifi_station_scan+0x3b>
    28eb:	000000        	ill
	...

000028f0 <wifi_station_get_auto_connect>:
    28f0:	ffff31        	l32r	a3, 28ec <wifi_station_scan+0x48>
    28f3:	800332        	l8ui	a3, a3, 128
    28f6:	140c      	movi.n	a4, 1
    28f8:	0123f6        	bgeui	a3, 2, 28fd <wifi_station_get_auto_connect+0xd>
    28fb:	034d      	mov.n	a4, a3
    28fd:	742040        	extui	a2, a4, 0, 8
    2900:	f00d      	ret.n
	...

00002914 <wifi_station_set_auto_connect>:
    2914:	f0c112        	addi	a1, a1, -16
    2917:	11c9      	s32i.n	a12, a1, 4
    2919:	0109      	s32i.n	a0, a1, 0
    291b:	02cd      	mov.n	a12, a2
    291d:	000005        	call0	2920 <wifi_station_set_auto_connect+0xc>
    2920:	392cf6        	bgeui	a12, 2, 295d <wifi_station_set_auto_connect+0x49>
    2923:	362226        	beqi	a2, 2, 295d <wifi_station_set_auto_connect+0x49>
    2926:	32bc      	beqz.n	a2, 295d <wifi_station_set_auto_connect+0x49>
    2928:	fff701        	l32r	a0, 2904 <wifi_station_get_auto_connect+0x14>
    292b:	800022        	l8ui	a2, a0, 128
    292e:	2012c7        	beq	a2, a12, 2952 <wifi_station_set_auto_connect+0x3e>
    2931:	fff531        	l32r	a3, 2908 <wifi_station_get_auto_connect+0x18>
    2934:	0338      	l32i.n	a3, a3, 0
    2936:	8040c2        	s8i	a12, a0, 128
    2939:	1328      	l32i.n	a2, a3, 4
    293b:	3338      	l32i.n	a3, a3, 12
    293d:	fff401        	l32r	a0, 2910 <wifi_station_get_auto_connect+0x20>
    2940:	0000c0        	callx0	a0
    2943:	fff231        	l32r	a3, 290c <wifi_station_get_auto_connect+0x1c>
    2946:	84a442        	movi	a4, 0x484
    2949:	fdc222        	addi	a2, a2, -3
    294c:	f42020        	extui	a2, a2, 0, 16
    294f:	000005        	call0	2950 <wifi_station_set_auto_connect+0x3c>
    2952:	120c      	movi.n	a2, 1
    2954:	11c8      	l32i.n	a12, a1, 4
    2956:	0108      	l32i.n	a0, a1, 0
    2958:	10c112        	addi	a1, a1, 16
    295b:	f00d      	ret.n
    295d:	020c      	movi.n	a2, 0
    295f:	fffc46        	j	2954 <wifi_station_set_auto_connect+0x40>
	...

00002994 <wifi_station_save_pmk2cache>:
    2994:	fff521        	l32r	a2, 2968 <wifi_station_set_auto_connect+0x54>
    2997:	e0c112        	addi	a1, a1, -32
    299a:	11c9      	s32i.n	a12, a1, 4
    299c:	0109      	s32i.n	a0, a1, 0
    299e:	21d9      	s32i.n	a13, a1, 8
    29a0:	fff101        	l32r	a0, 2964 <wifi_station_set_auto_connect+0x50>
    29a3:	31e9      	s32i.n	a14, a1, 12
    29a5:	800002        	l8ui	a0, a0, 128
    29a8:	41f9      	s32i.n	a15, a1, 16
    29aa:	00ed      	mov.n	a14, a0
    29ac:	042016        	beqz	a0, 29f2 <wifi_station_save_pmk2cache+0x5e>
    29af:	0c0c      	movi.n	a12, 0
    29b1:	025d      	mov.n	a5, a2
    29b3:	10c5f2        	addi	a15, a5, 16
    29b6:	37c552        	addi	a5, a5, 55
    29b9:	5159      	s32i.n	a5, a1, 20
    29bb:	0f3d      	mov.n	a3, a15
    29bd:	042c      	movi.n	a4, 32
    29bf:	ffebd1        	l32r	a13, 296c <wifi_station_set_auto_connect+0x58>
    29c2:	64a002        	movi	a0, 100
    29c5:	d10c00        	mul16s	a0, a12, a0
    29c8:	dd0a      	add.n	a13, a13, a0
    29ca:	03dd22        	addmi	a2, a13, 0x300
    29cd:	3cc222        	addi	a2, a2, 60
    29d0:	ffed01        	l32r	a0, 2984 <wifi_station_set_auto_connect+0x70>
    29d3:	0000c0        	callx0	a0
    29d6:	02dc      	bnez.n	a2, 29ea <wifi_station_save_pmk2cache+0x56>
    29d8:	5138      	l32i.n	a3, a1, 20
    29da:	044c      	movi.n	a4, 64
    29dc:	03dd22        	addmi	a2, a13, 0x300
    29df:	5cc222        	addi	a2, a2, 92
    29e2:	ffe901        	l32r	a0, 2988 <wifi_station_set_auto_connect+0x74>
    29e5:	0000c0        	callx0	a0
    29e8:	c2bc      	beqz.n	a2, 2a28 <wifi_station_save_pmk2cache+0x94>
    29ea:	cc1b      	addi.n	a12, a12, 1
    29ec:	74c0c0        	extui	a12, a12, 0, 8
    29ef:	c89ec7        	bne	a14, a12, 29bb <wifi_station_save_pmk2cache+0x27>
    29f2:	11c8      	l32i.n	a12, a1, 4
    29f4:	ffdfd1        	l32r	a13, 2970 <wifi_station_set_auto_connect+0x5c>
    29f7:	31e8      	l32i.n	a14, a1, 12
    29f9:	040dd2        	l8ui	a13, a13, 4
    29fc:	41f8      	l32i.n	a15, a1, 16
    29fe:	1d1d66        	bnei	a13, 1, 2a1f <wifi_station_save_pmk2cache+0x8b>
    2a01:	ffdc31        	l32r	a3, 2974 <wifi_station_set_auto_connect+0x60>
    2a04:	0338      	l32i.n	a3, a3, 0
    2a06:	1328      	l32i.n	a2, a3, 4
    2a08:	3338      	l32i.n	a3, a3, 12
    2a0a:	ffe001        	l32r	a0, 298c <wifi_station_set_auto_connect+0x78>
    2a0d:	0000c0        	callx0	a0
    2a10:	ffda31        	l32r	a3, 2978 <wifi_station_set_auto_connect+0x64>
    2a13:	84a442        	movi	a4, 0x484
    2a16:	fdc222        	addi	a2, a2, -3
    2a19:	f42020        	extui	a2, a2, 0, 16
    2a1c:	000005        	call0	2a20 <wifi_station_save_pmk2cache+0x8c>
    2a1f:	21d8      	l32i.n	a13, a1, 8
    2a21:	0108      	l32i.n	a0, a1, 0
    2a23:	20c112        	addi	a1, a1, 32
    2a26:	f00d      	ret.n
    2a28:	113cb0        	slli	a3, a12, 5
    2a2b:	ffd421        	l32r	a2, 297c <wifi_station_set_auto_connect+0x68>
    2a2e:	042c      	movi.n	a4, 32
    2a30:	223a      	add.n	a2, a2, a3
    2a32:	ffd331        	l32r	a3, 2980 <wifi_station_set_auto_connect+0x6c>
    2a35:	06d222        	addmi	a2, a2, 0x600
    2a38:	dcc222        	addi	a2, a2, -36
    2a3b:	ffd501        	l32r	a0, 2990 <wifi_station_set_auto_connect+0x7c>
    2a3e:	0000c0        	callx0	a0
    2a41:	ffeb46        	j	29f2 <wifi_station_save_pmk2cache+0x5e>
	...
    2a50:	ff0000        	excw
    2a53:	ff          	.byte 0xff
    2a54:	000e00        	excw
    2a57:	000060        	excw
	...

00002a68 <wifi_station_connect>:
    2a68:	f0c112        	addi	a1, a1, -16
    2a6b:	1109      	s32i.n	a0, a1, 4
    2a6d:	fff501        	l32r	a0, 2a44 <wifi_station_save_pmk2cache+0xb0>
    2a70:	4008      	l32i.n	a0, a0, 16
    2a72:	0109      	s32i.n	a0, a1, 0
    2a74:	000005        	call0	2a78 <wifi_station_connect+0x10>
    2a77:	602226        	beqi	a2, 2, 2adb <wifi_station_connect+0x73>
    2a7a:	05d216        	beqz	a2, 2adb <wifi_station_connect+0x73>
    2a7d:	0128      	l32i.n	a2, a1, 0
    2a7f:	fff231        	l32r	a3, 2a48 <wifi_station_save_pmk2cache+0xb4>
    2a82:	055216        	beqz	a2, 2adb <wifi_station_connect+0x73>
    2a85:	560332        	l8ui	a3, a3, 86
    2a88:	04f356        	bnez	a3, 2adb <wifi_station_connect+0x73>
    2a8b:	220c      	movi.n	a2, 2
    2a8d:	fdc705        	call0	700 <system_get_os_print+0x48>
    2a90:	540226        	beqi	a2, -1, 2ae8 <wifi_station_connect+0x80>
    2a93:	ffee01        	l32r	a0, 2a4c <wifi_station_save_pmk2cache+0xb8>
    2a96:	4028      	l32i.n	a2, a0, 16
    2a98:	040c      	movi.n	a4, 0
    2a9a:	d04242        	s8i	a4, a2, 208
    2a9d:	4058      	l32i.n	a5, a0, 16
    2a9f:	812002        	l32i	a0, a0, 0x204
    2aa2:	d14542        	s8i	a4, a5, 209
    2aa5:	3f0026        	beqi	a0, -1, 2ae8 <wifi_station_connect+0x80>
    2aa8:	c0bc      	beqz.n	a0, 2ae8 <wifi_station_connect+0x80>
    2aaa:	ffe951        	l32r	a5, 2a50 <wifi_station_save_pmk2cache+0xbc>
    2aad:	ffe931        	l32r	a3, 2a54 <wifi_station_save_pmk2cache+0xc0>
    2ab0:	0020c0        	memw
    2ab3:	fd2342        	l32i	a4, a3, 0x3f4
    2ab6:	104450        	and	a4, a4, a5
    2ab9:	f54040        	extui	a4, a4, 16, 16
    2abc:	0020c0        	memw
    2abf:	fd2332        	l32i	a3, a3, 0x3f4
    2ac2:	ffe521        	l32r	a2, 2a58 <wifi_station_save_pmk2cache+0xc4>
    2ac5:	743030        	extui	a3, a3, 0, 8
    2ac8:	141466        	bnei	a4, 1, 2ae0 <wifi_station_connect+0x78>
    2acb:	d60c      	movi.n	a6, 13
    2acd:	20b637        	bgeu	a6, a3, 2af1 <wifi_station_connect+0x89>
    2ad0:	030c      	movi.n	a3, 0
    2ad2:	ffe201        	l32r	a0, 2a5c <wifi_station_save_pmk2cache+0xc8>
    2ad5:	0000c0        	callx0	a0
    2ad8:	000306        	j	2ae8 <wifi_station_connect+0x80>
    2adb:	020c      	movi.n	a2, 0
    2add:	000246        	j	2aea <wifi_station_connect+0x82>
    2ae0:	030c      	movi.n	a3, 0
    2ae2:	ffdf01        	l32r	a0, 2a60 <wifi_station_save_pmk2cache+0xcc>
    2ae5:	0000c0        	callx0	a0
    2ae8:	120c      	movi.n	a2, 1
    2aea:	1108      	l32i.n	a0, a1, 4
    2aec:	10c112        	addi	a1, a1, 16
    2aef:	f00d      	ret.n
    2af1:	ffdc01        	l32r	a0, 2a64 <wifi_station_save_pmk2cache+0xd0>
    2af4:	0000c0        	callx0	a0
    2af7:	fffb46        	j	2ae8 <wifi_station_connect+0x80>
	...
    2b02:	900000        	addx2	a0, a0, a0
    2b05:	000000        	ill
    2b08:	000000        	ill
    2b0b:	009000        	excw
    2b0e:	000000        	ill
    2b11:	000100        	excw
    2b14:	000e00        	excw
    2b17:	000060        	excw
	...

00002b40 <wifi_station_disconnect>:
    2b40:	f0c112        	addi	a1, a1, -16
    2b43:	11c9      	s32i.n	a12, a1, 4
    2b45:	ffedc1        	l32r	a12, 2afc <wifi_station_connect+0x94>
    2b48:	0109      	s32i.n	a0, a1, 0
    2b4a:	4cc8      	l32i.n	a12, a12, 16
    2b4c:	000005        	call0	2b50 <wifi_station_disconnect+0x10>
    2b4f:	06ac16        	beqz	a12, 2bbd <wifi_station_disconnect+0x7d>
    2b52:	ffeb01        	l32r	a0, 2b00 <wifi_station_connect+0x98>
    2b55:	560002        	l8ui	a0, a0, 86
    2b58:	061056        	bnez	a0, 2bbd <wifi_station_disconnect+0x7d>
    2b5b:	ffea01        	l32r	a0, 2b04 <wifi_station_connect+0x9c>
    2b5e:	552226        	beqi	a2, 2, 2bb7 <wifi_station_disconnect+0x77>
    2b61:	052216        	beqz	a2, 2bb7 <wifi_station_disconnect+0x77>
    2b64:	120c      	movi.n	a2, 1
    2b66:	fdb985        	call0	700 <system_get_os_print+0x48>
    2b69:	020266        	bnei	a2, -1, 2b6f <wifi_station_disconnect+0x2f>
    2b6c:	0022c6        	j	2bfb <wifi_station_disconnect+0xbb>
    2b6f:	ffe641        	l32r	a4, 2b08 <wifi_station_connect+0xa0>
    2b72:	4468      	l32i.n	a6, a4, 16
    2b74:	030c      	movi.n	a3, 0
    2b76:	d04632        	s8i	a3, a6, 208
    2b79:	4458      	l32i.n	a5, a4, 16
    2b7b:	d24532        	s8i	a3, a5, 210
    2b7e:	4448      	l32i.n	a4, a4, 16
    2b80:	ffe321        	l32r	a2, 2b0c <wifi_station_connect+0xa4>
    2b83:	d14432        	s8i	a3, a4, 209
    2b86:	670222        	l8ui	a2, a2, 103
    2b89:	a2cc      	bnez.n	a2, 2b97 <wifi_station_disconnect+0x57>
    2b8b:	ffe171        	l32r	a7, 2b10 <wifi_station_connect+0xa8>
    2b8e:	ffe181        	l32r	a8, 2b14 <wifi_station_connect+0xac>
    2b91:	0020c0        	memw
    2b94:	fd6872        	s32i	a7, a8, 0x3f4
    2b97:	ffe401        	l32r	a0, 2b28 <wifi_station_connect+0xc0>
    2b9a:	0000c0        	callx0	a0
    2b9d:	ffde01        	l32r	a0, 2b18 <wifi_station_connect+0xb0>
    2ba0:	4008      	l32i.n	a0, a0, 16
    2ba2:	112092        	l32i	a9, a0, 68
    2ba5:	999c      	beqz.n	a9, 2bc2 <wifi_station_disconnect+0x82>
    2ba7:	ffdd21        	l32r	a2, 2b1c <wifi_station_connect+0xb4>
    2baa:	030c      	movi.n	a3, 0
    2bac:	040c      	movi.n	a4, 0
    2bae:	ffdf01        	l32r	a0, 2b2c <wifi_station_connect+0xc4>
    2bb1:	0000c0        	callx0	a0
    2bb4:	000806        	j	2bd8 <wifi_station_disconnect+0x98>
    2bb7:	950022        	l8ui	a2, a0, 149
    2bba:	fa6256        	bnez	a2, 2b64 <wifi_station_disconnect+0x24>
    2bbd:	020c      	movi.n	a2, 0
    2bbf:	000e86        	j	2bfd <wifi_station_disconnect+0xbd>
    2bc2:	204b      	addi.n	a2, a0, 4
    2bc4:	ffdb01        	l32r	a0, 2b30 <wifi_station_connect+0xc8>
    2bc7:	0000c0        	callx0	a0
    2bca:	ffd521        	l32r	a2, 2b20 <wifi_station_connect+0xb8>
    2bcd:	4228      	l32i.n	a2, a2, 16
    2bcf:	18c222        	addi	a2, a2, 24
    2bd2:	ffd801        	l32r	a0, 2b34 <wifi_station_connect+0xcc>
    2bd5:	0000c0        	callx0	a0
    2bd8:	ffd331        	l32r	a3, 2b24 <wifi_station_connect+0xbc>
    2bdb:	4338      	l32i.n	a3, a3, 16
    2bdd:	342332        	l32i	a3, a3, 208
    2be0:	17f397        	bbsi	a3, 25, 2bfb <wifi_station_disconnect+0xbb>
    2be3:	0c2d      	mov.n	a2, a12
    2be5:	ffd401        	l32r	a0, 2b38 <wifi_station_connect+0xd0>
    2be8:	0000c0        	callx0	a0
    2beb:	020c      	movi.n	a2, 0
    2bed:	030c      	movi.n	a3, 0
    2bef:	040c      	movi.n	a4, 0
    2bf1:	050c      	movi.n	a5, 0
    2bf3:	060c      	movi.n	a6, 0
    2bf5:	ffd101        	l32r	a0, 2b3c <wifi_station_connect+0xd4>
    2bf8:	0000c0        	callx0	a0
    2bfb:	120c      	movi.n	a2, 1
    2bfd:	11c8      	l32i.n	a12, a1, 4
    2bff:	0108      	l32i.n	a0, a1, 0
    2c01:	10c112        	addi	a1, a1, 16
    2c04:	f00d      	ret.n
	...

00002c10 <wifi_station_get_connect_status>:
    2c10:	f0c112        	addi	a1, a1, -16
    2c13:	1109      	s32i.n	a0, a1, 4
    2c15:	fffc01        	l32r	a0, 2c08 <wifi_station_disconnect+0xc8>
    2c18:	4008      	l32i.n	a0, a0, 16
    2c1a:	0109      	s32i.n	a0, a1, 0
    2c1c:	000005        	call0	2c20 <wifi_station_get_connect_status+0x10>
    2c1f:	1108      	l32i.n	a0, a1, 4
    2c21:	122226        	beqi	a2, 2, 2c37 <wifi_station_get_connect_status+0x27>
    2c24:	f28c      	beqz.n	a2, 2c37 <wifi_station_get_connect_status+0x27>
    2c26:	0128      	l32i.n	a2, a1, 0
    2c28:	b28c      	beqz.n	a2, 2c37 <wifi_station_get_connect_status+0x27>
    2c2a:	fff821        	l32r	a2, 2c0c <wifi_station_disconnect+0xcc>
    2c2d:	4228      	l32i.n	a2, a2, 16
    2c2f:	d20222        	l8ui	a2, a2, 210
    2c32:	10c112        	addi	a1, a1, 16
    2c35:	f00d      	ret.n
    2c37:	ffa022        	movi	a2, 255
    2c3a:	fffd06        	j	2c32 <wifi_station_get_connect_status+0x22>
    2c3d:	000000        	ill
    2c40:	000000        	ill
	...

00002c44 <wifi_station_set_reconnect_policy>:
    2c44:	728c      	beqz.n	a2, 2c4f <wifi_station_set_reconnect_policy+0xb>
    2c46:	051226        	beqi	a2, 1, 2c4f <wifi_station_set_reconnect_policy+0xb>
    2c49:	040c      	movi.n	a4, 0
    2c4b:	042d      	mov.n	a2, a4
    2c4d:	f00d      	ret.n
    2c4f:	fffc31        	l32r	a3, 2c40 <wifi_station_get_connect_status+0x30>
    2c52:	140c      	movi.n	a4, 1
    2c54:	054322        	s8i	a2, a3, 5
    2c57:	fffc06        	j	2c4b <wifi_station_set_reconnect_policy+0x7>
    2c5a:	000000        	ill
    2c5d:	000000        	ill

00002c60 <wifi_station_get_reconnect_policy>:
    2c60:	ffff21        	l32r	a2, 2c5c <wifi_station_set_reconnect_policy+0x18>
    2c63:	050222        	l8ui	a2, a2, 5
    2c66:	f00d      	ret.n
	...

00002c70 <wifi_station_get_rssi>:
    2c70:	f0c112        	addi	a1, a1, -16
    2c73:	0109      	s32i.n	a0, a1, 0
    2c75:	000005        	call0	2c78 <wifi_station_get_rssi+0x8>
    2c78:	0b1226        	beqi	a2, 1, 2c87 <wifi_station_get_rssi+0x17>
    2c7b:	083226        	beqi	a2, 3, 2c87 <wifi_station_get_rssi+0x17>
    2c7e:	f21c      	movi.n	a2, 31
    2c80:	0108      	l32i.n	a0, a1, 0
    2c82:	10c112        	addi	a1, a1, 16
    2c85:	f00d      	ret.n
    2c87:	fff801        	l32r	a0, 2c68 <wifi_station_get_reconnect_policy+0x8>
    2c8a:	4008      	l32i.n	a0, a0, 16
    2c8c:	909c      	beqz.n	a0, 2ca9 <wifi_station_get_rssi+0x39>
    2c8e:	242032        	l32i	a3, a0, 144
    2c91:	f21c      	movi.n	a2, 31
    2c93:	f38c      	beqz.n	a3, 2ca6 <wifi_station_get_rssi+0x36>
    2c95:	020c      	movi.n	a2, 0
    2c97:	fff501        	l32r	a0, 2c6c <wifi_station_get_reconnect_policy+0xc>
    2c9a:	0000c0        	callx0	a0
    2c9d:	012280        	slli	a2, a2, 24
    2ca0:	312820        	srai	a2, a2, 24
    2ca3:	fff646        	j	2c80 <wifi_station_get_rssi+0x10>
    2ca6:	fff586        	j	2c80 <wifi_station_get_rssi+0x10>
    2ca9:	f21c      	movi.n	a2, 31
    2cab:	fff446        	j	2c80 <wifi_station_get_rssi+0x10>
	...
    2cb6:	9f0000        	excw
    2cb9:	0008      	l32i.n	a0, a0, 0
	...
    2cc3:	08a300        	excw
    2cc6:	000000        	ill
    2cc9:	000000        	ill
    2ccc:	000020        	excw
	...

00002ce0 <wifi_station_set_default_hostname>:
    2ce0:	028d      	mov.n	a8, a2
    2ce2:	d0c112        	addi	a1, a1, -48
    2ce5:	9109      	s32i.n	a0, a1, 36
    2ce7:	fff221        	l32r	a2, 2cb0 <wifi_station_get_rssi+0x40>
    2cea:	fff201        	l32r	a0, 2cb4 <wifi_station_get_rssi+0x44>
    2ced:	0228      	l32i.n	a2, a2, 0
    2cef:	8189      	s32i.n	a8, a1, 32
    2cf1:	329c      	beqz.n	a2, 2d08 <wifi_station_set_default_hostname+0x28>
    2cf3:	fff141        	l32r	a4, 2cb8 <wifi_station_get_rssi+0x48>
    2cf6:	003d      	mov.n	a3, a0
    2cf8:	fff701        	l32r	a0, 2cd4 <wifi_station_get_rssi+0x64>
    2cfb:	0000c0        	callx0	a0
    2cfe:	ffef01        	l32r	a0, 2cbc <wifi_station_get_rssi+0x4c>
    2d01:	ffef41        	l32r	a4, 2cc0 <wifi_station_get_rssi+0x50>
    2d04:	030c      	movi.n	a3, 0
    2d06:	0439      	s32i.n	a3, a4, 0
    2d08:	022c      	movi.n	a2, 32
    2d0a:	ffee41        	l32r	a4, 2cc4 <wifi_station_get_rssi+0x54>
    2d0d:	003d      	mov.n	a3, a0
    2d0f:	fff201        	l32r	a0, 2cd8 <wifi_station_get_rssi+0x68>
    2d12:	0000c0        	callx0	a0
    2d15:	ffec51        	l32r	a5, 2cc8 <wifi_station_get_rssi+0x58>
    2d18:	0529      	s32i.n	a2, a5, 0
    2d1a:	02ac      	beqz.n	a2, 2d3e <wifi_station_set_default_hostname+0x5e>
    2d1c:	ffec21        	l32r	a2, 2ccc <wifi_station_get_rssi+0x5c>
    2d1f:	013d      	mov.n	a3, a1
    2d21:	441c      	movi.n	a4, 20
    2d23:	000005        	call0	2d24 <wifi_station_set_default_hostname+0x44>
    2d26:	013d      	mov.n	a3, a1
    2d28:	8168      	l32i.n	a6, a1, 32
    2d2a:	ffe921        	l32r	a2, 2cd0 <wifi_station_get_rssi+0x60>
    2d2d:	030642        	l8ui	a4, a6, 3
    2d30:	040652        	l8ui	a5, a6, 4
    2d33:	0228      	l32i.n	a2, a2, 0
    2d35:	050662        	l8ui	a6, a6, 5
    2d38:	ffe901        	l32r	a0, 2cdc <wifi_station_get_rssi+0x6c>
    2d3b:	0000c0        	callx0	a0
    2d3e:	9108      	l32i.n	a0, a1, 36
    2d40:	30c112        	addi	a1, a1, 48
    2d43:	f00d      	ret.n
    2d45:	000000        	ill
    2d48:	000000        	ill
	...

00002d4c <wifi_station_get_hostname>:
    2d4c:	f0c112        	addi	a1, a1, -16
    2d4f:	0109      	s32i.n	a0, a1, 0
    2d51:	000005        	call0	2d54 <wifi_station_get_hostname+0x8>
    2d54:	0108      	l32i.n	a0, a1, 0
    2d56:	091226        	beqi	a2, 1, 2d63 <wifi_station_get_hostname+0x17>
    2d59:	063226        	beqi	a2, 3, 2d63 <wifi_station_get_hostname+0x17>
    2d5c:	020c      	movi.n	a2, 0
    2d5e:	10c112        	addi	a1, a1, 16
    2d61:	f00d      	ret.n
    2d63:	fff921        	l32r	a2, 2d48 <wifi_station_set_default_hostname+0x68>
    2d66:	0228      	l32i.n	a2, a2, 0
    2d68:	fffc86        	j	2d5e <wifi_station_get_hostname+0x12>
	...
    2d77:	08cf00        	excw
	...
    2d82:	d30000        	excw
    2d85:	0008      	l32i.n	a0, a0, 0
	...

00002da8 <wifi_station_set_hostname>:
    2da8:	f0c112        	addi	a1, a1, -16
    2dab:	21c9      	s32i.n	a12, a1, 8
    2dad:	1109      	s32i.n	a0, a1, 4
    2daf:	02cd      	mov.n	a12, a2
    2db1:	929c      	beqz.n	a2, 2dce <wifi_station_set_hostname+0x26>
    2db3:	fff801        	l32r	a0, 2d94 <wifi_station_get_hostname+0x48>
    2db6:	0000c0        	callx0	a0
    2db9:	0129      	s32i.n	a2, a1, 0
    2dbb:	002c      	movi.n	a0, 32
    2dbd:	0d3027        	bltu	a0, a2, 2dce <wifi_station_set_hostname+0x26>
    2dc0:	000005        	call0	2dc4 <wifi_station_set_hostname+0x1c>
    2dc3:	121226        	beqi	a2, 1, 2dd9 <wifi_station_set_hostname+0x31>
    2dc6:	0f3226        	beqi	a2, 3, 2dd9 <wifi_station_set_hostname+0x31>
    2dc9:	020c      	movi.n	a2, 0
    2dcb:	000046        	j	2dd0 <wifi_station_set_hostname+0x28>
    2dce:	020c      	movi.n	a2, 0
    2dd0:	21c8      	l32i.n	a12, a1, 8
    2dd2:	1108      	l32i.n	a0, a1, 4
    2dd4:	10c112        	addi	a1, a1, 16
    2dd7:	f00d      	ret.n
    2dd9:	ffe601        	l32r	a0, 2d74 <wifi_station_get_hostname+0x28>
    2ddc:	ffe441        	l32r	a4, 2d6c <wifi_station_get_hostname+0x20>
    2ddf:	ffe421        	l32r	a2, 2d70 <wifi_station_get_hostname+0x24>
    2de2:	030c      	movi.n	a3, 0
    2de4:	0228      	l32i.n	a2, a2, 0
    2de6:	004432        	s8i	a3, a4, 0
    2de9:	329c      	beqz.n	a2, 2e00 <wifi_station_set_hostname+0x58>
    2deb:	ffe341        	l32r	a4, 2d78 <wifi_station_get_hostname+0x2c>
    2dee:	003d      	mov.n	a3, a0
    2df0:	ffea01        	l32r	a0, 2d98 <wifi_station_get_hostname+0x4c>
    2df3:	0000c0        	callx0	a0
    2df6:	ffe101        	l32r	a0, 2d7c <wifi_station_get_hostname+0x30>
    2df9:	ffe161        	l32r	a6, 2d80 <wifi_station_get_hostname+0x34>
    2dfc:	050c      	movi.n	a5, 0
    2dfe:	0659      	s32i.n	a5, a6, 0
    2e00:	ffe141        	l32r	a4, 2d84 <wifi_station_get_hostname+0x38>
    2e03:	0128      	l32i.n	a2, a1, 0
    2e05:	003d      	mov.n	a3, a0
    2e07:	221b      	addi.n	a2, a2, 1
    2e09:	ffe401        	l32r	a0, 2d9c <wifi_station_get_hostname+0x50>
    2e0c:	0000c0        	callx0	a0
    2e0f:	ffde31        	l32r	a3, 2d88 <wifi_station_get_hostname+0x3c>
    2e12:	0329      	s32i.n	a2, a3, 0
    2e14:	52ac      	beqz.n	a2, 2e3d <wifi_station_set_hostname+0x95>
    2e16:	020c      	movi.n	a2, 0
    2e18:	ffe201        	l32r	a0, 2da0 <wifi_station_get_hostname+0x54>
    2e1b:	0000c0        	callx0	a0
    2e1e:	3129      	s32i.n	a2, a1, 12
    2e20:	ffdb21        	l32r	a2, 2d8c <wifi_station_get_hostname+0x40>
    2e23:	0c3d      	mov.n	a3, a12
    2e25:	0228      	l32i.n	a2, a2, 0
    2e27:	ffdf01        	l32r	a0, 2da4 <wifi_station_get_hostname+0x58>
    2e2a:	0000c0        	callx0	a0
    2e2d:	3108      	l32i.n	a0, a1, 12
    2e2f:	120c      	movi.n	a2, 1
    2e31:	508c      	beqz.n	a0, 2e3a <wifi_station_set_hostname+0x92>
    2e33:	ffd731        	l32r	a3, 2d90 <wifi_station_get_hostname+0x44>
    2e36:	0338      	l32i.n	a3, a3, 0
    2e38:	b039      	s32i.n	a3, a0, 44
    2e3a:	ffe486        	j	2dd0 <wifi_station_set_hostname+0x28>
    2e3d:	020c      	movi.n	a2, 0
    2e3f:	ffe346        	j	2dd0 <wifi_station_set_hostname+0x28>
	...

00002e4c <wifi_softap_cacl_mac>:
    2e4c:	e0c112        	addi	a1, a1, -32
    2e4f:	11c9      	s32i.n	a12, a1, 4
    2e51:	41f9      	s32i.n	a15, a1, 16
    2e53:	0109      	s32i.n	a0, a1, 0
    2e55:	21d9      	s32i.n	a13, a1, 8
    2e57:	31e9      	s32i.n	a14, a1, 12
    2e59:	02dd      	mov.n	a13, a2
    2e5b:	03ed      	mov.n	a14, a3
    2e5d:	044216        	beqz	a2, 2ea5 <wifi_softap_cacl_mac+0x59>
    2e60:	041316        	beqz	a3, 2ea5 <wifi_softap_cacl_mac+0x59>
    2e63:	640c      	movi.n	a4, 6
    2e65:	fff701        	l32r	a0, 2e44 <wifi_station_set_hostname+0x9c>
    2e68:	0000c0        	callx0	a0
    2e6b:	0c0c      	movi.n	a12, 0
    2e6d:	2f0c      	movi.n	a15, 2
    2e6f:	0d2d      	mov.n	a2, a13
    2e71:	0e3d      	mov.n	a3, a14
    2e73:	640c      	movi.n	a4, 6
    2e75:	000e02        	l8ui	a0, a14, 0
    2e78:	115ce0        	slli	a5, a12, 2
    2e7b:	2000f0        	or	a0, a0, a15
    2e7e:	300050        	xor	a0, a0, a5
    2e81:	004d02        	s8i	a0, a13, 0
    2e84:	fff101        	l32r	a0, 2e48 <wifi_station_set_hostname+0xa0>
    2e87:	0000c0        	callx0	a0
    2e8a:	62cc      	bnez.n	a2, 2e94 <wifi_softap_cacl_mac+0x48>
    2e8c:	cc1b      	addi.n	a12, a12, 1
    2e8e:	74c0c0        	extui	a12, a12, 0, 8
    2e91:	dadc66        	bnei	a12, 64, 2e6f <wifi_softap_cacl_mac+0x23>
    2e94:	120c      	movi.n	a2, 1
    2e96:	11c8      	l32i.n	a12, a1, 4
    2e98:	21d8      	l32i.n	a13, a1, 8
    2e9a:	31e8      	l32i.n	a14, a1, 12
    2e9c:	41f8      	l32i.n	a15, a1, 16
    2e9e:	0108      	l32i.n	a0, a1, 0
    2ea0:	20c112        	addi	a1, a1, 32
    2ea3:	f00d      	ret.n
    2ea5:	020c      	movi.n	a2, 0
    2ea7:	fffac6        	j	2e96 <wifi_softap_cacl_mac+0x4a>
	...
    2eb2:	200000        	or	a0, a0, a0
	...

00002ecc <wifi_softap_set_default_ssid>:
    2ecc:	120c      	movi.n	a2, 1
    2ece:	c0c112        	addi	a1, a1, -64
    2ed1:	013d      	mov.n	a3, a1
    2ed3:	c109      	s32i.n	a0, a1, 48
    2ed5:	000005        	call0	2ed8 <wifi_softap_set_default_ssid+0xc>
    2ed8:	fff501        	l32r	a0, 2eac <wifi_softap_cacl_mac+0x60>
    2edb:	fff521        	l32r	a2, 2eb0 <wifi_softap_cacl_mac+0x64>
    2ede:	aa2002        	l32i	a0, a0, 0x2a8
    2ee1:	2c0222        	l8ui	a2, a2, 44
    2ee4:	050026        	beqi	a0, -1, 2eed <wifi_softap_set_default_ssid+0x21>
    2ee7:	ffa032        	movi	a3, 255
    2eea:	329237        	bne	a2, a3, 2f20 <wifi_softap_set_default_ssid+0x54>
    2eed:	fff121        	l32r	a2, 2eb4 <wifi_softap_cacl_mac+0x68>
    2ef0:	10c132        	addi	a3, a1, 16
    2ef3:	441c      	movi.n	a4, 20
    2ef5:	000005        	call0	2ef8 <wifi_softap_set_default_ssid+0x2c>
    2ef8:	fff021        	l32r	a2, 2eb8 <wifi_softap_cacl_mac+0x6c>
    2efb:	432c      	movi.n	a3, 36
    2efd:	fff101        	l32r	a0, 2ec4 <wifi_softap_cacl_mac+0x78>
    2f00:	0000c0        	callx0	a0
    2f03:	ffee21        	l32r	a2, 2ebc <wifi_softap_cacl_mac+0x70>
    2f06:	10c132        	addi	a3, a1, 16
    2f09:	030142        	l8ui	a4, a1, 3
    2f0c:	040152        	l8ui	a5, a1, 4
    2f0f:	050162        	l8ui	a6, a1, 5
    2f12:	ffed01        	l32r	a0, 2ec8 <wifi_softap_cacl_mac+0x7c>
    2f15:	0000c0        	callx0	a0
    2f18:	ffea41        	l32r	a4, 2ec0 <wifi_softap_cacl_mac+0x74>
    2f1b:	a30c      	movi.n	a3, 10
    2f1d:	6a6432        	s32i	a3, a4, 0x1a8
    2f20:	120c      	movi.n	a2, 1
    2f22:	c108      	l32i.n	a0, a1, 48
    2f24:	40c112        	addi	a1, a1, 64
    2f27:	f00d      	ret.n
	...
    2f31:	000000        	ill
    2f34:	000927        	bnone	a9, a2, 2f38 <wifi_softap_set_default_ssid+0x6c>
    2f37:	000000        	ill
    2f3a:	600000        	neg	a0, a0
    2f3d:	00ea      	add.n	a0, a0, a14
    2f3f:	000000        	ill
    2f42:	650000        	extui	a0, a0, 16, 7
    2f45:	0009      	s32i.n	a0, a0, 0
    2f47:	002000        	isync
	...
    2f6a:	120000        	excw
    2f6d:	d9b0c1        	l32r	a12, ffff9630 <system_get_sdk_version+0xffff5164>
    2f70:	e1e9d1        	l32r	a13, ffffb714 <system_get_sdk_version+0xffff7248>
    2f73:	f1f9      	s32i.n	a15, a1, 60
    2f75:	c1c9      	s32i.n	a12, a1, 48
    2f77:	b109      	s32i.n	a0, a1, 44
    2f79:	02cd      	mov.n	a12, a2
    2f7b:	32cc      	bnez.n	a2, 2f82 <wifi_softap_set_default_ssid+0xb6>
    2f7d:	020c      	movi.n	a2, 0
    2f7f:	003e06        	j	307b <wifi_softap_set_default_ssid+0x1af>
    2f82:	ffea61        	l32r	a6, 2f2c <wifi_softap_set_default_ssid+0x60>
    2f85:	a139      	s32i.n	a3, a1, 40
    2f87:	051366        	bnei	a3, 1, 2f90 <wifi_softap_set_default_ssid+0xc4>
    2f8a:	ffe9d1        	l32r	a13, 2f30 <wifi_softap_set_default_ssid+0x64>
    2f8d:	000b86        	j	2fbf <wifi_softap_set_default_ssid+0xf3>
    2f90:	063d      	mov.n	a3, a6
    2f92:	84a422        	movi	a2, 0x484
    2f95:	ffe741        	l32r	a4, 2f34 <wifi_softap_set_default_ssid+0x68>
    2f98:	ffed01        	l32r	a0, 2f4c <wifi_softap_set_default_ssid+0x80>
    2f9b:	0000c0        	callx0	a0
    2f9e:	ffe631        	l32r	a3, 2f38 <wifi_softap_set_default_ssid+0x6c>
    2fa1:	0338      	l32i.n	a3, a3, 0
    2fa3:	02dd      	mov.n	a13, a2
    2fa5:	1328      	l32i.n	a2, a3, 4
    2fa7:	3338      	l32i.n	a3, a3, 12
    2fa9:	ffe901        	l32r	a0, 2f50 <wifi_softap_set_default_ssid+0x84>
    2fac:	0000c0        	callx0	a0
    2faf:	030c      	movi.n	a3, 0
    2fb1:	0d4d      	mov.n	a4, a13
    2fb3:	84a452        	movi	a5, 0x484
    2fb6:	fdc222        	addi	a2, a2, -3
    2fb9:	f42020        	extui	a2, a2, 0, 16
    2fbc:	000005        	call0	2fc0 <wifi_softap_set_default_ssid+0xf4>
    2fbf:	0f0c      	movi.n	a15, 0
    2fc1:	78cde2        	addi	a14, a13, 120
    2fc4:	be0e02        	l8ui	a0, a14, 190
    2fc7:	d4a022        	movi	a2, 212
    2fca:	0250b6        	bltui	a0, 5, 2fd0 <wifi_softap_set_default_ssid+0x104>
    2fcd:	002e46        	j	308a <wifi_softap_set_default_ssid+0x1be>
    2fd0:	300b      	addi.n	a3, a0, -1
    2fd2:	0b4316        	beqz	a3, 308a <wifi_softap_set_default_ssid+0x1be>
    2fd5:	196c02        	s32i	a0, a12, 100
    2fd8:	01dd42        	addmi	a4, a13, 0x100
    2fdb:	d4c442        	addi	a4, a4, -44
    2fde:	106142        	s32i	a4, a1, 64
    2fe1:	ee58      	l32i.n	a5, a14, 56
    2fe3:	3c0e62        	l8ui	a6, a14, 60
    2fe6:	551b      	addi.n	a5, a5, 1
    2fe8:	0b1516        	beqz	a5, 309d <wifi_softap_set_default_ssid+0x1d1>
    2feb:	ffa072        	movi	a7, 255
    2fee:	c06670        	sub	a6, a6, a7
    2ff1:	0a8616        	beqz	a6, 309d <wifi_softap_set_default_ssid+0x1d1>
    2ff4:	01dd02        	addmi	a0, a13, 0x100
    2ff7:	b4c002        	addi	a0, a0, -76
    2ffa:	0c2d      	mov.n	a2, a12
    2ffc:	042c      	movi.n	a4, 32
    2ffe:	003d      	mov.n	a3, a0
    3000:	ffd501        	l32r	a0, 2f54 <wifi_softap_set_default_ssid+0x88>
    3003:	0000c0        	callx0	a0
    3006:	102132        	l32i	a3, a1, 64
    3009:	20cc22        	addi	a2, a12, 32
    300c:	044c      	movi.n	a4, 64
    300e:	ffd201        	l32r	a0, 2f58 <wifi_softap_set_default_ssid+0x8c>
    3011:	0000c0        	callx0	a0
    3014:	ee08      	l32i.n	a0, a14, 56
    3016:	022c      	movi.n	a2, 32
    3018:	022207        	blt	a2, a0, 301e <wifi_softap_set_default_ssid+0x152>
    301b:	0510e6        	bgei	a0, 1, 3024 <wifi_softap_set_default_ssid+0x158>
    301e:	604cf2        	s8i	a15, a12, 96
    3021:	000086        	j	3027 <wifi_softap_set_default_ssid+0x15b>
    3024:	604c02        	s8i	a0, a12, 96
    3027:	bd0e02        	l8ui	a0, a14, 189
    302a:	e30c      	movi.n	a3, 14
    302c:	013307        	bltu	a3, a0, 3031 <wifi_softap_set_default_ssid+0x165>
    302f:	00cc      	bnez.n	a0, 3033 <wifi_softap_set_default_ssid+0x167>
    3031:	100c      	movi.n	a0, 1
    3033:	614c02        	s8i	a0, a12, 97
    3036:	bf0e02        	l8ui	a0, a14, 191
    3039:	0120f6        	bgeui	a0, 2, 303e <wifi_softap_set_default_ssid+0x172>
    303c:	00fd      	mov.n	a15, a0
    303e:	ffbf41        	l32r	a4, 2f3c <wifi_softap_set_default_ssid+0x70>
    3041:	684cf2        	s8i	a15, a12, 104
    3044:	c00e22        	l8ui	a2, a14, 192
    3047:	800c      	movi.n	a0, 8
    3049:	013027        	bltu	a0, a2, 304e <wifi_softap_set_default_ssid+0x182>
    304c:	020d      	mov.n	a0, a2
    304e:	694c02        	s8i	a0, a12, 105
    3051:	03dd02        	addmi	a0, a13, 0x300
    3054:	361002        	l16ui	a0, a0, 108
    3057:	a138      	l32i.n	a3, a1, 40
    3059:	053407        	bltu	a4, a0, 3062 <wifi_softap_set_default_ssid+0x196>
    305c:	63a022        	movi	a2, 99
    305f:	023207        	bltu	a2, a0, 3065 <wifi_softap_set_default_ssid+0x199>
    3062:	64a002        	movi	a0, 100
    3065:	355c02        	s16i	a0, a12, 106
    3068:	0d1326        	beqi	a3, 1, 3079 <wifi_softap_set_default_ssid+0x1ad>
    306b:	0d2d      	mov.n	a2, a13
    306d:	ffb431        	l32r	a3, 2f40 <wifi_softap_set_default_ssid+0x74>
    3070:	ffb541        	l32r	a4, 2f44 <wifi_softap_set_default_ssid+0x78>
    3073:	ffba01        	l32r	a0, 2f5c <wifi_softap_set_default_ssid+0x90>
    3076:	0000c0        	callx0	a0
    3079:	120c      	movi.n	a2, 1
    307b:	c1c8      	l32i.n	a12, a1, 48
    307d:	d1d8      	l32i.n	a13, a1, 52
    307f:	e1e8      	l32i.n	a14, a1, 56
    3081:	f1f8      	l32i.n	a15, a1, 60
    3083:	b108      	l32i.n	a0, a1, 44
    3085:	50c112        	addi	a1, a1, 80
    3088:	f00d      	ret.n
    308a:	196cf2        	s32i	a15, a12, 100
    308d:	034c      	movi.n	a3, 64
    308f:	2d2a      	add.n	a2, a13, a2
    3091:	106122        	s32i	a2, a1, 64
    3094:	ffb301        	l32r	a0, 2f60 <wifi_softap_set_default_ssid+0x94>
    3097:	0000c0        	callx0	a0
    309a:	ffd0c6        	j	2fe1 <wifi_softap_set_default_ssid+0x115>
    309d:	ffaa21        	l32r	a2, 2f48 <wifi_softap_set_default_ssid+0x7c>
    30a0:	013d      	mov.n	a3, a1
    30a2:	441c      	movi.n	a4, 20
    30a4:	000005        	call0	30a8 <wifi_softap_set_default_ssid+0x1dc>
    30a7:	120c      	movi.n	a2, 1
    30a9:	20c132        	addi	a3, a1, 32
    30ac:	000005        	call0	30b0 <wifi_softap_set_default_ssid+0x1e4>
    30af:	432c      	movi.n	a3, 36
    30b1:	01dd22        	addmi	a2, a13, 0x100
    30b4:	b0c222        	addi	a2, a2, -80
    30b7:	ffab01        	l32r	a0, 2f64 <wifi_softap_set_default_ssid+0x98>
    30ba:	0000c0        	callx0	a0
    30bd:	013d      	mov.n	a3, a1
    30bf:	230142        	l8ui	a4, a1, 35
    30c2:	240152        	l8ui	a5, a1, 36
    30c5:	250162        	l8ui	a6, a1, 37
    30c8:	01dd22        	addmi	a2, a13, 0x100
    30cb:	b4c222        	addi	a2, a2, -76
    30ce:	116122        	s32i	a2, a1, 68
    30d1:	ffa501        	l32r	a0, 2f68 <wifi_softap_set_default_ssid+0x9c>
    30d4:	0000c0        	callx0	a0
    30d7:	112102        	l32i	a0, a1, 68
    30da:	a30c      	movi.n	a3, 10
    30dc:	ee39      	s32i.n	a3, a14, 56
    30de:	ffc606        	j	2ffa <wifi_softap_set_default_ssid+0x12e>
    30e1:	000000        	ill

000030e4 <wifi_softap_get_config>:
    30e4:	130c      	movi.n	a3, 1
    30e6:	f0c112        	addi	a1, a1, -16
    30e9:	0109      	s32i.n	a0, a1, 0
    30eb:	ffe805        	call0	2f6c <wifi_softap_set_default_ssid+0xa0>
    30ee:	0108      	l32i.n	a0, a1, 0
    30f0:	10c112        	addi	a1, a1, 16
    30f3:	f00d      	ret.n
    30f5:	000000        	ill

000030f8 <wifi_softap_get_config_default>:
    30f8:	030c      	movi.n	a3, 0
    30fa:	f0c112        	addi	a1, a1, -16
    30fd:	0109      	s32i.n	a0, a1, 0
    30ff:	ffe6c5        	call0	2f6c <wifi_softap_set_default_ssid+0xa0>
    3102:	0108      	l32i.n	a0, a1, 0
    3104:	10c112        	addi	a1, a1, 16
    3107:	f00d      	ret.n
    3109:	000000        	ill
    310c:	000000        	ill
    310f:	008800        	excw
    3112:	800000        	add	a0, a0, a0
	...
    3121:	000000        	ill
    3124:	000993        	excw
    3127:	000000        	ill
    312a:	bb0000        	excw
    312d:	0009      	s32i.n	a0, a0, 0
    312f:	ea6000        	excw
    3132:	000000        	ill
    3135:	000190        	excw
    3138:	001000        	excw
	...
    314b:	0a0b00        	excw
	...
    315e:	c10000        	mul16u	a0, a0, a0
    3161:	0009      	s32i.n	a0, a0, 0
    3163:	000000        	ill
    3166:	b20000        	excw
    3169:	0009      	s32i.n	a0, a0, 0
	...
    31c7:	c11200        	mul16u	a1, a2, a0
    31ca:	61e9d0        	xsr.debugcause	a13
    31cd:	71f9      	s32i.n	a15, a1, 28
    31cf:	3109      	s32i.n	a0, a1, 12
    31d1:	41c9      	s32i.n	a12, a1, 16
    31d3:	51d9      	s32i.n	a13, a1, 20
    31d5:	02cd      	mov.n	a12, a2
    31d7:	03dd      	mov.n	a13, a3
    31d9:	000005        	call0	31dc <wifi_softap_get_config_default+0xe4>
    31dc:	cc8c      	beqz.n	a12, 31ec <wifi_softap_get_config_default+0xf4>
    31de:	0a1226        	beqi	a2, 1, 31ec <wifi_softap_get_config_default+0xf4>
    31e1:	728c      	beqz.n	a2, 31ec <wifi_softap_get_config_default+0xf4>
    31e3:	ffca31        	l32r	a3, 310c <wifi_softap_get_config_default+0x14>
    31e6:	560302        	l8ui	a0, a3, 86
    31e9:	101066        	bnei	a0, 1, 31fd <wifi_softap_get_config_default+0x105>
    31ec:	020c      	movi.n	a2, 0
    31ee:	41c8      	l32i.n	a12, a1, 16
    31f0:	51d8      	l32i.n	a13, a1, 20
    31f2:	61e8      	l32i.n	a14, a1, 24
    31f4:	71f8      	l32i.n	a15, a1, 28
    31f6:	3108      	l32i.n	a0, a1, 12
    31f8:	30c112        	addi	a1, a1, 48
    31fb:	f00d      	ret.n
    31fd:	620c      	movi.n	a2, 6
    31ff:	21d9      	s32i.n	a13, a1, 8
    3201:	fd4fc5        	call0	700 <system_get_os_print+0x48>
    3204:	180266        	bnei	a2, -1, 3220 <wifi_softap_get_config_default+0x128>
    3207:	0c3d      	mov.n	a3, a12
    3209:	ffc121        	l32r	a2, 3110 <wifi_softap_get_config_default+0x18>
    320c:	6ca042        	movi	a4, 108
    320f:	ffd701        	l32r	a0, 316c <wifi_softap_get_config_default+0x74>
    3212:	0000c0        	callx0	a0
    3215:	ffbf31        	l32r	a3, 3114 <wifi_softap_get_config_default+0x1c>
    3218:	2128      	l32i.n	a2, a1, 8
    321a:	744322        	s8i	a2, a3, 116
    321d:	008106        	j	3425 <wifi_softap_get_config_default+0x32d>
    3220:	ffbf61        	l32r	a6, 311c <wifi_softap_get_config_default+0x24>
    3223:	ffbde1        	l32r	a14, 3118 <wifi_softap_get_config_default+0x20>
    3226:	21d9      	s32i.n	a13, a1, 8
    3228:	4dcc      	bnez.n	a13, 3230 <wifi_softap_get_config_default+0x138>
    322a:	ffbdd1        	l32r	a13, 3120 <wifi_softap_get_config_default+0x28>
    322d:	000ac6        	j	325c <wifi_softap_get_config_default+0x164>
    3230:	063d      	mov.n	a3, a6
    3232:	84a422        	movi	a2, 0x484
    3235:	ffbb41        	l32r	a4, 3124 <wifi_softap_get_config_default+0x2c>
    3238:	ffce01        	l32r	a0, 3170 <wifi_softap_get_config_default+0x78>
    323b:	0000c0        	callx0	a0
    323e:	0e48      	l32i.n	a4, a14, 0
    3240:	02dd      	mov.n	a13, a2
    3242:	3438      	l32i.n	a3, a4, 12
    3244:	1428      	l32i.n	a2, a4, 4
    3246:	ffcb01        	l32r	a0, 3174 <wifi_softap_get_config_default+0x7c>
    3249:	0000c0        	callx0	a0
    324c:	030c      	movi.n	a3, 0
    324e:	0d4d      	mov.n	a4, a13
    3250:	84a452        	movi	a5, 0x484
    3253:	fdc222        	addi	a2, a2, -3
    3256:	f42020        	extui	a2, a2, 0, 16
    3259:	000005        	call0	325c <wifi_softap_get_config_default+0x164>
    325c:	0c3d      	mov.n	a3, a12
    325e:	042c      	movi.n	a4, 32
    3260:	01dde2        	addmi	a14, a13, 0x100
    3263:	b4cee2        	addi	a14, a14, -76
    3266:	0e2d      	mov.n	a2, a14
    3268:	01e9      	s32i.n	a14, a1, 0
    326a:	ffc301        	l32r	a0, 3178 <wifi_softap_get_config_default+0x80>
    326d:	0000c0        	callx0	a0
    3270:	20ccf2        	addi	a15, a12, 32
    3273:	1ba216        	beqz	a2, 3431 <wifi_softap_get_config_default+0x339>
    3276:	192c02        	l32i	a0, a12, 100
    3279:	120c      	movi.n	a2, 1
    327b:	8129      	s32i.n	a2, a1, 32
    327d:	2520b6        	bltui	a0, 2, 32a6 <wifi_softap_get_config_default+0x1ae>
    3280:	0f2d      	mov.n	a2, a15
    3282:	ffbe01        	l32r	a0, 317c <wifi_softap_get_config_default+0x84>
    3285:	0000c0        	callx0	a0
    3288:	0282a6        	blti	a2, 8, 328e <wifi_softap_get_config_default+0x196>
    328b:	0074c6        	j	3462 <wifi_softap_get_config_default+0x36a>
    328e:	2148      	l32i.n	a4, a1, 8
    3290:	440b      	addi.n	a4, a4, -1
    3292:	f56456        	bnez	a4, 31ec <wifi_softap_get_config_default+0xf4>
    3295:	0d2d      	mov.n	a2, a13
    3297:	ffa431        	l32r	a3, 3128 <wifi_softap_get_config_default+0x30>
    329a:	ffa441        	l32r	a4, 312c <wifi_softap_get_config_default+0x34>
    329d:	ffb801        	l32r	a0, 3180 <wifi_softap_get_config_default+0x88>
    32a0:	0000c0        	callx0	a0
    32a3:	ffd146        	j	31ec <wifi_softap_get_config_default+0xf4>
    32a6:	000c52        	l8ui	a5, a12, 0
    32a9:	ffa002        	movi	a0, 255
    32ac:	0e9507        	bne	a5, a0, 32be <wifi_softap_get_config_default+0x1c6>
    32af:	010c62        	l8ui	a6, a12, 1
    32b2:	089607        	bne	a6, a0, 32be <wifi_softap_get_config_default+0x1c6>
    32b5:	000005        	call0	32b8 <wifi_softap_get_config_default+0x1c0>
    32b8:	78cde2        	addi	a14, a13, 120
    32bb:	000a46        	j	32e8 <wifi_softap_get_config_default+0x1f0>
    32be:	600c02        	l8ui	a0, a12, 96
    32c1:	90cc      	bnez.n	a0, 32ce <wifi_softap_get_config_default+0x1d6>
    32c3:	0c2d      	mov.n	a2, a12
    32c5:	ffaf01        	l32r	a0, 3184 <wifi_softap_get_config_default+0x8c>
    32c8:	0000c0        	callx0	a0
    32cb:	740020        	extui	a0, a2, 0, 8
    32ce:	042c      	movi.n	a4, 32
    32d0:	78cde2        	addi	a14, a13, 120
    32d3:	172c      	movi.n	a7, 33
    32d5:	013077        	bltu	a0, a7, 32da <wifi_softap_get_config_default+0x1e2>
    32d8:	040d      	mov.n	a0, a4
    32da:	0128      	l32i.n	a2, a1, 0
    32dc:	0c3d      	mov.n	a3, a12
    32de:	042c      	movi.n	a4, 32
    32e0:	ee09      	s32i.n	a0, a14, 56
    32e2:	ffa901        	l32r	a0, 3188 <wifi_softap_get_config_default+0x90>
    32e5:	0000c0        	callx0	a0
    32e8:	0f3d      	mov.n	a3, a15
    32ea:	044c      	movi.n	a4, 64
    32ec:	01dd22        	addmi	a2, a13, 0x100
    32ef:	d4c222        	addi	a2, a2, -44
    32f2:	1129      	s32i.n	a2, a1, 4
    32f4:	ffa601        	l32r	a0, 318c <wifi_softap_get_config_default+0x94>
    32f7:	0000c0        	callx0	a0
    32fa:	70a282        	movi	a8, 0x270
    32fd:	040c      	movi.n	a4, 0
    32ff:	9c4e42        	s8i	a4, a14, 156
    3302:	192c02        	l32i	a0, a12, 100
    3305:	170c      	movi.n	a7, 1
    3307:	0260f6        	bgeui	a0, 6, 330d <wifi_softap_get_config_default+0x215>
    330a:	051066        	bnei	a0, 1, 3313 <wifi_softap_get_config_default+0x21b>
    330d:	be4e42        	s8i	a4, a14, 190
    3310:	000086        	j	3316 <wifi_softap_get_config_default+0x21e>
    3313:	be4e02        	s8i	a0, a14, 190
    3316:	610c02        	l8ui	a0, a12, 97
    3319:	e30c      	movi.n	a3, 14
    331b:	013307        	bltu	a3, a0, 3320 <wifi_softap_get_config_default+0x228>
    331e:	40cc      	bnez.n	a0, 3326 <wifi_softap_get_config_default+0x22e>
    3320:	bd4e72        	s8i	a7, a14, 189
    3323:	000086        	j	3329 <wifi_softap_get_config_default+0x231>
    3326:	bd4e02        	s8i	a0, a14, 189
    3329:	680c02        	l8ui	a0, a12, 104
    332c:	0120f6        	bgeui	a0, 2, 3331 <wifi_softap_get_config_default+0x239>
    332f:	004d      	mov.n	a4, a0
    3331:	bf4e42        	s8i	a4, a14, 191
    3334:	690c42        	l8ui	a4, a12, 105
    3337:	800c      	movi.n	a0, 8
    3339:	013047        	bltu	a0, a4, 333e <wifi_softap_get_config_default+0x246>
    333c:	040d      	mov.n	a0, a4
    333e:	ff7c41        	l32r	a4, 3130 <wifi_softap_get_config_default+0x38>
    3341:	c04e02        	s8i	a0, a14, 192
    3344:	351c22        	l16ui	a2, a12, 106
    3347:	083427        	bltu	a4, a2, 3353 <wifi_softap_get_config_default+0x25b>
    334a:	63a052        	movi	a5, 99
    334d:	02b527        	bgeu	a5, a2, 3353 <wifi_softap_get_config_default+0x25b>
    3350:	003586        	j	342a <wifi_softap_get_config_default+0x332>
    3353:	fd8a      	add.n	a15, a13, a8
    3355:	64a022        	movi	a2, 100
    3358:	64a002        	movi	a0, 100
    335b:	64a032        	movi	a3, 100
    335e:	7e5f02        	s16i	a0, a15, 252
    3361:	ff8b01        	l32r	a0, 3190 <wifi_softap_get_config_default+0x98>
    3364:	0000c0        	callx0	a0
    3367:	ff7331        	l32r	a3, 3134 <wifi_softap_get_config_default+0x3c>
    336a:	f42020        	extui	a2, a2, 0, 16
    336d:	822230        	mull	a2, a2, a3
    3370:	ff8901        	l32r	a0, 3194 <wifi_softap_get_config_default+0x9c>
    3373:	0000c0        	callx0	a0
    3376:	192c42        	l32i	a4, a12, 100
    3379:	2e24b6        	bltui	a4, 2, 33ab <wifi_softap_get_config_default+0x2b3>
    337c:	11c8      	l32i.n	a12, a1, 4
    337e:	0c2d      	mov.n	a2, a12
    3380:	ff8601        	l32r	a0, 3198 <wifi_softap_get_config_default+0xa0>
    3383:	0000c0        	callx0	a0
    3386:	21d2e6        	bgei	a2, 64, 33ab <wifi_softap_get_config_default+0x2b3>
    3389:	8158      	l32i.n	a5, a1, 32
    338b:	1c1566        	bnei	a5, 1, 33ab <wifi_softap_get_config_default+0x2b3>
    338e:	000005        	call0	3390 <wifi_softap_get_config_default+0x298>
    3391:	0c2d      	mov.n	a2, a12
    3393:	0138      	l32i.n	a3, a1, 0
    3395:	ee48      	l32i.n	a4, a14, 56
    3397:	ff6851        	l32r	a5, 3138 <wifi_softap_get_config_default+0x40>
    339a:	072c      	movi.n	a7, 32
    339c:	01dd62        	addmi	a6, a13, 0x100
    339f:	15c662        	addi	a6, a6, 21
    33a2:	ff7e01        	l32r	a0, 319c <wifi_softap_get_config_default+0xa4>
    33a5:	0000c0        	callx0	a0
    33a8:	000005        	call0	33ac <wifi_softap_get_config_default+0x2b4>
    33ab:	2178      	l32i.n	a7, a1, 8
    33ad:	4a1766        	bnei	a7, 1, 33fb <wifi_softap_get_config_default+0x303>
    33b0:	ff6331        	l32r	a3, 313c <wifi_softap_get_config_default+0x44>
    33b3:	0338      	l32i.n	a3, a3, 0
    33b5:	1328      	l32i.n	a2, a3, 4
    33b7:	3338      	l32i.n	a3, a3, 12
    33b9:	ff7901        	l32r	a0, 31a0 <wifi_softap_get_config_default+0xa8>
    33bc:	0000c0        	callx0	a0
    33bf:	0d3d      	mov.n	a3, a13
    33c1:	84a442        	movi	a4, 0x484
    33c4:	fdc222        	addi	a2, a2, -3
    33c7:	f42020        	extui	a2, a2, 0, 16
    33ca:	000005        	call0	33cc <wifi_softap_get_config_default+0x2d4>
    33cd:	ff5c21        	l32r	a2, 3140 <wifi_softap_get_config_default+0x48>
    33d0:	8ca042        	movi	a4, 140
    33d3:	01dd32        	addmi	a3, a13, 0x100
    33d6:	b0c332        	addi	a3, a3, -80
    33d9:	ff7201        	l32r	a0, 31a4 <wifi_softap_get_config_default+0xac>
    33dc:	0000c0        	callx0	a0
    33df:	ff5951        	l32r	a5, 3144 <wifi_softap_get_config_default+0x4c>
    33e2:	7e1f42        	l16ui	a4, a15, 252
    33e5:	2138      	l32i.n	a3, a1, 8
    33e7:	325542        	s16i	a4, a5, 100
    33ea:	0d1366        	bnei	a3, 1, 33fb <wifi_softap_get_config_default+0x303>
    33ed:	0d2d      	mov.n	a2, a13
    33ef:	ff5631        	l32r	a3, 3148 <wifi_softap_get_config_default+0x50>
    33f2:	ff5641        	l32r	a4, 314c <wifi_softap_get_config_default+0x54>
    33f5:	ff6c01        	l32r	a0, 31a8 <wifi_softap_get_config_default+0xb0>
    33f8:	0000c0        	callx0	a0
    33fb:	ff5561        	l32r	a6, 3150 <wifi_softap_get_config_default+0x58>
    33fe:	5668      	l32i.n	a6, a6, 20
    3400:	16ac      	beqz.n	a6, 3425 <wifi_softap_get_config_default+0x32d>
    3402:	ff5471        	l32r	a7, 3154 <wifi_softap_get_config_default+0x5c>
    3405:	560772        	l8ui	a7, a7, 86
    3408:	17dc      	bnez.n	a7, 341d <wifi_softap_get_config_default+0x325>
    340a:	020c      	movi.n	a2, 0
    340c:	ff6801        	l32r	a0, 31ac <wifi_softap_get_config_default+0xb4>
    340f:	0000c0        	callx0	a0
    3412:	020c      	movi.n	a2, 0
    3414:	ff6701        	l32r	a0, 31b0 <wifi_softap_get_config_default+0xb8>
    3417:	0000c0        	callx0	a0
    341a:	0001c6        	j	3425 <wifi_softap_get_config_default+0x32d>
    341d:	ff4e91        	l32r	a9, 3158 <wifi_softap_get_config_default+0x60>
    3420:	180c      	movi.n	a8, 1
    3422:	004982        	s8i	a8, a9, 0
    3425:	120c      	movi.n	a2, 1
    3427:	ff70c6        	j	31ee <wifi_softap_get_config_default+0xf6>
    342a:	fd8a      	add.n	a15, a13, a8
    342c:	020d      	mov.n	a0, a2
    342e:	ffca46        	j	335b <wifi_softap_get_config_default+0x263>
    3431:	0f3d      	mov.n	a3, a15
    3433:	044c      	movi.n	a4, 64
    3435:	01dd22        	addmi	a2, a13, 0x100
    3438:	d4c222        	addi	a2, a2, -44
    343b:	ff5e01        	l32r	a0, 31b4 <wifi_softap_get_config_default+0xbc>
    343e:	0000c0        	callx0	a0
    3441:	192c02        	l32i	a0, a12, 100
    3444:	e31256        	bnez	a2, 3279 <wifi_softap_get_config_default+0x181>
    3447:	78cde2        	addi	a14, a13, 120
    344a:	be0e42        	l8ui	a4, a14, 190
    344d:	4c1047        	beq	a0, a4, 349d <wifi_softap_get_config_default+0x3a5>
    3450:	74cc      	bnez.n	a4, 345b <wifi_softap_get_config_default+0x363>
    3452:	782026        	beqi	a0, 2, 34ce <wifi_softap_get_config_default+0x3d6>
    3455:	753026        	beqi	a0, 3, 34ce <wifi_softap_get_config_default+0x3d6>
    3458:	724026        	beqi	a0, 4, 34ce <wifi_softap_get_config_default+0x3d6>
    345b:	0a0c      	movi.n	a10, 0
    345d:	81a9      	s32i.n	a10, a1, 32
    345f:	ff8686        	j	327d <wifi_softap_get_config_default+0x185>
    3462:	0f2d      	mov.n	a2, a15
    3464:	ff5501        	l32r	a0, 31b8 <wifi_softap_get_config_default+0xc0>
    3467:	0000c0        	callx0	a0
    346a:	02d2e6        	bgei	a2, 64, 3470 <wifi_softap_get_config_default+0x378>
    346d:	ff8d46        	j	32a6 <wifi_softap_get_config_default+0x1ae>
    3470:	0f2d      	mov.n	a2, a15
    3472:	042c      	movi.n	a4, 32
    3474:	01dd32        	addmi	a3, a13, 0x100
    3477:	15c332        	addi	a3, a3, 21
    347a:	ff5001        	l32r	a0, 31bc <wifi_softap_get_config_default+0xc4>
    347d:	0000c0        	callx0	a0
    3480:	421b      	addi.n	a4, a2, 1
    3482:	e20456        	bnez	a4, 32a6 <wifi_softap_get_config_default+0x1ae>
    3485:	2158      	l32i.n	a5, a1, 8
    3487:	550b      	addi.n	a5, a5, -1
    3489:	d5f556        	bnez	a5, 31ec <wifi_softap_get_config_default+0xf4>
    348c:	0d2d      	mov.n	a2, a13
    348e:	ff3331        	l32r	a3, 315c <wifi_softap_get_config_default+0x64>
    3491:	ff3341        	l32r	a4, 3160 <wifi_softap_get_config_default+0x68>
    3494:	ff4b01        	l32r	a0, 31c0 <wifi_softap_get_config_default+0xc8>
    3497:	0000c0        	callx0	a0
    349a:	ff5386        	j	31ec <wifi_softap_get_config_default+0xf4>
    349d:	bd0e72        	l8ui	a7, a14, 189
    34a0:	610c62        	l8ui	a6, a12, 97
    34a3:	209677        	bne	a6, a7, 34c7 <wifi_softap_get_config_default+0x3cf>
    34a6:	c00e92        	l8ui	a9, a14, 192
    34a9:	690c82        	l8ui	a8, a12, 105
    34ac:	179897        	bne	a8, a9, 34c7 <wifi_softap_get_config_default+0x3cf>
    34af:	bf0eb2        	l8ui	a11, a14, 191
    34b2:	680ca2        	l8ui	a10, a12, 104
    34b5:	0e9ab7        	bne	a10, a11, 34c7 <wifi_softap_get_config_default+0x3cf>
    34b8:	351ce2        	l16ui	a14, a12, 106
    34bb:	02dd22        	addmi	a2, a13, 0x200
    34be:	70c222        	addi	a2, a2, 112
    34c1:	7e1222        	l16ui	a2, a2, 252
    34c4:	0d1e27        	beq	a14, a2, 34d5 <wifi_softap_get_config_default+0x3dd>
    34c7:	030c      	movi.n	a3, 0
    34c9:	8139      	s32i.n	a3, a1, 32
    34cb:	ff6b86        	j	327d <wifi_softap_get_config_default+0x185>
    34ce:	140c      	movi.n	a4, 1
    34d0:	8149      	s32i.n	a4, a1, 32
    34d2:	ff69c6        	j	327d <wifi_softap_get_config_default+0x185>
    34d5:	2158      	l32i.n	a5, a1, 8
    34d7:	550b      	addi.n	a5, a5, -1
    34d9:	f48556        	bnez	a5, 3425 <wifi_softap_get_config_default+0x32d>
    34dc:	0d2d      	mov.n	a2, a13
    34de:	ff2131        	l32r	a3, 3164 <wifi_softap_get_config_default+0x6c>
    34e1:	ff2141        	l32r	a4, 3168 <wifi_softap_get_config_default+0x70>
    34e4:	ff3801        	l32r	a0, 31c4 <wifi_softap_get_config_default+0xcc>
    34e7:	0000c0        	callx0	a0
    34ea:	ffcdc6        	j	3425 <wifi_softap_get_config_default+0x32d>
    34ed:	000000        	ill

000034f0 <wifi_softap_set_config>:
    34f0:	130c      	movi.n	a3, 1
    34f2:	f0c112        	addi	a1, a1, -16
    34f5:	0109      	s32i.n	a0, a1, 0
    34f7:	ffcd05        	call0	31c8 <wifi_softap_get_config_default+0xd0>
    34fa:	0108      	l32i.n	a0, a1, 0
    34fc:	10c112        	addi	a1, a1, 16
    34ff:	f00d      	ret.n
    3501:	000000        	ill

00003504 <wifi_softap_set_config_current>:
    3504:	030c      	movi.n	a3, 0
    3506:	f0c112        	addi	a1, a1, -16
    3509:	0109      	s32i.n	a0, a1, 0
    350b:	ffcbc5        	call0	31c8 <wifi_softap_get_config_default+0xd0>
    350e:	0108      	l32i.n	a0, a1, 0
    3510:	10c112        	addi	a1, a1, 16
    3513:	f00d      	ret.n
	...

00003528 <wifi_softap_set_station_info>:
    3528:	e0c112        	addi	a1, a1, -32
    352b:	41e9      	s32i.n	a14, a1, 16
    352d:	51f9      	s32i.n	a15, a1, 20
    352f:	21c9      	s32i.n	a12, a1, 8
    3531:	31d9      	s32i.n	a13, a1, 12
    3533:	1109      	s32i.n	a0, a1, 4
    3535:	fff801        	l32r	a0, 3518 <wifi_softap_set_config_current+0x14>
    3538:	fff9d1        	l32r	a13, 351c <wifi_softap_set_config_current+0x18>
    353b:	b00002        	l8ui	a0, a0, 176
    353e:	5dd8      	l32i.n	a13, a13, 20
    3540:	029096        	bltz	a0, 356d <wifi_softap_set_station_info+0x45>
    3543:	1c0c      	movi.n	a12, 1
    3545:	02fd      	mov.n	a15, a2
    3547:	0139      	s32i.n	a3, a1, 0
    3549:	a0ecd0        	addx4	a14, a12, a13
    354c:	262e32        	l32i	a3, a14, 152
    354f:	039c      	beqz.n	a3, 3563 <wifi_softap_set_station_info+0x3b>
    3551:	0f2d      	mov.n	a2, a15
    3553:	640c      	movi.n	a4, 6
    3555:	fff301        	l32r	a0, 3524 <wifi_softap_set_config_current+0x20>
    3558:	0000c0        	callx0	a0
    355b:	f29c      	beqz.n	a2, 357e <wifi_softap_set_station_info+0x56>
    355d:	fff001        	l32r	a0, 3520 <wifi_softap_set_config_current+0x1c>
    3560:	b00002        	l8ui	a0, a0, 176
    3563:	cc1b      	addi.n	a12, a12, 1
    3565:	202b      	addi.n	a2, a0, 2
    3567:	74c0c0        	extui	a12, a12, 0, 8
    356a:	db2c27        	blt	a12, a2, 3549 <wifi_softap_set_station_info+0x21>
    356d:	020c      	movi.n	a2, 0
    356f:	21c8      	l32i.n	a12, a1, 8
    3571:	31d8      	l32i.n	a13, a1, 12
    3573:	41e8      	l32i.n	a14, a1, 16
    3575:	51f8      	l32i.n	a15, a1, 20
    3577:	1108      	l32i.n	a0, a1, 4
    3579:	20c112        	addi	a1, a1, 32
    357c:	f00d      	ret.n
    357e:	120c      	movi.n	a2, 1
    3580:	01d8      	l32i.n	a13, a1, 0
    3582:	262ef2        	l32i	a15, a14, 152
    3585:	0dd8      	l32i.n	a13, a13, 0
    3587:	426fd2        	s32i	a13, a15, 0x108
    358a:	fff846        	j	356f <wifi_softap_set_station_info+0x47>
	...
    35a1:	000000        	ill
    35a4:	0a4c      	movi.n	a10, 64
	...

000035bc <wifi_softap_get_station_info>:
    35bc:	e0c112        	addi	a1, a1, -32
    35bf:	11c9      	s32i.n	a12, a1, 4
    35c1:	21d9      	s32i.n	a13, a1, 8
    35c3:	41f9      	s32i.n	a15, a1, 16
    35c5:	31e9      	s32i.n	a14, a1, 12
    35c7:	fff2e1        	l32r	a14, 3590 <wifi_softap_set_station_info+0x68>
    35ca:	0109      	s32i.n	a0, a1, 0
    35cc:	5ee8      	l32i.n	a14, a14, 20
    35ce:	000005        	call0	35d0 <wifi_softap_get_station_info+0x14>
    35d1:	08de16        	beqz	a14, 3662 <wifi_softap_get_station_info+0xa6>
    35d4:	021266        	bnei	a2, 1, 35da <wifi_softap_get_station_info+0x1e>
    35d7:	0021c6        	j	3662 <wifi_softap_get_station_info+0xa6>
    35da:	084216        	beqz	a2, 3662 <wifi_softap_get_station_info+0xa6>
    35dd:	ffef31        	l32r	a3, 359c <wifi_softap_set_station_info+0x74>
    35e0:	ffeef1        	l32r	a15, 3598 <wifi_softap_set_station_info+0x70>
    35e3:	020c      	movi.n	a2, 0
    35e5:	ffeb01        	l32r	a0, 3594 <wifi_softap_set_station_info+0x6c>
    35e8:	1f6f22        	s32i	a2, a15, 124
    35eb:	7ccff2        	addi	a15, a15, 124
    35ee:	b00022        	l8ui	a2, a0, 176
    35f1:	6063f2        	s32i	a15, a3, 0x180
    35f4:	055296        	bltz	a2, 364d <wifi_softap_get_station_info+0x91>
    35f7:	1c0c      	movi.n	a12, 1
    35f9:	a0dce0        	addx4	a13, a12, a14
    35fc:	262d52        	l32i	a5, a13, 152
    35ff:	040516        	beqz	a5, 3643 <wifi_softap_get_station_info+0x87>
    3602:	422542        	l32i	a4, a5, 0x108
    3605:	74bc      	beqz.n	a4, 3640 <wifi_softap_get_station_info+0x84>
    3607:	021c      	movi.n	a2, 16
    3609:	ffe531        	l32r	a3, 35a0 <wifi_softap_set_station_info+0x78>
    360c:	ffe641        	l32r	a4, 35a4 <wifi_softap_set_station_info+0x7c>
    360f:	ffe901        	l32r	a0, 35b4 <wifi_softap_set_station_info+0x8c>
    3612:	0000c0        	callx0	a0
    3615:	02fd      	mov.n	a15, a2
    3617:	22bc      	beqz.n	a2, 364d <wifi_softap_get_station_info+0x91>
    3619:	224b      	addi.n	a2, a2, 4
    361b:	262d32        	l32i	a3, a13, 152
    361e:	640c      	movi.n	a4, 6
    3620:	ffe601        	l32r	a0, 35b8 <wifi_softap_set_station_info+0x90>
    3623:	0000c0        	callx0	a0
    3626:	ffe151        	l32r	a5, 35ac <wifi_softap_set_station_info+0x84>
    3629:	080c      	movi.n	a8, 0
    362b:	262d72        	l32i	a7, a13, 152
    362e:	0f89      	s32i.n	a8, a15, 0
    3630:	422772        	l32i	a7, a7, 0x108
    3633:	3f79      	s32i.n	a7, a15, 12
    3635:	602562        	l32i	a6, a5, 0x180
    3638:	ffdc01        	l32r	a0, 35a8 <wifi_softap_set_station_info+0x80>
    363b:	06f9      	s32i.n	a15, a6, 0
    363d:	6065f2        	s32i	a15, a5, 0x180
    3640:	b00022        	l8ui	a2, a0, 176
    3643:	cc1b      	addi.n	a12, a12, 1
    3645:	922b      	addi.n	a9, a2, 2
    3647:	74c0c0        	extui	a12, a12, 0, 8
    364a:	ab2c97        	blt	a12, a9, 35f9 <wifi_softap_get_station_info+0x3d>
    364d:	ffd821        	l32r	a2, 35b0 <wifi_softap_set_station_info+0x88>
    3650:	5f2222        	l32i	a2, a2, 0x17c
    3653:	11c8      	l32i.n	a12, a1, 4
    3655:	21d8      	l32i.n	a13, a1, 8
    3657:	31e8      	l32i.n	a14, a1, 12
    3659:	41f8      	l32i.n	a15, a1, 16
    365b:	0108      	l32i.n	a0, a1, 0
    365d:	20c112        	addi	a1, a1, 32
    3660:	f00d      	ret.n
    3662:	020c      	movi.n	a2, 0
    3664:	fffac6        	j	3653 <wifi_softap_get_station_info+0x97>
	...
    3673:	0a6300        	excw
    3676:	000000        	ill
    3679:	000000        	ill

0000367c <wifi_softap_free_station_info>:
    367c:	e0c112        	addi	a1, a1, -32
    367f:	0109      	s32i.n	a0, a1, 0
    3681:	21d9      	s32i.n	a13, a1, 8
    3683:	31e9      	s32i.n	a14, a1, 12
    3685:	41f9      	s32i.n	a15, a1, 16
    3687:	11c9      	s32i.n	a12, a1, 4
    3689:	fff7f1        	l32r	a15, 3668 <wifi_softap_get_station_info+0xac>
    368c:	fff8c1        	l32r	a12, 366c <wifi_softap_get_station_info+0xb0>
    368f:	fff8e1        	l32r	a14, 3670 <wifi_softap_get_station_info+0xb4>
    3692:	01dcd2        	addmi	a13, a12, 0x100
    3695:	5f2c22        	l32i	a2, a12, 0x17c
    3698:	629c      	beqz.n	a2, 36b2 <wifi_softap_free_station_info+0x36>
    369a:	0208      	l32i.n	a0, a2, 0
    369c:	1f6d02        	s32i	a0, a13, 124
    369f:	10cc      	bnez.n	a0, 36a4 <wifi_softap_free_station_info+0x28>
    36a1:	606cf2        	s32i	a15, a12, 0x180
    36a4:	0e3d      	mov.n	a3, a14
    36a6:	fff341        	l32r	a4, 3674 <wifi_softap_get_station_info+0xb8>
    36a9:	fff301        	l32r	a0, 3678 <wifi_softap_get_station_info+0xbc>
    36ac:	0000c0        	callx0	a0
    36af:	fff886        	j	3695 <wifi_softap_free_station_info+0x19>
    36b2:	11c8      	l32i.n	a12, a1, 4
    36b4:	21d8      	l32i.n	a13, a1, 8
    36b6:	31e8      	l32i.n	a14, a1, 12
    36b8:	41f8      	l32i.n	a15, a1, 16
    36ba:	0108      	l32i.n	a0, a1, 0
    36bc:	20c112        	addi	a1, a1, 32
    36bf:	f00d      	ret.n
	...

000036cc <wifi_softap_get_station_num>:
    36cc:	f0c112        	addi	a1, a1, -16
    36cf:	11c9      	s32i.n	a12, a1, 4
    36d1:	fffcc1        	l32r	a12, 36c4 <wifi_softap_free_station_info+0x48>
    36d4:	0109      	s32i.n	a0, a1, 0
    36d6:	5cc8      	l32i.n	a12, a12, 20
    36d8:	000005        	call0	36dc <wifi_softap_get_station_num+0x10>
    36db:	6cbc      	beqz.n	a12, 3715 <wifi_softap_get_station_num+0x49>
    36dd:	341226        	beqi	a2, 1, 3715 <wifi_softap_get_station_num+0x49>
    36e0:	12bc      	beqz.n	a2, 3715 <wifi_softap_get_station_num+0x49>
    36e2:	fff901        	l32r	a0, 36c8 <wifi_softap_free_station_info+0x4c>
    36e5:	b00002        	l8ui	a0, a0, 176
    36e8:	01e096        	bltz	a0, 370a <wifi_softap_get_station_num+0x3e>
    36eb:	020c      	movi.n	a2, 0
    36ed:	502b      	addi.n	a5, a0, 2
    36ef:	100c      	movi.n	a0, 1
    36f1:	321b      	addi.n	a3, a2, 1
    36f3:	a040c0        	addx4	a4, a0, a12
    36f6:	262442        	l32i	a4, a4, 152
    36f9:	743030        	extui	a3, a3, 0, 8
    36fc:	001b      	addi.n	a0, a0, 1
    36fe:	740000        	extui	a0, a0, 0, 8
    3701:	932340        	movnez	a2, a3, a4
    3704:	e99507        	bne	a5, a0, 36f1 <wifi_softap_get_station_num+0x25>
    3707:	000046        	j	370c <wifi_softap_get_station_num+0x40>
    370a:	020c      	movi.n	a2, 0
    370c:	11c8      	l32i.n	a12, a1, 4
    370e:	0108      	l32i.n	a0, a1, 0
    3710:	10c112        	addi	a1, a1, 16
    3713:	f00d      	ret.n
    3715:	020c      	movi.n	a2, 0
    3717:	fffc46        	j	370c <wifi_softap_get_station_num+0x40>
	...

00003744 <wifi_softap_deauth>:
    3744:	e0c112        	addi	a1, a1, -32
    3747:	31d9      	s32i.n	a13, a1, 12
    3749:	1109      	s32i.n	a0, a1, 4
    374b:	21c9      	s32i.n	a12, a1, 8
    374d:	41e9      	s32i.n	a14, a1, 16
    374f:	fff3c1        	l32r	a12, 371c <wifi_softap_get_station_num+0x50>
    3752:	02ed      	mov.n	a14, a2
    3754:	5cc8      	l32i.n	a12, a12, 20
    3756:	000005        	call0	3758 <wifi_softap_deauth+0x14>
    3759:	271226        	beqi	a2, 1, 3784 <wifi_softap_deauth+0x40>
    375c:	42ac      	beqz.n	a2, 3784 <wifi_softap_deauth+0x40>
    375e:	2cac      	beqz.n	a12, 3784 <wifi_softap_deauth+0x40>
    3760:	fff0d1        	l32r	a13, 3720 <wifi_softap_get_station_num+0x54>
    3763:	560dd2        	l8ui	a13, a13, 86
    3766:	addc      	bnez.n	a13, 3784 <wifi_softap_deauth+0x40>
    3768:	48cc22        	addi	a2, a12, 72
    376b:	242cd2        	l32i	a13, a12, 144
    376e:	262c02        	l32i	a0, a12, 152
    3771:	246c02        	s32i	a0, a12, 144
    3774:	0eec      	bnez.n	a14, 3798 <wifi_softap_deauth+0x54>
    3776:	ffeb31        	l32r	a3, 3724 <wifi_softap_get_station_num+0x58>
    3779:	640c      	movi.n	a4, 6
    377b:	ffed01        	l32r	a0, 3730 <wifi_softap_get_station_num+0x64>
    377e:	0000c0        	callx0	a0
    3781:	000746        	j	37a2 <wifi_softap_deauth+0x5e>
    3784:	020c      	movi.n	a2, 0
    3786:	000046        	j	378b <wifi_softap_deauth+0x47>
    3789:	120c      	movi.n	a2, 1
    378b:	21c8      	l32i.n	a12, a1, 8
    378d:	31d8      	l32i.n	a13, a1, 12
    378f:	41e8      	l32i.n	a14, a1, 16
    3791:	1108      	l32i.n	a0, a1, 4
    3793:	20c112        	addi	a1, a1, 32
    3796:	f00d      	ret.n
    3798:	0e3d      	mov.n	a3, a14
    379a:	640c      	movi.n	a4, 6
    379c:	ffe601        	l32r	a0, 3734 <wifi_softap_get_station_num+0x68>
    379f:	0000c0        	callx0	a0
    37a2:	0c2d      	mov.n	a2, a12
    37a4:	c0a032        	movi	a3, 192
    37a7:	240c      	movi.n	a4, 2
    37a9:	ffe301        	l32r	a0, 3738 <wifi_softap_get_station_num+0x6c>
    37ac:	0000c0        	callx0	a0
    37af:	ffde21        	l32r	a2, 3728 <wifi_softap_get_station_num+0x5c>
    37b2:	246cd2        	s32i	a13, a12, 144
    37b5:	b00222        	l8ui	a2, a2, 176
    37b8:	1d0c      	movi.n	a13, 1
    37ba:	fcb296        	bltz	a2, 3789 <wifi_softap_deauth+0x45>
    37bd:	a00dc0        	addx4	a0, a13, a12
    37c0:	262032        	l32i	a3, a0, 152
    37c3:	13ac      	beqz.n	a3, 37e8 <wifi_softap_deauth+0xa4>
    37c5:	0109      	s32i.n	a0, a1, 0
    37c7:	fe8c      	beqz.n	a14, 37da <wifi_softap_deauth+0x96>
    37c9:	0e2d      	mov.n	a2, a14
    37cb:	640c      	movi.n	a4, 6
    37cd:	ffdb01        	l32r	a0, 373c <wifi_softap_get_station_num+0x70>
    37d0:	0000c0        	callx0	a0
    37d3:	b2cc      	bnez.n	a2, 37e2 <wifi_softap_deauth+0x9e>
    37d5:	0138      	l32i.n	a3, a1, 0
    37d7:	262332        	l32i	a3, a3, 152
    37da:	0c2d      	mov.n	a2, a12
    37dc:	ffd901        	l32r	a0, 3740 <wifi_softap_get_station_num+0x74>
    37df:	0000c0        	callx0	a0
    37e2:	ffd221        	l32r	a2, 372c <wifi_softap_get_station_num+0x60>
    37e5:	b00222        	l8ui	a2, a2, 176
    37e8:	dd1b      	addi.n	a13, a13, 1
    37ea:	322b      	addi.n	a3, a2, 2
    37ec:	74d0d0        	extui	a13, a13, 0, 8
    37ef:	ca2d37        	blt	a13, a3, 37bd <wifi_softap_deauth+0x79>
    37f2:	ffe4c6        	j	3789 <wifi_softap_deauth+0x45>
    37f5:	000000        	ill
    37f8:	000000        	ill
	...

000037fc <wifi_softap_get_beacon_only_mode>:
    37fc:	ffff41        	l32r	a4, 37f8 <wifi_softap_deauth+0xb4>
    37ff:	030c      	movi.n	a3, 0
    3801:	560442        	l8ui	a4, a4, 86
    3804:	120c      	movi.n	a2, 1
    3806:	fec442        	addi	a4, a4, -2
    3809:	932340        	movnez	a2, a3, a4
    380c:	f00d      	ret.n
	...

00003828 <wifi_softap_set_beacon_only_mode>:
    3828:	f0c112        	addi	a1, a1, -16
    382b:	0129      	s32i.n	a2, a1, 0
    382d:	1109      	s32i.n	a0, a1, 4
    382f:	000005        	call0	3830 <wifi_softap_set_beacon_only_mode+0x8>
    3832:	082226        	beqi	a2, 2, 383e <wifi_softap_set_beacon_only_mode+0x16>
    3835:	020c      	movi.n	a2, 0
    3837:	1108      	l32i.n	a0, a1, 4
    3839:	10c112        	addi	a1, a1, 16
    383c:	f00d      	ret.n
    383e:	250c      	movi.n	a5, 2
    3840:	fff421        	l32r	a2, 3810 <wifi_softap_get_beacon_only_mode+0x14>
    3843:	fff441        	l32r	a4, 3814 <wifi_softap_get_beacon_only_mode+0x18>
    3846:	000222        	l8ui	a2, a2, 0
    3849:	560402        	l8ui	a0, a4, 86
    384c:	92cc      	bnez.n	a2, 3859 <wifi_softap_set_beacon_only_mode+0x31>
    384e:	0138      	l32i.n	a3, a1, 0
    3850:	930530        	movnez	a0, a5, a3
    3853:	564402        	s8i	a0, a4, 86
    3856:	000646        	j	3873 <wifi_softap_set_beacon_only_mode+0x4b>
    3859:	0168      	l32i.n	a6, a1, 0
    385b:	969c      	beqz.n	a6, 3878 <wifi_softap_set_beacon_only_mode+0x50>
    385d:	122026        	beqi	a0, 2, 3873 <wifi_softap_set_beacon_only_mode+0x4b>
    3860:	564452        	s8i	a5, a4, 86
    3863:	020c      	movi.n	a2, 0
    3865:	ffec01        	l32r	a0, 3818 <wifi_softap_get_beacon_only_mode+0x1c>
    3868:	0000c0        	callx0	a0
    386b:	120c      	movi.n	a2, 1
    386d:	ffeb01        	l32r	a0, 381c <wifi_softap_get_beacon_only_mode+0x20>
    3870:	0000c0        	callx0	a0
    3873:	120c      	movi.n	a2, 1
    3875:	ffef86        	j	3837 <wifi_softap_set_beacon_only_mode+0xf>
    3878:	ff7016        	beqz	a0, 3873 <wifi_softap_set_beacon_only_mode+0x4b>
    387b:	120c      	movi.n	a2, 1
    387d:	070c      	movi.n	a7, 0
    387f:	564472        	s8i	a7, a4, 86
    3882:	ffe701        	l32r	a0, 3820 <wifi_softap_get_beacon_only_mode+0x24>
    3885:	0000c0        	callx0	a0
    3888:	020c      	movi.n	a2, 0
    388a:	ffe601        	l32r	a0, 3824 <wifi_softap_get_beacon_only_mode+0x28>
    388d:	0000c0        	callx0	a0
    3890:	fff7c6        	j	3873 <wifi_softap_set_beacon_only_mode+0x4b>
    3893:	000000        	ill
	...

00003898 <wifi_register_user_ie_manufacturer_recv_cb>:
    3898:	32cc      	bnez.n	a2, 389f <wifi_register_user_ie_manufacturer_recv_cb+0x7>
    389a:	f47c      	movi.n	a4, -1
    389c:	0001c6        	j	38a7 <wifi_register_user_ie_manufacturer_recv_cb+0xf>
    389f:	fffd31        	l32r	a3, 3894 <wifi_softap_set_beacon_only_mode+0x6c>
    38a2:	040c      	movi.n	a4, 0
    38a4:	1c6322        	s32i	a2, a3, 112
    38a7:	042d      	mov.n	a2, a4
    38a9:	f00d      	ret.n
    38ab:	000000        	ill
	...

000038b0 <wifi_unregister_user_ie_manufacturer_recv_cb>:
    38b0:	ffff31        	l32r	a3, 38ac <wifi_register_user_ie_manufacturer_recv_cb+0x14>
    38b3:	020c      	movi.n	a2, 0
    38b5:	1c6322        	s32i	a2, a3, 112
    38b8:	f00d      	ret.n
    38ba:	000000        	ill
    38bd:	000000        	ill
    38c0:	000b11        	l32r	a1, fffc38ec <system_get_sdk_version+0xfffbf420>
    38c3:	0b1200        	excw
	...
    38da:	020000        	excw
    38dd:	000b      	addi.n	a0, a0, -1
    38df:	000000        	ill
    38e2:	060000        	excw
    38e5:	000b      	addi.n	a0, a0, -1
    38e7:	000000        	ill
    38ea:	080000        	excw
    38ed:	000b      	addi.n	a0, a0, -1
	...

00003918 <wifi_set_user_ie>:
    3918:	039d      	mov.n	a9, a3
    391a:	e0c112        	addi	a1, a1, -32
    391d:	41d9      	s32i.n	a13, a1, 16
    391f:	2109      	s32i.n	a0, a1, 8
    3921:	31c9      	s32i.n	a12, a1, 12
    3923:	51e9      	s32i.n	a14, a1, 20
    3925:	04cd      	mov.n	a12, a4
    3927:	06ed      	mov.n	a14, a6
    3929:	054d      	mov.n	a4, a5
    392b:	028c      	beqz.n	a2, 392f <wifi_set_user_ie+0x17>
    392d:	139c      	beqz.n	a3, 3942 <wifi_set_user_ie+0x2a>
    392f:	0f5cf6        	bgeui	a12, 5, 3942 <wifi_set_user_ie+0x2a>
    3932:	05a216        	beqz	a2, 3990 <wifi_set_user_ie+0x78>
    3935:	948c      	beqz.n	a4, 3942 <wifi_set_user_ie+0x2a>
    3937:	055216        	beqz	a2, 3990 <wifi_set_user_ie+0x78>
    393a:	4e8c      	beqz.n	a14, 3942 <wifi_set_user_ie+0x2a>
    393c:	f7a002        	movi	a0, 247
    393f:	4db0e7        	bgeu	a0, a14, 3990 <wifi_set_user_ie+0x78>
    3942:	020c      	movi.n	a2, 0
    3944:	000ec6        	j	3983 <wifi_set_user_ie+0x6b>
    3947:	ffdde1        	l32r	a14, 38bc <wifi_unregister_user_ie_manufacturer_recv_cb+0xc>
    394a:	00ac      	beqz.n	a0, 396e <wifi_set_user_ie+0x56>
    394c:	1028      	l32i.n	a2, a0, 4
    394e:	b28c      	beqz.n	a2, 395d <wifi_set_user_ie+0x45>
    3950:	0e3d      	mov.n	a3, a14
    3952:	ffdb41        	l32r	a4, 38c0 <wifi_unregister_user_ie_manufacturer_recv_cb+0x10>
    3955:	ffe901        	l32r	a0, 38fc <wifi_unregister_user_ie_manufacturer_recv_cb+0x4c>
    3958:	0000c0        	callx0	a0
    395b:	0d08      	l32i.n	a0, a13, 0
    395d:	0e3d      	mov.n	a3, a14
    395f:	ffd941        	l32r	a4, 38c4 <wifi_unregister_user_ie_manufacturer_recv_cb+0x14>
    3962:	002d      	mov.n	a2, a0
    3964:	ffe701        	l32r	a0, 3900 <wifi_unregister_user_ie_manufacturer_recv_cb+0x50>
    3967:	0000c0        	callx0	a0
    396a:	020c      	movi.n	a2, 0
    396c:	0d29      	s32i.n	a2, a13, 0
    396e:	fccc      	bnez.n	a12, 3981 <wifi_set_user_ie+0x69>
    3970:	ffd631        	l32r	a3, 38c8 <wifi_unregister_user_ie_manufacturer_recv_cb+0x18>
    3973:	000332        	l8ui	a3, a3, 0
    3976:	071366        	bnei	a3, 1, 3981 <wifi_set_user_ie+0x69>
    3979:	ffd451        	l32r	a5, 38cc <wifi_unregister_user_ie_manufacturer_recv_cb+0x1c>
    397c:	140c      	movi.n	a4, 1
    397e:	004542        	s8i	a4, a5, 0
    3981:	120c      	movi.n	a2, 1
    3983:	31c8      	l32i.n	a12, a1, 12
    3985:	41d8      	l32i.n	a13, a1, 16
    3987:	51e8      	l32i.n	a14, a1, 20
    3989:	2108      	l32i.n	a0, a1, 8
    398b:	20c112        	addi	a1, a1, 32
    398e:	f00d      	ret.n
    3990:	0c9c      	beqz.n	a12, 39a4 <wifi_set_user_ie+0x8c>
    3992:	5c1c26        	beqi	a12, 1, 39f2 <wifi_set_user_ie+0xda>
    3995:	5f2c26        	beqi	a12, 2, 39f8 <wifi_set_user_ie+0xe0>
    3998:	623c26        	beqi	a12, 3, 39fe <wifi_set_user_ie+0xe6>
    399b:	a34c66        	bnei	a12, 4, 3942 <wifi_set_user_ie+0x2a>
    399e:	ffccd1        	l32r	a13, 38d0 <wifi_unregister_user_ie_manufacturer_recv_cb+0x20>
    39a1:	000086        	j	39a7 <wifi_set_user_ie+0x8f>
    39a4:	ffccd1        	l32r	a13, 38d4 <wifi_unregister_user_ie_manufacturer_recv_cb+0x24>
    39a7:	ffcc31        	l32r	a3, 38d8 <wifi_unregister_user_ie_manufacturer_recv_cb+0x28>
    39aa:	0d08      	l32i.n	a0, a13, 0
    39ac:	f97216        	beqz	a2, 3947 <wifi_set_user_ie+0x2f>
    39af:	1149      	s32i.n	a4, a1, 4
    39b1:	0199      	s32i.n	a9, a1, 0
    39b3:	f8b056        	bnez	a0, 3942 <wifi_set_user_ie+0x2a>
    39b6:	c20c      	movi.n	a2, 12
    39b8:	ffc941        	l32r	a4, 38dc <wifi_unregister_user_ie_manufacturer_recv_cb+0x2c>
    39bb:	ffd201        	l32r	a0, 3904 <wifi_unregister_user_ie_manufacturer_recv_cb+0x54>
    39be:	0000c0        	callx0	a0
    39c1:	0d29      	s32i.n	a2, a13, 0
    39c3:	f7b216        	beqz	a2, 3942 <wifi_set_user_ie+0x2a>
    39c6:	ffc631        	l32r	a3, 38e0 <wifi_unregister_user_ie_manufacturer_recv_cb+0x30>
    39c9:	0042c2        	s8i	a12, a2, 0
    39cc:	ffc641        	l32r	a4, 38e4 <wifi_unregister_user_ie_manufacturer_recv_cb+0x34>
    39cf:	0e2d      	mov.n	a2, a14
    39d1:	ffcd01        	l32r	a0, 3908 <wifi_unregister_user_ie_manufacturer_recv_cb+0x58>
    39d4:	0000c0        	callx0	a0
    39d7:	0d78      	l32i.n	a7, a13, 0
    39d9:	1729      	s32i.n	a2, a7, 4
    39db:	0d08      	l32i.n	a0, a13, 0
    39dd:	1068      	l32i.n	a6, a0, 4
    39df:	16ec      	bnez.n	a6, 3a04 <wifi_set_user_ie+0xec>
    39e1:	ffc131        	l32r	a3, 38e8 <wifi_unregister_user_ie_manufacturer_recv_cb+0x38>
    39e4:	ffc241        	l32r	a4, 38ec <wifi_unregister_user_ie_manufacturer_recv_cb+0x3c>
    39e7:	002d      	mov.n	a2, a0
    39e9:	ffc801        	l32r	a0, 390c <wifi_unregister_user_ie_manufacturer_recv_cb+0x5c>
    39ec:	0000c0        	callx0	a0
    39ef:	ffd3c6        	j	3942 <wifi_set_user_ie+0x2a>
    39f2:	ffbfd1        	l32r	a13, 38f0 <wifi_unregister_user_ie_manufacturer_recv_cb+0x40>
    39f5:	ffeb86        	j	39a7 <wifi_set_user_ie+0x8f>
    39f8:	ffbfd1        	l32r	a13, 38f4 <wifi_unregister_user_ie_manufacturer_recv_cb+0x44>
    39fb:	ffea06        	j	39a7 <wifi_set_user_ie+0x8f>
    39fe:	ffbed1        	l32r	a13, 38f8 <wifi_unregister_user_ie_manufacturer_recv_cb+0x48>
    3a01:	ffe886        	j	39a7 <wifi_set_user_ie+0x8f>
    3a04:	0138      	l32i.n	a3, a1, 0
    3a06:	340c      	movi.n	a4, 3
    3a08:	201b      	addi.n	a2, a0, 1
    3a0a:	ffc101        	l32r	a0, 3910 <wifi_unregister_user_ie_manufacturer_recv_cb+0x60>
    3a0d:	0000c0        	callx0	a0
    3a10:	1138      	l32i.n	a3, a1, 4
    3a12:	0d28      	l32i.n	a2, a13, 0
    3a14:	0e4d      	mov.n	a4, a14
    3a16:	1228      	l32i.n	a2, a2, 4
    3a18:	ffbf01        	l32r	a0, 3914 <wifi_unregister_user_ie_manufacturer_recv_cb+0x64>
    3a1b:	0000c0        	callx0	a0
    3a1e:	0d38      	l32i.n	a3, a13, 0
    3a20:	0843e2        	s8i	a14, a3, 8
    3a23:	ffd1c6        	j	396e <wifi_set_user_ie+0x56>
    3a26:	000000        	ill
    3a29:	000000        	ill

00003a2c <wifi_get_user_ie>:
    3a2c:	ffff41        	l32r	a4, 3a28 <wifi_set_user_ie+0x110>
    3a2f:	429c      	beqz.n	a2, 3a47 <wifi_get_user_ie+0x1b>
    3a31:	171226        	beqi	a2, 1, 3a4c <wifi_get_user_ie+0x20>
    3a34:	192226        	beqi	a2, 2, 3a51 <wifi_get_user_ie+0x25>
    3a37:	1b3226        	beqi	a2, 3, 3a56 <wifi_get_user_ie+0x2a>
    3a3a:	fcc252        	addi	a5, a2, -4
    3a3d:	5b2432        	l32i	a3, a4, 0x16c
    3a40:	020c      	movi.n	a2, 0
    3a42:	832350        	moveqz	a2, a3, a5
    3a45:	f00d      	ret.n
    3a47:	572422        	l32i	a2, a4, 0x15c
    3a4a:	f00d      	ret.n
    3a4c:	582422        	l32i	a2, a4, 0x160
    3a4f:	f00d      	ret.n
    3a51:	592422        	l32i	a2, a4, 0x164
    3a54:	f00d      	ret.n
    3a56:	5a2422        	l32i	a2, a4, 0x168
    3a59:	f00d      	ret.n
    3a5b:	000000        	ill
	...

00003a60 <wifi_get_phy_mode>:
    3a60:	ffff21        	l32r	a2, 3a5c <wifi_get_user_ie+0x30>
    3a63:	be2222        	l32i	a2, a2, 0x2f8
    3a66:	f00d      	ret.n
	...

00003aac <wifi_set_phy_mode>:
    3aac:	f0c112        	addi	a1, a1, -16
    3aaf:	3109      	s32i.n	a0, a1, 12
    3ab1:	0c3216        	beqz	a2, 3b78 <wifi_set_phy_mode+0xcc>
    3ab4:	0242b6        	bltui	a2, 4, 3aba <wifi_set_phy_mode+0xe>
    3ab7:	002f46        	j	3b78 <wifi_set_phy_mode+0xcc>
    3aba:	ffeb01        	l32r	a0, 3a68 <wifi_get_phy_mode+0x8>
    3abd:	560002        	l8ui	a0, a0, 86
    3ac0:	0b4056        	bnez	a0, 3b78 <wifi_set_phy_mode+0xcc>
    3ac3:	ffea31        	l32r	a3, 3a6c <wifi_get_phy_mode+0xc>
    3ac6:	cf2332        	l32i	a3, a3, 0x33c
    3ac9:	2129      	s32i.n	a2, a1, 8
    3acb:	029327        	bne	a3, a2, 3ad1 <wifi_set_phy_mode+0x25>
    3ace:	002746        	j	3b6f <wifi_set_phy_mode+0xc3>
    3ad1:	000005        	call0	3ad4 <wifi_set_phy_mode+0x28>
    3ad4:	0129      	s32i.n	a2, a1, 0
    3ad6:	ffe751        	l32r	a5, 3a74 <wifi_get_phy_mode+0x14>
    3ad9:	ffe531        	l32r	a3, 3a70 <wifi_get_phy_mode+0x10>
    3adc:	2148      	l32i.n	a4, a1, 8
    3ade:	0338      	l32i.n	a3, a3, 0
    3ae0:	cf6542        	s32i	a4, a5, 0x33c
    3ae3:	1328      	l32i.n	a2, a3, 4
    3ae5:	3338      	l32i.n	a3, a3, 12
    3ae7:	ffe901        	l32r	a0, 3a8c <wifi_get_phy_mode+0x2c>
    3aea:	0000c0        	callx0	a0
    3aed:	ffe231        	l32r	a3, 3a78 <wifi_get_phy_mode+0x18>
    3af0:	84a442        	movi	a4, 0x484
    3af3:	fdc222        	addi	a2, a2, -3
    3af6:	f42020        	extui	a2, a2, 0, 16
    3af9:	000005        	call0	3afc <wifi_set_phy_mode+0x50>
    3afc:	ffe031        	l32r	a3, 3a7c <wifi_get_phy_mode+0x1c>
    3aff:	000332        	l8ui	a3, a3, 0
    3b02:	0b1366        	bnei	a3, 1, 3b11 <wifi_set_phy_mode+0x65>
    3b05:	ffe201        	l32r	a0, 3a90 <wifi_get_phy_mode+0x30>
    3b08:	0000c0        	callx0	a0
    3b0b:	ffe201        	l32r	a0, 3a94 <wifi_get_phy_mode+0x34>
    3b0e:	0000c0        	callx0	a0
    3b11:	2128      	l32i.n	a2, a1, 8
    3b13:	ffe101        	l32r	a0, 3a98 <wifi_get_phy_mode+0x38>
    3b16:	0000c0        	callx0	a0
    3b19:	2148      	l32i.n	a4, a1, 8
    3b1b:	ffd971        	l32r	a7, 3a80 <wifi_get_phy_mode+0x20>
    3b1e:	060c      	movi.n	a6, 0
    3b20:	cb6762        	s32i	a6, a7, 0x32c
    3b23:	fed752        	addmi	a5, a7, 0xfffffe00
    3b26:	073466        	bnei	a4, 3, 3b31 <wifi_set_phy_mode+0x85>
    3b29:	052d      	mov.n	a2, a5
    3b2b:	ffdc01        	l32r	a0, 3a9c <wifi_get_phy_mode+0x3c>
    3b2e:	0000c0        	callx0	a0
    3b31:	ffd481        	l32r	a8, 3a84 <wifi_get_phy_mode+0x24>
    3b34:	000882        	l8ui	a8, a8, 0
    3b37:	0198      	l32i.n	a9, a1, 0
    3b39:	321866        	bnei	a8, 1, 3b6f <wifi_set_phy_mode+0xc3>
    3b3c:	1199      	s32i.n	a9, a1, 4
    3b3e:	021926        	beqi	a9, 1, 3b44 <wifi_set_phy_mode+0x98>
    3b41:	083966        	bnei	a9, 3, 3b4d <wifi_set_phy_mode+0xa1>
    3b44:	ffd701        	l32r	a0, 3aa0 <wifi_get_phy_mode+0x40>
    3b47:	0000c0        	callx0	a0
    3b4a:	000005        	call0	3b4c <wifi_set_phy_mode+0xa0>
    3b4d:	1108      	l32i.n	a0, a1, 4
    3b4f:	022026        	beqi	a0, 2, 3b55 <wifi_set_phy_mode+0xa9>
    3b52:	053066        	bnei	a0, 3, 3b5b <wifi_set_phy_mode+0xaf>
    3b55:	ffd301        	l32r	a0, 3aa4 <wifi_get_phy_mode+0x44>
    3b58:	0000c0        	callx0	a0
    3b5b:	1138      	l32i.n	a3, a1, 4
    3b5d:	0e1366        	bnei	a3, 1, 3b6f <wifi_set_phy_mode+0xc3>
    3b60:	ffca01        	l32r	a0, 3a88 <wifi_get_phy_mode+0x28>
    3b63:	4008      	l32i.n	a0, a0, 16
    3b65:	608c      	beqz.n	a0, 3b6f <wifi_set_phy_mode+0xc3>
    3b67:	0028      	l32i.n	a2, a0, 0
    3b69:	ffcf01        	l32r	a0, 3aa8 <wifi_get_phy_mode+0x48>
    3b6c:	0000c0        	callx0	a0
    3b6f:	120c      	movi.n	a2, 1
    3b71:	3108      	l32i.n	a0, a1, 12
    3b73:	10c112        	addi	a1, a1, 16
    3b76:	f00d      	ret.n
    3b78:	020c      	movi.n	a2, 0
    3b7a:	fffcc6        	j	3b71 <wifi_set_phy_mode+0xc5>
    3b7d:	000000        	ill
    3b80:	000000        	ill
	...

00003b84 <wifi_set_sleep_type>:
    3b84:	f0c112        	addi	a1, a1, -16
    3b87:	0109      	s32i.n	a0, a1, 0
    3b89:	0432b6        	bltui	a2, 3, 3b91 <wifi_set_sleep_type+0xd>
    3b8c:	020c      	movi.n	a2, 0
    3b8e:	000286        	j	3b9c <wifi_set_sleep_type+0x18>
    3b91:	742020        	extui	a2, a2, 0, 8
    3b94:	fffb01        	l32r	a0, 3b80 <wifi_set_phy_mode+0xd4>
    3b97:	0000c0        	callx0	a0
    3b9a:	120c      	movi.n	a2, 1
    3b9c:	0108      	l32i.n	a0, a1, 0
    3b9e:	10c112        	addi	a1, a1, 16
    3ba1:	f00d      	ret.n
    3ba3:	000000        	ill
	...

00003ba8 <wifi_get_sleep_type>:
    3ba8:	f0c112        	addi	a1, a1, -16
    3bab:	0109      	s32i.n	a0, a1, 0
    3bad:	fffd01        	l32r	a0, 3ba4 <wifi_set_sleep_type+0x20>
    3bb0:	0000c0        	callx0	a0
    3bb3:	0108      	l32i.n	a0, a1, 0
    3bb5:	10c112        	addi	a1, a1, 16
    3bb8:	f00d      	ret.n
    3bba:	000000        	ill
    3bbd:	000000        	ill

00003bc0 <wifi_get_channel>:
    3bc0:	f0c112        	addi	a1, a1, -16
    3bc3:	0109      	s32i.n	a0, a1, 0
    3bc5:	fffd01        	l32r	a0, 3bbc <wifi_get_sleep_type+0x14>
    3bc8:	0000c0        	callx0	a0
    3bcb:	060222        	l8ui	a2, a2, 6
    3bce:	0108      	l32i.n	a0, a1, 0
    3bd0:	10c112        	addi	a1, a1, 16
    3bd3:	f00d      	ret.n
	...

00003be8 <wifi_set_channel>:
    3be8:	f0c112        	addi	a1, a1, -16
    3beb:	11c9      	s32i.n	a12, a1, 4
    3bed:	0109      	s32i.n	a0, a1, 0
    3bef:	02cd      	mov.n	a12, a2
    3bf1:	e00c      	movi.n	a0, 14
    3bf3:	04b027        	bgeu	a0, a2, 3bfb <wifi_set_channel+0x13>
    3bf6:	020c      	movi.n	a2, 0
    3bf8:	000906        	j	3c20 <wifi_set_channel+0x38>
    3bfb:	fff801        	l32r	a0, 3bdc <wifi_get_channel+0x1c>
    3bfe:	0000c0        	callx0	a0
    3c01:	fff521        	l32r	a2, 3bd8 <wifi_get_channel+0x18>
    3c04:	90ccc0        	addx2	a12, a12, a12
    3c07:	a0cc20        	addx4	a12, a12, a2
    3c0a:	78ccc2        	addi	a12, a12, 120
    3c0d:	4b62c2        	s32i	a12, a2, 0x12c
    3c10:	fff401        	l32r	a0, 3be0 <wifi_get_channel+0x20>
    3c13:	0000c0        	callx0	a0
    3c16:	0c2d      	mov.n	a2, a12
    3c18:	fff301        	l32r	a0, 3be4 <wifi_get_channel+0x24>
    3c1b:	0000c0        	callx0	a0
    3c1e:	120c      	movi.n	a2, 1
    3c20:	11c8      	l32i.n	a12, a1, 4
    3c22:	0108      	l32i.n	a0, a1, 0
    3c24:	10c112        	addi	a1, a1, 16
    3c27:	f00d      	ret.n
	...
    3c31:	fe          	.byte 0xfe
    3c32:	003ff1        	l32r	a15, fffc3d30 <system_get_sdk_version+0xfffbf864>
    3c35:	000000        	ill

00003c38 <wifi_promiscuous_set_mac>:
    3c38:	f0c112        	addi	a1, a1, -16
    3c3b:	0109      	s32i.n	a0, a1, 0
    3c3d:	fffb01        	l32r	a0, 3c2c <wifi_set_channel+0x44>
    3c40:	023d      	mov.n	a3, a2
    3c42:	560002        	l8ui	a0, a0, 86
    3c45:	020c      	movi.n	a2, 0
    3c47:	021026        	beqi	a0, 1, 3c4d <wifi_promiscuous_set_mac+0x15>
    3c4a:	000fc6        	j	3c8d <wifi_promiscuous_set_mac+0x55>
    3c4d:	190c      	movi.n	a9, 1
    3c4f:	fff841        	l32r	a4, 3c30 <wifi_set_channel+0x48>
    3c52:	0020c0        	memw
    3c55:	9b2482        	l32i	a8, a4, 0x26c
    3c58:	208890        	or	a8, a8, a9
    3c5b:	0020c0        	memw
    3c5e:	9b6482        	s32i	a8, a4, 0x26c
    3c61:	270c      	movi.n	a7, 2
    3c63:	0020c0        	memw
    3c66:	9b2462        	l32i	a6, a4, 0x26c
    3c69:	206670        	or	a6, a6, a7
    3c6c:	0020c0        	memw
    3c6f:	9b6462        	s32i	a6, a4, 0x26c
    3c72:	450c      	movi.n	a5, 4
    3c74:	0020c0        	memw
    3c77:	9b2422        	l32i	a2, a4, 0x26c
    3c7a:	202250        	or	a2, a2, a5
    3c7d:	0020c0        	memw
    3c80:	9b6422        	s32i	a2, a4, 0x26c
    3c83:	020c      	movi.n	a2, 0
    3c85:	ffeb01        	l32r	a0, 3c34 <wifi_set_channel+0x4c>
    3c88:	0000c0        	callx0	a0
    3c8b:	120c      	movi.n	a2, 1
    3c8d:	0108      	l32i.n	a0, a1, 0
    3c8f:	10c112        	addi	a1, a1, 16
    3c92:	f00d      	ret.n
	...
    3c9c:	f1fe00        	excw
    3c9f:	3f          	.byte 0x3f
	...
    3ca8:	f1fe00        	excw
    3cab:	3f          	.byte 0x3f
	...

00003ccc <wifi_promiscuous_enable>:
    3ccc:	f0c112        	addi	a1, a1, -16
    3ccf:	0129      	s32i.n	a2, a1, 0
    3cd1:	1109      	s32i.n	a0, a1, 4
    3cd3:	000005        	call0	3cd4 <wifi_promiscuous_enable+0x8>
    3cd6:	ffef01        	l32r	a0, 3c94 <wifi_promiscuous_set_mac+0x5c>
    3cd9:	000002        	l8ui	a0, a0, 0
    3cdc:	e08c      	beqz.n	a0, 3cee <wifi_promiscuous_enable+0x22>
    3cde:	0c1266        	bnei	a2, 1, 3cee <wifi_promiscuous_enable+0x22>
    3ce1:	ffed51        	l32r	a5, 3c98 <wifi_promiscuous_set_mac+0x60>
    3ce4:	01b8      	l32i.n	a11, a1, 0
    3ce6:	560562        	l8ui	a6, a5, 86
    3ce9:	140c      	movi.n	a4, 1
    3ceb:	683666        	bnei	a6, 3, 3d57 <wifi_promiscuous_enable+0x8b>
    3cee:	020c      	movi.n	a2, 0
    3cf0:	001706        	j	3d50 <wifi_promiscuous_enable+0x84>
    3cf3:	ffef01        	l32r	a0, 3cb0 <wifi_promiscuous_set_mac+0x78>
    3cf6:	0000c0        	callx0	a0
    3cf9:	ffee01        	l32r	a0, 3cb4 <wifi_promiscuous_set_mac+0x7c>
    3cfc:	0000c0        	callx0	a0
    3cff:	0020c0        	memw
    3d02:	ffe631        	l32r	a3, 3c9c <wifi_promiscuous_set_mac+0x64>
    3d05:	9b2372        	l32i	a7, a3, 0x26c
    3d08:	180c      	movi.n	a8, 1
    3d0a:	207780        	or	a7, a7, a8
    3d0d:	0020c0        	memw
    3d10:	9b6372        	s32i	a7, a3, 0x26c
    3d13:	260c      	movi.n	a6, 2
    3d15:	0020c0        	memw
    3d18:	9b2352        	l32i	a5, a3, 0x26c
    3d1b:	205560        	or	a5, a5, a6
    3d1e:	0020c0        	memw
    3d21:	9b6352        	s32i	a5, a3, 0x26c
    3d24:	440c      	movi.n	a4, 4
    3d26:	0020c0        	memw
    3d29:	9b2322        	l32i	a2, a3, 0x26c
    3d2c:	202240        	or	a2, a2, a4
    3d2f:	0020c0        	memw
    3d32:	9b6322        	s32i	a2, a3, 0x26c
    3d35:	020c      	movi.n	a2, 0
    3d37:	ffda31        	l32r	a3, 3ca0 <wifi_promiscuous_set_mac+0x68>
    3d3a:	ffdf01        	l32r	a0, 3cb8 <wifi_promiscuous_set_mac+0x80>
    3d3d:	0000c0        	callx0	a0
    3d40:	ffd9a1        	l32r	a10, 3ca4 <wifi_promiscuous_set_mac+0x6c>
    3d43:	090c      	movi.n	a9, 0
    3d45:	564a92        	s8i	a9, a10, 86
    3d48:	ffdd01        	l32r	a0, 3cbc <wifi_promiscuous_set_mac+0x84>
    3d4b:	0000c0        	callx0	a0
    3d4e:	120c      	movi.n	a2, 1
    3d50:	1108      	l32i.n	a0, a1, 4
    3d52:	10c112        	addi	a1, a1, 16
    3d55:	f00d      	ret.n
    3d57:	058b16        	beqz	a11, 3db3 <wifi_promiscuous_enable+0xe7>
    3d5a:	581626        	beqi	a6, 1, 3db6 <wifi_promiscuous_enable+0xea>
    3d5d:	000005        	call0	3d60 <wifi_promiscuous_enable+0x94>
    3d60:	ffd801        	l32r	a0, 3cc0 <wifi_promiscuous_set_mac+0x88>
    3d63:	0000c0        	callx0	a0
    3d66:	e97c      	movi.n	a9, -2
    3d68:	0020c0        	memw
    3d6b:	ffcf41        	l32r	a4, 3ca8 <wifi_promiscuous_set_mac+0x70>
    3d6e:	9b2482        	l32i	a8, a4, 0x26c
    3d71:	108890        	and	a8, a8, a9
    3d74:	0020c0        	memw
    3d77:	9b6482        	s32i	a8, a4, 0x26c
    3d7a:	d77c      	movi.n	a7, -3
    3d7c:	0020c0        	memw
    3d7f:	9b2462        	l32i	a6, a4, 0x26c
    3d82:	106670        	and	a6, a6, a7
    3d85:	0020c0        	memw
    3d88:	9b6462        	s32i	a6, a4, 0x26c
    3d8b:	b57c      	movi.n	a5, -5
    3d8d:	0020c0        	memw
    3d90:	9b2432        	l32i	a3, a4, 0x26c
    3d93:	103350        	and	a3, a3, a5
    3d96:	0020c0        	memw
    3d99:	9b6432        	s32i	a3, a4, 0x26c
    3d9c:	ffc421        	l32r	a2, 3cac <wifi_promiscuous_set_mac+0x74>
    3d9f:	100c      	movi.n	a0, 1
    3da1:	564202        	s8i	a0, a2, 86
    3da4:	ffc801        	l32r	a0, 3cc4 <wifi_promiscuous_set_mac+0x8c>
    3da7:	0000c0        	callx0	a0
    3daa:	ffc701        	l32r	a0, 3cc8 <wifi_promiscuous_set_mac+0x90>
    3dad:	0000c0        	callx0	a0
    3db0:	ffe686        	j	3d4e <wifi_promiscuous_enable+0x82>
    3db3:	f3c656        	bnez	a6, 3cf3 <wifi_promiscuous_enable+0x27>
    3db6:	042d      	mov.n	a2, a4
    3db8:	ffe506        	j	3d50 <wifi_promiscuous_enable+0x84>
    3dbb:	000000        	ill
	...

00003dc0 <wifi_set_promiscuous_rx_cb>:
    3dc0:	ffff31        	l32r	a3, 3dbc <wifi_promiscuous_enable+0xf0>
    3dc3:	4a6322        	s32i	a2, a3, 0x128
    3dc6:	f00d      	ret.n
	...

00003dd8 <wifi_get_ip_info>:
    3dd8:	f0c112        	addi	a1, a1, -16
    3ddb:	0109      	s32i.n	a0, a1, 0
    3ddd:	21d9      	s32i.n	a13, a1, 8
    3ddf:	11c9      	s32i.n	a12, a1, 4
    3de1:	02dd      	mov.n	a13, a2
    3de3:	03cd      	mov.n	a12, a3
    3de5:	2022f6        	bgeui	a2, 2, 3e09 <wifi_get_ip_info+0x31>
    3de8:	d39c      	beqz.n	a3, 3e09 <wifi_get_ip_info+0x31>
    3dea:	fffa01        	l32r	a0, 3dd4 <wifi_set_promiscuous_rx_cb+0x14>
    3ded:	0000c0        	callx0	a0
    3df0:	22ac      	beqz.n	a2, 3e16 <wifi_get_ip_info+0x3e>
    3df2:	390202        	l8ui	a0, a2, 57
    3df5:	1d6007        	bbci	a0, 0, 3e16 <wifi_get_ip_info+0x3e>
    3df8:	1248      	l32i.n	a4, a2, 4
    3dfa:	0c49      	s32i.n	a4, a12, 0
    3dfc:	2238      	l32i.n	a3, a2, 8
    3dfe:	1c39      	s32i.n	a3, a12, 4
    3e00:	3208      	l32i.n	a0, a2, 12
    3e02:	2c09      	s32i.n	a0, a12, 8
    3e04:	120c      	movi.n	a2, 1
    3e06:	000046        	j	3e0b <wifi_get_ip_info+0x33>
    3e09:	020c      	movi.n	a2, 0
    3e0b:	11c8      	l32i.n	a12, a1, 4
    3e0d:	21d8      	l32i.n	a13, a1, 8
    3e0f:	0108      	l32i.n	a0, a1, 0
    3e11:	10c112        	addi	a1, a1, 16
    3e14:	f00d      	ret.n
    3e16:	000c      	movi.n	a0, 0
    3e18:	ffec21        	l32r	a2, 3dc8 <wifi_set_promiscuous_rx_cb+0x8>
    3e1b:	bdcc      	bnez.n	a13, 3e2a <wifi_get_ip_info+0x52>
    3e1d:	030252        	l8ui	a5, a2, 3
    3e20:	231566        	bnei	a5, 1, 3e47 <wifi_get_ip_info+0x6f>
    3e23:	0c09      	s32i.n	a0, a12, 0
    3e25:	1c09      	s32i.n	a0, a12, 4
    3e27:	fff5c6        	j	3e02 <wifi_get_ip_info+0x2a>
    3e2a:	020262        	l8ui	a6, a2, 2
    3e2d:	061666        	bnei	a6, 1, 3e37 <wifi_get_ip_info+0x5f>
    3e30:	0c09      	s32i.n	a0, a12, 0
    3e32:	1c09      	s32i.n	a0, a12, 4
    3e34:	fff286        	j	3e02 <wifi_get_ip_info+0x2a>
    3e37:	ffe501        	l32r	a0, 3dcc <wifi_set_promiscuous_rx_cb+0xc>
    3e3a:	0038      	l32i.n	a3, a0, 0
    3e3c:	0c39      	s32i.n	a3, a12, 0
    3e3e:	1028      	l32i.n	a2, a0, 4
    3e40:	1c29      	s32i.n	a2, a12, 4
    3e42:	2008      	l32i.n	a0, a0, 8
    3e44:	ffee86        	j	3e02 <wifi_get_ip_info+0x2a>
    3e47:	ffe201        	l32r	a0, 3dd0 <wifi_set_promiscuous_rx_cb+0x10>
    3e4a:	0038      	l32i.n	a3, a0, 0
    3e4c:	0c39      	s32i.n	a3, a12, 0
    3e4e:	1028      	l32i.n	a2, a0, 4
    3e50:	1c29      	s32i.n	a2, a12, 4
    3e52:	2008      	l32i.n	a0, a0, 8
    3e54:	ffea86        	j	3e02 <wifi_get_ip_info+0x2a>
	...

00003e6c <wifi_set_ip_info>:
    3e6c:	f0c112        	addi	a1, a1, -16
    3e6f:	0109      	s32i.n	a0, a1, 0
    3e71:	11c9      	s32i.n	a12, a1, 4
    3e73:	21d9      	s32i.n	a13, a1, 8
    3e75:	02cd      	mov.n	a12, a2
    3e77:	03dd      	mov.n	a13, a3
    3e79:	b39c      	beqz.n	a3, 3e98 <wifi_set_ip_info+0x2c>
    3e7b:	1922f6        	bgeui	a2, 2, 3e98 <wifi_set_ip_info+0x2c>
    3e7e:	fff901        	l32r	a0, 3e64 <wifi_get_ip_info+0x8c>
    3e81:	0000c0        	callx0	a0
    3e84:	fff501        	l32r	a0, 3e58 <wifi_get_ip_info+0x80>
    3e87:	4ccc      	bnez.n	a12, 3e8f <wifi_set_ip_info+0x23>
    3e89:	030032        	l8ui	a3, a0, 3
    3e8c:	081326        	beqi	a3, 1, 3e98 <wifi_set_ip_info+0x2c>
    3e8f:	0a1c66        	bnei	a12, 1, 3e9d <wifi_set_ip_info+0x31>
    3e92:	020042        	l8ui	a4, a0, 2
    3e95:	041466        	bnei	a4, 1, 3e9d <wifi_set_ip_info+0x31>
    3e98:	020c      	movi.n	a2, 0
    3e9a:	000986        	j	3ec4 <wifi_set_ip_info+0x58>
    3e9d:	ecec      	bnez.n	a12, 3ecf <wifi_set_ip_info+0x63>
    3e9f:	ffef01        	l32r	a0, 3e5c <wifi_get_ip_info+0x84>
    3ea2:	0d68      	l32i.n	a6, a13, 0
    3ea4:	0069      	s32i.n	a6, a0, 0
    3ea6:	1d58      	l32i.n	a5, a13, 4
    3ea8:	1059      	s32i.n	a5, a0, 4
    3eaa:	2d78      	l32i.n	a7, a13, 8
    3eac:	2079      	s32i.n	a7, a0, 8
    3eae:	029c      	beqz.n	a2, 3ec2 <wifi_set_ip_info+0x56>
    3eb0:	390282        	l8ui	a8, a2, 57
    3eb3:	0b6807        	bbci	a8, 0, 3ec2 <wifi_set_ip_info+0x56>
    3eb6:	0d3d      	mov.n	a3, a13
    3eb8:	4d4b      	addi.n	a4, a13, 4
    3eba:	5d8b      	addi.n	a5, a13, 8
    3ebc:	ffeb01        	l32r	a0, 3e68 <wifi_get_ip_info+0x90>
    3ebf:	0000c0        	callx0	a0
    3ec2:	120c      	movi.n	a2, 1
    3ec4:	11c8      	l32i.n	a12, a1, 4
    3ec6:	21d8      	l32i.n	a13, a1, 8
    3ec8:	0108      	l32i.n	a0, a1, 0
    3eca:	10c112        	addi	a1, a1, 16
    3ecd:	f00d      	ret.n
    3ecf:	ffe401        	l32r	a0, 3e60 <wifi_get_ip_info+0x88>
    3ed2:	0da8      	l32i.n	a10, a13, 0
    3ed4:	00a9      	s32i.n	a10, a0, 0
    3ed6:	1d98      	l32i.n	a9, a13, 4
    3ed8:	1099      	s32i.n	a9, a0, 4
    3eda:	fff306        	j	3eaa <wifi_set_ip_info+0x3e>
	...

00003ef8 <wifi_get_macaddr>:
    3ef8:	f0c112        	addi	a1, a1, -16
    3efb:	0109      	s32i.n	a0, a1, 0
    3efd:	11c9      	s32i.n	a12, a1, 4
    3eff:	21d9      	s32i.n	a13, a1, 8
    3f01:	02cd      	mov.n	a12, a2
    3f03:	03dd      	mov.n	a13, a3
    3f05:	1b22f6        	bgeui	a2, 2, 3f24 <wifi_get_macaddr+0x2c>
    3f08:	839c      	beqz.n	a3, 3f24 <wifi_get_macaddr+0x2c>
    3f0a:	fff701        	l32r	a0, 3ee8 <wifi_set_ip_info+0x7c>
    3f0d:	0000c0        	callx0	a0
    3f10:	020d      	mov.n	a0, a2
    3f12:	d2ac      	beqz.n	a2, 3f43 <wifi_get_macaddr+0x4b>
    3f14:	0d2d      	mov.n	a2, a13
    3f16:	640c      	movi.n	a4, 6
    3f18:	33c032        	addi	a3, a0, 51
    3f1b:	fff401        	l32r	a0, 3eec <wifi_set_ip_info+0x80>
    3f1e:	0000c0        	callx0	a0
    3f21:	000446        	j	3f36 <wifi_get_macaddr+0x3e>
    3f24:	020c      	movi.n	a2, 0
    3f26:	000386        	j	3f38 <wifi_get_macaddr+0x40>
    3f29:	0d2d      	mov.n	a2, a13
    3f2b:	ffed31        	l32r	a3, 3ee0 <wifi_set_ip_info+0x74>
    3f2e:	640c      	movi.n	a4, 6
    3f30:	fff001        	l32r	a0, 3ef0 <wifi_set_ip_info+0x84>
    3f33:	0000c0        	callx0	a0
    3f36:	120c      	movi.n	a2, 1
    3f38:	11c8      	l32i.n	a12, a1, 4
    3f3a:	21d8      	l32i.n	a13, a1, 8
    3f3c:	0108      	l32i.n	a0, a1, 0
    3f3e:	10c112        	addi	a1, a1, 16
    3f41:	f00d      	ret.n
    3f43:	fe2c56        	bnez	a12, 3f29 <wifi_get_macaddr+0x31>
    3f46:	0d2d      	mov.n	a2, a13
    3f48:	ffe731        	l32r	a3, 3ee4 <wifi_set_ip_info+0x78>
    3f4b:	640c      	movi.n	a4, 6
    3f4d:	ffe901        	l32r	a0, 3ef4 <wifi_set_ip_info+0x88>
    3f50:	0000c0        	callx0	a0
    3f53:	fff7c6        	j	3f36 <wifi_get_macaddr+0x3e>
	...

00003fac <wifi_set_macaddr>:
    3fac:	e0c112        	addi	a1, a1, -32
    3faf:	3109      	s32i.n	a0, a1, 12
    3fb1:	41c9      	s32i.n	a12, a1, 16
    3fb3:	51d9      	s32i.n	a13, a1, 20
    3fb5:	03cd      	mov.n	a12, a3
    3fb7:	02dd      	mov.n	a13, a2
    3fb9:	000005        	call0	3fbc <wifi_set_macaddr+0x10>
    3fbc:	020d      	mov.n	a0, a2
    3fbe:	1c8c      	beqz.n	a12, 3fc3 <wifi_set_macaddr+0x17>
    3fc0:	0c2db6        	bltui	a13, 2, 3fd0 <wifi_set_macaddr+0x24>
    3fc3:	020c      	movi.n	a2, 0
    3fc5:	41c8      	l32i.n	a12, a1, 16
    3fc7:	51d8      	l32i.n	a13, a1, 20
    3fc9:	3108      	l32i.n	a0, a1, 12
    3fcb:	20c112        	addi	a1, a1, 32
    3fce:	f00d      	ret.n
    3fd0:	000c22        	l8ui	a2, a12, 0
    3fd3:	1109      	s32i.n	a0, a1, 4
    3fd5:	eae207        	bbsi	a2, 0, 3fc3 <wifi_set_macaddr+0x17>
    3fd8:	0d2d      	mov.n	a2, a13
    3fda:	ffe501        	l32r	a0, 3f70 <wifi_get_macaddr+0x78>
    3fdd:	0000c0        	callx0	a0
    3fe0:	ffde31        	l32r	a3, 3f58 <wifi_get_macaddr+0x60>
    3fe3:	2129      	s32i.n	a2, a1, 8
    3fe5:	05fd56        	bnez	a13, 4048 <wifi_set_macaddr+0x9c>
    3fe8:	1148      	l32i.n	a4, a1, 4
    3fea:	d52426        	beqi	a4, 2, 3fc3 <wifi_set_macaddr+0x17>
    3fed:	0149      	s32i.n	a4, a1, 0
    3fef:	fd0416        	beqz	a4, 3fc3 <wifi_set_macaddr+0x17>
    3ff2:	640c      	movi.n	a4, 6
    3ff4:	032d      	mov.n	a2, a3
    3ff6:	02dd      	mov.n	a13, a2
    3ff8:	0c3d      	mov.n	a3, a12
    3ffa:	ffde01        	l32r	a0, 3f74 <wifi_get_macaddr+0x7c>
    3ffd:	0000c0        	callx0	a0
    4000:	0bd216        	beqz	a2, 40c1 <wifi_set_macaddr+0x115>
    4003:	0158      	l32i.n	a5, a1, 0
    4005:	0f3566        	bnei	a5, 3, 4018 <wifi_set_macaddr+0x6c>
    4008:	ffd521        	l32r	a2, 3f5c <wifi_get_macaddr+0x64>
    400b:	0c3d      	mov.n	a3, a12
    400d:	640c      	movi.n	a4, 6
    400f:	ffda01        	l32r	a0, 3f78 <wifi_get_macaddr+0x80>
    4012:	0000c0        	callx0	a0
    4015:	faa216        	beqz	a2, 3fc3 <wifi_set_macaddr+0x17>
    4018:	0d2d      	mov.n	a2, a13
    401a:	0c3d      	mov.n	a3, a12
    401c:	640c      	movi.n	a4, 6
    401e:	ffd701        	l32r	a0, 3f7c <wifi_get_macaddr+0x84>
    4021:	0000c0        	callx0	a0
    4024:	2168      	l32i.n	a6, a1, 8
    4026:	09c616        	beqz	a6, 40c6 <wifi_set_macaddr+0x11a>
    4029:	0c3d      	mov.n	a3, a12
    402b:	33c622        	addi	a2, a6, 51
    402e:	640c      	movi.n	a4, 6
    4030:	ffd401        	l32r	a0, 3f80 <wifi_get_macaddr+0x88>
    4033:	0000c0        	callx0	a0
    4036:	ffd301        	l32r	a0, 3f84 <wifi_get_macaddr+0x8c>
    4039:	0000c0        	callx0	a0
    403c:	ffd301        	l32r	a0, 3f88 <wifi_get_macaddr+0x90>
    403f:	0000c0        	callx0	a0
    4042:	000005        	call0	4044 <wifi_set_macaddr+0x98>
    4045:	001e06        	j	40c1 <wifi_set_macaddr+0x115>
    4048:	000005        	call0	404c <wifi_set_macaddr+0xa0>
    404b:	021266        	bnei	a2, 1, 4051 <wifi_set_macaddr+0xa5>
    404e:	ffdc46        	j	3fc3 <wifi_set_macaddr+0x17>
    4051:	0c3d      	mov.n	a3, a12
    4053:	ffc321        	l32r	a2, 3f60 <wifi_get_macaddr+0x68>
    4056:	640c      	movi.n	a4, 6
    4058:	02dd      	mov.n	a13, a2
    405a:	ffcc01        	l32r	a0, 3f8c <wifi_get_macaddr+0x94>
    405d:	0000c0        	callx0	a0
    4060:	05d216        	beqz	a2, 40c1 <wifi_set_macaddr+0x115>
    4063:	1138      	l32i.n	a3, a1, 4
    4065:	0f3366        	bnei	a3, 3, 4078 <wifi_set_macaddr+0xcc>
    4068:	ffbf21        	l32r	a2, 3f64 <wifi_get_macaddr+0x6c>
    406b:	0c3d      	mov.n	a3, a12
    406d:	640c      	movi.n	a4, 6
    406f:	ffc801        	l32r	a0, 3f90 <wifi_get_macaddr+0x98>
    4072:	0000c0        	callx0	a0
    4075:	f4a216        	beqz	a2, 3fc3 <wifi_set_macaddr+0x17>
    4078:	0d2d      	mov.n	a2, a13
    407a:	0c3d      	mov.n	a3, a12
    407c:	640c      	movi.n	a4, 6
    407e:	ffc501        	l32r	a0, 3f94 <wifi_get_macaddr+0x9c>
    4081:	0000c0        	callx0	a0
    4084:	2148      	l32i.n	a4, a1, 8
    4086:	74bc      	beqz.n	a4, 40c1 <wifi_set_macaddr+0x115>
    4088:	33c422        	addi	a2, a4, 51
    408b:	0c3d      	mov.n	a3, a12
    408d:	640c      	movi.n	a4, 6
    408f:	ffc201        	l32r	a0, 3f98 <wifi_get_macaddr+0xa0>
    4092:	0000c0        	callx0	a0
    4095:	ffb431        	l32r	a3, 3f68 <wifi_get_macaddr+0x70>
    4098:	560332        	l8ui	a3, a3, 86
    409b:	122366        	bnei	a3, 2, 40b1 <wifi_set_macaddr+0x105>
    409e:	120c      	movi.n	a2, 1
    40a0:	ffbf01        	l32r	a0, 3f9c <wifi_get_macaddr+0xa4>
    40a3:	0000c0        	callx0	a0
    40a6:	120c      	movi.n	a2, 1
    40a8:	ffbe01        	l32r	a0, 3fa0 <wifi_get_macaddr+0xa8>
    40ab:	0000c0        	callx0	a0
    40ae:	0003c6        	j	40c1 <wifi_set_macaddr+0x115>
    40b1:	020c      	movi.n	a2, 0
    40b3:	ffbc01        	l32r	a0, 3fa4 <wifi_get_macaddr+0xac>
    40b6:	0000c0        	callx0	a0
    40b9:	020c      	movi.n	a2, 0
    40bb:	ffbb01        	l32r	a0, 3fa8 <wifi_get_macaddr+0xb0>
    40be:	0000c0        	callx0	a0
    40c1:	120c      	movi.n	a2, 1
    40c3:	ffbf86        	j	3fc5 <wifi_set_macaddr+0x19>
    40c6:	ffa941        	l32r	a4, 3f6c <wifi_get_macaddr+0x74>
    40c9:	000442        	l8ui	a4, a4, 0
    40cc:	f11466        	bnei	a4, 1, 40c1 <wifi_set_macaddr+0x115>
    40cf:	0d2d      	mov.n	a2, a13
    40d1:	000005        	call0	40d4 <wifi_set_macaddr+0x128>
    40d4:	fffa46        	j	40c1 <wifi_set_macaddr+0x115>
    40d7:	000000        	ill
	...

000040dc <wifi_enable_6m_rate>:
    40dc:	ffff31        	l32r	a3, 40d8 <wifi_set_macaddr+0x12c>
    40df:	714322        	s8i	a2, a3, 113
    40e2:	f00d      	ret.n
    40e4:	000000        	ill
	...

000040e8 <wifi_get_user_fixed_rate>:
    40e8:	529c      	beqz.n	a2, 4101 <wifi_get_user_fixed_rate+0x19>
    40ea:	339c      	beqz.n	a3, 4101 <wifi_get_user_fixed_rate+0x19>
    40ec:	fffe41        	l32r	a4, 40e4 <wifi_enable_6m_rate+0x8>
    40ef:	050c      	movi.n	a5, 0
    40f1:	730462        	l8ui	a6, a4, 115
    40f4:	004362        	s8i	a6, a3, 0
    40f7:	720442        	l8ui	a4, a4, 114
    40fa:	004242        	s8i	a4, a2, 0
    40fd:	052d      	mov.n	a2, a5
    40ff:	f00d      	ret.n
    4101:	f57c      	movi.n	a5, -1
    4103:	fffd86        	j	40fd <wifi_get_user_fixed_rate+0x15>
    4106:	000000        	ill
    4109:	000000        	ill

0000410c <wifi_set_user_fixed_rate>:
    410c:	04c3b6        	bltui	a3, 32, 4114 <wifi_set_user_fixed_rate+0x8>
    410f:	f57c      	movi.n	a5, -1
    4111:	000486        	j	4127 <wifi_set_user_fixed_rate+0x1b>
    4114:	0d42f6        	bgeui	a2, 4, 4125 <wifi_set_user_fixed_rate+0x19>
    4117:	fffc41        	l32r	a4, 4108 <wifi_get_user_fixed_rate+0x20>
    411a:	050c      	movi.n	a5, 0
    411c:	734432        	s8i	a3, a4, 115
    411f:	724422        	s8i	a2, a4, 114
    4122:	000046        	j	4127 <wifi_set_user_fixed_rate+0x1b>
    4125:	e57c      	movi.n	a5, -2
    4127:	052d      	mov.n	a2, a5
    4129:	f00d      	ret.n
    412b:	000000        	ill
	...

00004130 <wifi_set_user_sup_rate>:
    4130:	f0c112        	addi	a1, a1, -16
    4133:	0109      	s32i.n	a0, a1, 0
    4135:	11c9      	s32i.n	a12, a1, 4
    4137:	21d9      	s32i.n	a13, a1, 8
    4139:	03cd      	mov.n	a12, a3
    413b:	02dd      	mov.n	a13, a2
    413d:	000005        	call0	4140 <wifi_set_user_sup_rate+0x10>
    4140:	193cd7        	bltu	a12, a13, 415d <wifi_set_user_sup_rate+0x2d>
    4143:	420b      	addi.n	a4, a2, -1
    4145:	330c      	movi.n	a3, 3
    4147:	b00c      	movi.n	a0, 11
    4149:	830340        	moveqz	a0, a3, a4
    414c:	0d30c7        	bltu	a0, a12, 415d <wifi_set_user_sup_rate+0x2d>
    414f:	fff751        	l32r	a5, 412c <wifi_set_user_fixed_rate+0x20>
    4152:	020c      	movi.n	a2, 0
    4154:	7445d2        	s8i	a13, a5, 116
    4157:	7545c2        	s8i	a12, a5, 117
    415a:	000046        	j	415f <wifi_set_user_sup_rate+0x2f>
    415d:	f27c      	movi.n	a2, -1
    415f:	11c8      	l32i.n	a12, a1, 4
    4161:	21d8      	l32i.n	a13, a1, 8
    4163:	0108      	l32i.n	a0, a1, 0
    4165:	10c112        	addi	a1, a1, 16
    4168:	f00d      	ret.n
    416a:	000000        	ill
    416d:	000000        	ill

00004170 <wifi_set_user_rate_limit>:
    4170:	f0c112        	addi	a1, a1, -16
    4173:	0109      	s32i.n	a0, a1, 0
    4175:	0432b6        	bltui	a2, 3, 417d <wifi_set_user_rate_limit+0xd>
    4178:	020c      	movi.n	a2, 0
    417a:	000386        	j	418c <wifi_set_user_rate_limit+0x1c>
    417d:	fffb01        	l32r	a0, 416c <wifi_set_user_sup_rate+0x3c>
    4180:	0000c0        	callx0	a0
    4183:	100c      	movi.n	a0, 1
    4185:	023d      	mov.n	a3, a2
    4187:	020c      	movi.n	a2, 0
    4189:	832030        	moveqz	a2, a0, a3
    418c:	0108      	l32i.n	a0, a1, 0
    418e:	10c112        	addi	a1, a1, 16
    4191:	f00d      	ret.n
    4193:	000000        	ill
	...

00004198 <wifi_get_user_limit_rate_mask>:
    4198:	ffff21        	l32r	a2, 4194 <wifi_set_user_rate_limit+0x24>
    419b:	760222        	l8ui	a2, a2, 118
    419e:	f00d      	ret.n
    41a0:	000000        	ill
	...

000041a4 <wifi_set_user_limit_rate_mask>:
    41a4:	fca032        	movi	a3, 252
    41a7:	0a8327        	bany	a3, a2, 41b5 <wifi_set_user_limit_rate_mask+0x11>
    41aa:	fffd51        	l32r	a5, 41a0 <wifi_get_user_limit_rate_mask+0x8>
    41ad:	140c      	movi.n	a4, 1
    41af:	764522        	s8i	a2, a5, 118
    41b2:	000046        	j	41b7 <wifi_set_user_limit_rate_mask+0x13>
    41b5:	040c      	movi.n	a4, 0
    41b7:	042d      	mov.n	a2, a4
    41b9:	f00d      	ret.n
    41bb:	000000        	ill
	...

000041c0 <wifi_register_send_pkt_freedom_cb>:
    41c0:	32cc      	bnez.n	a2, 41c7 <wifi_register_send_pkt_freedom_cb+0x7>
    41c2:	f47c      	movi.n	a4, -1
    41c4:	0001c6        	j	41cf <wifi_register_send_pkt_freedom_cb+0xf>
    41c7:	fffd31        	l32r	a3, 41bc <wifi_set_user_limit_rate_mask+0x18>
    41ca:	040c      	movi.n	a4, 0
    41cc:	786322        	s32i	a2, a3, 0x1e0
    41cf:	042d      	mov.n	a2, a4
    41d1:	f00d      	ret.n
    41d3:	000000        	ill
	...

000041d8 <wifi_unregister_send_pkt_freedom_cb>:
    41d8:	ffff31        	l32r	a3, 41d4 <wifi_register_send_pkt_freedom_cb+0x14>
    41db:	020c      	movi.n	a2, 0
    41dd:	786322        	s32i	a2, a3, 0x1e0
    41e0:	f00d      	ret.n
	...

000041ec <wifi_send_pkt_freedom>:
    41ec:	f0c112        	addi	a1, a1, -16
    41ef:	0129      	s32i.n	a2, a1, 0
    41f1:	1139      	s32i.n	a3, a1, 4
    41f3:	2149      	s32i.n	a4, a1, 8
    41f5:	3109      	s32i.n	a0, a1, 12
    41f7:	000005        	call0	41f8 <wifi_send_pkt_freedom+0xc>
    41fa:	fffa01        	l32r	a0, 41e4 <wifi_unregister_send_pkt_freedom_cb+0xc>
    41fd:	0f1226        	beqi	a2, 1, 4210 <wifi_send_pkt_freedom+0x24>
    4200:	0742e6        	bgei	a2, 4, 420b <wifi_send_pkt_freedom+0x1f>
    4203:	0422a6        	blti	a2, 2, 420b <wifi_send_pkt_freedom+0x1f>
    4206:	5028      	l32i.n	a2, a0, 20
    4208:	000186        	j	4212 <wifi_send_pkt_freedom+0x26>
    420b:	020c      	movi.n	a2, 0
    420d:	000046        	j	4212 <wifi_send_pkt_freedom+0x26>
    4210:	4028      	l32i.n	a2, a0, 16
    4212:	32cc      	bnez.n	a2, 4219 <wifi_send_pkt_freedom+0x2d>
    4214:	627c      	movi.n	a2, -10
    4216:	000506        	j	422e <wifi_send_pkt_freedom+0x42>
    4219:	0138      	l32i.n	a3, a1, 0
    421b:	1148      	l32i.n	a4, a1, 4
    421d:	2158      	l32i.n	a5, a1, 8
    421f:	fff201        	l32r	a0, 41e8 <wifi_unregister_send_pkt_freedom_cb+0x10>
    4222:	0000c0        	callx0	a0
    4225:	f07c      	movi.n	a0, -1
    4227:	023d      	mov.n	a3, a2
    4229:	020c      	movi.n	a2, 0
    422b:	932030        	movnez	a2, a0, a3
    422e:	3108      	l32i.n	a0, a1, 12
    4230:	10c112        	addi	a1, a1, 16
    4233:	f00d      	ret.n
    4235:	000000        	ill
    4238:	000000        	ill
	...

0000423c <wifi_rfid_locp_recv_open>:
    423c:	f0c112        	addi	a1, a1, -16
    423f:	0109      	s32i.n	a0, a1, 0
    4241:	fffd01        	l32r	a0, 4238 <wifi_send_pkt_freedom+0x4c>
    4244:	0000c0        	callx0	a0
    4247:	0108      	l32i.n	a0, a1, 0
    4249:	10c112        	addi	a1, a1, 16
    424c:	f00d      	ret.n
    424e:	000000        	ill
    4251:	000000        	ill

00004254 <wifi_rfid_locp_recv_close>:
    4254:	f0c112        	addi	a1, a1, -16
    4257:	0109      	s32i.n	a0, a1, 0
    4259:	fffd01        	l32r	a0, 4250 <wifi_rfid_locp_recv_open+0x14>
    425c:	0000c0        	callx0	a0
    425f:	0108      	l32i.n	a0, a1, 0
    4261:	10c112        	addi	a1, a1, 16
    4264:	f00d      	ret.n
    4266:	000000        	ill
    4269:	000000        	ill

0000426c <wifi_register_rfid_locp_recv_cb>:
    426c:	f0c112        	addi	a1, a1, -16
    426f:	0109      	s32i.n	a0, a1, 0
    4271:	fffd01        	l32r	a0, 4268 <wifi_rfid_locp_recv_close+0x14>
    4274:	0000c0        	callx0	a0
    4277:	0108      	l32i.n	a0, a1, 0
    4279:	10c112        	addi	a1, a1, 16
    427c:	f00d      	ret.n
    427e:	000000        	ill
    4281:	000000        	ill

00004284 <wifi_unregister_rfid_locp_recv_cb>:
    4284:	f0c112        	addi	a1, a1, -16
    4287:	0109      	s32i.n	a0, a1, 0
    4289:	fffd01        	l32r	a0, 4280 <wifi_register_rfid_locp_recv_cb+0x14>
    428c:	0000c0        	callx0	a0
    428f:	0108      	l32i.n	a0, a1, 0
    4291:	10c112        	addi	a1, a1, 16
    4294:	f00d      	ret.n
    4296:	000000        	ill
    4299:	000000        	ill

0000429c <wifi_status_led_install>:
    429c:	146040        	extui	a6, a4, 0, 2
    429f:	180c      	movi.n	a8, 1
    42a1:	fffd91        	l32r	a9, 4298 <wifi_unregister_rfid_locp_recv_cb+0x14>
    42a4:	470c      	movi.n	a7, 4
    42a6:	107470        	and	a7, a4, a7
    42a9:	7e4922        	s8i	a2, a9, 126
    42ac:	7f4982        	s8i	a8, a9, 127
    42af:	7d4982        	s8i	a8, a9, 125
    42b2:	1177e0        	slli	a7, a7, 2
    42b5:	206670        	or	a6, a6, a7
    42b8:	1166c0        	slli	a6, a6, 4
    42bb:	cfae72        	movi	a7, 0xfffffecf
    42be:	0020c0        	memw
    42c1:	0358      	l32i.n	a5, a3, 0
    42c3:	105570        	and	a5, a5, a7
    42c6:	205560        	or	a5, a5, a6
    42c9:	0020c0        	memw
    42cc:	0359      	s32i.n	a5, a3, 0
    42ce:	f00d      	ret.n
	...

000042dc <wifi_status_led_uninstall>:
    42dc:	f0c112        	addi	a1, a1, -16
    42df:	0109      	s32i.n	a0, a1, 0
    42e1:	fffb01        	l32r	a0, 42d0 <wifi_status_led_install+0x34>
    42e4:	7d0022        	l8ui	a2, a0, 125
    42e7:	0d1266        	bnei	a2, 1, 42f8 <wifi_status_led_uninstall+0x1c>
    42ea:	fffa21        	l32r	a2, 42d4 <wifi_status_led_install+0x38>
    42ed:	030c      	movi.n	a3, 0
    42ef:	7d4032        	s8i	a3, a0, 125
    42f2:	fff901        	l32r	a0, 42d8 <wifi_status_led_install+0x3c>
    42f5:	0000c0        	callx0	a0
    42f8:	0108      	l32i.n	a0, a1, 0
    42fa:	10c112        	addi	a1, a1, 16
    42fd:	f00d      	ret.n
    42ff:	008000        	excw
	...

00004304 <wifi_set_status_led_output_level>:
    4304:	ffff41        	l32r	a4, 4300 <wifi_status_led_uninstall+0x24>
    4307:	620b      	addi.n	a6, a2, -1
    4309:	150c      	movi.n	a5, 1
    430b:	030c      	movi.n	a3, 0
    430d:	833560        	moveqz	a3, a5, a6
    4310:	804432        	s8i	a3, a4, 128
    4313:	f00d      	ret.n
	...
    431d:	000000        	ill
    4320:	0d6c      	movi.n	a13, -32
    4322:	000000        	ill
    4325:	000000        	ill
    4328:	fffc41        	l32r	a4, 4318 <wifi_set_status_led_output_level+0x14>
    432b:	f0c112        	addi	a1, a1, -16
    432e:	0109      	s32i.n	a0, a1, 0
    4330:	11c9      	s32i.n	a12, a1, 4
    4332:	3f2442        	l32i	a4, a4, 252
    4335:	12c8      	l32i.n	a12, a2, 4
    4337:	349c      	beqz.n	a4, 434e <wifi_set_status_led_output_level+0x4a>
    4339:	1c9c      	beqz.n	a12, 434e <wifi_set_status_led_output_level+0x4a>
    433b:	0c2d      	mov.n	a2, a12
    433d:	0004c0        	callx0	a4
    4340:	0c2d      	mov.n	a2, a12
    4342:	fff631        	l32r	a3, 431c <wifi_set_status_led_output_level+0x18>
    4345:	fff641        	l32r	a4, 4320 <wifi_set_status_led_output_level+0x1c>
    4348:	fff701        	l32r	a0, 4324 <wifi_set_status_led_output_level+0x20>
    434b:	0000c0        	callx0	a0
    434e:	11c8      	l32i.n	a12, a1, 4
    4350:	0108      	l32i.n	a0, a1, 0
    4352:	10c112        	addi	a1, a1, 16
    4355:	f00d      	ret.n
    4357:	024100        	excw
    435a:	e00000        	subx4	a0, a0, a0
    435d:	000000        	ill
    4360:	3c88      	l32i.n	a8, a12, 12
    4362:	e00000        	subx4	a0, a0, a0
    4365:	000000        	ill
    4368:	000241        	l32r	a4, fffc4370 <system_get_sdk_version+0xfffbfea4>
    436b:	000000        	ill
	...

00004370 <wifi_set_event_handler_cb>:
    4370:	fffa31        	l32r	a3, 4358 <wifi_set_status_led_output_level+0x54>
    4373:	f0c112        	addi	a1, a1, -16
    4376:	0129      	s32i.n	a2, a1, 0
    4378:	1109      	s32i.n	a0, a1, 4
    437a:	000332        	l8ui	a3, a3, 0
    437d:	fff701        	l32r	a0, 435c <wifi_set_status_led_output_level+0x58>
    4380:	23ec      	bnez.n	a3, 43a6 <wifi_set_event_handler_cb+0x36>
    4382:	fff721        	l32r	a2, 4360 <wifi_set_status_led_output_level+0x5c>
    4385:	531c      	movi.n	a3, 21
    4387:	052c      	movi.n	a5, 32
    4389:	004d      	mov.n	a4, a0
    438b:	60c442        	addi	a4, a4, 96
    438e:	fff701        	l32r	a0, 436c <wifi_set_status_led_output_level+0x68>
    4391:	0000c0        	callx0	a0
    4394:	fff561        	l32r	a6, 4368 <wifi_set_status_led_output_level+0x64>
    4397:	150c      	movi.n	a5, 1
    4399:	fff281        	l32r	a8, 4364 <wifi_set_status_led_output_level+0x60>
    439c:	0178      	l32i.n	a7, a1, 0
    439e:	7879      	s32i.n	a7, a8, 28
    43a0:	004652        	s8i	a5, a6, 0
    43a3:	000046        	j	43a8 <wifi_set_event_handler_cb+0x38>
    43a6:	7029      	s32i.n	a2, a0, 28
    43a8:	1108      	l32i.n	a0, a1, 4
    43aa:	10c112        	addi	a1, a1, 16
    43ad:	f00d      	ret.n
    43af:	028000        	excw
    43b2:	a00000        	addx4	a0, a0, a0
    43b5:	000002        	l8ui	a0, a0, 0
	...

000043c4 <system_os_task>:
    43c4:	f0c112        	addi	a1, a1, -16
    43c7:	0109      	s32i.n	a0, a1, 0
    43c9:	0f33b6        	bltui	a3, 3, 43dc <system_os_task+0x18>
    43cc:	fff921        	l32r	a2, 43b0 <wifi_set_event_handler_cb+0x40>
    43cf:	330c      	movi.n	a3, 3
    43d1:	fff901        	l32r	a0, 43b8 <wifi_set_event_handler_cb+0x48>
    43d4:	0000c0        	callx0	a0
    43d7:	020c      	movi.n	a2, 0
    43d9:	000406        	j	43ed <system_os_task+0x29>
    43dc:	449c      	beqz.n	a4, 43f4 <system_os_task+0x30>
    43de:	259c      	beqz.n	a5, 43f4 <system_os_task+0x30>
    43e0:	332b      	addi.n	a3, a3, 2
    43e2:	743030        	extui	a3, a3, 0, 8
    43e5:	fff501        	l32r	a0, 43bc <wifi_set_event_handler_cb+0x4c>
    43e8:	0000c0        	callx0	a0
    43eb:	120c      	movi.n	a2, 1
    43ed:	0108      	l32i.n	a0, a1, 0
    43ef:	10c112        	addi	a1, a1, 16
    43f2:	f00d      	ret.n
    43f4:	fff021        	l32r	a2, 43b4 <wifi_set_event_handler_cb+0x44>
    43f7:	fff201        	l32r	a0, 43c0 <wifi_set_event_handler_cb+0x50>
    43fa:	0000c0        	callx0	a0
    43fd:	fff586        	j	43d7 <system_os_task+0x13>
    4400:	07a120        	excw
    4403:	a12000        	sll	a2, a0
    4406:	000007        	bnone	a0, a0, 440a <system_os_task+0x46>
    4409:	fe          	.byte 0xfe
    440a:	ef          	.byte 0xef
    440b:	3f          	.byte 0x3f
    440c:	000600        	excw
    440f:	000060        	excw
    4412:	000000        	ill
    4415:	000000        	ill

00004418 <system_uart_swap>:
    4418:	020c      	movi.n	a2, 0
    441a:	fff931        	l32r	a3, 4400 <system_os_task+0x3c>
    441d:	f0c112        	addi	a1, a1, -16
    4420:	0109      	s32i.n	a0, a1, 0
    4422:	fffb01        	l32r	a0, 4410 <system_os_task+0x4c>
    4425:	0000c0        	callx0	a0
    4428:	120c      	movi.n	a2, 1
    442a:	fff631        	l32r	a3, 4404 <system_os_task+0x40>
    442d:	fff901        	l32r	a0, 4414 <system_os_task+0x50>
    4430:	0000c0        	callx0	a0
    4433:	fff521        	l32r	a2, 4408 <system_os_task+0x44>
    4436:	cfae72        	movi	a7, 0xfffffecf
    4439:	00a162        	movi	a6, 0x100
    443c:	fff451        	l32r	a5, 440c <system_os_task+0x48>
    443f:	0020c0        	memw
    4442:	822582        	l32i	a8, a5, 0x208
    4445:	108870        	and	a8, a8, a7
    4448:	208860        	or	a8, a8, a6
    444b:	0020c0        	memw
    444e:	826582        	s32i	a8, a5, 0x208
    4451:	0020c0        	memw
    4454:	842542        	l32i	a4, a5, 0x210
    4457:	104470        	and	a4, a4, a7
    445a:	204460        	or	a4, a4, a6
    445d:	0020c0        	memw
    4460:	846542        	s32i	a4, a5, 0x210
    4463:	430c      	movi.n	a3, 4
    4465:	0020c0        	memw
    4468:	8a2202        	l32i	a0, a2, 0x228
    446b:	200030        	or	a0, a0, a3
    446e:	0020c0        	memw
    4471:	8a6202        	s32i	a0, a2, 0x228
    4474:	0108      	l32i.n	a0, a1, 0
    4476:	10c112        	addi	a1, a1, 16
    4479:	f00d      	ret.n
    447b:	a12000        	sll	a2, a0
    447e:	200007        	bnone	a0, a0, 44a2 <system_uart_de_swap+0x12>
    4481:	0007a1        	l32r	a10, fffc44a0 <system_get_sdk_version+0xfffbffd4>
    4484:	effe00        	excw
    4487:	3f          	.byte 0x3f
	...

00004490 <system_uart_de_swap>:
    4490:	020c      	movi.n	a2, 0
    4492:	fffa31        	l32r	a3, 447c <system_uart_swap+0x64>
    4495:	f0c112        	addi	a1, a1, -16
    4498:	0109      	s32i.n	a0, a1, 0
    449a:	fffb01        	l32r	a0, 4488 <system_uart_swap+0x70>
    449d:	0000c0        	callx0	a0
    44a0:	120c      	movi.n	a2, 1
    44a2:	fff731        	l32r	a3, 4480 <system_uart_swap+0x68>
    44a5:	fff901        	l32r	a0, 448c <system_uart_swap+0x74>
    44a8:	0000c0        	callx0	a0
    44ab:	b37c      	movi.n	a3, -5
    44ad:	fff521        	l32r	a2, 4484 <system_uart_swap+0x6c>
    44b0:	0020c0        	memw
    44b3:	8a2202        	l32i	a0, a2, 0x228
    44b6:	100030        	and	a0, a0, a3
    44b9:	0020c0        	memw
    44bc:	8a6202        	s32i	a0, a2, 0x228
    44bf:	0108      	l32i.n	a0, a1, 0
    44c1:	10c112        	addi	a1, a1, 16
    44c4:	f00d      	ret.n
    44c6:	000000        	ill
    44c9:	000000        	ill

000044cc <system_get_sdk_version>:
    44cc:	ffff21        	l32r	a2, 44c8 <system_uart_de_swap+0x38>
    44cf:	f00d      	ret.n

Disassembly of section .irom.text:

00004b80 <default_ssid-0x20>:
    4b80:	657375        	excw
    4b83:	695f72        	s16i	a7, a15, 210
    4b86:	6e          	.byte 0x6e
    4b87:	726574        	excw
    4b8a:	636166        	bnei	a1, 6, 4bf1 <default_ssid+0x51>
    4b8d:	632e65        	excw
	...

00004ba0 <default_ssid>:
    4ba0:	505345 30255f 255832 583230 323025 000058     ESP_%02X%02X%02X
	...
    4bc0:	464544 525245 204445 4e5546 4e2043 424d55     DEFERRED FUNC NU
    4bd0:	45424d 492052 422053 474749 205245 414854     MBER IS BIGGER T
    4be0:	4e4148 303120 00000a 000000 000000 616600     HAN 10..........
    4bf0:	696166 64656c 6e203a 646565 6f6220 20746f     failed: need boo
    4c00:	3e2074 31203d 0a332e 000000 000000 6f6400     t >= 1.3........
    4c10:	6e6f64 207427 707573 726f70 646574 6c6620     don't supported 
    4c20:	616c66 206873 70616d 000a2e 000000 657200     flash map.......
    4c30:	736572 726174 742074 75206f 206573 657375     restart to use u
    4c40:	726573 696220 40206e 782520 00000a 657400     ser bin @ %x....
    4c50:	736574 612074 65726c 796461 617020 657373     test already pas
    4c60:	646573 000a2e 000000 000000 000000 657200     sed.............
    4c70:	626572 746f6f 6f7420 737520 742065 747365     reboot to use te
    4c80:	207473 6e6962 204020 0a7825 000000 6f6400     st bin @ %x.....
    4c90:	6e6f64 207427 707573 726f70 646574 797420     don't supported 
    4ca0:	707974 0a2e65 000000 000000 000000 657200     type............
    4cb0:	626572 746f6f 6f7420 737520 000065 0a3100     reboot to use...
    4cc0:	000a31 0a3200 320000 00000a 000a31 0a3100     1...2...2...1...
    4cd0:	000a31 0a3200 000000 000000 000000 706900     1...2...........
    4ce0:	3a7069 2e6425 2e6425 2e6425 2c6425 73616d     ip:%d.%d.%d.%d,m
    4cf0:	6b7361 64253a 64252e 64252e 64252e 77672c     ask:%d.%d.%d.%d,
    4d00:	3a7767 2e6425 2e6425 2e6425 006425 000a00     gw:%d.%d.%d.%d..
    4d10:	00000a 000000 000000 000000 000000 616400     ................
    4d20:	746164 202061 30203a 782578 207e20 257830     data  : 0x%x ~ 0
    4d30:	782578 6c202c 3a6e65 642520 00000a 6f7200     x%x, len: %d....
    4d40:	646f72 617461 30203a 782578 207e20 257830     rodata: 0x%x ~ 0
    4d50:	782578 6c202c 3a6e65 642520 00000a 736200     x%x, len: %d....
    4d60:	737362 202020 30203a 782578 207e20 257830     bss   : 0x%x ~ 0
    4d70:	782578 6c202c 3a6e65 642520 00000a 656800     x%x, len: %d....
    4d80:	616568 202070 30203a 782578 207e20 257830     heap  : 0x%x ~ 0
    4d90:	782578 6c202c 3a6e65 642520 00000a 726500     x%x, len: %d....
    4da0:	727265 20726f 726170 656d61 726574 00000a     error parameter.
	...
    4dc0:	5d575b 636573 782520 726520 726f72 00000a     [W]sec %x error.
	...
    4de0:	727563 6e6572 725f74 74756f 5f7265 206469     current_router_i
    4df0:	692064 252073 000a64 000000 000000 726500     d is %d.........
    4e00:	727265 74203a 6b7361 727020 206f69 25203c     err: task prio <
    4e10:	642520 00000a 000000 000000 000000 726500      %d.............
    4e20:	727265 74203a 6b7361 757120 657565 726520     err: task queue 
    4e30:	727265 0a726f 000000 000000 000000 726500     error...........
    4e40:	727265 70203a 74736f 727020 206f69 25203c     err: post prio <
    4e50:	642520 66000a                                  %d..
