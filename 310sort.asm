
310sort:     file format elf32-littlemips


Disassembly of section .startup:

00000000 <_start>:
   0:	00000000 	nop
   4:	00000821 	move	$1,$0
   8:	00001021 	move	$2,$0
   c:	00001821 	move	$3,$0
  10:	00002021 	move	$4,$0
  14:	00002821 	move	$5,$0
  18:	00003021 	move	$6,$0
  1c:	00003821 	move	$7,$0
  20:	00004021 	move	$8,$0
  24:	00004821 	move	$9,$0
  28:	00005021 	move	$10,$0
  2c:	00005821 	move	$11,$0
  30:	00006021 	move	$12,$0
  34:	00006821 	move	$13,$0
  38:	00007021 	move	$14,$0
  3c:	00007821 	move	$15,$0
  40:	00008021 	move	$16,$0
  44:	00008821 	move	$17,$0
  48:	00009021 	move	$18,$0
  4c:	00009821 	move	$19,$0
  50:	0000a021 	move	$20,$0
  54:	0000a821 	move	$21,$0
  58:	0000b021 	move	$22,$0
  5c:	0000b821 	move	$23,$0
  60:	0000c021 	move	$24,$0
  64:	0000c821 	move	$25,$0
  68:	0000d021 	move	$26,$0
  6c:	0000d821 	move	$27,$0
  70:	0000f021 	move	$30,$0
  74:	0000f821 	move	$31,$0
  78:	3c1c0005 	lui	$28,0x5
  7c:	279c9230 	addiu	$28,$28,-28112
  80:	3c1d7fff 	lui	$29,0x7fff
  84:	37bdff00 	ori	$29,$29,0xff00
  88:	0800037f 	j	dfc <main>
  8c:	00000000 	nop

Disassembly of section .text:

00000200 <output_buffer_put>:
     200:	8f820414 	lw	$2,1044($28)
     204:	3c070005 	lui	$7,0x5
     208:	24e79240 	addiu	$7,$7,-28096
     20c:	24430001 	addiu	$3,$2,1
     210:	28650400 	slti	$5,$3,1024
     214:	00471021 	addu	$2,$2,$7
     218:	af830414 	sw	$3,1044($28)
     21c:	14a00008 	bnez	$5,240 <output_buffer_put+0x40>
     220:	a0440000 	sb	$4,0($2)
     224:	24040001 	li	$4,1
     228:	00e02821 	move	$5,$7
     22c:	00603021 	move	$6,$3
     230:	24020fa4 	li	$2,4004
     234:	0000000c 	syscall
     238:	00401821 	move	$3,$2
     23c:	af800414 	sw	$0,1044($28)
     240:	03e00008 	jr	$31
     244:	00000000 	nop

00000248 <mylib_wait>:
     248:	27bdfff8 	addiu	$29,$29,-8
     24c:	00001021 	move	$2,$0
     250:	afa00000 	sw	$0,0($29)
     254:	24040028 	li	$4,40
     258:	8fa30000 	lw	$3,0($29)
     25c:	00000000 	nop
     260:	00621821 	addu	$3,$3,$2
     264:	24420001 	addiu	$2,$2,1
     268:	1444fffb 	bne	$2,$4,258 <mylib_wait+0x10>
     26c:	afa30000 	sw	$3,0($29)
     270:	03e00008 	jr	$31
     274:	27bd0008 	addiu	$29,$29,8

00000278 <mylib_display_dec>:
     278:	27bdfbe0 	addiu	$29,$29,-1056
     27c:	afbf041c 	sw	$31,1052($29)
     280:	afb20418 	sw	$18,1048($29)
     284:	afb10414 	sw	$17,1044($29)
     288:	04800018 	bltz	$4,2ec <mylib_display_dec+0x74>
     28c:	afb00410 	sw	$16,1040($29)
     290:	14800068 	bnez	$4,434 <mylib_display_dec+0x1bc>
     294:	24020030 	li	$2,48
     298:	afa20010 	sw	$2,16($29)
     29c:	24040030 	li	$4,48
     2a0:	00008021 	move	$16,$0
     2a4:	27a90010 	addiu	$9,$29,16
     2a8:	2610ffff 	addiu	$16,$16,-1
     2ac:	00108880 	sll	$17,$16,0x2
     2b0:	01318821 	addu	$17,$9,$17
     2b4:	080000b1 	j	2c4 <mylib_display_dec+0x4c>
     2b8:	2412ffff 	li	$18,-1
     2bc:	8e240000 	lw	$4,0($17)
     2c0:	2631fffc 	addiu	$17,$17,-4
     2c4:	0c000080 	jal	200 <output_buffer_put>
     2c8:	00000000 	nop
     2cc:	1612fffb 	bne	$16,$18,2bc <mylib_display_dec+0x44>
     2d0:	2610ffff 	addiu	$16,$16,-1
     2d4:	8fbf041c 	lw	$31,1052($29)
     2d8:	8fb20418 	lw	$18,1048($29)
     2dc:	8fb10414 	lw	$17,1044($29)
     2e0:	8fb00410 	lw	$16,1040($29)
     2e4:	03e00008 	jr	$31
     2e8:	27bd0420 	addiu	$29,$29,1056
     2ec:	00042023 	negu	$4,$4
     2f0:	240b0001 	li	$11,1
     2f4:	3c066666 	lui	$6,0x6666
     2f8:	24c66667 	addiu	$6,$6,26215
     2fc:	00860018 	mult	$4,$6
     300:	00042fc3 	sra	$5,$4,0x1f
     304:	27a90010 	addiu	$9,$29,16
     308:	01201821 	move	$3,$9
     30c:	00004021 	move	$8,$0
     310:	240a0001 	li	$10,1
     314:	240c0002 	li	$12,2
     318:	240d0003 	li	$13,3
     31c:	240e0004 	li	$14,4
     320:	240f0005 	li	$15,5
     324:	24110006 	li	$17,6
     328:	00001010 	mfhi	$2
     32c:	00021083 	sra	$2,$2,0x2
     330:	00451023 	subu	$2,$2,$5
     334:	00023840 	sll	$7,$2,0x1
     338:	000210c0 	sll	$2,$2,0x3
     33c:	00e21021 	addu	$2,$7,$2
     340:	00821023 	subu	$2,$4,$2
     344:	10400031 	beqz	$2,40c <mylib_display_dec+0x194>
     348:	24120007 	li	$18,7
     34c:	104a0031 	beq	$2,$10,414 <mylib_display_dec+0x19c>
     350:	00000000 	nop
     354:	104c0031 	beq	$2,$12,41c <mylib_display_dec+0x1a4>
     358:	00000000 	nop
     35c:	104d0031 	beq	$2,$13,424 <mylib_display_dec+0x1ac>
     360:	00000000 	nop
     364:	104e0031 	beq	$2,$14,42c <mylib_display_dec+0x1b4>
     368:	00000000 	nop
     36c:	104f0033 	beq	$2,$15,43c <mylib_display_dec+0x1c4>
     370:	00000000 	nop
     374:	10510033 	beq	$2,$17,444 <mylib_display_dec+0x1cc>
     378:	00000000 	nop
     37c:	10520033 	beq	$2,$18,44c <mylib_display_dec+0x1d4>
     380:	00000000 	nop
     384:	38420008 	xori	$2,$2,0x8
     388:	0002102b 	sltu	$2,$0,$2
     38c:	24420038 	addiu	$2,$2,56
     390:	00860018 	mult	$4,$6
     394:	ac620000 	sw	$2,0($3)
     398:	25100001 	addiu	$16,$8,1
     39c:	00002010 	mfhi	$4
     3a0:	00042083 	sra	$4,$4,0x2
     3a4:	00852023 	subu	$4,$4,$5
     3a8:	1480000d 	bnez	$4,3e0 <mylib_display_dec+0x168>
     3ac:	24630004 	addiu	$3,$3,4
     3b0:	11600005 	beqz	$11,3c8 <mylib_display_dec+0x150>
     3b4:	00101080 	sll	$2,$16,0x2
     3b8:	01221021 	addu	$2,$9,$2
     3bc:	2403002d 	li	$3,45
     3c0:	ac430000 	sw	$3,0($2)
     3c4:	25100002 	addiu	$16,$8,2
     3c8:	2610ffff 	addiu	$16,$16,-1
     3cc:	00101080 	sll	$2,$16,0x2
     3d0:	01221021 	addu	$2,$9,$2
     3d4:	8c440000 	lw	$4,0($2)
     3d8:	080000ab 	j	2ac <mylib_display_dec+0x34>
     3dc:	2610ffff 	addiu	$16,$16,-1
     3e0:	00860018 	mult	$4,$6
     3e4:	00042fc3 	sra	$5,$4,0x1f
     3e8:	00001010 	mfhi	$2
     3ec:	00021083 	sra	$2,$2,0x2
     3f0:	00451023 	subu	$2,$2,$5
     3f4:	00023840 	sll	$7,$2,0x1
     3f8:	000210c0 	sll	$2,$2,0x3
     3fc:	00e21021 	addu	$2,$7,$2
     400:	00821023 	subu	$2,$4,$2
     404:	1440ffd1 	bnez	$2,34c <mylib_display_dec+0xd4>
     408:	02004021 	move	$8,$16
     40c:	080000e4 	j	390 <mylib_display_dec+0x118>
     410:	24020030 	li	$2,48
     414:	080000e4 	j	390 <mylib_display_dec+0x118>
     418:	24020031 	li	$2,49
     41c:	080000e4 	j	390 <mylib_display_dec+0x118>
     420:	24020032 	li	$2,50
     424:	080000e4 	j	390 <mylib_display_dec+0x118>
     428:	24020033 	li	$2,51
     42c:	080000e4 	j	390 <mylib_display_dec+0x118>
     430:	24020034 	li	$2,52
     434:	080000bd 	j	2f4 <mylib_display_dec+0x7c>
     438:	00005821 	move	$11,$0
     43c:	080000e4 	j	390 <mylib_display_dec+0x118>
     440:	24020035 	li	$2,53
     444:	080000e4 	j	390 <mylib_display_dec+0x118>
     448:	24020036 	li	$2,54
     44c:	080000e4 	j	390 <mylib_display_dec+0x118>
     450:	24020037 	li	$2,55

