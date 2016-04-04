
sort_using_LCache:     file format elf32-littlemips


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
  78:	3c1c0006 	lui	$28,0x6
  7c:	279c8010 	addiu	$28,$28,-32752
  80:	3c1d7fff 	lui	$29,0x7fff
  84:	37bdff00 	ori	$29,$29,0xff00
  88:	08000384 	j	e10 <main>
  8c:	00000000 	nop

Disassembly of section .text:

00000200 <output_buffer_put>:
     200:	8f820424 	lw	$2,1060($28)
     204:	3c070006 	lui	$7,0x6
     208:	24e78030 	addiu	$7,$7,-32720
     20c:	24430001 	addiu	$3,$2,1
     210:	28650400 	slti	$5,$3,1024
     214:	00471021 	addu	$2,$2,$7
     218:	af830424 	sw	$3,1060($28)
     21c:	14a00008 	bnez	$5,240 <output_buffer_put+0x40>
     220:	a0440000 	sb	$4,0($2)
     224:	24040001 	li	$4,1
     228:	00e02821 	move	$5,$7
     22c:	00603021 	move	$6,$3
     230:	24020fa4 	li	$2,4004
     234:	0000000c 	syscall
     238:	00401821 	move	$3,$2
     23c:	af800424 	sw	$0,1060($28)
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
     5fc:	3c030006 	lui	$3,0x6
     600:	8f870424 	lw	$7,1060($28)
     604:	24638030 	addiu	$3,$3,-32720
     608:	24040001 	li	$4,1
     60c:	00602821 	move	$5,$3
     610:	00e03021 	move	$6,$7
     614:	24020fa4 	li	$2,4004
     618:	0000000c 	syscall
     61c:	00401821 	move	$3,$2
     620:	03e00008 	jr	$31
     624:	af800424 	sw	$0,1060($28)

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
     668:	3c030006 	lui	$3,0x6
     66c:	8f870424 	lw	$7,1060($28)
     670:	24638030 	addiu	$3,$3,-32720
     674:	24040001 	li	$4,1
     678:	00602821 	move	$5,$3
     67c:	00e03021 	move	$6,$7
     680:	24020fa4 	li	$2,4004
     684:	0000000c 	syscall
     688:	00401821 	move	$3,$2
     68c:	af800424 	sw	$0,1060($28)
     690:	24040000 	li	$4,0
     694:	24020fa1 	li	$2,4001
     698:	0000000c 	syscall
     69c:	8fbf0014 	lw	$31,20($29)
     6a0:	00000000 	nop
     6a4:	03e00008 	jr	$31
     6a8:	27bd0018 	addiu	$29,$29,24

