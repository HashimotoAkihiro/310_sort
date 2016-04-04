
sort_using_SIMD:     file format elf32-littlemips


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
  88:	0800037a 	j	de8 <main>
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
     6c8:	3c030001 	lui	$3,0x1
     6cc:	3c020006 	lui	$2,0x6
     6d0:	24630000 	addiu	$3,$3,0
     6d4:	24428450 	addiu	$2,$2,-31664
     6d8:	ac620000 	sw	$2,0($3)
     6dc:	3c030001 	lui	$3,0x1
     6e0:	3c020026 	lui	$2,0x26
     6e4:	24630004 	addiu	$3,$3,4
     6e8:	24428450 	addiu	$2,$2,-31664
     6ec:	ac620000 	sw	$2,0($3)
     6f0:	3c030001 	lui	$3,0x1
     6f4:	3c020006 	lui	$2,0x6
     6f8:	24630008 	addiu	$3,$3,8
     6fc:	24428450 	addiu	$2,$2,-31664
     700:	ac620000 	sw	$2,0($3)
     704:	3c030001 	lui	$3,0x1
     708:	3c020026 	lui	$2,0x26
     70c:	2463000c 	addiu	$3,$3,12
     710:	24428450 	addiu	$2,$2,-31664
     714:	ac620000 	sw	$2,0($3)
     718:	8f820420 	lw	$2,1056($28)
     71c:	3c180001 	lui	$24,0x1
     720:	27180000 	addiu	$24,$24,0
     724:	00021080 	sll	$2,$2,0x2
     728:	03021021 	addu	$2,$24,$2
     72c:	8c480000 	lw	$8,0($2)
     730:	3c030005 	lui	$3,0x5
     734:	24630020 	addiu	$3,$3,32
     738:	24021fff 	li	$2,8191
     73c:	ac620000 	sw	$2,0($3)
     740:	3c030005 	lui	$3,0x5
     744:	24630024 	addiu	$3,$3,36
     748:	ac620000 	sw	$2,0($3)
     74c:	3c030005 	lui	$3,0x5
     750:	24630028 	addiu	$3,$3,40
     754:	ac620000 	sw	$2,0($3)
     758:	3c030005 	lui	$3,0x5
     75c:	2463002c 	addiu	$3,$3,44
     760:	ac620000 	sw	$2,0($3)
     764:	3c020005 	lui	$2,0x5
     768:	24420020 	addiu	$2,$2,32
     76c:	785f0000 	lq	$31,0($2)
     770:	8f900434 	lw	$16,1076($28)
     774:	00000000 	nop
     778:	1a000193 	blez	$16,dc8 <radix_sort+0x71c>
     77c:	00808821 	move	$17,$4
     780:	3c030005 	lui	$3,0x5
     784:	00057880 	sll	$15,$5,0x2
     788:	24630030 	addiu	$3,$3,48
     78c:	3c070006 	lui	$7,0x6
     790:	25efffc0 	addiu	$15,$15,-64
     794:	00006021 	move	$12,$0
     798:	00006821 	move	$13,$0
     79c:	00607021 	move	$14,$3
     7a0:	24e78030 	addiu	$7,$7,-32720
     7a4:	01c01021 	move	$2,$14
     7a8:	7c400000 	sq	$0,0($2)
     7ac:	7c400010 	sq	$0,16($2)
     7b0:	7c400020 	sq	$0,32($2)
     7b4:	7c400030 	sq	$0,48($2)
     7b8:	24420040 	addiu	$2,$2,64
     7bc:	1447fffa 	bne	$2,$7,7a8 <radix_sort+0xfc>
     7c0:	00000000 	nop
     7c4:	18a00076 	blez	$5,9a0 <radix_sort+0x2f4>
     7c8:	02204821 	move	$9,$17
     7cc:	00001021 	move	$2,$0
     7d0:	79210000 	lq	$1,0($9)
     7d4:	79220010 	lq	$2,16($9)
     7d8:	79230020 	lq	$3,32($9)
     7dc:	79240030 	lq	$4,48($9)
     7e0:	718108e9 	psravw	$1,$1,$12
     7e4:	718210e9 	psravw	$2,$2,$12
     7e8:	718318e9 	psravw	$3,$3,$12
     7ec:	718420e9 	psravw	$4,$4,$12
     7f0:	703f0c89 	pand	$1,$1,$31
     7f4:	705f1489 	pand	$2,$2,$31
     7f8:	707f1c89 	pand	$3,$3,$31
     7fc:	709f2489 	pand	$4,$4,$31
     800:	7020c83d 	pextw	$25,$1,0x0
     804:	7020587d 	pextw	$11,$1,0x1
     808:	702050bd 	pextw	$10,$1,0x2
     80c:	702030fd 	pextw	$6,$1,0x3
     810:	0019c880 	sll	$25,$25,0x2
     814:	0079c821 	addu	$25,$3,$25
     818:	8f320000 	lw	$18,0($25)
     81c:	000b5880 	sll	$11,$11,0x2
     820:	006b5821 	addu	$11,$3,$11
     824:	26520001 	addiu	$18,$18,1
     828:	af320000 	sw	$18,0($25)
     82c:	8d720000 	lw	$18,0($11)
     830:	000a5080 	sll	$10,$10,0x2
     834:	006a5021 	addu	$10,$3,$10
     838:	26520001 	addiu	$18,$18,1
     83c:	ad720000 	sw	$18,0($11)
     840:	8d4b0000 	lw	$11,0($10)
     844:	00063080 	sll	$6,$6,0x2
     848:	00663021 	addu	$6,$3,$6
     84c:	256b0001 	addiu	$11,$11,1
     850:	ad4b0000 	sw	$11,0($10)
     854:	8cca0000 	lw	$10,0($6)
     858:	00000000 	nop
     85c:	254a0001 	addiu	$10,$10,1
     860:	acca0000 	sw	$10,0($6)
     864:	7040c83d 	pextw	$25,$2,0x0
     868:	7040587d 	pextw	$11,$2,0x1
     86c:	704050bd 	pextw	$10,$2,0x2
     870:	704030fd 	pextw	$6,$2,0x3
     874:	0019c880 	sll	$25,$25,0x2
     878:	0079c821 	addu	$25,$3,$25
     87c:	8f320000 	lw	$18,0($25)
     880:	000b5880 	sll	$11,$11,0x2
     884:	006b5821 	addu	$11,$3,$11
     888:	26520001 	addiu	$18,$18,1
     88c:	af320000 	sw	$18,0($25)
     890:	8d720000 	lw	$18,0($11)
     894:	000a5080 	sll	$10,$10,0x2
     898:	006a5021 	addu	$10,$3,$10
     89c:	26520001 	addiu	$18,$18,1
     8a0:	ad720000 	sw	$18,0($11)
     8a4:	8d4b0000 	lw	$11,0($10)
     8a8:	00063080 	sll	$6,$6,0x2
     8ac:	00663021 	addu	$6,$3,$6
     8b0:	256b0001 	addiu	$11,$11,1
     8b4:	ad4b0000 	sw	$11,0($10)
     8b8:	8cca0000 	lw	$10,0($6)
     8bc:	00000000 	nop
     8c0:	254a0001 	addiu	$10,$10,1
     8c4:	acca0000 	sw	$10,0($6)
     8c8:	7060c83d 	pextw	$25,$3,0x0
     8cc:	7060587d 	pextw	$11,$3,0x1
     8d0:	706030bd 	pextw	$6,$3,0x2
     8d4:	706050fd 	pextw	$10,$3,0x3
     8d8:	0019c880 	sll	$25,$25,0x2
     8dc:	0079c821 	addu	$25,$3,$25
     8e0:	8f320000 	lw	$18,0($25)
     8e4:	000b5880 	sll	$11,$11,0x2
     8e8:	006b5821 	addu	$11,$3,$11
     8ec:	26520001 	addiu	$18,$18,1
     8f0:	af320000 	sw	$18,0($25)
     8f4:	8d720000 	lw	$18,0($11)
     8f8:	00063080 	sll	$6,$6,0x2
     8fc:	00663021 	addu	$6,$3,$6
     900:	26520001 	addiu	$18,$18,1
     904:	ad720000 	sw	$18,0($11)
     908:	8ccb0000 	lw	$11,0($6)
     90c:	000a5080 	sll	$10,$10,0x2
     910:	006a5021 	addu	$10,$3,$10
     914:	256b0001 	addiu	$11,$11,1
     918:	accb0000 	sw	$11,0($6)
     91c:	8d460000 	lw	$6,0($10)
     920:	00000000 	nop
     924:	24c60001 	addiu	$6,$6,1
     928:	ad460000 	sw	$6,0($10)
     92c:	7080303d 	pextw	$6,$4,0x0
     930:	7080c87d 	pextw	$25,$4,0x1
     934:	708058bd 	pextw	$11,$4,0x2
     938:	708050fd 	pextw	$10,$4,0x3
     93c:	00063080 	sll	$6,$6,0x2
     940:	00663021 	addu	$6,$3,$6
     944:	8cd20000 	lw	$18,0($6)
     948:	0019c880 	sll	$25,$25,0x2
     94c:	0079c821 	addu	$25,$3,$25
     950:	26520001 	addiu	$18,$18,1
     954:	acd20000 	sw	$18,0($6)
     958:	8f260000 	lw	$6,0($25)
     95c:	000b5880 	sll	$11,$11,0x2
     960:	006b5821 	addu	$11,$3,$11
     964:	24c60001 	addiu	$6,$6,1
     968:	af260000 	sw	$6,0($25)
     96c:	8d660000 	lw	$6,0($11)
     970:	000a5080 	sll	$10,$10,0x2
     974:	006a5021 	addu	$10,$3,$10
     978:	24c60001 	addiu	$6,$6,1
     97c:	ad660000 	sw	$6,0($11)
     980:	8d460000 	lw	$6,0($10)
     984:	00000000 	nop
     988:	24c60001 	addiu	$6,$6,1
     98c:	ad460000 	sw	$6,0($10)
     990:	24420010 	addiu	$2,$2,16
     994:	0045302a 	slt	$6,$2,$5
     998:	14c0ff8d 	bnez	$6,7d0 <radix_sort+0x124>
     99c:	25290040 	addiu	$9,$9,64
     9a0:	01c01021 	move	$2,$14
     9a4:	00003021 	move	$6,$0
     9a8:	78410000 	lq	$1,0($2)
     9ac:	78420010 	lq	$2,16($2)
     9b0:	78430020 	lq	$3,32($2)
     9b4:	78440030 	lq	$4,48($2)
     9b8:	70202808 	paddw	$5,$1,$0
     9bc:	70403008 	paddw	$6,$2,$0
     9c0:	70603808 	paddw	$7,$3,$0
     9c4:	70804008 	paddw	$8,$4,$0
     9c8:	70200838 	psllww	$1,$1,$0
     9cc:	70401038 	psllww	$2,$2,$0
     9d0:	70601838 	psllww	$3,$3,$0
     9d4:	70802038 	psllww	$4,$4,$0
     9d8:	70a12808 	paddw	$5,$5,$1
     9dc:	70c23008 	paddw	$6,$6,$2
     9e0:	70e33808 	paddw	$7,$7,$3
     9e4:	71044008 	paddw	$8,$8,$4
     9e8:	70200838 	psllww	$1,$1,$0
     9ec:	70401038 	psllww	$2,$2,$0
     9f0:	70601838 	psllww	$3,$3,$0
     9f4:	70802038 	psllww	$4,$4,$0
     9f8:	70a12808 	paddw	$5,$5,$1
     9fc:	70c23008 	paddw	$6,$6,$2
     a00:	70e33808 	paddw	$7,$7,$3
     a04:	71044008 	paddw	$8,$8,$4
     a08:	70200838 	psllww	$1,$1,$0
     a0c:	70401038 	psllww	$2,$2,$0
     a10:	70601838 	psllww	$3,$3,$0
     a14:	70802038 	psllww	$4,$4,$0
     a18:	70a12808 	paddw	$5,$5,$1
     a1c:	70c23008 	paddw	$6,$6,$2
     a20:	70e33808 	paddw	$7,$7,$3
     a24:	71044008 	paddw	$8,$8,$4
     a28:	70a048fd 	pextw	$9,$5,0x3
	...
     a34:	70c93408 	paddsw	$6,$6,$9
	...
     a40:	70c050fd 	pextw	$10,$6,0x3
	...
     a4c:	70ea3c08 	paddsw	$7,$7,$10
	...
     a58:	70e058fd 	pextw	$11,$7,0x3
	...
     a64:	710b4408 	paddsw	$8,$8,$11
     a68:	70a62c08 	paddsw	$5,$5,$6
     a6c:	70c63408 	paddsw	$6,$6,$6
     a70:	70e63c08 	paddsw	$7,$7,$6
     a74:	71064408 	paddsw	$8,$8,$6
     a78:	7c450000 	sq	$5,0($2)
     a7c:	7c460010 	sq	$6,16($2)
     a80:	7c470020 	sq	$7,32($2)
     a84:	7c480030 	sq	$8,48($2)
     a88:	710030fd 	pextw	$6,$8,0x3
     a8c:	24420040 	addiu	$2,$2,64
     a90:	1447ffc5 	bne	$2,$7,9a8 <radix_sort+0x2fc>
     a94:	00000000 	nop
     a98:	18a000b7 	blez	$5,d78 <radix_sort+0x6cc>
     a9c:	022f3021 	addu	$6,$17,$15
     aa0:	00a01021 	move	$2,$5
     aa4:	78c10000 	lq	$1,0($6)
     aa8:	78c20010 	lq	$2,16($6)
     aac:	78c30020 	lq	$3,32($6)
     ab0:	78c40030 	lq	$4,48($6)
     ab4:	718128e9 	psravw	$5,$1,$12
     ab8:	718230e9 	psravw	$6,$2,$12
     abc:	718338e9 	psravw	$7,$3,$12
     ac0:	718440e9 	psravw	$8,$4,$12
     ac4:	70bf2c89 	pand	$5,$5,$31
     ac8:	70df3489 	pand	$6,$6,$31
     acc:	70ff3c89 	pand	$7,$7,$31
     ad0:	711f4489 	pand	$8,$8,$31
     ad4:	7080803d 	pextw	$16,$4,0x0
     ad8:	7080907d 	pextw	$18,$4,0x1
     adc:	708098bd 	pextw	$19,$4,0x2
     ae0:	7080a8fd 	pextw	$21,$4,0x3
     ae4:	7100883d 	pextw	$17,$8,0x0
     ae8:	7100507d 	pextw	$10,$8,0x1
     aec:	710058bd 	pextw	$11,$8,0x2
     af0:	7100c8fd 	pextw	$25,$8,0x3
     af4:	0019c880 	sll	$25,$25,0x2
     af8:	0079c821 	addu	$25,$3,$25
     afc:	8f290000 	lw	$9,0($25)
     b00:	000b5880 	sll	$11,$11,0x2
     b04:	006b5821 	addu	$11,$3,$11
     b08:	2529ffff 	addiu	$9,$9,-1
     b0c:	0009a080 	sll	$20,$9,0x2
     b10:	0114a021 	addu	$20,$8,$20
     b14:	af290000 	sw	$9,0($25)
     b18:	ae950000 	sw	$21,0($20)
     b1c:	8d790000 	lw	$25,0($11)
     b20:	000a5080 	sll	$10,$10,0x2
     b24:	006a5021 	addu	$10,$3,$10
     b28:	2739ffff 	addiu	$25,$25,-1
     b2c:	00194880 	sll	$9,$25,0x2
     b30:	01094821 	addu	$9,$8,$9
     b34:	ad790000 	sw	$25,0($11)
     b38:	ad330000 	sw	$19,0($9)
     b3c:	8d4b0000 	lw	$11,0($10)
     b40:	00114880 	sll	$9,$17,0x2
     b44:	00694821 	addu	$9,$3,$9
     b48:	256bffff 	addiu	$11,$11,-1
     b4c:	000b8880 	sll	$17,$11,0x2
     b50:	01118821 	addu	$17,$8,$17
     b54:	ad4b0000 	sw	$11,0($10)
     b58:	ae320000 	sw	$18,0($17)
     b5c:	8d2a0000 	lw	$10,0($9)
     b60:	00000000 	nop
     b64:	254affff 	addiu	$10,$10,-1
     b68:	000a5880 	sll	$11,$10,0x2
     b6c:	010b5821 	addu	$11,$8,$11
     b70:	ad2a0000 	sw	$10,0($9)
     b74:	ad700000 	sw	$16,0($11)
     b78:	7060803d 	pextw	$16,$3,0x0
     b7c:	7060907d 	pextw	$18,$3,0x1
     b80:	706098bd 	pextw	$19,$3,0x2
     b84:	7060a8fd 	pextw	$21,$3,0x3
     b88:	70e0883d 	pextw	$17,$7,0x0
     b8c:	70e0507d 	pextw	$10,$7,0x1
     b90:	70e058bd 	pextw	$11,$7,0x2
     b94:	70e0c8fd 	pextw	$25,$7,0x3
     b98:	0019c880 	sll	$25,$25,0x2
     b9c:	0079c821 	addu	$25,$3,$25
     ba0:	8f290000 	lw	$9,0($25)
     ba4:	000b5880 	sll	$11,$11,0x2
     ba8:	006b5821 	addu	$11,$3,$11
     bac:	2529ffff 	addiu	$9,$9,-1
     bb0:	0009a080 	sll	$20,$9,0x2
     bb4:	0114a021 	addu	$20,$8,$20
     bb8:	af290000 	sw	$9,0($25)
     bbc:	ae950000 	sw	$21,0($20)
     bc0:	8d790000 	lw	$25,0($11)
     bc4:	000a5080 	sll	$10,$10,0x2
     bc8:	006a5021 	addu	$10,$3,$10
     bcc:	2739ffff 	addiu	$25,$25,-1
     bd0:	00194880 	sll	$9,$25,0x2
     bd4:	01094821 	addu	$9,$8,$9
     bd8:	ad790000 	sw	$25,0($11)
     bdc:	ad330000 	sw	$19,0($9)
     be0:	8d4b0000 	lw	$11,0($10)
     be4:	00114880 	sll	$9,$17,0x2
     be8:	00694821 	addu	$9,$3,$9
     bec:	256bffff 	addiu	$11,$11,-1
     bf0:	000b8880 	sll	$17,$11,0x2
     bf4:	01118821 	addu	$17,$8,$17
     bf8:	ad4b0000 	sw	$11,0($10)
     bfc:	ae320000 	sw	$18,0($17)
     c00:	8d2a0000 	lw	$10,0($9)
     c04:	00000000 	nop
     c08:	254affff 	addiu	$10,$10,-1
     c0c:	000a5880 	sll	$11,$10,0x2
     c10:	010b5821 	addu	$11,$8,$11
     c14:	ad2a0000 	sw	$10,0($9)
     c18:	ad700000 	sw	$16,0($11)
     c1c:	7040803d 	pextw	$16,$2,0x0
     c20:	7040907d 	pextw	$18,$2,0x1
     c24:	704098bd 	pextw	$19,$2,0x2
     c28:	7040a8fd 	pextw	$21,$2,0x3
     c2c:	70c0883d 	pextw	$17,$6,0x0
     c30:	70c0507d 	pextw	$10,$6,0x1
     c34:	70c058bd 	pextw	$11,$6,0x2
     c38:	70c0c8fd 	pextw	$25,$6,0x3
     c3c:	0019c880 	sll	$25,$25,0x2
     c40:	0079c821 	addu	$25,$3,$25
     c44:	8f290000 	lw	$9,0($25)
     c48:	000b5880 	sll	$11,$11,0x2
     c4c:	006b5821 	addu	$11,$3,$11
     c50:	2529ffff 	addiu	$9,$9,-1
     c54:	0009a080 	sll	$20,$9,0x2
     c58:	0114a021 	addu	$20,$8,$20
     c5c:	af290000 	sw	$9,0($25)
     c60:	ae950000 	sw	$21,0($20)
     c64:	8d790000 	lw	$25,0($11)
     c68:	000a5080 	sll	$10,$10,0x2
     c6c:	006a5021 	addu	$10,$3,$10
     c70:	2739ffff 	addiu	$25,$25,-1
     c74:	00194880 	sll	$9,$25,0x2
     c78:	01094821 	addu	$9,$8,$9
     c7c:	ad790000 	sw	$25,0($11)
     c80:	ad330000 	sw	$19,0($9)
     c84:	8d4b0000 	lw	$11,0($10)
     c88:	00114880 	sll	$9,$17,0x2
     c8c:	00694821 	addu	$9,$3,$9
     c90:	256bffff 	addiu	$11,$11,-1
     c94:	000b8880 	sll	$17,$11,0x2
     c98:	01118821 	addu	$17,$8,$17
     c9c:	ad4b0000 	sw	$11,0($10)
     ca0:	ae320000 	sw	$18,0($17)
     ca4:	8d2a0000 	lw	$10,0($9)
     ca8:	00000000 	nop
     cac:	254affff 	addiu	$10,$10,-1
     cb0:	000a5880 	sll	$11,$10,0x2
     cb4:	010b5821 	addu	$11,$8,$11
     cb8:	ad2a0000 	sw	$10,0($9)
     cbc:	ad700000 	sw	$16,0($11)
     cc0:	7020803d 	pextw	$16,$1,0x0
     cc4:	7020907d 	pextw	$18,$1,0x1
     cc8:	702098bd 	pextw	$19,$1,0x2
     ccc:	7020a8fd 	pextw	$21,$1,0x3
     cd0:	70a0883d 	pextw	$17,$5,0x0
     cd4:	70a0507d 	pextw	$10,$5,0x1
     cd8:	70a058bd 	pextw	$11,$5,0x2
     cdc:	70a0c8fd 	pextw	$25,$5,0x3
     ce0:	0019c880 	sll	$25,$25,0x2
     ce4:	0079c821 	addu	$25,$3,$25
     ce8:	8f290000 	lw	$9,0($25)
     cec:	000b5880 	sll	$11,$11,0x2
     cf0:	006b5821 	addu	$11,$3,$11
     cf4:	2529ffff 	addiu	$9,$9,-1
     cf8:	0009a080 	sll	$20,$9,0x2
     cfc:	0114a021 	addu	$20,$8,$20
     d00:	af290000 	sw	$9,0($25)
     d04:	ae950000 	sw	$21,0($20)
     d08:	8d790000 	lw	$25,0($11)
     d0c:	000a5080 	sll	$10,$10,0x2
     d10:	006a5021 	addu	$10,$3,$10
     d14:	2739ffff 	addiu	$25,$25,-1
     d18:	00194880 	sll	$9,$25,0x2
     d1c:	01094821 	addu	$9,$8,$9
     d20:	ad790000 	sw	$25,0($11)
     d24:	ad330000 	sw	$19,0($9)
     d28:	8d4b0000 	lw	$11,0($10)
     d2c:	00114880 	sll	$9,$17,0x2
     d30:	00694821 	addu	$9,$3,$9
     d34:	256bffff 	addiu	$11,$11,-1
     d38:	000b8880 	sll	$17,$11,0x2
     d3c:	01118821 	addu	$17,$8,$17
     d40:	ad4b0000 	sw	$11,0($10)
     d44:	ae320000 	sw	$18,0($17)
     d48:	8d2a0000 	lw	$10,0($9)
     d4c:	00000000 	nop
     d50:	254affff 	addiu	$10,$10,-1
     d54:	000a5880 	sll	$11,$10,0x2
     d58:	010b5821 	addu	$11,$8,$11
     d5c:	ad2a0000 	sw	$10,0($9)
     d60:	ad700000 	sw	$16,0($11)
     d64:	2442fff0 	addiu	$2,$2,-16
     d68:	1c40ff4e 	bgtz	$2,aa4 <radix_sort+0x3f8>
     d6c:	24c6ffc0 	addiu	$6,$6,-64
     d70:	8f900434 	lw	$16,1076($28)
     d74:	00000000 	nop
     d78:	2602fffe 	addiu	$2,$16,-2
     d7c:	104d000e 	beq	$2,$13,db8 <radix_sort+0x70c>
     d80:	00803021 	move	$6,$4
     d84:	8f820420 	lw	$2,1056($28)
     d88:	25ad0001 	addiu	$13,$13,1
     d8c:	24420001 	addiu	$2,$2,1
     d90:	00023080 	sll	$6,$2,0x2
     d94:	03063021 	addu	$6,$24,$6
     d98:	af820420 	sw	$2,1056($28)
     d9c:	01b0102a 	slt	$2,$13,$16
     da0:	8cc60000 	lw	$6,0($6)
     da4:	10400008 	beqz	$2,dc8 <radix_sort+0x71c>
     da8:	258c000d 	addiu	$12,$12,13
     dac:	01008821 	move	$17,$8
     db0:	080001e9 	j	7a4 <radix_sort+0xf8>
     db4:	00c04021 	move	$8,$6
     db8:	25ad0001 	addiu	$13,$13,1
     dbc:	01b0102a 	slt	$2,$13,$16
     dc0:	1440fffa 	bnez	$2,dac <radix_sort+0x700>
     dc4:	258c000d 	addiu	$12,$12,13
     dc8:	8fb50014 	lw	$21,20($29)
     dcc:	8fb40010 	lw	$20,16($29)
     dd0:	8fb3000c 	lw	$19,12($29)
     dd4:	8fb20008 	lw	$18,8($29)
     dd8:	8fb10004 	lw	$17,4($29)
     ddc:	8fb00000 	lw	$16,0($29)
     de0:	03e00008 	jr	$31
     de4:	27bd0018 	addiu	$29,$29,24