00000454 <mylib_display_hex>:
     454:	27bdffc0 	addiu	$29,$29,-64
     458:	27a20010 	addiu	$2,$29,16
     45c:	afb10038 	sw	$17,56($29)
     460:	afb00034 	sw	$16,52($29)
     464:	afbf003c 	sw	$31,60($29)
     468:	00408821 	move	$17,$2
     46c:	27a50030 	addiu	$5,$29,48
     470:	24060001 	li	$6,1
     474:	24070002 	li	$7,2
     478:	24080003 	li	$8,3
     47c:	24090004 	li	$9,4
     480:	240a0005 	li	$10,5
     484:	240b0006 	li	$11,6
     488:	240c0007 	li	$12,7
     48c:	240d0008 	li	$13,8
     490:	240e0009 	li	$14,9
     494:	240f000a 	li	$15,10
     498:	2410000b 	li	$16,11
     49c:	2418000c 	li	$24,12
     4a0:	2419000d 	li	$25,13
     4a4:	3083000f 	andi	$3,$4,0xf
     4a8:	1060001f 	beqz	$3,528 <mylib_display_hex+0xd4>
     4ac:	00000000 	nop
     4b0:	1066002e 	beq	$3,$6,56c <mylib_display_hex+0x118>
     4b4:	00000000 	nop
     4b8:	1067002e 	beq	$3,$7,574 <mylib_display_hex+0x120>
     4bc:	00000000 	nop
     4c0:	1068002e 	beq	$3,$8,57c <mylib_display_hex+0x128>
     4c4:	00000000 	nop
     4c8:	1069002e 	beq	$3,$9,584 <mylib_display_hex+0x130>
     4cc:	00000000 	nop
     4d0:	106a002e 	beq	$3,$10,58c <mylib_display_hex+0x138>
     4d4:	00000000 	nop
     4d8:	106b002e 	beq	$3,$11,594 <mylib_display_hex+0x140>
     4dc:	00000000 	nop
     4e0:	106c002e 	beq	$3,$12,59c <mylib_display_hex+0x148>
     4e4:	00000000 	nop
     4e8:	106d0030 	beq	$3,$13,5ac <mylib_display_hex+0x158>
     4ec:	00000000 	nop
     4f0:	106e0030 	beq	$3,$14,5b4 <mylib_display_hex+0x160>
     4f4:	00000000 	nop
     4f8:	106f002a 	beq	$3,$15,5a4 <mylib_display_hex+0x150>
     4fc:	00000000 	nop
     500:	1070002e 	beq	$3,$16,5bc <mylib_display_hex+0x168>
     504:	00000000 	nop
     508:	1078002e 	beq	$3,$24,5c4 <mylib_display_hex+0x170>
     50c:	00000000 	nop
     510:	1079002e 	beq	$3,$25,5cc <mylib_display_hex+0x178>
     514:	00000000 	nop
     518:	3863000e 	xori	$3,$3,0xe
     51c:	0003182b 	sltu	$3,$0,$3
     520:	0800014b 	j	52c <mylib_display_hex+0xd8>
     524:	24630065 	addiu	$3,$3,101
     528:	24030030 	li	$3,48
     52c:	ac430000 	sw	$3,0($2)
     530:	24420004 	addiu	$2,$2,4
     534:	1445ffdb 	bne	$2,$5,4a4 <mylib_display_hex+0x50>
     538:	00042103 	sra	$4,$4,0x4
     53c:	27b0002c 	addiu	$16,$29,44
     540:	2631fffc 	addiu	$17,$17,-4
     544:	8e040000 	lw	$4,0($16)
     548:	0c000080 	jal	200 <output_buffer_put>
     54c:	2610fffc 	addiu	$16,$16,-4
     550:	1611fffc 	bne	$16,$17,544 <mylib_display_hex+0xf0>
     554:	00000000 	nop
     558:	8fbf003c 	lw	$31,60($29)
     55c:	8fb10038 	lw	$17,56($29)
     560:	8fb00034 	lw	$16,52($29)
     564:	03e00008 	jr	$31
     568:	27bd0040 	addiu	$29,$29,64
     56c:	0800014b 	j	52c <mylib_display_hex+0xd8>
     570:	24030031 	li	$3,49
     574:	0800014b 	j	52c <mylib_display_hex+0xd8>
     578:	24030032 	li	$3,50
     57c:	0800014b 	j	52c <mylib_display_hex+0xd8>
     580:	24030033 	li	$3,51
     584:	0800014b 	j	52c <mylib_display_hex+0xd8>
     588:	24030034 	li	$3,52
     58c:	0800014b 	j	52c <mylib_display_hex+0xd8>
     590:	24030035 	li	$3,53
     594:	0800014b 	j	52c <mylib_display_hex+0xd8>
     598:	24030036 	li	$3,54
     59c:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5a0:	24030037 	li	$3,55
     5a4:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5a8:	24030061 	li	$3,97
     5ac:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5b0:	24030038 	li	$3,56
     5b4:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5b8:	24030039 	li	$3,57
     5bc:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5c0:	24030062 	li	$3,98
     5c4:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5c8:	24030063 	li	$3,99
     5cc:	0800014b 	j	52c <mylib_display_hex+0xd8>
     5d0:	24030064 	li	$3,100