000006ac <radix_sort>:
     6ac:	27bdffe8 	addiu	$29,$29,-24
     6b0:	afb50014 	sw	$21,20($29)
     6b4:	afb40010 	sw	$20,16($29)
     6b8:	afb3000c 	sw	$19,12($29)
     6bc:	afb20008 	sw	$18,8($29)
     6c0:	afb10004 	sw	$17,4($29)
     6c4:	afb00000 	sw	$16,0($29)
     6c8:	3c020001 	lui	$2,0x1
     6cc:	24420000 	addiu	$2,$2,0
     6d0:	bc4d0000 	cache	0xd,0($2)
     6d4:	3c030001 	lui	$3,0x1
     6d8:	3c020006 	lui	$2,0x6
     6dc:	24630000 	addiu	$3,$3,0
     6e0:	24428450 	addiu	$2,$2,-31664
     6e4:	ac620000 	sw	$2,0($3)
     6e8:	3c030001 	lui	$3,0x1
     6ec:	3c020026 	lui	$2,0x26
     6f0:	24630004 	addiu	$3,$3,4
     6f4:	24428450 	addiu	$2,$2,-31664
     6f8:	ac620000 	sw	$2,0($3)
     6fc:	3c030001 	lui	$3,0x1
     700:	3c020006 	lui	$2,0x6
     704:	24630008 	addiu	$3,$3,8
     708:	24428450 	addiu	$2,$2,-31664
     70c:	ac620000 	sw	$2,0($3)
     710:	3c030001 	lui	$3,0x1
     714:	3c020026 	lui	$2,0x26
     718:	2463000c 	addiu	$3,$3,12
     71c:	24428450 	addiu	$2,$2,-31664
     720:	ac620000 	sw	$2,0($3)
     724:	8f820420 	lw	$2,1056($28)
     728:	3c180001 	lui	$24,0x1
     72c:	27180000 	addiu	$24,$24,0
     730:	00021080 	sll	$2,$2,0x2
     734:	03021021 	addu	$2,$24,$2
     738:	8c480000 	lw	$8,0($2)
     73c:	3c020005 	lui	$2,0x5
     740:	24420020 	addiu	$2,$2,32
     744:	bc4d0000 	cache	0xd,0($2)
     748:	3c030005 	lui	$3,0x5
     74c:	24630020 	addiu	$3,$3,32
     750:	24021fff 	li	$2,8191
     754:	ac620000 	sw	$2,0($3)
     758:	3c030005 	lui	$3,0x5
     75c:	24630024 	addiu	$3,$3,36
     760:	ac620000 	sw	$2,0($3)
     764:	3c030005 	lui	$3,0x5
     768:	24630028 	addiu	$3,$3,40
     76c:	ac620000 	sw	$2,0($3)
     770:	3c030005 	lui	$3,0x5
     774:	2463002c 	addiu	$3,$3,44
     778:	ac620000 	sw	$2,0($3)
     77c:	3c020005 	lui	$2,0x5
     780:	24420020 	addiu	$2,$2,32
     784:	785f0000 	lq	$31,0($2)
     788:	8f900434 	lw	$16,1076($28)
     78c:	00000000 	nop
     790:	1a000197 	blez	$16,df0 <radix_sort+0x744>
     794:	00808821 	move	$17,$4
     798:	3c030005 	lui	$3,0x5
     79c:	00057880 	sll	$15,$5,0x2
     7a0:	24630030 	addiu	$3,$3,48
     7a4:	3c070006 	lui	$7,0x6
     7a8:	25efffc0 	addiu	$15,$15,-64
     7ac:	00006021 	move	$12,$0
     7b0:	00006821 	move	$13,$0
     7b4:	00607021 	move	$14,$3
     7b8:	24e78030 	addiu	$7,$7,-32720
     7bc:	01c01021 	move	$2,$14
     7c0:	bc4c0000 	cache	0xc,0($2)
     7c4:	bc4c0010 	cache	0xc,16($2)
     7c8:	bc4c0020 	cache	0xc,32($2)
     7cc:	bc4c0030 	cache	0xc,48($2)
     7d0:	7c400000 	sq	$0,0($2)
     7d4:	7c400010 	sq	$0,16($2)
     7d8:	7c400020 	sq	$0,32($2)
     7dc:	7c400030 	sq	$0,48($2)
     7e0:	24420040 	addiu	$2,$2,64
     7e4:	1447fff6 	bne	$2,$7,7c0 <radix_sort+0x114>
     7e8:	00000000 	nop
     7ec:	18a00076 	blez	$5,9c8 <radix_sort+0x31c>
     7f0:	02204821 	move	$9,$17
     7f4:	00001021 	move	$2,$0
     7f8:	79210000 	lq	$1,0($9)
     7fc:	79220010 	lq	$2,16($9)
     800:	79230020 	lq	$3,32($9)
     804:	79240030 	lq	$4,48($9)
     808:	718108e9 	psravw	$1,$1,$12
     80c:	718210e9 	psravw	$2,$2,$12
     810:	718318e9 	psravw	$3,$3,$12
     814:	718420e9 	psravw	$4,$4,$12
     818:	703f0c89 	pand	$1,$1,$31
     81c:	705f1489 	pand	$2,$2,$31
     820:	707f1c89 	pand	$3,$3,$31
     824:	709f2489 	pand	$4,$4,$31
     828:	7020c83d 	pextw	$25,$1,0x0
     82c:	7020587d 	pextw	$11,$1,0x1
     830:	702050bd 	pextw	$10,$1,0x2
     834:	702030fd 	pextw	$6,$1,0x3
     838:	0019c880 	sll	$25,$25,0x2
     83c:	0079c821 	addu	$25,$3,$25
     840:	8f320000 	lw	$18,0($25)
     844:	000b5880 	sll	$11,$11,0x2
     848:	006b5821 	addu	$11,$3,$11
     84c:	26520001 	addiu	$18,$18,1
     850:	af320000 	sw	$18,0($25)
     854:	8d720000 	lw	$18,0($11)
     858:	000a5080 	sll	$10,$10,0x2
     85c:	006a5021 	addu	$10,$3,$10
     860:	26520001 	addiu	$18,$18,1
     864:	ad720000 	sw	$18,0($11)
     868:	8d4b0000 	lw	$11,0($10)
     86c:	00063080 	sll	$6,$6,0x2
     870:	00663021 	addu	$6,$3,$6
     874:	256b0001 	addiu	$11,$11,1
     878:	ad4b0000 	sw	$11,0($10)
     87c:	8cca0000 	lw	$10,0($6)
     880:	00000000 	nop
     884:	254a0001 	addiu	$10,$10,1
     888:	acca0000 	sw	$10,0($6)
     88c:	7040c83d 	pextw	$25,$2,0x0
     890:	7040587d 	pextw	$11,$2,0x1
     894:	704050bd 	pextw	$10,$2,0x2
     898:	704030fd 	pextw	$6,$2,0x3
     89c:	0019c880 	sll	$25,$25,0x2
     8a0:	0079c821 	addu	$25,$3,$25
     8a4:	8f320000 	lw	$18,0($25)
     8a8:	000b5880 	sll	$11,$11,0x2
     8ac:	006b5821 	addu	$11,$3,$11
     8b0:	26520001 	addiu	$18,$18,1
     8b4:	af320000 	sw	$18,0($25)
     8b8:	8d720000 	lw	$18,0($11)
     8bc:	000a5080 	sll	$10,$10,0x2
     8c0:	006a5021 	addu	$10,$3,$10
     8c4:	26520001 	addiu	$18,$18,1
     8c8:	ad720000 	sw	$18,0($11)
     8cc:	8d4b0000 	lw	$11,0($10)
     8d0:	00063080 	sll	$6,$6,0x2
     8d4:	00663021 	addu	$6,$3,$6
     8d8:	256b0001 	addiu	$11,$11,1
     8dc:	ad4b0000 	sw	$11,0($10)
     8e0:	8cca0000 	lw	$10,0($6)
     8e4:	00000000 	nop
     8e8:	254a0001 	addiu	$10,$10,1
     8ec:	acca0000 	sw	$10,0($6)
     8f0:	7060c83d 	pextw	$25,$3,0x0
     8f4:	7060587d 	pextw	$11,$3,0x1
     8f8:	706030bd 	pextw	$6,$3,0x2
     8fc:	706050fd 	pextw	$10,$3,0x3
     900:	0019c880 	sll	$25,$25,0x2
     904:	0079c821 	addu	$25,$3,$25
     908:	8f320000 	lw	$18,0($25)
     90c:	000b5880 	sll	$11,$11,0x2
     910:	006b5821 	addu	$11,$3,$11
     914:	26520001 	addiu	$18,$18,1
     918:	af320000 	sw	$18,0($25)
     91c:	8d720000 	lw	$18,0($11)
     920:	00063080 	sll	$6,$6,0x2
     924:	00663021 	addu	$6,$3,$6
     928:	26520001 	addiu	$18,$18,1
     92c:	ad720000 	sw	$18,0($11)
     930:	8ccb0000 	lw	$11,0($6)
     934:	000a5080 	sll	$10,$10,0x2
     938:	006a5021 	addu	$10,$3,$10
     93c:	256b0001 	addiu	$11,$11,1
     940:	accb0000 	sw	$11,0($6)
     944:	8d460000 	lw	$6,0($10)
     948:	00000000 	nop
     94c:	24c60001 	addiu	$6,$6,1
     950:	ad460000 	sw	$6,0($10)
     954:	7080303d 	pextw	$6,$4,0x0
     958:	7080c87d 	pextw	$25,$4,0x1
     95c:	708058bd 	pextw	$11,$4,0x2
     960:	708050fd 	pextw	$10,$4,0x3
     964:	00063080 	sll	$6,$6,0x2
     968:	00663021 	addu	$6,$3,$6
     96c:	8cd20000 	lw	$18,0($6)
     970:	0019c880 	sll	$25,$25,0x2
     974:	0079c821 	addu	$25,$3,$25
     978:	26520001 	addiu	$18,$18,1
     97c:	acd20000 	sw	$18,0($6)
     980:	8f260000 	lw	$6,0($25)
     984:	000b5880 	sll	$11,$11,0x2
     988:	006b5821 	addu	$11,$3,$11
     98c:	24c60001 	addiu	$6,$6,1
     990:	af260000 	sw	$6,0($25)
     994:	8d660000 	lw	$6,0($11)
     998:	000a5080 	sll	$10,$10,0x2
     99c:	006a5021 	addu	$10,$3,$10
     9a0:	24c60001 	addiu	$6,$6,1
     9a4:	ad660000 	sw	$6,0($11)
     9a8:	8d460000 	lw	$6,0($10)
     9ac:	00000000 	nop
     9b0:	24c60001 	addiu	$6,$6,1
     9b4:	ad460000 	sw	$6,0($10)
     9b8:	24420010 	addiu	$2,$2,16
     9bc:	0045302a 	slt	$6,$2,$5
     9c0:	14c0ff8d 	bnez	$6,7f8 <radix_sort+0x14c>
     9c4:	25290040 	addiu	$9,$9,64
     9c8:	01c01021 	move	$2,$14
     9cc:	00003021 	move	$6,$0
     9d0:	78410000 	lq	$1,0($2)
     9d4:	78420010 	lq	$2,16($2)
     9d8:	78430020 	lq	$3,32($2)
     9dc:	78440030 	lq	$4,48($2)
     9e0:	70202808 	paddw	$5,$1,$0
     9e4:	70403008 	paddw	$6,$2,$0
     9e8:	70603808 	paddw	$7,$3,$0
     9ec:	70804008 	paddw	$8,$4,$0
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
     a30:	70200838 	psllww	$1,$1,$0
     a34:	70401038 	psllww	$2,$2,$0
     a38:	70601838 	psllww	$3,$3,$0
     a3c:	70802038 	psllww	$4,$4,$0
     a40:	70a12808 	paddw	$5,$5,$1
     a44:	70c23008 	paddw	$6,$6,$2
     a48:	70e33808 	paddw	$7,$7,$3
     a4c:	71044008 	paddw	$8,$8,$4
     a50:	70a048fd 	pextw	$9,$5,0x3
	...
     a5c:	70c93408 	paddsw	$6,$6,$9
	...
     a68:	70c050fd 	pextw	$10,$6,0x3
	...
     a74:	70ea3c08 	paddsw	$7,$7,$10
	...
     a80:	70e058fd 	pextw	$11,$7,0x3
	...
     a8c:	710b4408 	paddsw	$8,$8,$11
     a90:	70a62c08 	paddsw	$5,$5,$6
     a94:	70c63408 	paddsw	$6,$6,$6
     a98:	70e63c08 	paddsw	$7,$7,$6
     a9c:	71064408 	paddsw	$8,$8,$6
     aa0:	7c450000 	sq	$5,0($2)
     aa4:	7c460010 	sq	$6,16($2)
     aa8:	7c470020 	sq	$7,32($2)
     aac:	7c480030 	sq	$8,48($2)
     ab0:	710030fd 	pextw	$6,$8,0x3
     ab4:	24420040 	addiu	$2,$2,64
     ab8:	1447ffc5 	bne	$2,$7,9d0 <radix_sort+0x324>
     abc:	00000000 	nop
     ac0:	18a000b7 	blez	$5,da0 <radix_sort+0x6f4>
     ac4:	022f3021 	addu	$6,$17,$15
     ac8:	00a01021 	move	$2,$5
     acc:	78c10000 	lq	$1,0($6)
     ad0:	78c20010 	lq	$2,16($6)
     ad4:	78c30020 	lq	$3,32($6)
     ad8:	78c40030 	lq	$4,48($6)
     adc:	718128e9 	psravw	$5,$1,$12
     ae0:	718230e9 	psravw	$6,$2,$12
     ae4:	718338e9 	psravw	$7,$3,$12
     ae8:	718440e9 	psravw	$8,$4,$12
     aec:	70bf2c89 	pand	$5,$5,$31
     af0:	70df3489 	pand	$6,$6,$31
     af4:	70ff3c89 	pand	$7,$7,$31
     af8:	711f4489 	pand	$8,$8,$31
     afc:	7080803d 	pextw	$16,$4,0x0
     b00:	7080907d 	pextw	$18,$4,0x1
     b04:	708098bd 	pextw	$19,$4,0x2
     b08:	7080a8fd 	pextw	$21,$4,0x3
     b0c:	7100883d 	pextw	$17,$8,0x0
     b10:	7100507d 	pextw	$10,$8,0x1
     b14:	710058bd 	pextw	$11,$8,0x2
     b18:	7100c8fd 	pextw	$25,$8,0x3
     b1c:	0019c880 	sll	$25,$25,0x2
     b20:	0079c821 	addu	$25,$3,$25
     b24:	8f290000 	lw	$9,0($25)
     b28:	000b5880 	sll	$11,$11,0x2
     b2c:	006b5821 	addu	$11,$3,$11
     b30:	2529ffff 	addiu	$9,$9,-1
     b34:	0009a080 	sll	$20,$9,0x2
     b38:	0114a021 	addu	$20,$8,$20
     b3c:	af290000 	sw	$9,0($25)
     b40:	ae950000 	sw	$21,0($20)
     b44:	8d790000 	lw	$25,0($11)
     b48:	000a5080 	sll	$10,$10,0x2
     b4c:	006a5021 	addu	$10,$3,$10
     b50:	2739ffff 	addiu	$25,$25,-1
     b54:	00194880 	sll	$9,$25,0x2
     b58:	01094821 	addu	$9,$8,$9
     b5c:	ad790000 	sw	$25,0($11)
     b60:	ad330000 	sw	$19,0($9)
     b64:	8d4b0000 	lw	$11,0($10)
     b68:	00114880 	sll	$9,$17,0x2
     b6c:	00694821 	addu	$9,$3,$9
     b70:	256bffff 	addiu	$11,$11,-1
     b74:	000b8880 	sll	$17,$11,0x2
     b78:	01118821 	addu	$17,$8,$17
     b7c:	ad4b0000 	sw	$11,0($10)
     b80:	ae320000 	sw	$18,0($17)
     b84:	8d2a0000 	lw	$10,0($9)
     b88:	00000000 	nop
     b8c:	254affff 	addiu	$10,$10,-1
     b90:	000a5880 	sll	$11,$10,0x2
     b94:	010b5821 	addu	$11,$8,$11
     b98:	ad2a0000 	sw	$10,0($9)
     b9c:	ad700000 	sw	$16,0($11)
     ba0:	7060803d 	pextw	$16,$3,0x0
     ba4:	7060907d 	pextw	$18,$3,0x1
     ba8:	706098bd 	pextw	$19,$3,0x2
     bac:	7060a8fd 	pextw	$21,$3,0x3
     bb0:	70e0883d 	pextw	$17,$7,0x0
     bb4:	70e0507d 	pextw	$10,$7,0x1
     bb8:	70e058bd 	pextw	$11,$7,0x2
     bbc:	70e0c8fd 	pextw	$25,$7,0x3
     bc0:	0019c880 	sll	$25,$25,0x2
     bc4:	0079c821 	addu	$25,$3,$25
     bc8:	8f290000 	lw	$9,0($25)
     bcc:	000b5880 	sll	$11,$11,0x2
     bd0:	006b5821 	addu	$11,$3,$11
     bd4:	2529ffff 	addiu	$9,$9,-1
     bd8:	0009a080 	sll	$20,$9,0x2
     bdc:	0114a021 	addu	$20,$8,$20
     be0:	af290000 	sw	$9,0($25)
     be4:	ae950000 	sw	$21,0($20)
     be8:	8d790000 	lw	$25,0($11)
     bec:	000a5080 	sll	$10,$10,0x2
     bf0:	006a5021 	addu	$10,$3,$10
     bf4:	2739ffff 	addiu	$25,$25,-1
     bf8:	00194880 	sll	$9,$25,0x2
     bfc:	01094821 	addu	$9,$8,$9
     c00:	ad790000 	sw	$25,0($11)
     c04:	ad330000 	sw	$19,0($9)
     c08:	8d4b0000 	lw	$11,0($10)
     c0c:	00114880 	sll	$9,$17,0x2
     c10:	00694821 	addu	$9,$3,$9
     c14:	256bffff 	addiu	$11,$11,-1
     c18:	000b8880 	sll	$17,$11,0x2
     c1c:	01118821 	addu	$17,$8,$17
     c20:	ad4b0000 	sw	$11,0($10)
     c24:	ae320000 	sw	$18,0($17)
     c28:	8d2a0000 	lw	$10,0($9)
     c2c:	00000000 	nop
     c30:	254affff 	addiu	$10,$10,-1
     c34:	000a5880 	sll	$11,$10,0x2
     c38:	010b5821 	addu	$11,$8,$11
     c3c:	ad2a0000 	sw	$10,0($9)
     c40:	ad700000 	sw	$16,0($11)
     c44:	7040803d 	pextw	$16,$2,0x0
     c48:	7040907d 	pextw	$18,$2,0x1
     c4c:	704098bd 	pextw	$19,$2,0x2
     c50:	7040a8fd 	pextw	$21,$2,0x3
     c54:	70c0883d 	pextw	$17,$6,0x0
     c58:	70c0507d 	pextw	$10,$6,0x1
     c5c:	70c058bd 	pextw	$11,$6,0x2
     c60:	70c0c8fd 	pextw	$25,$6,0x3
     c64:	0019c880 	sll	$25,$25,0x2
     c68:	0079c821 	addu	$25,$3,$25
     c6c:	8f290000 	lw	$9,0($25)
     c70:	000b5880 	sll	$11,$11,0x2
     c74:	006b5821 	addu	$11,$3,$11
     c78:	2529ffff 	addiu	$9,$9,-1
     c7c:	0009a080 	sll	$20,$9,0x2
     c80:	0114a021 	addu	$20,$8,$20
     c84:	af290000 	sw	$9,0($25)
     c88:	ae950000 	sw	$21,0($20)
     c8c:	8d790000 	lw	$25,0($11)
     c90:	000a5080 	sll	$10,$10,0x2
     c94:	006a5021 	addu	$10,$3,$10
     c98:	2739ffff 	addiu	$25,$25,-1
     c9c:	00194880 	sll	$9,$25,0x2
     ca0:	01094821 	addu	$9,$8,$9
     ca4:	ad790000 	sw	$25,0($11)
     ca8:	ad330000 	sw	$19,0($9)
     cac:	8d4b0000 	lw	$11,0($10)
     cb0:	00114880 	sll	$9,$17,0x2
     cb4:	00694821 	addu	$9,$3,$9
     cb8:	256bffff 	addiu	$11,$11,-1
     cbc:	000b8880 	sll	$17,$11,0x2
     cc0:	01118821 	addu	$17,$8,$17
     cc4:	ad4b0000 	sw	$11,0($10)
     cc8:	ae320000 	sw	$18,0($17)
     ccc:	8d2a0000 	lw	$10,0($9)
     cd0:	00000000 	nop
     cd4:	254affff 	addiu	$10,$10,-1
     cd8:	000a5880 	sll	$11,$10,0x2
     cdc:	010b5821 	addu	$11,$8,$11
     ce0:	ad2a0000 	sw	$10,0($9)
     ce4:	ad700000 	sw	$16,0($11)
     ce8:	7020803d 	pextw	$16,$1,0x0
     cec:	7020907d 	pextw	$18,$1,0x1
     cf0:	702098bd 	pextw	$19,$1,0x2
     cf4:	7020a8fd 	pextw	$21,$1,0x3
     cf8:	70a0883d 	pextw	$17,$5,0x0
     cfc:	70a0507d 	pextw	$10,$5,0x1
     d00:	70a058bd 	pextw	$11,$5,0x2
     d04:	70a0c8fd 	pextw	$25,$5,0x3
     d08:	0019c880 	sll	$25,$25,0x2
     d0c:	0079c821 	addu	$25,$3,$25
     d10:	8f290000 	lw	$9,0($25)
     d14:	000b5880 	sll	$11,$11,0x2
     d18:	006b5821 	addu	$11,$3,$11
     d1c:	2529ffff 	addiu	$9,$9,-1
     d20:	0009a080 	sll	$20,$9,0x2
     d24:	0114a021 	addu	$20,$8,$20
     d28:	af290000 	sw	$9,0($25)
     d2c:	ae950000 	sw	$21,0($20)
     d30:	8d790000 	lw	$25,0($11)
     d34:	000a5080 	sll	$10,$10,0x2
     d38:	006a5021 	addu	$10,$3,$10
     d3c:	2739ffff 	addiu	$25,$25,-1
     d40:	00194880 	sll	$9,$25,0x2
     d44:	01094821 	addu	$9,$8,$9
     d48:	ad790000 	sw	$25,0($11)
     d4c:	ad330000 	sw	$19,0($9)
     d50:	8d4b0000 	lw	$11,0($10)
     d54:	00114880 	sll	$9,$17,0x2
     d58:	00694821 	addu	$9,$3,$9
     d5c:	256bffff 	addiu	$11,$11,-1
     d60:	000b8880 	sll	$17,$11,0x2
     d64:	01118821 	addu	$17,$8,$17
     d68:	ad4b0000 	sw	$11,0($10)
     d6c:	ae320000 	sw	$18,0($17)
     d70:	8d2a0000 	lw	$10,0($9)
     d74:	00000000 	nop
     d78:	254affff 	addiu	$10,$10,-1
     d7c:	000a5880 	sll	$11,$10,0x2
     d80:	010b5821 	addu	$11,$8,$11
     d84:	ad2a0000 	sw	$10,0($9)
     d88:	ad700000 	sw	$16,0($11)
     d8c:	2442fff0 	addiu	$2,$2,-16
     d90:	1c40ff4e 	bgtz	$2,acc <radix_sort+0x420>
     d94:	24c6ffc0 	addiu	$6,$6,-64
     d98:	8f900434 	lw	$16,1076($28)
     d9c:	00000000 	nop
     da0:	2602fffe 	addiu	$2,$16,-2
     da4:	104d000e 	beq	$2,$13,de0 <radix_sort+0x734>
     da8:	00803021 	move	$6,$4
     dac:	8f820420 	lw	$2,1056($28)
     db0:	25ad0001 	addiu	$13,$13,1
     db4:	24420001 	addiu	$2,$2,1
     db8:	00023080 	sll	$6,$2,0x2
     dbc:	03063021 	addu	$6,$24,$6
     dc0:	af820420 	sw	$2,1056($28)
     dc4:	01b0102a 	slt	$2,$13,$16
     dc8:	8cc60000 	lw	$6,0($6)
     dcc:	10400008 	beqz	$2,df0 <radix_sort+0x744>
     dd0:	258c000d 	addiu	$12,$12,13
     dd4:	01008821 	move	$17,$8
     dd8:	080001ef 	j	7bc <radix_sort+0x110>
     ddc:	00c04021 	move	$8,$6
     de0:	25ad0001 	addiu	$13,$13,1
     de4:	01b0102a 	slt	$2,$13,$16
     de8:	1440fffa 	bnez	$2,dd4 <radix_sort+0x728>
     dec:	258c000d 	addiu	$12,$12,13
     df0:	8fb50014 	lw	$21,20($29)
     df4:	8fb40010 	lw	$20,16($29)
     df8:	8fb3000c 	lw	$19,12($29)
     dfc:	8fb20008 	lw	$18,8($29)
     e00:	8fb10004 	lw	$17,4($29)
     e04:	8fb00000 	lw	$16,0($29)
     e08:	03e00008 	jr	$31
     e0c:	27bd0018 	addiu	$29,$29,24