00000de8 <main>:
     de8:	3c020001 	lui	$2,0x1
     dec:	24420010 	addiu	$2,$2,16
     df0:	3c030004 	lui	$3,0x4
     df4:	00621821 	addu	$3,$3,$2
     df8:	af820430 	sw	$2,1072($28)
     dfc:	3c020005 	lui	$2,0x5
     e00:	27bdffc8 	addiu	$29,$29,-56
     e04:	2442000c 	addiu	$2,$2,12
     e08:	24040073 	li	$4,115
     e0c:	afbf0034 	sw	$31,52($29)
     e10:	af820438 	sw	$2,1080($28)
     e14:	afb10014 	sw	$17,20($29)
     e18:	afb00010 	sw	$16,16($29)
     e1c:	8c71fffc 	lw	$17,-4($3)
     e20:	afbe0030 	sw	$30,48($29)
     e24:	afb7002c 	sw	$23,44($29)
     e28:	afb60028 	sw	$22,40($29)
     e2c:	afb50024 	sw	$21,36($29)
     e30:	afb40020 	sw	$20,32($29)
     e34:	afb3001c 	sw	$19,28($29)
     e38:	0c000080 	jal	200 <output_buffer_put>
     e3c:	afb20018 	sw	$18,24($29)
     e40:	0c000080 	jal	200 <output_buffer_put>
     e44:	2404006f 	li	$4,111
     e48:	0c000080 	jal	200 <output_buffer_put>
     e4c:	24040072 	li	$4,114
     e50:	0c000080 	jal	200 <output_buffer_put>
     e54:	24040074 	li	$4,116
     e58:	0c000080 	jal	200 <output_buffer_put>
     e5c:	24040020 	li	$4,32
     e60:	0c000080 	jal	200 <output_buffer_put>
     e64:	2404006e 	li	$4,110
     e68:	0c000080 	jal	200 <output_buffer_put>
     e6c:	2404003d 	li	$4,61
     e70:	0c00009e 	jal	278 <mylib_display_dec>
     e74:	02202021 	move	$4,$17
     e78:	0c000080 	jal	200 <output_buffer_put>
     e7c:	2404000a 	li	$4,10
     e80:	0c000080 	jal	200 <output_buffer_put>
     e84:	2404000d 	li	$4,13
     e88:	0c000080 	jal	200 <output_buffer_put>
     e8c:	2404000a 	li	$4,10
     e90:	3c100001 	lui	$16,0x1
     e94:	0c000080 	jal	200 <output_buffer_put>
     e98:	2404000d 	li	$4,13
     e9c:	8e040000 	lw	$4,0($16)
     ea0:	0c000115 	jal	454 <mylib_display_hex>
     ea4:	26100000 	addiu	$16,$16,0
     ea8:	0c000080 	jal	200 <output_buffer_put>
     eac:	2404000a 	li	$4,10
     eb0:	0c000080 	jal	200 <output_buffer_put>
     eb4:	2404000d 	li	$4,13
     eb8:	0c000080 	jal	200 <output_buffer_put>
     ebc:	2404000a 	li	$4,10
     ec0:	0c000080 	jal	200 <output_buffer_put>
     ec4:	2404000d 	li	$4,13
     ec8:	8e040004 	lw	$4,4($16)
     ecc:	0c000115 	jal	454 <mylib_display_hex>
     ed0:	00000000 	nop
     ed4:	0c000080 	jal	200 <output_buffer_put>
     ed8:	2404000a 	li	$4,10
     edc:	0c000080 	jal	200 <output_buffer_put>
     ee0:	2404000d 	li	$4,13
     ee4:	0c000080 	jal	200 <output_buffer_put>
     ee8:	2404000a 	li	$4,10
     eec:	0c000080 	jal	200 <output_buffer_put>
     ef0:	2404000d 	li	$4,13
     ef4:	8e040008 	lw	$4,8($16)
     ef8:	0c000115 	jal	454 <mylib_display_hex>
     efc:	00000000 	nop
     f00:	0c000080 	jal	200 <output_buffer_put>
     f04:	2404000a 	li	$4,10
     f08:	0c000080 	jal	200 <output_buffer_put>
     f0c:	2404000d 	li	$4,13
     f10:	0c000080 	jal	200 <output_buffer_put>
     f14:	2404000a 	li	$4,10
     f18:	0c000080 	jal	200 <output_buffer_put>
     f1c:	2404000d 	li	$4,13
     f20:	8e04000c 	lw	$4,12($16)
     f24:	0c000115 	jal	454 <mylib_display_hex>
     f28:	00000000 	nop
     f2c:	0c000080 	jal	200 <output_buffer_put>
     f30:	2404000a 	li	$4,10
     f34:	0c000080 	jal	200 <output_buffer_put>
     f38:	2404000d 	li	$4,13
     f3c:	0c000080 	jal	200 <output_buffer_put>
     f40:	2404000a 	li	$4,10
     f44:	0c000080 	jal	200 <output_buffer_put>
     f48:	2404000d 	li	$4,13
     f4c:	70000035 	pinsw	$0,$0,$0,0x0
	...
     f58:	70000075 	pinsw	$0,$0,$0,0x1
	...
     f64:	700000b5 	pinsw	$0,$0,$0,0x2
	...
     f70:	700000f5 	pinsw	$0,$0,$0,0x3
     f74:	24010001 	li	$1,1
     f78:	70a02835 	pinsw	$5,$5,$0,0x0
     f7c:	00000000 	nop
     f80:	24210001 	addiu	$1,$1,1
     f84:	70a12875 	pinsw	$5,$5,$1,0x1
     f88:	00000000 	nop
     f8c:	24210001 	addiu	$1,$1,1
     f90:	70a128b5 	pinsw	$5,$5,$1,0x2
	...
     f9c:	70a128f5 	pinsw	$5,$5,$1,0x3
     fa0:	70005008 	paddw	$10,$0,$0
     fa4:	70005808 	paddw	$11,$0,$0
     fa8:	70006008 	paddw	$12,$0,$0
     fac:	70006808 	paddw	$13,$0,$0
     fb0:	8f848000 	lw	$4,-32768($28)
     fb4:	1a200021 	blez	$17,103c <main+0x254>
     fb8:	00001021 	move	$2,$0
     fbc:	8f880430 	lw	$8,1072($28)
     fc0:	00801821 	move	$3,$4
     fc4:	3045ffff 	andi	$5,$2,0xffff
     fc8:	00052880 	sll	$5,$5,0x2
     fcc:	01052821 	addu	$5,$8,$5
     fd0:	78a10000 	lq	$1,0($5)
     fd4:	78a20010 	lq	$2,16($5)
     fd8:	78a30020 	lq	$3,32($5)
     fdc:	78a40030 	lq	$4,48($5)
     fe0:	24450004 	addiu	$5,$2,4
     fe4:	24460008 	addiu	$6,$2,8
     fe8:	2447000c 	addiu	$7,$2,12
     fec:	70220c08 	paddsw	$1,$1,$2
     ff0:	70451408 	paddsw	$2,$2,$5
     ff4:	70661c08 	paddsw	$3,$3,$6
     ff8:	70872408 	paddsw	$4,$4,$7
     ffc:	70250808 	paddw	$1,$1,$5
    1000:	70451008 	paddw	$2,$2,$5
    1004:	70651808 	paddw	$3,$3,$5
    1008:	70852008 	paddw	$4,$4,$5
    100c:	7c610000 	sq	$1,0($3)
    1010:	7c620010 	sq	$2,16($3)
    1014:	7c630020 	sq	$3,32($3)
    1018:	7c640030 	sq	$4,48($3)
    101c:	714154a9 	por	$10,$10,$1
    1020:	71625ca9 	por	$11,$11,$2
    1024:	718364a9 	por	$12,$12,$3
    1028:	71a46ca9 	por	$13,$13,$4
    102c:	24420010 	addiu	$2,$2,16
    1030:	0051282a 	slt	$5,$2,$17
    1034:	14a0ffe3 	bnez	$5,fc4 <main+0x1dc>
    1038:	24630040 	addiu	$3,$3,64
    103c:	714b54a9 	por	$10,$10,$11
    1040:	718d64a9 	por	$12,$12,$13
	...
    104c:	714c54a9 	por	$10,$10,$12
    1050:	70a0103d 	pextw	$2,$5,0x0
    1054:	70a0307d 	pextw	$6,$5,0x1
    1058:	70a028bd 	pextw	$5,$5,0x2
    105c:	70a018fd 	pextw	$3,$5,0x3
    1060:	00c21025 	or	$2,$6,$2
    1064:	00451025 	or	$2,$2,$5
    1068:	00431025 	or	$2,$2,$3
    106c:	3c03fc00 	lui	$3,0xfc00
    1070:	00431024 	and	$2,$2,$3
    1074:	14400081 	bnez	$2,127c <main+0x494>
    1078:	24020003 	li	$2,3
    107c:	24020002 	li	$2,2
    1080:	af820434 	sw	$2,1076($28)
    1084:	08000425 	j	1094 <main+0x2ac>
    1088:	00008021 	move	$16,$0
    108c:	8f848000 	lw	$4,-32768($28)
    1090:	00000000 	nop
    1094:	00902021 	addu	$4,$4,$16
    1098:	78810000 	lq	$1,0($4)
    109c:	78820010 	lq	$2,16($4)
    10a0:	00000000 	nop
    10a4:	7020203d 	pextw	$4,$1,0x0
    10a8:	7020b87d 	pextw	$23,$1,0x1
    10ac:	7020f0bd 	pextw	$30,$1,0x2
    10b0:	7020b0fd 	pextw	$22,$1,0x3
    10b4:	7040a83d 	pextw	$21,$2,0x0
    10b8:	7040a07d 	pextw	$20,$2,0x1
    10bc:	704098bd 	pextw	$19,$2,0x2
    10c0:	704090fd 	pextw	$18,$2,0x3
    10c4:	0c00009e 	jal	278 <mylib_display_dec>
    10c8:	26100020 	addiu	$16,$16,32
    10cc:	0c000080 	jal	200 <output_buffer_put>
    10d0:	24040020 	li	$4,32
    10d4:	0c00009e 	jal	278 <mylib_display_dec>
    10d8:	02e02021 	move	$4,$23
    10dc:	0c000080 	jal	200 <output_buffer_put>
    10e0:	24040020 	li	$4,32
    10e4:	0c00009e 	jal	278 <mylib_display_dec>
    10e8:	03c02021 	move	$4,$30
    10ec:	0c000080 	jal	200 <output_buffer_put>
    10f0:	24040020 	li	$4,32
    10f4:	0c00009e 	jal	278 <mylib_display_dec>
    10f8:	02c02021 	move	$4,$22
    10fc:	0c000080 	jal	200 <output_buffer_put>
    1100:	24040020 	li	$4,32
    1104:	0c00009e 	jal	278 <mylib_display_dec>
    1108:	02a02021 	move	$4,$21
    110c:	0c000080 	jal	200 <output_buffer_put>
    1110:	24040020 	li	$4,32
    1114:	0c00009e 	jal	278 <mylib_display_dec>
    1118:	02802021 	move	$4,$20
    111c:	0c000080 	jal	200 <output_buffer_put>
    1120:	24040020 	li	$4,32
    1124:	0c00009e 	jal	278 <mylib_display_dec>
    1128:	02602021 	move	$4,$19
    112c:	0c000080 	jal	200 <output_buffer_put>
    1130:	24040020 	li	$4,32
    1134:	0c00009e 	jal	278 <mylib_display_dec>
    1138:	02402021 	move	$4,$18
    113c:	0c000080 	jal	200 <output_buffer_put>
    1140:	24040020 	li	$4,32
    1144:	24020180 	li	$2,384
    1148:	1602ffd0 	bne	$16,$2,108c <main+0x2a4>
    114c:	00000000 	nop
    1150:	8f828000 	lw	$2,-32768($28)
    1154:	00000000 	nop
    1158:	24420180 	addiu	$2,$2,384
    115c:	78410000 	lq	$1,0($2)
	...
    1168:	7020203d 	pextw	$4,$1,0x0
    116c:	7020987d 	pextw	$19,$1,0x1
    1170:	702090bd 	pextw	$18,$1,0x2
    1174:	0c00009e 	jal	278 <mylib_display_dec>
    1178:	702080fd 	pextw	$16,$1,0x3
    117c:	0c000080 	jal	200 <output_buffer_put>
    1180:	24040020 	li	$4,32
    1184:	0c00009e 	jal	278 <mylib_display_dec>
    1188:	02602021 	move	$4,$19
    118c:	0c000080 	jal	200 <output_buffer_put>
    1190:	24040020 	li	$4,32
    1194:	0c00009e 	jal	278 <mylib_display_dec>
    1198:	02402021 	move	$4,$18
    119c:	0c000080 	jal	200 <output_buffer_put>
    11a0:	24040020 	li	$4,32
    11a4:	0c00009e 	jal	278 <mylib_display_dec>
    11a8:	02002021 	move	$4,$16
    11ac:	0c000080 	jal	200 <output_buffer_put>
    11b0:	24040020 	li	$4,32
    11b4:	0c000080 	jal	200 <output_buffer_put>
    11b8:	2404000a 	li	$4,10
    11bc:	0c000080 	jal	200 <output_buffer_put>
    11c0:	2404000d 	li	$4,13
    11c4:	8f848000 	lw	$4,-32768($28)
    11c8:	0c0001ab 	jal	6ac <radix_sort>
    11cc:	02202821 	move	$5,$17
    11d0:	0c000080 	jal	200 <output_buffer_put>
    11d4:	2404000a 	li	$4,10
    11d8:	0c000080 	jal	200 <output_buffer_put>
    11dc:	2404000d 	li	$4,13
    11e0:	1a200013 	blez	$17,1230 <main+0x448>
    11e4:	3c0251eb 	lui	$2,0x51eb
    11e8:	3442851f 	ori	$2,$2,0x851f
    11ec:	02220018 	mult	$17,$2
    11f0:	001197c3 	sra	$18,$17,0x1f
    11f4:	00008021 	move	$16,$0
    11f8:	00001010 	mfhi	$2
    11fc:	00021143 	sra	$2,$2,0x5
    1200:	00529023 	subu	$18,$2,$18
    1204:	8f838000 	lw	$3,-32768($28)
    1208:	00101080 	sll	$2,$16,0x2
    120c:	00621021 	addu	$2,$3,$2
    1210:	8c440000 	lw	$4,0($2)
    1214:	0c00009e 	jal	278 <mylib_display_dec>
    1218:	02128021 	addu	$16,$16,$18
    121c:	0c000080 	jal	200 <output_buffer_put>
    1220:	24040020 	li	$4,32
    1224:	0211102a 	slt	$2,$16,$17
    1228:	1440fff6 	bnez	$2,1204 <main+0x41c>
    122c:	00000000 	nop
    1230:	0c000080 	jal	200 <output_buffer_put>
    1234:	2404000a 	li	$4,10
    1238:	0c000080 	jal	200 <output_buffer_put>
    123c:	2404000d 	li	$4,13
    1240:	0c00018a 	jal	628 <mylib_finalize>
    1244:	00000000 	nop
    1248:	8fbf0034 	lw	$31,52($29)
    124c:	8fbe0030 	lw	$30,48($29)
    1250:	8fb7002c 	lw	$23,44($29)
    1254:	8fb60028 	lw	$22,40($29)
    1258:	8fb50024 	lw	$21,36($29)
    125c:	8fb40020 	lw	$20,32($29)
    1260:	8fb3001c 	lw	$19,28($29)
    1264:	8fb20018 	lw	$18,24($29)
    1268:	8fb10014 	lw	$17,20($29)
    126c:	8fb00010 	lw	$16,16($29)
    1270:	00001021 	move	$2,$0
    1274:	03e00008 	jr	$31
    1278:	27bd0038 	addiu	$29,$29,56
    127c:	08000421 	j	1084 <main+0x29c>
    1280:	af820434 	sw	$2,1076($28)