000005d4 <mylib_display_char>:
     5d4:	08000080 	j	200 <output_buffer_put>
     5d8:	00000000 	nop

000005dc <mylib_display_newline>:
     5dc:	27bdffe8 	addiu	$29,$29,-24
     5e0:	afbf0014 	sw	$31,20($29)
     5e4:	0c000080 	jal	200 <output_buffer_put>
     5e8:	2404000a 	li	$4,10
     5ec:	8fbf0014 	lw	$31,20($29)
     5f0:	2404000d 	li	$4,13
     5f4:	08000080 	j	200 <output_buffer_put>
     5f8:	27bd0018 	addiu	$29,$29,24

000005fc <mylib_flush>:
     5fc:	3c030005 	lui	$3,0x5
     600:	8f870414 	lw	$7,1044($28)
     604:	24639240 	addiu	$3,$3,-28096
     608:	24040001 	li	$4,1
     60c:	00602821 	move	$5,$3
     610:	00e03021 	move	$6,$7
     614:	24020fa4 	li	$2,4004
     618:	0000000c 	syscall
     61c:	00401821 	move	$3,$2
     620:	03e00008 	jr	$31
     624:	af800414 	sw	$0,1044($28)

00000628 <mylib_finalize>:
     628:	27bdffe8 	addiu	$29,$29,-24
     62c:	afbf0014 	sw	$31,20($29)
     630:	0c000080 	jal	200 <output_buffer_put>
     634:	2404000a 	li	$4,10
     638:	0c000080 	jal	200 <output_buffer_put>
     63c:	2404000d 	li	$4,13
     640:	0c000080 	jal	200 <output_buffer_put>
     644:	24040045 	li	$4,69
     648:	0c000080 	jal	200 <output_buffer_put>
     64c:	2404004e 	li	$4,78
     650:	0c000080 	jal	200 <output_buffer_put>
     654:	24040044 	li	$4,68
     658:	0c000080 	jal	200 <output_buffer_put>
     65c:	2404000a 	li	$4,10
     660:	0c000080 	jal	200 <output_buffer_put>
     664:	2404000d 	li	$4,13
     668:	3c030005 	lui	$3,0x5
     66c:	8f870414 	lw	$7,1044($28)
     670:	24639240 	addiu	$3,$3,-28096
     674:	24040001 	li	$4,1
     678:	00602821 	move	$5,$3
     67c:	00e03021 	move	$6,$7
     680:	24020fa4 	li	$2,4004
     684:	0000000c 	syscall
     688:	00401821 	move	$3,$2
     68c:	af800414 	sw	$0,1044($28)
     690:	24040000 	li	$4,0
     694:	24020fa1 	li	$2,4001
     698:	0000000c 	syscall
     69c:	8fbf0014 	lw	$31,20($29)
     6a0:	00000000 	nop
     6a4:	03e00008 	jr	$31
     6a8:	27bd0018 	addiu	$29,$29,24

000006ac <table>:
     6ac:	3c030004 	lui	$3,0x4
     6b0:	3c020000 	lui	$2,0x0
     6b4:	03a3e823 	subu	$29,$29,$3
     6b8:	244211e0 	addiu	$2,$2,4576
     6bc:	3c050004 	lui	$5,0x4
     6c0:	03a01821 	move	$3,$29
     6c4:	00452821 	addu	$5,$2,$5
     6c8:	8c490000 	lw	$9,0($2)
     6cc:	8c480004 	lw	$8,4($2)
     6d0:	8c470008 	lw	$7,8($2)
     6d4:	8c46000c 	lw	$6,12($2)
     6d8:	24420010 	addiu	$2,$2,16
     6dc:	ac690000 	sw	$9,0($3)
     6e0:	ac680004 	sw	$8,4($3)
     6e4:	ac670008 	sw	$7,8($3)
     6e8:	ac66000c 	sw	$6,12($3)
     6ec:	1445fff6 	bne	$2,$5,6c8 <table+0x1c>
     6f0:	24630010 	addiu	$3,$3,16
     6f4:	8f828004 	lw	$2,-32764($28)
     6f8:	00000000 	nop
     6fc:	1840000c 	blez	$2,730 <table+0x84>
     700:	3c080004 	lui	$8,0x4
     704:	03a01821 	move	$3,$29
     708:	00001021 	move	$2,$0
     70c:	8f858004 	lw	$5,-32764($28)
     710:	8c660000 	lw	$6,0($3)
     714:	24420001 	addiu	$2,$2,1
     718:	0045282a 	slt	$5,$2,$5
     71c:	ac860000 	sw	$6,0($4)
     720:	24630004 	addiu	$3,$3,4
     724:	14a0fff9 	bnez	$5,70c <table+0x60>
     728:	24840004 	addiu	$4,$4,4
     72c:	3c080004 	lui	$8,0x4
     730:	03e00008 	jr	$31
     734:	03a8e821 	addu	$29,$29,$8