00000e10 <main>:
     e10:	3c020001 	lui	$2,0x1
     e14:	24420010 	addiu	$2,$2,16
     e18:	3c030004 	lui	$3,0x4
     e1c:	00621821 	addu	$3,$3,$2
     e20:	af820430 	sw	$2,1072($28)
     e24:	3c020005 	lui	$2,0x5
     e28:	27bdffc8 	addiu	$29,$29,-56
     e2c:	2442000c 	addiu	$2,$2,12
     e30:	24040073 	li	$4,115
     e34:	afbf0034 	sw	$31,52($29)
     e38:	af820438 	sw	$2,1080($28)
     e3c:	afb10014 	sw	$17,20($29)
     e40:	afb00010 	sw	$16,16($29)
     e44:	8c71fffc 	lw	$17,-4($3)
     e48:	afbe0030 	sw	$30,48($29)
     e4c:	afb7002c 	sw	$23,44($29)
     e50:	afb60028 	sw	$22,40($29)
     e54:	afb50024 	sw	$21,36($29)
     e58:	afb40020 	sw	$20,32($29)
     e5c:	afb3001c 	sw	$19,28($29)
     e60:	0c000080 	jal	200 <output_buffer_put>
     e64:	afb20018 	sw	$18,24($29)
     e68:	0c000080 	jal	200 <output_buffer_put>
     e6c:	2404006f 	li	$4,111
     e70:	0c000080 	jal	200 <output_buffer_put>
     e74:	24040072 	li	$4,114
     e78:	0c000080 	jal	200 <output_buffer_put>
     e7c:	24040074 	li	$4,116
     e80:	0c000080 	jal	200 <output_buffer_put>
     e84:	24040020 	li	$4,32
     e88:	0c000080 	jal	200 <output_buffer_put>
     e8c:	2404006e 	li	$4,110
     e90:	0c000080 	jal	200 <output_buffer_put>
     e94:	2404003d 	li	$4,61
     e98:	0c00009e 	jal	278 <mylib_display_dec>
     e9c:	02202021 	move	$4,$17
     ea0:	0c000080 	jal	200 <output_buffer_put>
     ea4:	2404000a 	li	$4,10
     ea8:	0c000080 	jal	200 <output_buffer_put>
     eac:	2404000d 	li	$4,13
     eb0:	0c000080 	jal	200 <output_buffer_put>
     eb4:	2404000a 	li	$4,10
     eb8:	3c100001 	lui	$16,0x1
     ebc:	0c000080 	jal	200 <output_buffer_put>
     ec0:	2404000d 	li	$4,13
     ec4:	8e040000 	lw	$4,0($16)
     ec8:	0c000115 	jal	454 <mylib_display_hex>
     ecc:	26100000 	addiu	$16,$16,0
     ed0:	0c000080 	jal	200 <output_buffer_put>
     ed4:	2404000a 	li	$4,10
     ed8:	0c000080 	jal	200 <output_buffer_put>
     edc:	2404000d 	li	$4,13
     ee0:	0c000080 	jal	200 <output_buffer_put>
     ee4:	2404000a 	li	$4,10
     ee8:	0c000080 	jal	200 <output_buffer_put>
     eec:	2404000d 	li	$4,13
     ef0:	8e040004 	lw	$4,4($16)
     ef4:	0c000115 	jal	454 <mylib_display_hex>
     ef8:	00000000 	nop
     efc:	0c000080 	jal	200 <output_buffer_put>
     f00:	2404000a 	li	$4,10
     f04:	0c000080 	jal	200 <output_buffer_put>
     f08:	2404000d 	li	$4,13
     f0c:	0c000080 	jal	200 <output_buffer_put>
     f10:	2404000a 	li	$4,10
     f14:	0c000080 	jal	200 <output_buffer_put>
     f18:	2404000d 	li	$4,13
     f1c:	8e040008 	lw	$4,8($16)
     f20:	0c000115 	jal	454 <mylib_display_hex>
     f24:	00000000 	nop
     f28:	0c000080 	jal	200 <output_buffer_put>
     f2c:	2404000a 	li	$4,10
     f30:	0c000080 	jal	200 <output_buffer_put>
     f34:	2404000d 	li	$4,13
     f38:	0c000080 	jal	200 <output_buffer_put>
     f3c:	2404000a 	li	$4,10
     f40:	0c000080 	jal	200 <output_buffer_put>
     f44:	2404000d 	li	$4,13
     f48:	8e04000c 	lw	$4,12($16)
     f4c:	0c000115 	jal	454 <mylib_display_hex>
     f50:	00000000 	nop
     f54:	0c000080 	jal	200 <output_buffer_put>
     f58:	2404000a 	li	$4,10
     f5c:	0c000080 	jal	200 <output_buffer_put>
     f60:	2404000d 	li	$4,13
     f64:	0c000080 	jal	200 <output_buffer_put>
     f68:	2404000a 	li	$4,10
     f6c:	0c000080 	jal	200 <output_buffer_put>
     f70:	2404000d 	li	$4,13
     f74:	70000035 	pinsw	$0,$0,$0,0x0
	...
     f80:	70000075 	pinsw	$0,$0,$0,0x1
	...
     f8c:	700000b5 	pinsw	$0,$0,$0,0x2
	...
     f98:	700000f5 	pinsw	$0,$0,$0,0x3
     f9c:	24010001 	li	$1,1
     fa0:	70a02835 	pinsw	$5,$5,$0,0x0
     fa4:	00000000 	nop
     fa8:	24210001 	addiu	$1,$1,1
     fac:	70a12875 	pinsw	$5,$5,$1,0x1
     fb0:	00000000 	nop
     fb4:	24210001 	addiu	$1,$1,1
     fb8:	70a128b5 	pinsw	$5,$5,$1,0x2
	...
     fc4:	70a128f5 	pinsw	$5,$5,$1,0x3
     fc8:	70005008 	paddw	$10,$0,$0
     fcc:	70005808 	paddw	$11,$0,$0
     fd0:	70006008 	paddw	$12,$0,$0
     fd4:	70006808 	paddw	$13,$0,$0
     fd8:	8f848000 	lw	$4,-32768($28)
     fdc:	1a200021 	blez	$17,1064 <main+0x254>
     fe0:	00001021 	move	$2,$0
     fe4:	8f880430 	lw	$8,1072($28)
     fe8:	00801821 	move	$3,$4
     fec:	3045ffff 	andi	$5,$2,0xffff
     ff0:	00052880 	sll	$5,$5,0x2
     ff4:	01052821 	addu	$5,$8,$5
     ff8:	78a10000 	lq	$1,0($5)
     ffc:	78a20010 	lq	$2,16($5)
    1000:	78a30020 	lq	$3,32($5)
    1004:	78a40030 	lq	$4,48($5)
    1008:	24450004 	addiu	$5,$2,4
    100c:	24460008 	addiu	$6,$2,8
    1010:	2447000c 	addiu	$7,$2,12
    1014:	70220c08 	paddsw	$1,$1,$2
    1018:	70451408 	paddsw	$2,$2,$5
    101c:	70661c08 	paddsw	$3,$3,$6
    1020:	70872408 	paddsw	$4,$4,$7
    1024:	70250808 	paddw	$1,$1,$5
    1028:	70451008 	paddw	$2,$2,$5
    102c:	70651808 	paddw	$3,$3,$5
    1030:	70852008 	paddw	$4,$4,$5
    1034:	7c610000 	sq	$1,0($3)
    1038:	7c620010 	sq	$2,16($3)
    103c:	7c630020 	sq	$3,32($3)
    1040:	7c640030 	sq	$4,48($3)
    1044:	714154a9 	por	$10,$10,$1
    1048:	71625ca9 	por	$11,$11,$2
    104c:	718364a9 	por	$12,$12,$3
    1050:	71a46ca9 	por	$13,$13,$4
    1054:	24420010 	addiu	$2,$2,16
    1058:	0051282a 	slt	$5,$2,$17
    105c:	14a0ffe3 	bnez	$5,fec <main+0x1dc>
    1060:	24630040 	addiu	$3,$3,64
    1064:	714b54a9 	por	$10,$10,$11
    1068:	718d64a9 	por	$12,$12,$13
	...
    1074:	714c54a9 	por	$10,$10,$12
    1078:	70a0103d 	pextw	$2,$5,0x0
    107c:	70a0307d 	pextw	$6,$5,0x1
    1080:	70a028bd 	pextw	$5,$5,0x2
    1084:	70a018fd 	pextw	$3,$5,0x3
    1088:	00c21025 	or	$2,$6,$2
    108c:	00451025 	or	$2,$2,$5
    1090:	00431025 	or	$2,$2,$3
    1094:	3c03fc00 	lui	$3,0xfc00
    1098:	00431024 	and	$2,$2,$3
    109c:	14400081 	bnez	$2,12a4 <main+0x494>
    10a0:	24020003 	li	$2,3
    10a4:	24020002 	li	$2,2
    10a8:	af820434 	sw	$2,1076($28)
    10ac:	0800042f 	j	10bc <main+0x2ac>
    10b0:	00008021 	move	$16,$0
    10b4:	8f848000 	lw	$4,-32768($28)
    10b8:	00000000 	nop
    10bc:	00902021 	addu	$4,$4,$16
    10c0:	78810000 	lq	$1,0($4)
    10c4:	78820010 	lq	$2,16($4)
    10c8:	00000000 	nop
    10cc:	7020203d 	pextw	$4,$1,0x0
    10d0:	7020b87d 	pextw	$23,$1,0x1
    10d4:	7020f0bd 	pextw	$30,$1,0x2
    10d8:	7020b0fd 	pextw	$22,$1,0x3
    10dc:	7040a83d 	pextw	$21,$2,0x0
    10e0:	7040a07d 	pextw	$20,$2,0x1
    10e4:	704098bd 	pextw	$19,$2,0x2
    10e8:	704090fd 	pextw	$18,$2,0x3
    10ec:	0c00009e 	jal	278 <mylib_display_dec>
    10f0:	26100020 	addiu	$16,$16,32
    10f4:	0c000080 	jal	200 <output_buffer_put>
    10f8:	24040020 	li	$4,32
    10fc:	0c00009e 	jal	278 <mylib_display_dec>
    1100:	02e02021 	move	$4,$23
    1104:	0c000080 	jal	200 <output_buffer_put>
    1108:	24040020 	li	$4,32
    110c:	0c00009e 	jal	278 <mylib_display_dec>
    1110:	03c02021 	move	$4,$30
    1114:	0c000080 	jal	200 <output_buffer_put>
    1118:	24040020 	li	$4,32
    111c:	0c00009e 	jal	278 <mylib_display_dec>
    1120:	02c02021 	move	$4,$22
    1124:	0c000080 	jal	200 <output_buffer_put>
    1128:	24040020 	li	$4,32
    112c:	0c00009e 	jal	278 <mylib_display_dec>
    1130:	02a02021 	move	$4,$21
    1134:	0c000080 	jal	200 <output_buffer_put>
    1138:	24040020 	li	$4,32
    113c:	0c00009e 	jal	278 <mylib_display_dec>
    1140:	02802021 	move	$4,$20
    1144:	0c000080 	jal	200 <output_buffer_put>
    1148:	24040020 	li	$4,32
    114c:	0c00009e 	jal	278 <mylib_display_dec>
    1150:	02602021 	move	$4,$19
    1154:	0c000080 	jal	200 <output_buffer_put>
    1158:	24040020 	li	$4,32
    115c:	0c00009e 	jal	278 <mylib_display_dec>
    1160:	02402021 	move	$4,$18
    1164:	0c000080 	jal	200 <output_buffer_put>
    1168:	24040020 	li	$4,32
    116c:	24020180 	li	$2,384
    1170:	1602ffd0 	bne	$16,$2,10b4 <main+0x2a4>
    1174:	00000000 	nop
    1178:	8f828000 	lw	$2,-32768($28)
    117c:	00000000 	nop
    1180:	24420180 	addiu	$2,$2,384
    1184:	78410000 	lq	$1,0($2)
	...
    1190:	7020203d 	pextw	$4,$1,0x0
    1194:	7020987d 	pextw	$19,$1,0x1
    1198:	702090bd 	pextw	$18,$1,0x2
    119c:	0c00009e 	jal	278 <mylib_display_dec>
    11a0:	702080fd 	pextw	$16,$1,0x3
    11a4:	0c000080 	jal	200 <output_buffer_put>
    11a8:	24040020 	li	$4,32
    11ac:	0c00009e 	jal	278 <mylib_display_dec>
    11b0:	02602021 	move	$4,$19
    11b4:	0c000080 	jal	200 <output_buffer_put>
    11b8:	24040020 	li	$4,32
    11bc:	0c00009e 	jal	278 <mylib_display_dec>
    11c0:	02402021 	move	$4,$18
    11c4:	0c000080 	jal	200 <output_buffer_put>
    11c8:	24040020 	li	$4,32
    11cc:	0c00009e 	jal	278 <mylib_display_dec>
    11d0:	02002021 	move	$4,$16
    11d4:	0c000080 	jal	200 <output_buffer_put>
    11d8:	24040020 	li	$4,32
    11dc:	0c000080 	jal	200 <output_buffer_put>
    11e0:	2404000a 	li	$4,10
    11e4:	0c000080 	jal	200 <output_buffer_put>
    11e8:	2404000d 	li	$4,13
    11ec:	8f848000 	lw	$4,-32768($28)
    11f0:	0c0001ab 	jal	6ac <radix_sort>
    11f4:	02202821 	move	$5,$17
    11f8:	0c000080 	jal	200 <output_buffer_put>
    11fc:	2404000a 	li	$4,10
    1200:	0c000080 	jal	200 <output_buffer_put>
    1204:	2404000d 	li	$4,13
    1208:	1a200013 	blez	$17,1258 <main+0x448>
    120c:	3c0251eb 	lui	$2,0x51eb
    1210:	3442851f 	ori	$2,$2,0x851f
    1214:	02220018 	mult	$17,$2
    1218:	001197c3 	sra	$18,$17,0x1f
    121c:	00008021 	move	$16,$0
    1220:	00001010 	mfhi	$2
    1224:	00021143 	sra	$2,$2,0x5
    1228:	00529023 	subu	$18,$2,$18
    122c:	8f838000 	lw	$3,-32768($28)
    1230:	00101080 	sll	$2,$16,0x2
    1234:	00621021 	addu	$2,$3,$2
    1238:	8c440000 	lw	$4,0($2)
    123c:	0c00009e 	jal	278 <mylib_display_dec>
    1240:	02128021 	addu	$16,$16,$18
    1244:	0c000080 	jal	200 <output_buffer_put>
    1248:	24040020 	li	$4,32
    124c:	0211102a 	slt	$2,$16,$17
    1250:	1440fff6 	bnez	$2,122c <main+0x41c>
    1254:	00000000 	nop
    1258:	0c000080 	jal	200 <output_buffer_put>
    125c:	2404000a 	li	$4,10
    1260:	0c000080 	jal	200 <output_buffer_put>
    1264:	2404000d 	li	$4,13
    1268:	0c00018a 	jal	628 <mylib_finalize>
    126c:	00000000 	nop
    1270:	8fbf0034 	lw	$31,52($29)
    1274:	8fbe0030 	lw	$30,48($29)
    1278:	8fb7002c 	lw	$23,44($29)
    127c:	8fb60028 	lw	$22,40($29)
    1280:	8fb50024 	lw	$21,36($29)
    1284:	8fb40020 	lw	$20,32($29)
    1288:	8fb3001c 	lw	$19,28($29)
    128c:	8fb20018 	lw	$18,24($29)
    1290:	8fb10014 	lw	$17,20($29)
    1294:	8fb00010 	lw	$16,16($29)
    1298:	00001021 	move	$2,$0
    129c:	03e00008 	jr	$31
    12a0:	27bd0038 	addiu	$29,$29,56
    12a4:	0800042b 	j	10ac <main+0x29c>
    12a8:	af820434 	sw	$2,1076($28)
