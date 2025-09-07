                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module dino
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _cactus
                                     12 	.globl _dinosaur
                                     13 	.globl __mcs51_genXRAMCLEAR
                                     14 	.globl __mcs51_genXINIT
                                     15 	.globl __mcs51_genRAMCLEAR
                                     16 	.globl __sdcc_gsinit_startup
                                     17 	.globl _timer0_ISR
                                     18 	.globl _main
                                     19 	.globl _game_ctrl
                                     20 	.globl _render_task
                                     21 	.globl _keypad_ctrl
                                     22 	.globl _LCD_set_symbol
                                     23 	.globl _delay
                                     24 	.globl _LCD_ready
                                     25 	.globl _LCD_write_char
                                     26 	.globl _LCD_IRWrite
                                     27 	.globl _LCD_Init
                                     28 	.globl _KeyToChar
                                     29 	.globl _Init_Keypad
                                     30 	.globl _ThreadYield
                                     31 	.globl _ThreadCreate
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _B
                                    108 	.globl _ACC
                                    109 	.globl _PSW
                                    110 	.globl _IP
                                    111 	.globl _P3
                                    112 	.globl _IE
                                    113 	.globl _P2
                                    114 	.globl _SBUF
                                    115 	.globl _SCON
                                    116 	.globl _P1
                                    117 	.globl _TH1
                                    118 	.globl _TH0
                                    119 	.globl _TL1
                                    120 	.globl _TL0
                                    121 	.globl _TMOD
                                    122 	.globl _TCON
                                    123 	.globl _PCON
                                    124 	.globl _DPH
                                    125 	.globl _DPL
                                    126 	.globl _SP
                                    127 	.globl _P0
                                    128 	.globl _col_temp
                                    129 	.globl _row_temp
                                    130 	.globl _LCD_set_symbol_PARM_2
                                    131 	.globl _myRand
                                    132 	.globl _mutex
                                    133 	.globl _digit
                                    134 	.globl _prev
                                    135 	.globl _k
                                    136 	.globl _game_map
                                    137 	.globl _game_over
                                    138 	.globl _difficulty
                                    139 	.globl _score
                                    140 	.globl _dino_row
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 _B	=	0x00f0
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0_0	=	0x0080
                           000081   173 _P0_1	=	0x0081
                           000082   174 _P0_2	=	0x0082
                           000083   175 _P0_3	=	0x0083
                           000084   176 _P0_4	=	0x0084
                           000085   177 _P0_5	=	0x0085
                           000086   178 _P0_6	=	0x0086
                           000087   179 _P0_7	=	0x0087
                           000088   180 _IT0	=	0x0088
                           000089   181 _IE0	=	0x0089
                           00008A   182 _IT1	=	0x008a
                           00008B   183 _IE1	=	0x008b
                           00008C   184 _TR0	=	0x008c
                           00008D   185 _TF0	=	0x008d
                           00008E   186 _TR1	=	0x008e
                           00008F   187 _TF1	=	0x008f
                           000090   188 _P1_0	=	0x0090
                           000091   189 _P1_1	=	0x0091
                           000092   190 _P1_2	=	0x0092
                           000093   191 _P1_3	=	0x0093
                           000094   192 _P1_4	=	0x0094
                           000095   193 _P1_5	=	0x0095
                           000096   194 _P1_6	=	0x0096
                           000097   195 _P1_7	=	0x0097
                           000098   196 _RI	=	0x0098
                           000099   197 _TI	=	0x0099
                           00009A   198 _RB8	=	0x009a
                           00009B   199 _TB8	=	0x009b
                           00009C   200 _REN	=	0x009c
                           00009D   201 _SM2	=	0x009d
                           00009E   202 _SM1	=	0x009e
                           00009F   203 _SM0	=	0x009f
                           0000A0   204 _P2_0	=	0x00a0
                           0000A1   205 _P2_1	=	0x00a1
                           0000A2   206 _P2_2	=	0x00a2
                           0000A3   207 _P2_3	=	0x00a3
                           0000A4   208 _P2_4	=	0x00a4
                           0000A5   209 _P2_5	=	0x00a5
                           0000A6   210 _P2_6	=	0x00a6
                           0000A7   211 _P2_7	=	0x00a7
                           0000A8   212 _EX0	=	0x00a8
                           0000A9   213 _ET0	=	0x00a9
                           0000AA   214 _EX1	=	0x00aa
                           0000AB   215 _ET1	=	0x00ab
                           0000AC   216 _ES	=	0x00ac
                           0000AF   217 _EA	=	0x00af
                           0000B0   218 _P3_0	=	0x00b0
                           0000B1   219 _P3_1	=	0x00b1
                           0000B2   220 _P3_2	=	0x00b2
                           0000B3   221 _P3_3	=	0x00b3
                           0000B4   222 _P3_4	=	0x00b4
                           0000B5   223 _P3_5	=	0x00b5
                           0000B6   224 _P3_6	=	0x00b6
                           0000B7   225 _P3_7	=	0x00b7
                           0000B0   226 _RXD	=	0x00b0
                           0000B1   227 _TXD	=	0x00b1
                           0000B2   228 _INT0	=	0x00b2
                           0000B3   229 _INT1	=	0x00b3
                           0000B4   230 _T0	=	0x00b4
                           0000B5   231 _T1	=	0x00b5
                           0000B6   232 _WR	=	0x00b6
                           0000B7   233 _RD	=	0x00b7
                           0000B8   234 _PX0	=	0x00b8
                           0000B9   235 _PT0	=	0x00b9
                           0000BA   236 _PX1	=	0x00ba
                           0000BB   237 _PT1	=	0x00bb
                           0000BC   238 _PS	=	0x00bc
                           0000D0   239 _P	=	0x00d0
                           0000D1   240 _F1	=	0x00d1
                           0000D2   241 _OV	=	0x00d2
                           0000D3   242 _RS0	=	0x00d3
                           0000D4   243 _RS1	=	0x00d4
                           0000D5   244 _F0	=	0x00d5
                           0000D6   245 _AC	=	0x00d6
                           0000D7   246 _CY	=	0x00d7
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable register banks
                                    249 ;--------------------------------------------------------
                                    250 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        251 	.ds 8
                                    252 ;--------------------------------------------------------
                                    253 ; internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area DSEG    (DATA)
                           000079   256 _dino_row	=	0x0079
                           00007A   257 _score	=	0x007a
                           00007B   258 _difficulty	=	0x007b
                           00007C   259 _game_over	=	0x007c
                           000020   260 _game_map	=	0x0020
                           00007D   261 _k	=	0x007d
                           00007E   262 _prev	=	0x007e
                           00007F   263 _digit	=	0x007f
      000008                        264 _mutex::
      000008                        265 	.ds 1
      000009                        266 _myRand::
      000009                        267 	.ds 1
      00000A                        268 _LCD_set_symbol_PARM_2:
      00000A                        269 	.ds 3
      00000D                        270 _row_temp::
      00000D                        271 	.ds 1
      00000E                        272 _col_temp::
      00000E                        273 	.ds 1
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable items in internal ram
                                    276 ;--------------------------------------------------------
                                    277 ;--------------------------------------------------------
                                    278 ; Stack segment in internal ram
                                    279 ;--------------------------------------------------------
                                    280 	.area SSEG
      000021                        281 __start__stack:
      000021                        282 	.ds	1
                                    283 
                                    284 ;--------------------------------------------------------
                                    285 ; indirectly addressable internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area ISEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area IABS    (ABS,DATA)
                                    292 	.area IABS    (ABS,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; bit data
                                    295 ;--------------------------------------------------------
                                    296 	.area BSEG    (BIT)
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; uninitialized external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; initialized external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; interrupt vector
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
      000000                        327 __interrupt_vect:
      000000 02 04 AD         [24]  328 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  329 	reti
      000004                        330 	.ds	7
      00000B 02 04 A9         [24]  331 	ljmp	_timer0_ISR
                                    332 ;--------------------------------------------------------
                                    333 ; global & static initialisations
                                    334 ;--------------------------------------------------------
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.area GSFINAL (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.globl __sdcc_gsinit_startup
                                    340 	.globl __sdcc_program_startup
                                    341 	.globl __start__stack
                                    342 	.globl __mcs51_genXINIT
                                    343 	.globl __mcs51_genXRAMCLEAR
                                    344 	.globl __mcs51_genRAMCLEAR
                                    345 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  346 	ljmp	__sdcc_program_startup
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
      00000E                        352 __sdcc_program_startup:
      00000E 02 04 64         [24]  353 	ljmp	_main
                                    354 ;	return from main will return to caller
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'LCD_set_symbol'
                                    361 ;------------------------------------------------------------
                                    362 ;symb                      Allocated with name '_LCD_set_symbol_PARM_2'
                                    363 ;code                      Allocated to registers r7 
                                    364 ;------------------------------------------------------------
                                    365 ;	dino.c:36: void LCD_set_symbol(char code, const char symb[])
                                    366 ;	-----------------------------------------
                                    367 ;	 function LCD_set_symbol
                                    368 ;	-----------------------------------------
      000014                        369 _LCD_set_symbol:
                           000007   370 	ar7 = 0x07
                           000006   371 	ar6 = 0x06
                           000005   372 	ar5 = 0x05
                           000004   373 	ar4 = 0x04
                           000003   374 	ar3 = 0x03
                           000002   375 	ar2 = 0x02
                           000001   376 	ar1 = 0x01
                           000000   377 	ar0 = 0x00
      000014 AF 82            [24]  378 	mov	r7, dpl
                                    379 ;	dino.c:40: LCD_setCgRamAddress(code);
      000016 74 40            [12]  380 	mov	a,#0x40
      000018 4F               [12]  381 	orl	a,r7
      000019 F5 82            [12]  382 	mov	dpl,a
      00001B 12 07 88         [24]  383 	lcall	_LCD_IRWrite
                                    384 ;	dino.c:42: LCD_write_char(symb[0]);
      00001E AD 0A            [24]  385 	mov	r5,_LCD_set_symbol_PARM_2
      000020 AE 0B            [24]  386 	mov	r6,(_LCD_set_symbol_PARM_2 + 1)
      000022 AF 0C            [24]  387 	mov	r7,(_LCD_set_symbol_PARM_2 + 2)
      000024 8D 82            [24]  388 	mov	dpl,r5
      000026 8E 83            [24]  389 	mov	dph,r6
      000028 8F F0            [24]  390 	mov	b,r7
      00002A 12 09 D9         [24]  391 	lcall	__gptrget
      00002D F5 82            [12]  392 	mov	dpl,a
      00002F C0 07            [24]  393 	push	ar7
      000031 C0 06            [24]  394 	push	ar6
      000033 C0 05            [24]  395 	push	ar5
      000035 12 07 D4         [24]  396 	lcall	_LCD_write_char
      000038 D0 05            [24]  397 	pop	ar5
      00003A D0 06            [24]  398 	pop	ar6
      00003C D0 07            [24]  399 	pop	ar7
                                    400 ;	dino.c:43: LCD_write_char(symb[1]);
      00003E 74 01            [12]  401 	mov	a,#0x01
      000040 2D               [12]  402 	add	a, r5
      000041 FA               [12]  403 	mov	r2,a
      000042 E4               [12]  404 	clr	a
      000043 3E               [12]  405 	addc	a, r6
      000044 FB               [12]  406 	mov	r3,a
      000045 8F 04            [24]  407 	mov	ar4,r7
      000047 8A 82            [24]  408 	mov	dpl,r2
      000049 8B 83            [24]  409 	mov	dph,r3
      00004B 8C F0            [24]  410 	mov	b,r4
      00004D 12 09 D9         [24]  411 	lcall	__gptrget
      000050 F5 82            [12]  412 	mov	dpl,a
      000052 C0 07            [24]  413 	push	ar7
      000054 C0 06            [24]  414 	push	ar6
      000056 C0 05            [24]  415 	push	ar5
      000058 12 07 D4         [24]  416 	lcall	_LCD_write_char
      00005B D0 05            [24]  417 	pop	ar5
      00005D D0 06            [24]  418 	pop	ar6
      00005F D0 07            [24]  419 	pop	ar7
                                    420 ;	dino.c:44: LCD_write_char(symb[2]);
      000061 74 02            [12]  421 	mov	a,#0x02
      000063 2D               [12]  422 	add	a, r5
      000064 FA               [12]  423 	mov	r2,a
      000065 E4               [12]  424 	clr	a
      000066 3E               [12]  425 	addc	a, r6
      000067 FB               [12]  426 	mov	r3,a
      000068 8F 04            [24]  427 	mov	ar4,r7
      00006A 8A 82            [24]  428 	mov	dpl,r2
      00006C 8B 83            [24]  429 	mov	dph,r3
      00006E 8C F0            [24]  430 	mov	b,r4
      000070 12 09 D9         [24]  431 	lcall	__gptrget
      000073 F5 82            [12]  432 	mov	dpl,a
      000075 C0 07            [24]  433 	push	ar7
      000077 C0 06            [24]  434 	push	ar6
      000079 C0 05            [24]  435 	push	ar5
      00007B 12 07 D4         [24]  436 	lcall	_LCD_write_char
      00007E D0 05            [24]  437 	pop	ar5
      000080 D0 06            [24]  438 	pop	ar6
      000082 D0 07            [24]  439 	pop	ar7
                                    440 ;	dino.c:45: LCD_write_char(symb[3]);
      000084 74 03            [12]  441 	mov	a,#0x03
      000086 2D               [12]  442 	add	a, r5
      000087 FA               [12]  443 	mov	r2,a
      000088 E4               [12]  444 	clr	a
      000089 3E               [12]  445 	addc	a, r6
      00008A FB               [12]  446 	mov	r3,a
      00008B 8F 04            [24]  447 	mov	ar4,r7
      00008D 8A 82            [24]  448 	mov	dpl,r2
      00008F 8B 83            [24]  449 	mov	dph,r3
      000091 8C F0            [24]  450 	mov	b,r4
      000093 12 09 D9         [24]  451 	lcall	__gptrget
      000096 F5 82            [12]  452 	mov	dpl,a
      000098 C0 07            [24]  453 	push	ar7
      00009A C0 06            [24]  454 	push	ar6
      00009C C0 05            [24]  455 	push	ar5
      00009E 12 07 D4         [24]  456 	lcall	_LCD_write_char
      0000A1 D0 05            [24]  457 	pop	ar5
      0000A3 D0 06            [24]  458 	pop	ar6
      0000A5 D0 07            [24]  459 	pop	ar7
                                    460 ;	dino.c:46: LCD_write_char(symb[4]);
      0000A7 74 04            [12]  461 	mov	a,#0x04
      0000A9 2D               [12]  462 	add	a, r5
      0000AA FA               [12]  463 	mov	r2,a
      0000AB E4               [12]  464 	clr	a
      0000AC 3E               [12]  465 	addc	a, r6
      0000AD FB               [12]  466 	mov	r3,a
      0000AE 8F 04            [24]  467 	mov	ar4,r7
      0000B0 8A 82            [24]  468 	mov	dpl,r2
      0000B2 8B 83            [24]  469 	mov	dph,r3
      0000B4 8C F0            [24]  470 	mov	b,r4
      0000B6 12 09 D9         [24]  471 	lcall	__gptrget
      0000B9 F5 82            [12]  472 	mov	dpl,a
      0000BB C0 07            [24]  473 	push	ar7
      0000BD C0 06            [24]  474 	push	ar6
      0000BF C0 05            [24]  475 	push	ar5
      0000C1 12 07 D4         [24]  476 	lcall	_LCD_write_char
      0000C4 D0 05            [24]  477 	pop	ar5
      0000C6 D0 06            [24]  478 	pop	ar6
      0000C8 D0 07            [24]  479 	pop	ar7
                                    480 ;	dino.c:47: LCD_write_char(symb[5]);
      0000CA 74 05            [12]  481 	mov	a,#0x05
      0000CC 2D               [12]  482 	add	a, r5
      0000CD FA               [12]  483 	mov	r2,a
      0000CE E4               [12]  484 	clr	a
      0000CF 3E               [12]  485 	addc	a, r6
      0000D0 FB               [12]  486 	mov	r3,a
      0000D1 8F 04            [24]  487 	mov	ar4,r7
      0000D3 8A 82            [24]  488 	mov	dpl,r2
      0000D5 8B 83            [24]  489 	mov	dph,r3
      0000D7 8C F0            [24]  490 	mov	b,r4
      0000D9 12 09 D9         [24]  491 	lcall	__gptrget
      0000DC F5 82            [12]  492 	mov	dpl,a
      0000DE C0 07            [24]  493 	push	ar7
      0000E0 C0 06            [24]  494 	push	ar6
      0000E2 C0 05            [24]  495 	push	ar5
      0000E4 12 07 D4         [24]  496 	lcall	_LCD_write_char
      0000E7 D0 05            [24]  497 	pop	ar5
      0000E9 D0 06            [24]  498 	pop	ar6
      0000EB D0 07            [24]  499 	pop	ar7
                                    500 ;	dino.c:48: LCD_write_char(symb[6]);
      0000ED 74 06            [12]  501 	mov	a,#0x06
      0000EF 2D               [12]  502 	add	a, r5
      0000F0 FA               [12]  503 	mov	r2,a
      0000F1 E4               [12]  504 	clr	a
      0000F2 3E               [12]  505 	addc	a, r6
      0000F3 FB               [12]  506 	mov	r3,a
      0000F4 8F 04            [24]  507 	mov	ar4,r7
      0000F6 8A 82            [24]  508 	mov	dpl,r2
      0000F8 8B 83            [24]  509 	mov	dph,r3
      0000FA 8C F0            [24]  510 	mov	b,r4
      0000FC 12 09 D9         [24]  511 	lcall	__gptrget
      0000FF F5 82            [12]  512 	mov	dpl,a
      000101 C0 07            [24]  513 	push	ar7
      000103 C0 06            [24]  514 	push	ar6
      000105 C0 05            [24]  515 	push	ar5
      000107 12 07 D4         [24]  516 	lcall	_LCD_write_char
      00010A D0 05            [24]  517 	pop	ar5
      00010C D0 06            [24]  518 	pop	ar6
      00010E D0 07            [24]  519 	pop	ar7
                                    520 ;	dino.c:49: LCD_write_char(symb[7]);
      000110 74 07            [12]  521 	mov	a,#0x07
      000112 2D               [12]  522 	add	a, r5
      000113 FD               [12]  523 	mov	r5,a
      000114 E4               [12]  524 	clr	a
      000115 3E               [12]  525 	addc	a, r6
      000116 FE               [12]  526 	mov	r6,a
      000117 8D 82            [24]  527 	mov	dpl,r5
      000119 8E 83            [24]  528 	mov	dph,r6
      00011B 8F F0            [24]  529 	mov	b,r7
      00011D 12 09 D9         [24]  530 	lcall	__gptrget
      000120 F5 82            [12]  531 	mov	dpl,a
                                    532 ;	dino.c:51: }
      000122 02 07 D4         [24]  533 	ljmp	_LCD_write_char
                                    534 ;------------------------------------------------------------
                                    535 ;Allocation info for local variables in function 'keypad_ctrl'
                                    536 ;------------------------------------------------------------
                                    537 ;	dino.c:54: void keypad_ctrl(void)
                                    538 ;	-----------------------------------------
                                    539 ;	 function keypad_ctrl
                                    540 ;	-----------------------------------------
      000125                        541 _keypad_ctrl:
                                    542 ;	dino.c:56: prev = '\0';  // The first character is null
      000125 75 7E 00         [24]  543 	mov	_prev,#0x00
                                    544 ;	dino.c:57: digit = '\0'; // To get the digit for setting difficulty
      000128 75 7F 00         [24]  545 	mov	_digit,#0x00
                                    546 ;	dino.c:58: while (1)
      00012B                        547 00120$:
                                    548 ;	dino.c:60: k = KeyToChar(); // Read the keyPad
      00012B 12 08 E7         [24]  549 	lcall	_KeyToChar
      00012E 85 82 7D         [24]  550 	mov	_k,dpl
                                    551 ;	dino.c:61: if (prev != '\0' && k == '\0')
      000131 E5 7E            [12]  552 	mov	a,_prev
      000133 60 45            [24]  553 	jz	00117$
      000135 E5 7D            [12]  554 	mov	a,_k
      000137 70 41            [24]  555 	jnz	00117$
                                    556 ;	dino.c:63: if (difficulty == 255)
      000139 74 FF            [12]  557 	mov	a,#0xff
      00013B B5 7B 22         [24]  558 	cjne	a,_difficulty,00114$
                                    559 ;	dino.c:66: if (prev >= '0' && prev <= '9')
      00013E 74 D0            [12]  560 	mov	a,#0x100 - 0x30
      000140 25 7E            [12]  561 	add	a,_prev
      000142 50 0B            [24]  562 	jnc	00105$
      000144 E5 7E            [12]  563 	mov	a,_prev
      000146 24 C6            [12]  564 	add	a,#0xff - 0x39
      000148 40 05            [24]  565 	jc	00105$
                                    566 ;	dino.c:68: digit = prev; // To track the digit
      00014A 85 7E 7F         [24]  567 	mov	_digit,_prev
      00014D 80 2B            [24]  568 	sjmp	00117$
      00014F                        569 00105$:
                                    570 ;	dino.c:70: else if (prev == '#' && digit != '\0')
      00014F 74 23            [12]  571 	mov	a,#0x23
      000151 B5 7E 26         [24]  572 	cjne	a,_prev,00117$
      000154 E5 7F            [12]  573 	mov	a,_digit
      000156 60 22            [24]  574 	jz	00117$
                                    575 ;	dino.c:72: difficulty = digit - '0'; // Save digit as difficulty
      000158 E5 7F            [12]  576 	mov	a,_digit
      00015A 24 D0            [12]  577 	add	a,#0xd0
      00015C F5 7B            [12]  578 	mov	_difficulty,a
      00015E 80 1A            [24]  579 	sjmp	00117$
      000160                        580 00114$:
                                    581 ;	dino.c:77: if (prev == '2')
      000160 74 32            [12]  582 	mov	a,#0x32
      000162 B5 7E 09         [24]  583 	cjne	a,_prev,00111$
                                    584 ;	dino.c:79: EA = 0;
                                    585 ;	assignBit
      000165 C2 AF            [12]  586 	clr	_EA
                                    587 ;	dino.c:80: dino_row = 0; // Move dino up
      000167 75 79 00         [24]  588 	mov	_dino_row,#0x00
                                    589 ;	dino.c:81: EA = 1;
                                    590 ;	assignBit
      00016A D2 AF            [12]  591 	setb	_EA
      00016C 80 0C            [24]  592 	sjmp	00117$
      00016E                        593 00111$:
                                    594 ;	dino.c:83: else if (prev == '8')
      00016E 74 38            [12]  595 	mov	a,#0x38
      000170 B5 7E 07         [24]  596 	cjne	a,_prev,00117$
                                    597 ;	dino.c:85: EA = 0;
                                    598 ;	assignBit
      000173 C2 AF            [12]  599 	clr	_EA
                                    600 ;	dino.c:86: dino_row = 1; // Move dino down
      000175 75 79 01         [24]  601 	mov	_dino_row,#0x01
                                    602 ;	dino.c:87: EA = 1;
                                    603 ;	assignBit
      000178 D2 AF            [12]  604 	setb	_EA
      00017A                        605 00117$:
                                    606 ;	dino.c:91: prev = k;
      00017A 85 7D 7E         [24]  607 	mov	_prev,_k
                                    608 ;	dino.c:92: ThreadYield();
      00017D 12 05 AD         [24]  609 	lcall	_ThreadYield
                                    610 ;	dino.c:94: }
      000180 80 A9            [24]  611 	sjmp	00120$
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'render_task'
                                    614 ;------------------------------------------------------------
                                    615 ;q                         Allocated to registers r7 
                                    616 ;q                         Allocated to registers r7 
                                    617 ;q                         Allocated to registers r7 
                                    618 ;------------------------------------------------------------
                                    619 ;	dino.c:103: void render_task(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function render_task
                                    622 ;	-----------------------------------------
      000182                        623 _render_task:
                                    624 ;	dino.c:105: EA = 0;
                                    625 ;	assignBit
      000182 C2 AF            [12]  626 	clr	_EA
                                    627 ;	dino.c:107: LCD_clearScreen(); // Clear the screen
      000184 75 82 01         [24]  628 	mov	dpl, #0x01
      000187 12 07 88         [24]  629 	lcall	_LCD_IRWrite
                                    630 ;	dino.c:108: while (!LCD_ready())
      00018A                        631 00101$:
      00018A 12 07 71         [24]  632 	lcall	_LCD_ready
      00018D E5 82            [12]  633 	mov	a, dpl
      00018F 60 F9            [24]  634 	jz	00101$
                                    635 ;	dino.c:110: for (unsigned char q = 0; q < 40; q++)
      000191 7F 00            [12]  636 	mov	r7,#0x00
      000193                        637 00168$:
      000193 BF 28 00         [24]  638 	cjne	r7,#0x28,00444$
      000196                        639 00444$:
      000196 50 0D            [24]  640 	jnc	00104$
                                    641 ;	dino.c:111: delay(10);
      000198 75 82 0A         [24]  642 	mov	dpl, #0x0a
      00019B C0 07            [24]  643 	push	ar7
      00019D 12 08 33         [24]  644 	lcall	_delay
      0001A0 D0 07            [24]  645 	pop	ar7
                                    646 ;	dino.c:110: for (unsigned char q = 0; q < 40; q++)
      0001A2 0F               [12]  647 	inc	r7
      0001A3 80 EE            [24]  648 	sjmp	00168$
      0001A5                        649 00104$:
                                    650 ;	dino.c:113: EA = 1;
                                    651 ;	assignBit
      0001A5 D2 AF            [12]  652 	setb	_EA
                                    653 ;	dino.c:117: while (difficulty == 255)
      0001A7                        654 00105$:
      0001A7 74 FF            [12]  655 	mov	a,#0xff
      0001A9 B5 7B 05         [24]  656 	cjne	a,_difficulty,00107$
                                    657 ;	dino.c:119: ThreadYield();
      0001AC 12 05 AD         [24]  658 	lcall	_ThreadYield
      0001AF 80 F6            [24]  659 	sjmp	00105$
      0001B1                        660 00107$:
                                    661 ;	dino.c:123: EA = 0;
                                    662 ;	assignBit
      0001B1 C2 AF            [12]  663 	clr	_EA
                                    664 ;	dino.c:124: if (game_over)
      0001B3 E5 7C            [12]  665 	mov	a,_game_over
      0001B5 70 03            [24]  666 	jnz	00448$
      0001B7 02 02 AE         [24]  667 	ljmp	00162$
      0001BA                        668 00448$:
                                    669 ;	dino.c:127: while (!LCD_ready());
      0001BA                        670 00108$:
      0001BA 12 07 71         [24]  671 	lcall	_LCD_ready
      0001BD E5 82            [12]  672 	mov	a, dpl
      0001BF 60 F9            [24]  673 	jz	00108$
                                    674 ;	dino.c:130: LCD_clearScreen(); // Clear the screen
      0001C1 75 82 01         [24]  675 	mov	dpl, #0x01
      0001C4 12 07 88         [24]  676 	lcall	_LCD_IRWrite
                                    677 ;	dino.c:131: while (!LCD_ready())
      0001C7                        678 00111$:
      0001C7 12 07 71         [24]  679 	lcall	_LCD_ready
      0001CA E5 82            [12]  680 	mov	a, dpl
      0001CC 60 F9            [24]  681 	jz	00111$
                                    682 ;	dino.c:133: for (unsigned char q = 0; q < 40; q++)
      0001CE 7F 00            [12]  683 	mov	r7,#0x00
      0001D0                        684 00171$:
      0001D0 BF 28 00         [24]  685 	cjne	r7,#0x28,00451$
      0001D3                        686 00451$:
      0001D3 50 0D            [24]  687 	jnc	00115$
                                    688 ;	dino.c:134: delay(10);
      0001D5 75 82 0A         [24]  689 	mov	dpl, #0x0a
      0001D8 C0 07            [24]  690 	push	ar7
      0001DA 12 08 33         [24]  691 	lcall	_delay
      0001DD D0 07            [24]  692 	pop	ar7
                                    693 ;	dino.c:133: for (unsigned char q = 0; q < 40; q++)
      0001DF 0F               [12]  694 	inc	r7
                                    695 ;	dino.c:136: while (!LCD_ready());
      0001E0 80 EE            [24]  696 	sjmp	00171$
      0001E2                        697 00115$:
      0001E2 12 07 71         [24]  698 	lcall	_LCD_ready
      0001E5 E5 82            [12]  699 	mov	a, dpl
      0001E7 60 F9            [24]  700 	jz	00115$
                                    701 ;	dino.c:138: LCD_cursorGoTo(0, 0); // Move cursor to the (0,0) aka upper left corner
      0001E9 75 82 80         [24]  702 	mov	dpl, #0x80
      0001EC 12 07 88         [24]  703 	lcall	_LCD_IRWrite
                                    704 ;	dino.c:140: while (!LCD_ready());
      0001EF                        705 00118$:
      0001EF 12 07 71         [24]  706 	lcall	_LCD_ready
      0001F2 E5 82            [12]  707 	mov	a, dpl
      0001F4 60 F9            [24]  708 	jz	00118$
                                    709 ;	dino.c:143: LCD_write_char('G');
      0001F6 75 82 47         [24]  710 	mov	dpl, #0x47
      0001F9 12 07 D4         [24]  711 	lcall	_LCD_write_char
                                    712 ;	dino.c:144: LCD_write_char('a');
      0001FC 75 82 61         [24]  713 	mov	dpl, #0x61
      0001FF 12 07 D4         [24]  714 	lcall	_LCD_write_char
                                    715 ;	dino.c:145: LCD_write_char('m');
      000202 75 82 6D         [24]  716 	mov	dpl, #0x6d
      000205 12 07 D4         [24]  717 	lcall	_LCD_write_char
                                    718 ;	dino.c:146: LCD_write_char('e');
      000208 75 82 65         [24]  719 	mov	dpl, #0x65
      00020B 12 07 D4         [24]  720 	lcall	_LCD_write_char
                                    721 ;	dino.c:147: LCD_write_char(' ');
      00020E 75 82 20         [24]  722 	mov	dpl, #0x20
      000211 12 07 D4         [24]  723 	lcall	_LCD_write_char
                                    724 ;	dino.c:148: LCD_write_char('O');
      000214 75 82 4F         [24]  725 	mov	dpl, #0x4f
      000217 12 07 D4         [24]  726 	lcall	_LCD_write_char
                                    727 ;	dino.c:149: LCD_write_char('v');
      00021A 75 82 76         [24]  728 	mov	dpl, #0x76
      00021D 12 07 D4         [24]  729 	lcall	_LCD_write_char
                                    730 ;	dino.c:150: LCD_write_char('e');
      000220 75 82 65         [24]  731 	mov	dpl, #0x65
      000223 12 07 D4         [24]  732 	lcall	_LCD_write_char
                                    733 ;	dino.c:151: LCD_write_char('r');
      000226 75 82 72         [24]  734 	mov	dpl, #0x72
      000229 12 07 D4         [24]  735 	lcall	_LCD_write_char
                                    736 ;	dino.c:153: while (!LCD_ready());
      00022C                        737 00121$:
      00022C 12 07 71         [24]  738 	lcall	_LCD_ready
      00022F E5 82            [12]  739 	mov	a, dpl
      000231 60 F9            [24]  740 	jz	00121$
                                    741 ;	dino.c:155: LCD_cursorGoTo(1, 0); // Move cursor to the second line and lower left corner
      000233 75 82 C0         [24]  742 	mov	dpl, #0xc0
      000236 12 07 88         [24]  743 	lcall	_LCD_IRWrite
                                    744 ;	dino.c:156: while (!LCD_ready());
      000239                        745 00124$:
      000239 12 07 71         [24]  746 	lcall	_LCD_ready
      00023C E5 82            [12]  747 	mov	a, dpl
      00023E 60 F9            [24]  748 	jz	00124$
                                    749 ;	dino.c:157: LCD_write_char('S');
      000240 75 82 53         [24]  750 	mov	dpl, #0x53
      000243 12 07 D4         [24]  751 	lcall	_LCD_write_char
                                    752 ;	dino.c:158: LCD_write_char('c');
      000246 75 82 63         [24]  753 	mov	dpl, #0x63
      000249 12 07 D4         [24]  754 	lcall	_LCD_write_char
                                    755 ;	dino.c:159: LCD_write_char('o');
      00024C 75 82 6F         [24]  756 	mov	dpl, #0x6f
      00024F 12 07 D4         [24]  757 	lcall	_LCD_write_char
                                    758 ;	dino.c:160: LCD_write_char('r');
      000252 75 82 72         [24]  759 	mov	dpl, #0x72
      000255 12 07 D4         [24]  760 	lcall	_LCD_write_char
                                    761 ;	dino.c:161: LCD_write_char('e');
      000258 75 82 65         [24]  762 	mov	dpl, #0x65
      00025B 12 07 D4         [24]  763 	lcall	_LCD_write_char
                                    764 ;	dino.c:162: LCD_write_char(':');
      00025E 75 82 3A         [24]  765 	mov	dpl, #0x3a
      000261 12 07 D4         [24]  766 	lcall	_LCD_write_char
                                    767 ;	dino.c:163: LCD_write_char(' ');
      000264 75 82 20         [24]  768 	mov	dpl, #0x20
      000267 12 07 D4         [24]  769 	lcall	_LCD_write_char
                                    770 ;	dino.c:164: while (!LCD_ready());
      00026A                        771 00127$:
      00026A 12 07 71         [24]  772 	lcall	_LCD_ready
      00026D E5 82            [12]  773 	mov	a, dpl
      00026F 60 F9            [24]  774 	jz	00127$
                                    775 ;	dino.c:165: LCD_write_char((score / 10) + '0'); // Ten's digit
      000271 AE 7A            [24]  776 	mov	r6,_score
      000273 7F 00            [12]  777 	mov	r7,#0x00
      000275 75 0F 0A         [24]  778 	mov	__divsint_PARM_2,#0x0a
      000278 8F 10            [24]  779 	mov	(__divsint_PARM_2 + 1),r7
      00027A 8E 82            [24]  780 	mov	dpl, r6
      00027C 8F 83            [24]  781 	mov	dph, r7
      00027E 12 0A 2B         [24]  782 	lcall	__divsint
      000281 AE 82            [24]  783 	mov	r6, dpl
      000283 74 30            [12]  784 	mov	a,#0x30
      000285 2E               [12]  785 	add	a, r6
      000286 F5 82            [12]  786 	mov	dpl,a
      000288 12 07 D4         [24]  787 	lcall	_LCD_write_char
                                    788 ;	dino.c:166: while (!LCD_ready())
      00028B                        789 00130$:
      00028B 12 07 71         [24]  790 	lcall	_LCD_ready
      00028E E5 82            [12]  791 	mov	a, dpl
      000290 60 F9            [24]  792 	jz	00130$
                                    793 ;	dino.c:168: LCD_write_char((score % 10) + '0'); // First digit
      000292 AE 7A            [24]  794 	mov	r6,_score
      000294 7F 00            [12]  795 	mov	r7,#0x00
      000296 75 0F 0A         [24]  796 	mov	__modsint_PARM_2,#0x0a
      000299 8F 10            [24]  797 	mov	(__modsint_PARM_2 + 1),r7
      00029B 8E 82            [24]  798 	mov	dpl, r6
      00029D 8F 83            [24]  799 	mov	dph, r7
      00029F 12 09 F5         [24]  800 	lcall	__modsint
      0002A2 AE 82            [24]  801 	mov	r6, dpl
      0002A4 74 30            [12]  802 	mov	a,#0x30
      0002A6 2E               [12]  803 	add	a, r6
      0002A7 F5 82            [12]  804 	mov	dpl,a
      0002A9 12 07 D4         [24]  805 	lcall	_LCD_write_char
                                    806 ;	dino.c:170: while (1); // Wait forever
      0002AC                        807 00134$:
      0002AC 80 FE            [24]  808 	sjmp	00134$
      0002AE                        809 00162$:
                                    810 ;	dino.c:175: LCD_clearScreen();
      0002AE 75 82 01         [24]  811 	mov	dpl, #0x01
      0002B1 12 07 88         [24]  812 	lcall	_LCD_IRWrite
                                    813 ;	dino.c:176: while (!LCD_ready());
      0002B4                        814 00136$:
      0002B4 12 07 71         [24]  815 	lcall	_LCD_ready
      0002B7 E5 82            [12]  816 	mov	a, dpl
      0002B9 60 F9            [24]  817 	jz	00136$
                                    818 ;	dino.c:177: for (unsigned char q = 0; q < 40; q++)
      0002BB 7F 00            [12]  819 	mov	r7,#0x00
      0002BD                        820 00174$:
      0002BD BF 28 00         [24]  821 	cjne	r7,#0x28,00460$
      0002C0                        822 00460$:
      0002C0 50 0D            [24]  823 	jnc	00139$
                                    824 ;	dino.c:178: delay(10);
      0002C2 75 82 0A         [24]  825 	mov	dpl, #0x0a
      0002C5 C0 07            [24]  826 	push	ar7
      0002C7 12 08 33         [24]  827 	lcall	_delay
      0002CA D0 07            [24]  828 	pop	ar7
                                    829 ;	dino.c:177: for (unsigned char q = 0; q < 40; q++)
      0002CC 0F               [12]  830 	inc	r7
      0002CD 80 EE            [24]  831 	sjmp	00174$
      0002CF                        832 00139$:
                                    833 ;	dino.c:179: for (row_temp = 0; row_temp < 2; row_temp++)
      0002CF 75 0D 00         [24]  834 	mov	_row_temp,#0x00
      0002D2                        835 00178$:
                                    836 ;	dino.c:182: for (col_temp = 0; col_temp < 16; col_temp++)
      0002D2 75 0E 00         [24]  837 	mov	_col_temp,#0x00
      0002D5                        838 00176$:
                                    839 ;	dino.c:184: LCD_cursorGoTo(row_temp, col_temp);//Move to row_temp and col_temp
      0002D5 E5 0D            [12]  840 	mov	a,_row_temp
      0002D7 03               [12]  841 	rr	a
      0002D8 03               [12]  842 	rr	a
      0002D9 54 C0            [12]  843 	anl	a,#0xc0
      0002DB FF               [12]  844 	mov	r7,a
      0002DC E5 0E            [12]  845 	mov	a,_col_temp
      0002DE 2F               [12]  846 	add	a, r7
      0002DF 44 80            [12]  847 	orl	a,#0x80
      0002E1 F5 82            [12]  848 	mov	dpl,a
      0002E3 12 07 88         [24]  849 	lcall	_LCD_IRWrite
                                    850 ;	dino.c:185: while (!LCD_ready());
      0002E6                        851 00140$:
      0002E6 12 07 71         [24]  852 	lcall	_LCD_ready
      0002E9 E5 82            [12]  853 	mov	a, dpl
      0002EB 60 F9            [24]  854 	jz	00140$
                                    855 ;	dino.c:187: if (row_temp == dino_row && col_temp == 0)
      0002ED E5 79            [12]  856 	mov	a,_dino_row
      0002EF B5 0D 13         [24]  857 	cjne	a,_row_temp,00156$
      0002F2 E5 0E            [12]  858 	mov	a,_col_temp
      0002F4 70 0F            [24]  859 	jnz	00156$
                                    860 ;	dino.c:190: LCD_write_char('\1'); // Write the dinosaur bitmap
      0002F6 75 82 01         [24]  861 	mov	dpl, #0x01
      0002F9 12 07 D4         [24]  862 	lcall	_LCD_write_char
                                    863 ;	dino.c:191: while (!LCD_ready());
      0002FC                        864 00143$:
      0002FC 12 07 71         [24]  865 	lcall	_LCD_ready
      0002FF E5 82            [12]  866 	mov	a, dpl
      000301 70 2B            [24]  867 	jnz	00177$
      000303 80 F7            [24]  868 	sjmp	00143$
      000305                        869 00156$:
                                    870 ;	dino.c:195: else if (game_map[row_temp][col_temp])
      000305 E5 0D            [12]  871 	mov	a,_row_temp
      000307 C4               [12]  872 	swap	a
      000308 54 F0            [12]  873 	anl	a,#0xf0
      00030A 24 20            [12]  874 	add	a,#_game_map
      00030C 25 0E            [12]  875 	add	a,_col_temp
      00030E F9               [12]  876 	mov	r1,a
      00030F E7               [12]  877 	mov	a,@r1
      000310 60 0F            [24]  878 	jz	00153$
                                    879 ;	dino.c:197: LCD_write_char('\2');
      000312 75 82 02         [24]  880 	mov	dpl, #0x02
      000315 12 07 D4         [24]  881 	lcall	_LCD_write_char
                                    882 ;	dino.c:198: while (!LCD_ready());
      000318                        883 00146$:
      000318 12 07 71         [24]  884 	lcall	_LCD_ready
      00031B E5 82            [12]  885 	mov	a, dpl
      00031D 70 0F            [24]  886 	jnz	00177$
      00031F 80 F7            [24]  887 	sjmp	00146$
      000321                        888 00153$:
                                    889 ;	dino.c:203: LCD_write_char(' '); // Write space
      000321 75 82 20         [24]  890 	mov	dpl, #0x20
      000324 12 07 D4         [24]  891 	lcall	_LCD_write_char
                                    892 ;	dino.c:205: while (!LCD_ready());
      000327                        893 00149$:
      000327 12 07 71         [24]  894 	lcall	_LCD_ready
      00032A E5 82            [12]  895 	mov	a, dpl
      00032C 60 F9            [24]  896 	jz	00149$
      00032E                        897 00177$:
                                    898 ;	dino.c:182: for (col_temp = 0; col_temp < 16; col_temp++)
      00032E 05 0E            [12]  899 	inc	_col_temp
      000330 74 F0            [12]  900 	mov	a,#0x100 - 0x10
      000332 25 0E            [12]  901 	add	a,_col_temp
      000334 50 9F            [24]  902 	jnc	00176$
                                    903 ;	dino.c:179: for (row_temp = 0; row_temp < 2; row_temp++)
      000336 05 0D            [12]  904 	inc	_row_temp
      000338 74 FE            [12]  905 	mov	a,#0x100 - 0x02
      00033A 25 0D            [12]  906 	add	a,_row_temp
      00033C 50 94            [24]  907 	jnc	00178$
                                    908 ;	dino.c:211: EA = 1;
                                    909 ;	assignBit
      00033E D2 AF            [12]  910 	setb	_EA
                                    911 ;	dino.c:212: ThreadYield();
      000340 12 05 AD         [24]  912 	lcall	_ThreadYield
                                    913 ;	dino.c:214: }
      000343 02 01 A7         [24]  914 	ljmp	00105$
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'game_ctrl'
                                    917 ;------------------------------------------------------------
                                    918 ;q                         Allocated to registers r7 
                                    919 ;------------------------------------------------------------
                                    920 ;	dino.c:217: void game_ctrl(void)
                                    921 ;	-----------------------------------------
                                    922 ;	 function game_ctrl
                                    923 ;	-----------------------------------------
      000346                        924 _game_ctrl:
                                    925 ;	dino.c:219: EA = 0;
                                    926 ;	assignBit
      000346 C2 AF            [12]  927 	clr	_EA
                                    928 ;	dino.c:220: myRand = 137; // My own rand
      000348 75 09 89         [24]  929 	mov	_myRand,#0x89
                                    930 ;	dino.c:222: dino_row = 0;
      00034B 75 79 00         [24]  931 	mov	_dino_row,#0x00
                                    932 ;	dino.c:223: score = 0;
      00034E 75 7A 00         [24]  933 	mov	_score,#0x00
                                    934 ;	dino.c:224: difficulty = 255;//Initial difficulty is 255
      000351 75 7B FF         [24]  935 	mov	_difficulty,#0xff
                                    936 ;	dino.c:225: game_over = 0;
      000354 75 7C 00         [24]  937 	mov	_game_over,#0x00
                                    938 ;	dino.c:227: for (row_temp = 0; row_temp < 2; row_temp++)
      000357 75 0D 00         [24]  939 	mov	_row_temp,#0x00
      00035A                        940 00128$:
                                    941 ;	dino.c:229: for (col_temp = 0; col_temp < 16; col_temp++)
      00035A 75 0E 00         [24]  942 	mov	_col_temp,#0x00
      00035D                        943 00126$:
                                    944 ;	dino.c:231: game_map[row_temp][col_temp] = 0; // Initialize the game map
      00035D E5 0D            [12]  945 	mov	a,_row_temp
      00035F C4               [12]  946 	swap	a
      000360 54 F0            [12]  947 	anl	a,#0xf0
      000362 24 20            [12]  948 	add	a,#_game_map
      000364 FF               [12]  949 	mov	r7,a
      000365 25 0E            [12]  950 	add	a,_col_temp
      000367 F8               [12]  951 	mov	r0,a
      000368 76 00            [12]  952 	mov	@r0,#0x00
                                    953 ;	dino.c:229: for (col_temp = 0; col_temp < 16; col_temp++)
      00036A 05 0E            [12]  954 	inc	_col_temp
      00036C 74 F0            [12]  955 	mov	a,#0x100 - 0x10
      00036E 25 0E            [12]  956 	add	a,_col_temp
      000370 50 EB            [24]  957 	jnc	00126$
                                    958 ;	dino.c:227: for (row_temp = 0; row_temp < 2; row_temp++)
      000372 05 0D            [12]  959 	inc	_row_temp
      000374 74 FE            [12]  960 	mov	a,#0x100 - 0x02
      000376 25 0D            [12]  961 	add	a,_row_temp
      000378 50 E0            [24]  962 	jnc	00128$
                                    963 ;	dino.c:235: EA = 1;
                                    964 ;	assignBit
      00037A D2 AF            [12]  965 	setb	_EA
                                    966 ;	dino.c:236: while (difficulty == 255)
      00037C                        967 00103$:
      00037C 74 FF            [12]  968 	mov	a,#0xff
      00037E B5 7B 05         [24]  969 	cjne	a,_difficulty,00123$
                                    970 ;	dino.c:238: ThreadYield();
      000381 12 05 AD         [24]  971 	lcall	_ThreadYield
                                    972 ;	dino.c:242: while (!game_over)
      000384 80 F6            [24]  973 	sjmp	00103$
      000386                        974 00123$:
      000386 E5 7C            [12]  975 	mov	a,_game_over
      000388 60 03            [24]  976 	jz	00264$
      00038A 02 04 63         [24]  977 	ljmp	00137$
      00038D                        978 00264$:
                                    979 ;	dino.c:244: SemaphoreWait(mutex);
      00038D                        980 0$:
      00038D E5 08            [12]  981 	MOV A, _mutex 
      00038F 60 FC            [24]  982 	JZ 0$ 
      000391 20 E7 F9         [24]  983 	JB ACC.7,0$ 
      000394 15 08            [12]  984 	DEC _mutex 
                                    985 ;	dino.c:245: EA = 0;
                                    986 ;	assignBit
      000396 C2 AF            [12]  987 	clr	_EA
                                    988 ;	dino.c:247: for (row_temp = 0; row_temp < 2; row_temp++)
      000398 75 0D 00         [24]  989 	mov	_row_temp,#0x00
      00039B                        990 00132$:
                                    991 ;	dino.c:249: for (col_temp = 0; col_temp < 15; col_temp++)
      00039B 75 0E 00         [24]  992 	mov	_col_temp,#0x00
      00039E                        993 00130$:
                                    994 ;	dino.c:251: game_map[row_temp][col_temp] = game_map[row_temp][col_temp + 1]; // Move the cacti to left one column
      00039E E5 0D            [12]  995 	mov	a,_row_temp
      0003A0 C4               [12]  996 	swap	a
      0003A1 54 F0            [12]  997 	anl	a,#0xf0
      0003A3 FF               [12]  998 	mov	r7,a
      0003A4 24 20            [12]  999 	add	a, #_game_map
      0003A6 25 0E            [12] 1000 	add	a,_col_temp
      0003A8 F9               [12] 1001 	mov	r1,a
      0003A9 EF               [12] 1002 	mov	a,r7
      0003AA 24 20            [12] 1003 	add	a, #_game_map
      0003AC FF               [12] 1004 	mov	r7,a
      0003AD E5 0E            [12] 1005 	mov	a,_col_temp
      0003AF 04               [12] 1006 	inc	a
      0003B0 2F               [12] 1007 	add	a, r7
      0003B1 F8               [12] 1008 	mov	r0,a
      0003B2 86 07            [24] 1009 	mov	ar7,@r0
      0003B4 A7 07            [24] 1010 	mov	@r1,ar7
                                   1011 ;	dino.c:249: for (col_temp = 0; col_temp < 15; col_temp++)
      0003B6 05 0E            [12] 1012 	inc	_col_temp
      0003B8 74 F1            [12] 1013 	mov	a,#0x100 - 0x0f
      0003BA 25 0E            [12] 1014 	add	a,_col_temp
      0003BC 50 E0            [24] 1015 	jnc	00130$
                                   1016 ;	dino.c:254: game_map[row_temp][15] = 0; // Set the last column to 0
      0003BE E5 0D            [12] 1017 	mov	a,_row_temp
      0003C0 C4               [12] 1018 	swap	a
      0003C1 54 F0            [12] 1019 	anl	a,#0xf0
      0003C3 24 20            [12] 1020 	add	a,#_game_map
      0003C5 24 0F            [12] 1021 	add	a,#0x0f
      0003C7 F8               [12] 1022 	mov	r0,a
      0003C8 76 00            [12] 1023 	mov	@r0,#0x00
                                   1024 ;	dino.c:247: for (row_temp = 0; row_temp < 2; row_temp++)
      0003CA 05 0D            [12] 1025 	inc	_row_temp
      0003CC 74 FE            [12] 1026 	mov	a,#0x100 - 0x02
      0003CE 25 0D            [12] 1027 	add	a,_row_temp
      0003D0 50 C9            [24] 1028 	jnc	00132$
                                   1029 ;	dino.c:261: myRand = myRand * 17 + 23;
      0003D2 E5 09            [12] 1030 	mov	a,_myRand
      0003D4 75 F0 11         [24] 1031 	mov	b,#0x11
      0003D7 A4               [48] 1032 	mul	ab
      0003D8 24 17            [12] 1033 	add	a, #0x17
      0003DA F5 09            [12] 1034 	mov	_myRand,a
                                   1035 ;	dino.c:264: if (myRand % 3 == 0)
      0003DC AE 09            [24] 1036 	mov	r6,_myRand
      0003DE 7F 00            [12] 1037 	mov	r7,#0x00
      0003E0 75 0F 03         [24] 1038 	mov	__modsint_PARM_2,#0x03
      0003E3 8F 10            [24] 1039 	mov	(__modsint_PARM_2 + 1),r7
      0003E5 8E 82            [24] 1040 	mov	dpl, r6
      0003E7 8F 83            [24] 1041 	mov	dph, r7
      0003E9 12 09 F5         [24] 1042 	lcall	__modsint
      0003EC AE 82            [24] 1043 	mov	r6, dpl
      0003EE AF 83            [24] 1044 	mov	r7, dph
      0003F0 EE               [12] 1045 	mov	a,r6
      0003F1 4F               [12] 1046 	orl	a,r7
      0003F2 70 09            [24] 1047 	jnz	00115$
                                   1048 ;	dino.c:268: if (game_map[1][14]==0)
      0003F4 E5 3E            [12] 1049 	mov	a,(_game_map + 0x001e)
      0003F6 70 12            [24] 1050 	jnz	00116$
                                   1051 ;	dino.c:271: game_map[0][15] = 1; // Generate cactus at row 0 col 15
      0003F8 75 2F 01         [24] 1052 	mov	(_game_map + 0x000f),#0x01
      0003FB 80 0D            [24] 1053 	sjmp	00116$
      0003FD                       1054 00115$:
                                   1055 ;	dino.c:277: else if (myRand % 3 == 1)
      0003FD BE 01 0A         [24] 1056 	cjne	r6,#0x01,00116$
      000400 BF 00 07         [24] 1057 	cjne	r7,#0x00,00116$
                                   1058 ;	dino.c:280: if (game_map[0][14]==0)
      000403 E5 2E            [12] 1059 	mov	a,(_game_map + 0x000e)
      000405 70 03            [24] 1060 	jnz	00116$
                                   1061 ;	dino.c:283: game_map[1][15] = 1; // Generate cactus at row 1 col 15
      000407 75 3F 01         [24] 1062 	mov	(_game_map + 0x001f),#0x01
      00040A                       1063 00116$:
                                   1064 ;	dino.c:288: if (game_map[dino_row][0])
      00040A E5 79            [12] 1065 	mov	a,_dino_row
      00040C C4               [12] 1066 	swap	a
      00040D 54 F0            [12] 1067 	anl	a,#0xf0
      00040F 24 20            [12] 1068 	add	a, #_game_map
      000411 F9               [12] 1069 	mov	r1,a
      000412 E7               [12] 1070 	mov	a,@r1
      000413 60 04            [24] 1071 	jz	00120$
                                   1072 ;	dino.c:290: game_over = (char)1; // If the dino is at the same position as the cactus, game over
      000415 75 7C 01         [24] 1073 	mov	_game_over,#0x01
                                   1074 ;	dino.c:292: return; // Game finish
      000418 22               [24] 1075 	ret
      000419                       1076 00120$:
                                   1077 ;	dino.c:294: else if (game_map[1 - dino_row][0])
      000419 AF 79            [24] 1078 	mov	r7,_dino_row
      00041B 74 01            [12] 1079 	mov	a,#0x01
      00041D C3               [12] 1080 	clr	c
      00041E 9F               [12] 1081 	subb	a,r7
      00041F C4               [12] 1082 	swap	a
      000420 54 F0            [12] 1083 	anl	a,#0xf0
      000422 FF               [12] 1084 	mov	r7,a
      000423 24 20            [12] 1085 	add	a, #_game_map
      000425 F9               [12] 1086 	mov	r1,a
      000426 E7               [12] 1087 	mov	a,@r1
      000427 60 05            [24] 1088 	jz	00121$
                                   1089 ;	dino.c:296: score++; // If the dino is not at the same position as the cactus, we get a score
      000429 E5 7A            [12] 1090 	mov	a,_score
      00042B 04               [12] 1091 	inc	a
      00042C F5 7A            [12] 1092 	mov	_score,a
      00042E                       1093 00121$:
                                   1094 ;	dino.c:299: EA = 1;
                                   1095 ;	assignBit
      00042E D2 AF            [12] 1096 	setb	_EA
                                   1097 ;	dino.c:300: SemaphoreSignal(mutex);
      000430 05 08            [12] 1098 	INC _mutex 
                                   1099 ;	dino.c:301: for ( char q = 0; q < (char)10*difficulty; q++)
      000432 7F 00            [12] 1100 	mov	r7,#0x00
      000434                       1101 00135$:
      000434 E5 7B            [12] 1102 	mov	a,_difficulty
      000436 75 F0 0A         [24] 1103 	mov	b,#0x0a
      000439 A4               [48] 1104 	mul	ab
      00043A FD               [12] 1105 	mov	r5,a
      00043B AE F0            [24] 1106 	mov	r6,b
      00043D 8F 03            [24] 1107 	mov	ar3,r7
      00043F 7C 00            [12] 1108 	mov	r4,#0x00
      000441 C3               [12] 1109 	clr	c
      000442 EB               [12] 1110 	mov	a,r3
      000443 9D               [12] 1111 	subb	a,r5
      000444 EC               [12] 1112 	mov	a,r4
      000445 64 80            [12] 1113 	xrl	a,#0x80
      000447 8E F0            [24] 1114 	mov	b,r6
      000449 63 F0 80         [24] 1115 	xrl	b,#0x80
      00044C 95 F0            [12] 1116 	subb	a,b
      00044E 50 0D            [24] 1117 	jnc	00122$
                                   1118 ;	dino.c:302: delay(10);
      000450 75 82 0A         [24] 1119 	mov	dpl, #0x0a
      000453 C0 07            [24] 1120 	push	ar7
      000455 12 08 33         [24] 1121 	lcall	_delay
      000458 D0 07            [24] 1122 	pop	ar7
                                   1123 ;	dino.c:301: for ( char q = 0; q < (char)10*difficulty; q++)
      00045A 0F               [12] 1124 	inc	r7
      00045B 80 D7            [24] 1125 	sjmp	00135$
      00045D                       1126 00122$:
                                   1127 ;	dino.c:303: ThreadYield();
      00045D 12 05 AD         [24] 1128 	lcall	_ThreadYield
      000460 02 03 86         [24] 1129 	ljmp	00123$
      000463                       1130 00137$:
                                   1131 ;	dino.c:305: }
      000463 22               [24] 1132 	ret
                                   1133 ;------------------------------------------------------------
                                   1134 ;Allocation info for local variables in function 'main'
                                   1135 ;------------------------------------------------------------
                                   1136 ;	dino.c:407: void main(void)
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function main
                                   1139 ;	-----------------------------------------
      000464                       1140 _main:
                                   1141 ;	dino.c:410: EA = 0;     // Critical start
                                   1142 ;	assignBit
      000464 C2 AF            [12] 1143 	clr	_EA
                                   1144 ;	dino.c:411: LCD_Init(); // Initialize LCD
      000466 12 07 75         [24] 1145 	lcall	_LCD_Init
                                   1146 ;	dino.c:412: LCD_entryModeSet(1, 0);
      000469 75 82 06         [24] 1147 	mov	dpl, #0x06
      00046C 12 07 88         [24] 1148 	lcall	_LCD_IRWrite
                                   1149 ;	dino.c:413: Init_Keypad();                   // Initialize keypad
      00046F 12 08 D4         [24] 1150 	lcall	_Init_Keypad
                                   1151 ;	dino.c:414: LCD_set_symbol('\10', dinosaur); // bitmap for dinosaur
      000472 75 0A 63         [24] 1152 	mov	_LCD_set_symbol_PARM_2,#_dinosaur
      000475 75 0B 0A         [24] 1153 	mov	(_LCD_set_symbol_PARM_2 + 1),#(_dinosaur >> 8)
      000478 75 0C 80         [24] 1154 	mov	(_LCD_set_symbol_PARM_2 + 2),#0x80
      00047B 75 82 08         [24] 1155 	mov	dpl, #0x08
      00047E 12 00 14         [24] 1156 	lcall	_LCD_set_symbol
                                   1157 ;	dino.c:415: LCD_set_symbol('\20', cactus);   // bitmap for cactus
      000481 75 0A 6B         [24] 1158 	mov	_LCD_set_symbol_PARM_2,#_cactus
      000484 75 0B 0A         [24] 1159 	mov	(_LCD_set_symbol_PARM_2 + 1),#(_cactus >> 8)
      000487 75 0C 80         [24] 1160 	mov	(_LCD_set_symbol_PARM_2 + 2),#0x80
      00048A 75 82 10         [24] 1161 	mov	dpl, #0x10
      00048D 12 00 14         [24] 1162 	lcall	_LCD_set_symbol
                                   1163 ;	dino.c:416: SemaphoreCreate(mutex, 1);       // one mutex
      000490 75 08 01         [24] 1164 	mov	_mutex,#0x01
                                   1165 ;	dino.c:417: ThreadCreate(keypad_ctrl);       // Create keypad thread
      000493 90 01 25         [24] 1166 	mov	dptr,#_keypad_ctrl
      000496 12 04 FE         [24] 1167 	lcall	_ThreadCreate
                                   1168 ;	dino.c:418: ThreadCreate(render_task);       // Create render task thread
      000499 90 01 82         [24] 1169 	mov	dptr,#_render_task
      00049C 12 04 FE         [24] 1170 	lcall	_ThreadCreate
                                   1171 ;	dino.c:420: EA = 1;      // Critical end
                                   1172 ;	assignBit
      00049F D2 AF            [12] 1173 	setb	_EA
                                   1174 ;	dino.c:421: game_ctrl(); // Let main be game control
      0004A1 12 03 46         [24] 1175 	lcall	_game_ctrl
                                   1176 ;	dino.c:422: while (1)
      0004A4                       1177 00102$:
                                   1178 ;	dino.c:424: ThreadYield();
      0004A4 12 05 AD         [24] 1179 	lcall	_ThreadYield
                                   1180 ;	dino.c:426: }
      0004A7 80 FB            [24] 1181 	sjmp	00102$
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'timer0_ISR'
                                   1184 ;------------------------------------------------------------
                                   1185 ;	dino.c:428: void timer0_ISR(void) __interrupt(1)
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function timer0_ISR
                                   1188 ;	-----------------------------------------
      0004A9                       1189 _timer0_ISR:
                                   1190 ;	dino.c:432: __endasm;
      0004A9 02 06 D8         [24] 1191 	ljmp	_myTimer0Handler
                                   1192 ;	dino.c:433: }
      0004AC 32               [24] 1193 	reti
                                   1194 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1195 ;	eliminated unneeded push/pop not_psw
                                   1196 ;	eliminated unneeded push/pop dpl
                                   1197 ;	eliminated unneeded push/pop dph
                                   1198 ;	eliminated unneeded push/pop b
                                   1199 ;	eliminated unneeded push/pop acc
                                   1200 ;------------------------------------------------------------
                                   1201 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                   1202 ;------------------------------------------------------------
                                   1203 ;	dino.c:435: void _sdcc_gsinit_startup(void)
                                   1204 ;	-----------------------------------------
                                   1205 ;	 function _sdcc_gsinit_startup
                                   1206 ;	-----------------------------------------
      0004AD                       1207 __sdcc_gsinit_startup:
                                   1208 ;	dino.c:439: __endasm;
      0004AD 02 04 B4         [24] 1209 	LJMP	_Bootstrap
                                   1210 ;	dino.c:440: }
      0004B0 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                   1214 ;------------------------------------------------------------
                                   1215 ;	dino.c:441: void _mcs51_genRAMCLEAR(void)
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function _mcs51_genRAMCLEAR
                                   1218 ;	-----------------------------------------
      0004B1                       1219 __mcs51_genRAMCLEAR:
                                   1220 ;	dino.c:443: }
      0004B1 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                   1224 ;------------------------------------------------------------
                                   1225 ;	dino.c:444: void _mcs51_genXINIT(void) {}
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function _mcs51_genXINIT
                                   1228 ;	-----------------------------------------
      0004B2                       1229 __mcs51_genXINIT:
      0004B2 22               [24] 1230 	ret
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                   1233 ;------------------------------------------------------------
                                   1234 ;	dino.c:445: void _mcs51_genXRAMCLEAR(void) {}
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function _mcs51_genXRAMCLEAR
                                   1237 ;	-----------------------------------------
      0004B3                       1238 __mcs51_genXRAMCLEAR:
      0004B3 22               [24] 1239 	ret
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      000A63                       1242 _dinosaur:
      000A63 07                    1243 	.db #0x07	; 7
      000A64 05                    1244 	.db #0x05	; 5
      000A65 06                    1245 	.db #0x06	; 6
      000A66 07                    1246 	.db #0x07	; 7
      000A67 14                    1247 	.db #0x14	; 20
      000A68 17                    1248 	.db #0x17	; 23
      000A69 0E                    1249 	.db #0x0e	; 14
      000A6A 0A                    1250 	.db #0x0a	; 10
      000A6B                       1251 _cactus:
      000A6B 04                    1252 	.db #0x04	; 4
      000A6C 05                    1253 	.db #0x05	; 5
      000A6D 15                    1254 	.db #0x15	; 21
      000A6E 15                    1255 	.db #0x15	; 21
      000A6F 16                    1256 	.db #0x16	; 22
      000A70 0C                    1257 	.db #0x0c	; 12
      000A71 04                    1258 	.db #0x04	; 4
      000A72 04                    1259 	.db #0x04	; 4
                                   1260 	.area XINIT   (CODE)
                                   1261 	.area CABS    (ABS,CODE)