00000738 <radix_sort>:
     738:	8f820410 	lw	$2,1040($28)
     73c:	27bdffe0 	addiu	$29,$29,-32
     740:	3c180004 	lui	$24,0x4
     744:	afb00004 	sw	$16,4($29)
     748:	8f90041c 	lw	$16,1052($28)
     74c:	00021080 	sll	$2,$2,0x2
     750:	27181220 	addiu	$24,$24,4640
     754:	03021021 	addu	$2,$24,$2
     758:	afb6001c 	sw	$22,28($29)
     75c:	afb50018 	sw	$21,24($29)
     760:	afb40014 	sw	$20,20($29)
     764:	afb30010 	sw	$19,16($29)
     768:	afb2000c 	sw	$18,12($29)
     76c:	afb10008 	sw	$17,8($29)
     770:	8c480000 	lw	$8,0($2)
     774:	1a000198 	blez	$16,dd8 <radix_sort+0x6a0>
     778:	00808821 	move	$17,$4
     77c:	3c030004 	lui	$3,0x4
     780:	0005c880 	sll	$25,$5,0x2
     784:	24631240 	addiu	$3,$3,4672
     788:	3c0d0004 	lui	$13,0x4
     78c:	3c070005 	lui	$7,0x5
     790:	25ad11e0 	addiu	$13,$13,4576
     794:	2739ffc0 	addiu	$25,$25,-64
     798:	00006021 	move	$12,$0
     79c:	00007021 	move	$14,$0
     7a0:	00607821 	move	$15,$3
     7a4:	24e79240 	addiu	$7,$7,-28096
     7a8:	01e01021 	move	$2,$15
     7ac:	7c400000 	sq	$0,0($2)
     7b0:	7c400010 	sq	$0,16($2)
     7b4:	7c400020 	sq	$0,32($2)
     7b8:	7c400030 	sq	$0,48($2)
     7bc:	24420040 	addiu	$2,$2,64
     7c0:	1447fffa 	bne	$2,$7,7ac <radix_sort+0x74>
     7c4:	00000000 	nop
     7c8:	18a00077 	blez	$5,9a8 <radix_sort+0x270>
     7cc:	02204821 	move	$9,$17
     7d0:	00001021 	move	$2,$0
     7d4:	79210000 	lq	$1,0($9)
     7d8:	79220010 	lq	$2,16($9)
     7dc:	79230020 	lq	$3,32($9)
     7e0:	79240030 	lq	$4,48($9)
     7e4:	79a60000 	lq	$6,0($13)
     7e8:	718108e9 	psravw	$1,$1,$12
     7ec:	718210e9 	psravw	$2,$2,$12
     7f0:	718318e9 	psravw	$3,$3,$12
     7f4:	718420e9 	psravw	$4,$4,$12
     7f8:	70260c89 	pand	$1,$1,$6
     7fc:	70461489 	pand	$2,$2,$6
     800:	70661c89 	pand	$3,$3,$6
     804:	70862489 	pand	$4,$4,$6
     808:	7020303d 	pextw	$6,$1,0x0
     80c:	7020587d 	pextw	$11,$1,0x1
     810:	702050bd 	pextw	$10,$1,0x2
     814:	702090fd 	pextw	$18,$1,0x3
     818:	00063080 	sll	$6,$6,0x2
     81c:	00663021 	addu	$6,$3,$6
     820:	8cd30000 	lw	$19,0($6)
     824:	000b5880 	sll	$11,$11,0x2
     828:	006b5821 	addu	$11,$3,$11
     82c:	26730001 	addiu	$19,$19,1
     830:	acd30000 	sw	$19,0($6)
     834:	8d660000 	lw	$6,0($11)
     838:	000a5080 	sll	$10,$10,0x2
     83c:	006a5021 	addu	$10,$3,$10
     840:	24c60001 	addiu	$6,$6,1
     844:	ad660000 	sw	$6,0($11)
     848:	8d4b0000 	lw	$11,0($10)
     84c:	00123080 	sll	$6,$18,0x2
     850:	00663021 	addu	$6,$3,$6
     854:	256b0001 	addiu	$11,$11,1
     858:	ad4b0000 	sw	$11,0($10)
     85c:	8cca0000 	lw	$10,0($6)
     860:	00000000 	nop
     864:	254a0001 	addiu	$10,$10,1
     868:	acca0000 	sw	$10,0($6)
     86c:	7040303d 	pextw	$6,$2,0x0
     870:	7040587d 	pextw	$11,$2,0x1
     874:	704050bd 	pextw	$10,$2,0x2
     878:	704090fd 	pextw	$18,$2,0x3
     87c:	00063080 	sll	$6,$6,0x2
     880:	00663021 	addu	$6,$3,$6
     884:	8cd30000 	lw	$19,0($6)
     888:	000b5880 	sll	$11,$11,0x2
     88c:	006b5821 	addu	$11,$3,$11
     890:	26730001 	addiu	$19,$19,1
     894:	acd30000 	sw	$19,0($6)
     898:	8d660000 	lw	$6,0($11)
     89c:	000a5080 	sll	$10,$10,0x2
     8a0:	006a5021 	addu	$10,$3,$10
     8a4:	24c60001 	addiu	$6,$6,1
     8a8:	ad660000 	sw	$6,0($11)
     8ac:	8d4b0000 	lw	$11,0($10)
     8b0:	00123080 	sll	$6,$18,0x2
     8b4:	00663021 	addu	$6,$3,$6
     8b8:	256b0001 	addiu	$11,$11,1
     8bc:	ad4b0000 	sw	$11,0($10)
     8c0:	8cca0000 	lw	$10,0($6)
     8c4:	00000000 	nop
     8c8:	254a0001 	addiu	$10,$10,1
     8cc:	acca0000 	sw	$10,0($6)
     8d0:	7060303d 	pextw	$6,$3,0x0
     8d4:	7060587d 	pextw	$11,$3,0x1
     8d8:	706050bd 	pextw	$10,$3,0x2
     8dc:	706090fd 	pextw	$18,$3,0x3
     8e0:	00063080 	sll	$6,$6,0x2
     8e4:	00663021 	addu	$6,$3,$6
     8e8:	8cd30000 	lw	$19,0($6)
     8ec:	000b5880 	sll	$11,$11,0x2
     8f0:	006b5821 	addu	$11,$3,$11
     8f4:	26730001 	addiu	$19,$19,1
     8f8:	acd30000 	sw	$19,0($6)
     8fc:	8d660000 	lw	$6,0($11)
     900:	000a5080 	sll	$10,$10,0x2
     904:	006a5021 	addu	$10,$3,$10
     908:	24c60001 	addiu	$6,$6,1
     90c:	ad660000 	sw	$6,0($11)
     910:	8d4b0000 	lw	$11,0($10)
     914:	00123080 	sll	$6,$18,0x2
     918:	00663021 	addu	$6,$3,$6
     91c:	256b0001 	addiu	$11,$11,1
     920:	ad4b0000 	sw	$11,0($10)
     924:	8cca0000 	lw	$10,0($6)
     928:	00000000 	nop
     92c:	254a0001 	addiu	$10,$10,1
     930:	acca0000 	sw	$10,0($6)
     934:	7080503d 	pextw	$10,$4,0x0
     938:	7080307d 	pextw	$6,$4,0x1
     93c:	708058bd 	pextw	$11,$4,0x2
     940:	708090fd 	pextw	$18,$4,0x3
     944:	000a5080 	sll	$10,$10,0x2
     948:	006a5021 	addu	$10,$3,$10
     94c:	8d530000 	lw	$19,0($10)
     950:	00063080 	sll	$6,$6,0x2
     954:	00663021 	addu	$6,$3,$6
     958:	26730001 	addiu	$19,$19,1
     95c:	ad530000 	sw	$19,0($10)
     960:	8cca0000 	lw	$10,0($6)
     964:	000b5880 	sll	$11,$11,0x2
     968:	006b5821 	addu	$11,$3,$11
     96c:	254a0001 	addiu	$10,$10,1
     970:	acca0000 	sw	$10,0($6)
     974:	8d660000 	lw	$6,0($11)
     978:	00125080 	sll	$10,$18,0x2
     97c:	006a5021 	addu	$10,$3,$10
     980:	24c60001 	addiu	$6,$6,1
     984:	ad660000 	sw	$6,0($11)
     988:	8d460000 	lw	$6,0($10)
     98c:	00000000 	nop
     990:	24c60001 	addiu	$6,$6,1
     994:	ad460000 	sw	$6,0($10)
     998:	24420010 	addiu	$2,$2,16
     99c:	0045302a 	slt	$6,$2,$5
     9a0:	14c0ff8c 	bnez	$6,7d4 <radix_sort+0x9c>
     9a4:	25290040 	addiu	$9,$9,64
     9a8:	01e01021 	move	$2,$15
     9ac:	00003021 	move	$6,$0
     9b0:	78410000 	lq	$1,0($2)
     9b4:	78420010 	lq	$2,16($2)
     9b8:	78430020 	lq	$3,32($2)
     9bc:	78440030 	lq	$4,48($2)
     9c0:	70202808 	paddw	$5,$1,$0
     9c4:	70403008 	paddw	$6,$2,$0
     9c8:	70603808 	paddw	$7,$3,$0
     9cc:	70804008 	paddw	$8,$4,$0
     9d0:	70200838 	psllww	$1,$1,$0
     9d4:	70401038 	psllww	$2,$2,$0
     9d8:	70601838 	psllww	$3,$3,$0
     9dc:	70802038 	psllww	$4,$4,$0
     9e0:	70a12808 	paddw	$5,$5,$1
     9e4:	70c23008 	paddw	$6,$6,$2
     9e8:	70e33808 	paddw	$7,$7,$3
     9ec:	71044008 	paddw	$8,$8,$4
     9f0:	70200838 	psllww	$1,$1,$0
     9f4:	70401038 	psllww	$2,$2,$0
     9f8:	70601838 	psllww	$3,$3,$0
     9fc:	70802038 	psllww	$4,$4,$0
     a00:	70a12808 	paddw	$5,$5,$1
     a04:	70c23008 	paddw	$6,$6,$2
     a08:	70e33808 	paddw	$7,$7,$3
     a0c:	71044008 	paddw	$8,$8,$4
     a10:	70200838 	psllww	$1,$1,$0
     a14:	70401038 	psllww	$2,$2,$0
     a18:	70601838 	psllww	$3,$3,$0
     a1c:	70802038 	psllww	$4,$4,$0
     a20:	70a12808 	paddw	$5,$5,$1
     a24:	70c23008 	paddw	$6,$6,$2
     a28:	70e33808 	paddw	$7,$7,$3
     a2c:	71044008 	paddw	$8,$8,$4
     a30:	70a048fd 	pextw	$9,$5,0x3
	...
     a3c:	70c93408 	paddsw	$6,$6,$9
	...
     a48:	70c050fd 	pextw	$10,$6,0x3
	...
     a54:	70ea3c08 	paddsw	$7,$7,$10
	...
     a60:	70e058fd 	pextw	$11,$7,0x3
	...
     a6c:	710b4408 	paddsw	$8,$8,$11
     a70:	70a62c08 	paddsw	$5,$5,$6
     a74:	70c63408 	paddsw	$6,$6,$6
     a78:	70e63c08 	paddsw	$7,$7,$6
     a7c:	71064408 	paddsw	$8,$8,$6
     a80:	7c450000 	sq	$5,0($2)
     a84:	7c460010 	sq	$6,16($2)
     a88:	7c470020 	sq	$7,32($2)
     a8c:	7c480030 	sq	$8,48($2)
     a90:	710030fd 	pextw	$6,$8,0x3
     a94:	24420040 	addiu	$2,$2,64
     a98:	1447ffc5 	bne	$2,$7,9b0 <radix_sort+0x278>
     a9c:	00000000 	nop
     aa0:	18a000b7 	blez	$5,d80 <radix_sort+0x648>
     aa4:	02393021 	addu	$6,$17,$25
     aa8:	00a01021 	move	$2,$5
     aac:	78c10000 	lq	$1,0($6)
     ab0:	78c20010 	lq	$2,16($6)
     ab4:	78c30020 	lq	$3,32($6)
     ab8:	78c40030 	lq	$4,48($6)
     abc:	718128e9 	psravw	$5,$1,$12
     ac0:	718230e9 	psravw	$6,$2,$12
     ac4:	718338e9 	psravw	$7,$3,$12
     ac8:	718440e9 	psravw	$8,$4,$12
     acc:	70a62c89 	pand	$5,$5,$6
     ad0:	70c63489 	pand	$6,$6,$6
     ad4:	70e63c89 	pand	$7,$7,$6
     ad8:	71064489 	pand	$8,$8,$6
     adc:	7080803d 	pextw	$16,$4,0x0
     ae0:	7080907d 	pextw	$18,$4,0x1
     ae4:	7080a0bd 	pextw	$20,$4,0x2
     ae8:	7080b0fd 	pextw	$22,$4,0x3
     aec:	7100883d 	pextw	$17,$8,0x0
     af0:	7100987d 	pextw	$19,$8,0x1
     af4:	710058bd 	pextw	$11,$8,0x2
     af8:	710048fd 	pextw	$9,$8,0x3
     afc:	00094880 	sll	$9,$9,0x2
     b00:	00694821 	addu	$9,$3,$9
     b04:	8d2a0000 	lw	$10,0($9)
     b08:	000b5880 	sll	$11,$11,0x2
     b0c:	006b5821 	addu	$11,$3,$11
     b10:	254affff 	addiu	$10,$10,-1
     b14:	000aa880 	sll	$21,$10,0x2
     b18:	0115a821 	addu	$21,$8,$21
     b1c:	ad2a0000 	sw	$10,0($9)
     b20:	aeb60000 	sw	$22,0($21)
     b24:	8d690000 	lw	$9,0($11)
     b28:	00135080 	sll	$10,$19,0x2
     b2c:	006a5021 	addu	$10,$3,$10
     b30:	2529ffff 	addiu	$9,$9,-1
     b34:	00099880 	sll	$19,$9,0x2
     b38:	01139821 	addu	$19,$8,$19
     b3c:	ad690000 	sw	$9,0($11)
     b40:	ae740000 	sw	$20,0($19)
     b44:	8d4b0000 	lw	$11,0($10)
     b48:	00114880 	sll	$9,$17,0x2
     b4c:	00694821 	addu	$9,$3,$9
     b50:	256bffff 	addiu	$11,$11,-1
     b54:	000b8880 	sll	$17,$11,0x2
     b58:	01118821 	addu	$17,$8,$17
     b5c:	ad4b0000 	sw	$11,0($10)
     b60:	ae320000 	sw	$18,0($17)
     b64:	8d2a0000 	lw	$10,0($9)
     b68:	00000000 	nop
     b6c:	254affff 	addiu	$10,$10,-1
     b70:	000a5880 	sll	$11,$10,0x2
     b74:	010b5821 	addu	$11,$8,$11
     b78:	ad2a0000 	sw	$10,0($9)
     b7c:	ad700000 	sw	$16,0($11)
     b80:	7060803d 	pextw	$16,$3,0x0
     b84:	7060907d 	pextw	$18,$3,0x1
     b88:	7060a0bd 	pextw	$20,$3,0x2
     b8c:	7060b0fd 	pextw	$22,$3,0x3
     b90:	70e0883d 	pextw	$17,$7,0x0
     b94:	70e0987d 	pextw	$19,$7,0x1
     b98:	70e058bd 	pextw	$11,$7,0x2
     b9c:	70e048fd 	pextw	$9,$7,0x3
     ba0:	00094880 	sll	$9,$9,0x2
     ba4:	00694821 	addu	$9,$3,$9
     ba8:	8d2a0000 	lw	$10,0($9)
     bac:	000b5880 	sll	$11,$11,0x2
     bb0:	006b5821 	addu	$11,$3,$11
     bb4:	254affff 	addiu	$10,$10,-1
     bb8:	000aa880 	sll	$21,$10,0x2
     bbc:	0115a821 	addu	$21,$8,$21
     bc0:	ad2a0000 	sw	$10,0($9)
     bc4:	aeb60000 	sw	$22,0($21)
     bc8:	8d690000 	lw	$9,0($11)
     bcc:	00135080 	sll	$10,$19,0x2
     bd0:	006a5021 	addu	$10,$3,$10
     bd4:	2529ffff 	addiu	$9,$9,-1
     bd8:	00099880 	sll	$19,$9,0x2
     bdc:	01139821 	addu	$19,$8,$19
     be0:	ad690000 	sw	$9,0($11)
     be4:	ae740000 	sw	$20,0($19)
     be8:	8d4b0000 	lw	$11,0($10)
     bec:	00114880 	sll	$9,$17,0x2
     bf0:	00694821 	addu	$9,$3,$9
     bf4:	256bffff 	addiu	$11,$11,-1
     bf8:	000b8880 	sll	$17,$11,0x2
     bfc:	01118821 	addu	$17,$8,$17
     c00:	ad4b0000 	sw	$11,0($10)
     c04:	ae320000 	sw	$18,0($17)
     c08:	8d2a0000 	lw	$10,0($9)
     c0c:	00000000 	nop
     c10:	254affff 	addiu	$10,$10,-1
     c14:	000a5880 	sll	$11,$10,0x2
     c18:	010b5821 	addu	$11,$8,$11
     c1c:	ad2a0000 	sw	$10,0($9)
     c20:	ad700000 	sw	$16,0($11)
     c24:	7040803d 	pextw	$16,$2,0x0
     c28:	7040907d 	pextw	$18,$2,0x1
     c2c:	7040a0bd 	pextw	$20,$2,0x2
     c30:	7040b0fd 	pextw	$22,$2,0x3
     c34:	70c0883d 	pextw	$17,$6,0x0
     c38:	70c0987d 	pextw	$19,$6,0x1
     c3c:	70c058bd 	pextw	$11,$6,0x2
     c40:	70c048fd 	pextw	$9,$6,0x3
     c44:	00094880 	sll	$9,$9,0x2
     c48:	00694821 	addu	$9,$3,$9
     c4c:	8d2a0000 	lw	$10,0($9)
     c50:	000b5880 	sll	$11,$11,0x2
     c54:	006b5821 	addu	$11,$3,$11
     c58:	254affff 	addiu	$10,$10,-1
     c5c:	000aa880 	sll	$21,$10,0x2
     c60:	0115a821 	addu	$21,$8,$21
     c64:	ad2a0000 	sw	$10,0($9)
     c68:	aeb60000 	sw	$22,0($21)
     c6c:	8d690000 	lw	$9,0($11)
     c70:	00135080 	sll	$10,$19,0x2
     c74:	006a5021 	addu	$10,$3,$10
     c78:	2529ffff 	addiu	$9,$9,-1
     c7c:	00099880 	sll	$19,$9,0x2
     c80:	01139821 	addu	$19,$8,$19
     c84:	ad690000 	sw	$9,0($11)
     c88:	ae740000 	sw	$20,0($19)
     c8c:	8d4b0000 	lw	$11,0($10)
     c90:	00114880 	sll	$9,$17,0x2
     c94:	00694821 	addu	$9,$3,$9
     c98:	256bffff 	addiu	$11,$11,-1
     c9c:	000b8880 	sll	$17,$11,0x2
     ca0:	01118821 	addu	$17,$8,$17
     ca4:	ad4b0000 	sw	$11,0($10)
     ca8:	ae320000 	sw	$18,0($17)
     cac:	8d2a0000 	lw	$10,0($9)
     cb0:	00000000 	nop
     cb4:	254affff 	addiu	$10,$10,-1
     cb8:	000a5880 	sll	$11,$10,0x2
     cbc:	010b5821 	addu	$11,$8,$11
     cc0:	ad2a0000 	sw	$10,0($9)
     cc4:	ad700000 	sw	$16,0($11)
     cc8:	7020803d 	pextw	$16,$1,0x0
     ccc:	7020907d 	pextw	$18,$1,0x1
     cd0:	7020a0bd 	pextw	$20,$1,0x2
     cd4:	7020b0fd 	pextw	$22,$1,0x3
     cd8:	70a0883d 	pextw	$17,$5,0x0
     cdc:	70a0987d 	pextw	$19,$5,0x1
     ce0:	70a058bd 	pextw	$11,$5,0x2
     ce4:	70a048fd 	pextw	$9,$5,0x3
     ce8:	00094880 	sll	$9,$9,0x2
     cec:	00694821 	addu	$9,$3,$9
     cf0:	8d2a0000 	lw	$10,0($9)
     cf4:	000b5880 	sll	$11,$11,0x2
     cf8:	006b5821 	addu	$11,$3,$11
     cfc:	254affff 	addiu	$10,$10,-1
     d00:	000aa880 	sll	$21,$10,0x2
     d04:	0115a821 	addu	$21,$8,$21
     d08:	ad2a0000 	sw	$10,0($9)
     d0c:	aeb60000 	sw	$22,0($21)
     d10:	8d690000 	lw	$9,0($11)
     d14:	00135080 	sll	$10,$19,0x2
     d18:	006a5021 	addu	$10,$3,$10
     d1c:	2529ffff 	addiu	$9,$9,-1
     d20:	00099880 	sll	$19,$9,0x2
     d24:	01139821 	addu	$19,$8,$19
     d28:	ad690000 	sw	$9,0($11)
     d2c:	ae740000 	sw	$20,0($19)
     d30:	8d4b0000 	lw	$11,0($10)
     d34:	00114880 	sll	$9,$17,0x2
     d38:	00694821 	addu	$9,$3,$9
     d3c:	256bffff 	addiu	$11,$11,-1
     d40:	000b8880 	sll	$17,$11,0x2
     d44:	01118821 	addu	$17,$8,$17
     d48:	ad4b0000 	sw	$11,0($10)
     d4c:	ae320000 	sw	$18,0($17)
     d50:	8d2a0000 	lw	$10,0($9)
     d54:	00000000 	nop
     d58:	254affff 	addiu	$10,$10,-1
     d5c:	000a5880 	sll	$11,$10,0x2
     d60:	010b5821 	addu	$11,$8,$11
     d64:	ad2a0000 	sw	$10,0($9)
     d68:	ad700000 	sw	$16,0($11)
     d6c:	2442fff0 	addiu	$2,$2,-16
     d70:	1c40ff4e 	bgtz	$2,aac <radix_sort+0x374>
     d74:	24c6ffc0 	addiu	$6,$6,-64
     d78:	8f90041c 	lw	$16,1052($28)
     d7c:	00000000 	nop
     d80:	2602fffe 	addiu	$2,$16,-2
     d84:	104e000f 	beq	$2,$14,dc4 <radix_sort+0x68c>
     d88:	00803021 	move	$6,$4
     d8c:	8f820410 	lw	$2,1040($28)
     d90:	25ce0001 	addiu	$14,$14,1
     d94:	258c000d 	addiu	$12,$12,13
     d98:	24420001 	addiu	$2,$2,1
     d9c:	00023080 	sll	$6,$2,0x2
     da0:	03063021 	addu	$6,$24,$6
     da4:	af820410 	sw	$2,1040($28)
     da8:	01d0102a 	slt	$2,$14,$16
     dac:	8cc60000 	lw	$6,0($6)
     db0:	10400009 	beqz	$2,dd8 <radix_sort+0x6a0>
     db4:	25ad0010 	addiu	$13,$13,16
     db8:	01008821 	move	$17,$8
     dbc:	080001ea 	j	7a8 <radix_sort+0x70>
     dc0:	00c04021 	move	$8,$6
     dc4:	25ce0001 	addiu	$14,$14,1
     dc8:	01d0102a 	slt	$2,$14,$16
     dcc:	258c000d 	addiu	$12,$12,13
     dd0:	1440fff9 	bnez	$2,db8 <radix_sort+0x680>
     dd4:	25ad0010 	addiu	$13,$13,16
     dd8:	8fb6001c 	lw	$22,28($29)
     ddc:	8fb50018 	lw	$21,24($29)
     de0:	8fb40014 	lw	$20,20($29)
     de4:	8fb30010 	lw	$19,16($29)
     de8:	8fb2000c 	lw	$18,12($29)
     dec:	8fb10008 	lw	$17,8($29)
     df0:	8fb00004 	lw	$16,4($29)
     df4:	03e00008 	jr	$31
     df8:	27bd0020 	addiu	$29,$29,32

00000dfc <main>:
     dfc:	8f840418 	lw	$4,1048($28)
     e00:	27bdffc8 	addiu	$29,$29,-56
     e04:	afbf0034 	sw	$31,52($29)
     e08:	afb10014 	sw	$17,20($29)
     e0c:	afbe0030 	sw	$30,48($29)
     e10:	afb7002c 	sw	$23,44($29)
     e14:	afb60028 	sw	$22,40($29)
     e18:	afb50024 	sw	$21,36($29)
     e1c:	afb40020 	sw	$20,32($29)
     e20:	afb3001c 	sw	$19,28($29)
     e24:	afb20018 	sw	$18,24($29)
     e28:	0c0001ab 	jal	6ac <table>
     e2c:	afb00010 	sw	$16,16($29)
     e30:	8f830418 	lw	$3,1048($28)
     e34:	3c020004 	lui	$2,0x4
     e38:	24040073 	li	$4,115
     e3c:	00621021 	addu	$2,$3,$2
     e40:	8c51fffc 	lw	$17,-4($2)
     e44:	8f820420 	lw	$2,1056($28)
     e48:	0c000080 	jal	200 <output_buffer_put>
     e4c:	ac510000 	sw	$17,0($2)
     e50:	0c000080 	jal	200 <output_buffer_put>
     e54:	2404006f 	li	$4,111
     e58:	0c000080 	jal	200 <output_buffer_put>
     e5c:	24040072 	li	$4,114
     e60:	0c000080 	jal	200 <output_buffer_put>
     e64:	24040074 	li	$4,116
     e68:	0c000080 	jal	200 <output_buffer_put>
     e6c:	24040020 	li	$4,32
     e70:	0c000080 	jal	200 <output_buffer_put>
     e74:	2404006e 	li	$4,110
     e78:	0c000080 	jal	200 <output_buffer_put>
     e7c:	2404003d 	li	$4,61
     e80:	0c00009e 	jal	278 <mylib_display_dec>
     e84:	02202021 	move	$4,$17
     e88:	0c000080 	jal	200 <output_buffer_put>
     e8c:	2404000a 	li	$4,10
     e90:	0c000080 	jal	200 <output_buffer_put>
     e94:	2404000d 	li	$4,13
     e98:	0c000080 	jal	200 <output_buffer_put>
     e9c:	2404000a 	li	$4,10
     ea0:	0c000080 	jal	200 <output_buffer_put>
     ea4:	2404000d 	li	$4,13
     ea8:	70000035 	pinsw	$0,$0,$0,0x0
	...
     eb4:	70000075 	pinsw	$0,$0,$0,0x1
	...
     ec0:	700000b5 	pinsw	$0,$0,$0,0x2
	...
     ecc:	700000f5 	pinsw	$0,$0,$0,0x3
     ed0:	24010001 	li	$1,1
     ed4:	70a02835 	pinsw	$5,$5,$0,0x0
     ed8:	00000000 	nop
     edc:	24210001 	addiu	$1,$1,1
     ee0:	70a12875 	pinsw	$5,$5,$1,0x1
     ee4:	00000000 	nop
     ee8:	24210001 	addiu	$1,$1,1
     eec:	70a128b5 	pinsw	$5,$5,$1,0x2
	...
     ef8:	70a128f5 	pinsw	$5,$5,$1,0x3
     efc:	70005008 	paddw	$10,$0,$0
     f00:	70005808 	paddw	$11,$0,$0
     f04:	70006008 	paddw	$12,$0,$0
     f08:	70006808 	paddw	$13,$0,$0
     f0c:	8f848000 	lw	$4,-32768($28)
     f10:	1a200021 	blez	$17,f98 <main+0x19c>
     f14:	00001021 	move	$2,$0
     f18:	8f880418 	lw	$8,1048($28)
     f1c:	00801821 	move	$3,$4
     f20:	3045ffff 	andi	$5,$2,0xffff
     f24:	00052880 	sll	$5,$5,0x2
     f28:	01052821 	addu	$5,$8,$5
     f2c:	78a10000 	lq	$1,0($5)
     f30:	78a20010 	lq	$2,16($5)
     f34:	78a30020 	lq	$3,32($5)
     f38:	78a40030 	lq	$4,48($5)
     f3c:	24450004 	addiu	$5,$2,4
     f40:	24460008 	addiu	$6,$2,8
     f44:	2447000c 	addiu	$7,$2,12
     f48:	70220c08 	paddsw	$1,$1,$2
     f4c:	70451408 	paddsw	$2,$2,$5
     f50:	70661c08 	paddsw	$3,$3,$6
     f54:	70872408 	paddsw	$4,$4,$7
     f58:	70250808 	paddw	$1,$1,$5
     f5c:	70451008 	paddw	$2,$2,$5
     f60:	70651808 	paddw	$3,$3,$5
     f64:	70852008 	paddw	$4,$4,$5
     f68:	7c610000 	sq	$1,0($3)
     f6c:	7c620010 	sq	$2,16($3)
     f70:	7c630020 	sq	$3,32($3)
     f74:	7c640030 	sq	$4,48($3)
     f78:	714154a9 	por	$10,$10,$1
     f7c:	71625ca9 	por	$11,$11,$2
     f80:	718364a9 	por	$12,$12,$3
     f84:	71a46ca9 	por	$13,$13,$4
     f88:	24420010 	addiu	$2,$2,16
     f8c:	0051282a 	slt	$5,$2,$17
     f90:	14a0ffe3 	bnez	$5,f20 <main+0x124>
     f94:	24630040 	addiu	$3,$3,64
     f98:	714b54a9 	por	$10,$10,$11
     f9c:	718d64a9 	por	$12,$12,$13
	...
     fa8:	714c54a9 	por	$10,$10,$12
     fac:	70a0103d 	pextw	$2,$5,0x0
     fb0:	70a0307d 	pextw	$6,$5,0x1
     fb4:	70a028bd 	pextw	$5,$5,0x2
     fb8:	70a018fd 	pextw	$3,$5,0x3
     fbc:	00c21025 	or	$2,$6,$2
     fc0:	00451025 	or	$2,$2,$5
     fc4:	00431025 	or	$2,$2,$3
     fc8:	3c03fc00 	lui	$3,0xfc00
     fcc:	00431024 	and	$2,$2,$3
     fd0:	14400081 	bnez	$2,11d8 <main+0x3dc>
     fd4:	24020003 	li	$2,3
     fd8:	24020002 	li	$2,2
     fdc:	af82041c 	sw	$2,1052($28)
     fe0:	080003fc 	j	ff0 <main+0x1f4>
     fe4:	00008021 	move	$16,$0
     fe8:	8f848000 	lw	$4,-32768($28)
     fec:	00000000 	nop
     ff0:	00902021 	addu	$4,$4,$16
     ff4:	78810000 	lq	$1,0($4)
     ff8:	78820010 	lq	$2,16($4)
     ffc:	00000000 	nop
    1000:	7020203d 	pextw	$4,$1,0x0
    1004:	7020b87d 	pextw	$23,$1,0x1
    1008:	7020f0bd 	pextw	$30,$1,0x2
    100c:	7020b0fd 	pextw	$22,$1,0x3
    1010:	7040a83d 	pextw	$21,$2,0x0
    1014:	7040a07d 	pextw	$20,$2,0x1
    1018:	704098bd 	pextw	$19,$2,0x2
    101c:	704090fd 	pextw	$18,$2,0x3
    1020:	0c00009e 	jal	278 <mylib_display_dec>
    1024:	26100020 	addiu	$16,$16,32
    1028:	0c000080 	jal	200 <output_buffer_put>
    102c:	24040020 	li	$4,32
    1030:	0c00009e 	jal	278 <mylib_display_dec>
    1034:	02e02021 	move	$4,$23
    1038:	0c000080 	jal	200 <output_buffer_put>
    103c:	24040020 	li	$4,32
    1040:	0c00009e 	jal	278 <mylib_display_dec>
    1044:	03c02021 	move	$4,$30
    1048:	0c000080 	jal	200 <output_buffer_put>
    104c:	24040020 	li	$4,32
    1050:	0c00009e 	jal	278 <mylib_display_dec>
    1054:	02c02021 	move	$4,$22
    1058:	0c000080 	jal	200 <output_buffer_put>
    105c:	24040020 	li	$4,32
    1060:	0c00009e 	jal	278 <mylib_display_dec>
    1064:	02a02021 	move	$4,$21
    1068:	0c000080 	jal	200 <output_buffer_put>
    106c:	24040020 	li	$4,32
    1070:	0c00009e 	jal	278 <mylib_display_dec>
    1074:	02802021 	move	$4,$20
    1078:	0c000080 	jal	200 <output_buffer_put>
    107c:	24040020 	li	$4,32
    1080:	0c00009e 	jal	278 <mylib_display_dec>
    1084:	02602021 	move	$4,$19
    1088:	0c000080 	jal	200 <output_buffer_put>
    108c:	24040020 	li	$4,32
    1090:	0c00009e 	jal	278 <mylib_display_dec>
    1094:	02402021 	move	$4,$18
    1098:	0c000080 	jal	200 <output_buffer_put>
    109c:	24040020 	li	$4,32
    10a0:	24020180 	li	$2,384
    10a4:	1602ffd0 	bne	$16,$2,fe8 <main+0x1ec>
    10a8:	00000000 	nop
    10ac:	8f828000 	lw	$2,-32768($28)
    10b0:	00000000 	nop
    10b4:	24420180 	addiu	$2,$2,384
    10b8:	78410000 	lq	$1,0($2)
	...
    10c4:	7020203d 	pextw	$4,$1,0x0
    10c8:	7020987d 	pextw	$19,$1,0x1
    10cc:	702090bd 	pextw	$18,$1,0x2
    10d0:	0c00009e 	jal	278 <mylib_display_dec>
    10d4:	702080fd 	pextw	$16,$1,0x3
    10d8:	0c000080 	jal	200 <output_buffer_put>
    10dc:	24040020 	li	$4,32
    10e0:	0c00009e 	jal	278 <mylib_display_dec>
    10e4:	02602021 	move	$4,$19
    10e8:	0c000080 	jal	200 <output_buffer_put>
    10ec:	24040020 	li	$4,32
    10f0:	0c00009e 	jal	278 <mylib_display_dec>
    10f4:	02402021 	move	$4,$18
    10f8:	0c000080 	jal	200 <output_buffer_put>
    10fc:	24040020 	li	$4,32
    1100:	0c00009e 	jal	278 <mylib_display_dec>
    1104:	02002021 	move	$4,$16
    1108:	0c000080 	jal	200 <output_buffer_put>
    110c:	24040020 	li	$4,32
    1110:	0c000080 	jal	200 <output_buffer_put>
    1114:	2404000a 	li	$4,10
    1118:	0c000080 	jal	200 <output_buffer_put>
    111c:	2404000d 	li	$4,13
    1120:	8f848000 	lw	$4,-32768($28)
    1124:	0c0001ce 	jal	738 <radix_sort>
    1128:	02202821 	move	$5,$17
    112c:	0c000080 	jal	200 <output_buffer_put>
    1130:	2404000a 	li	$4,10
    1134:	0c000080 	jal	200 <output_buffer_put>
    1138:	2404000d 	li	$4,13
    113c:	1a200013 	blez	$17,118c <main+0x390>
    1140:	3c0251eb 	lui	$2,0x51eb
    1144:	3442851f 	ori	$2,$2,0x851f
    1148:	02220018 	mult	$17,$2
    114c:	001197c3 	sra	$18,$17,0x1f
    1150:	00008021 	move	$16,$0
    1154:	00001010 	mfhi	$2
    1158:	00021143 	sra	$2,$2,0x5
    115c:	00529023 	subu	$18,$2,$18
    1160:	8f838000 	lw	$3,-32768($28)
    1164:	00101080 	sll	$2,$16,0x2
    1168:	00621021 	addu	$2,$3,$2
    116c:	8c440000 	lw	$4,0($2)
    1170:	0c00009e 	jal	278 <mylib_display_dec>
    1174:	02128021 	addu	$16,$16,$18
    1178:	0c000080 	jal	200 <output_buffer_put>
    117c:	24040020 	li	$4,32
    1180:	0211102a 	slt	$2,$16,$17
    1184:	1440fff6 	bnez	$2,1160 <main+0x364>
    1188:	00000000 	nop
    118c:	0c000080 	jal	200 <output_buffer_put>
    1190:	2404000a 	li	$4,10
    1194:	0c000080 	jal	200 <output_buffer_put>
    1198:	2404000d 	li	$4,13
    119c:	0c00018a 	jal	628 <mylib_finalize>
    11a0:	00000000 	nop
    11a4:	8fbf0034 	lw	$31,52($29)
    11a8:	8fbe0030 	lw	$30,48($29)
    11ac:	8fb7002c 	lw	$23,44($29)
    11b0:	8fb60028 	lw	$22,40($29)
    11b4:	8fb50024 	lw	$21,36($29)
    11b8:	8fb40020 	lw	$20,32($29)
    11bc:	8fb3001c 	lw	$19,28($29)
    11c0:	8fb20018 	lw	$18,24($29)
    11c4:	8fb10014 	lw	$17,20($29)
    11c8:	8fb00010 	lw	$16,16($29)
    11cc:	00001021 	move	$2,$0
    11d0:	03e00008 	jr	$31
    11d4:	27bd0038 	addiu	$29,$29,56
    11d8:	080003f8 	j	fe0 <main+0x1e4>
    11dc:	af82041c 	sw	$2,1052($28)
