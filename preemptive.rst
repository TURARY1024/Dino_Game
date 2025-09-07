                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module preemptive
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Bootstrap
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _tempSP
                                    110 	.globl _next
                                    111 	.globl _tID
                                    112 	.globl _bitmap
                                    113 	.globl _current_thread
                                    114 	.globl _savedSP2
                                    115 	.globl _savedSP1
                                    116 	.globl _savedSP0
                                    117 	.globl _ThreadCreate
                                    118 	.globl _ThreadYield
                                    119 	.globl _ThreadExit
                                    120 	.globl _myTimer0Handler
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
                           000070   236 _savedSP0	=	0x0070
                           000071   237 _savedSP1	=	0x0071
                           000072   238 _savedSP2	=	0x0072
                           000074   239 _current_thread	=	0x0074
                           000075   240 _bitmap	=	0x0075
                           000076   241 _tID	=	0x0076
                           000077   242 _next	=	0x0077
                           000078   243 _tempSP	=	0x0078
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable items in internal ram
                                    246 ;--------------------------------------------------------
                                    247 	.area	OSEG    (OVR,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; uninitialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; initialized external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'Bootstrap'
                                    305 ;------------------------------------------------------------
                                    306 ;	preemptive.c:70: void Bootstrap(void)
                                    307 ;	-----------------------------------------
                                    308 ;	 function Bootstrap
                                    309 ;	-----------------------------------------
      0004B4                        310 _Bootstrap:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:73: bitmap = 0;               // No threads created yet (all 4 bits cleared)
      0004B4 75 75 00         [24]  320 	mov	_bitmap,#0x00
                                    321 ;	preemptive.c:74: savedSP0 = savedSP1 = savedSP2 = 0; // Clear all saved stack pointers
      0004B7 75 72 00         [24]  322 	mov	_savedSP2,#0x00
      0004BA 75 71 00         [24]  323 	mov	_savedSP1,#0x00
      0004BD 75 70 00         [24]  324 	mov	_savedSP0,#0x00
                                    325 ;	preemptive.c:75: current_thread = 0;            // Initialize current thread ID to 0
      0004C0 75 74 00         [24]  326 	mov	_current_thread,#0x00
                                    327 ;	preemptive.c:76: tID = 0;                       // Reset thread ID
      0004C3 75 76 00         [24]  328 	mov	_tID,#0x00
                                    329 ;	preemptive.c:77: next = 0;                      // Reset next thread tracker
      0004C6 75 77 00         [24]  330 	mov	_next,#0x00
                                    331 ;	preemptive.c:78: tempSP = 0;                    // Clear temporary SP 
      0004C9 75 78 00         [24]  332 	mov	_tempSP,#0x00
                                    333 ;	preemptive.c:82: TMOD=0;//timer 0 mode 0
      0004CC 75 89 00         [24]  334 	mov	_TMOD,#0x00
                                    335 ;	preemptive.c:83: IE=0x82; //enable timer 0 interrupt
      0004CF 75 A8 82         [24]  336 	mov	_IE,#0x82
                                    337 ;	preemptive.c:84: TR0=1; //start running timer0
                                    338 ;	assignBit
      0004D2 D2 8C            [12]  339 	setb	_TR0
                                    340 ;	preemptive.c:86: current_thread=ThreadCreate(main); // Create main thread and  set current thread to the thread ID of main
      0004D4 90 04 64         [24]  341 	mov	dptr,#_main
      0004D7 12 04 FE         [24]  342 	lcall	_ThreadCreate
      0004DA 85 82 74         [24]  343 	mov	_current_thread,dpl
                                    344 ;	preemptive.c:87: RESTORESTATE;       // Restore main context;
      0004DD E5 74            [12]  345 	mov	a,_current_thread
      0004DF 70 05            [24]  346 	jnz	00105$
      0004E1 85 70 81         [24]  347 	mov	_SP,_savedSP0
      0004E4 80 0D            [24]  348 	sjmp	00106$
      0004E6                        349 00105$:
      0004E6 74 01            [12]  350 	mov	a,#0x01
      0004E8 B5 74 05         [24]  351 	cjne	a,_current_thread,00102$
      0004EB 85 71 81         [24]  352 	mov	_SP,_savedSP1
      0004EE 80 03            [24]  353 	sjmp	00106$
      0004F0                        354 00102$:
      0004F0 85 72 81         [24]  355 	mov	_SP,_savedSP2
      0004F3                        356 00106$:
      0004F3 D0 D0            [24]  357 	POP PSW 
      0004F5 D0 83            [24]  358 	POP DPH 
      0004F7 D0 82            [24]  359 	POP DPL 
      0004F9 D0 F0            [24]  360 	POP B 
      0004FB D0 E0            [24]  361 	POP ACC 
                                    362 ;	preemptive.c:88: }
      0004FD 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'ThreadCreate'
                                    366 ;------------------------------------------------------------
                                    367 ;fp                        Allocated to registers 
                                    368 ;------------------------------------------------------------
                                    369 ;	preemptive.c:94: ThreadID ThreadCreate(FunctionPtr fp)
                                    370 ;	-----------------------------------------
                                    371 ;	 function ThreadCreate
                                    372 ;	-----------------------------------------
      0004FE                        373 _ThreadCreate:
                                    374 ;	preemptive.c:98: if ((bitmap & 0x07) == 0x07) {
      0004FE AF 75            [24]  375 	mov	r7,_bitmap
      000500 53 07 07         [24]  376 	anl	ar7,#0x07
      000503 BF 07 04         [24]  377 	cjne	r7,#0x07,00102$
                                    378 ;	preemptive.c:99: return -1;//Return cannot be inside critical
      000506 75 82 FF         [24]  379 	mov	dpl, #0xff
      000509 22               [24]  380 	ret
      00050A                        381 00102$:
                                    382 ;	preemptive.c:102: EA=0;//Start Critical
                                    383 ;	assignBit
      00050A C2 AF            [12]  384 	clr	_EA
                                    385 ;	preemptive.c:105: for (tID = 0; tID < MAXTHREADS; tID++)
      00050C 75 76 00         [24]  386 	mov	_tID,#0x00
      00050F                        387 00125$:
      00050F 74 FD            [12]  388 	mov	a,#0x100 - 0x03
      000511 25 76            [12]  389 	add	a,_tID
      000513 40 18            [24]  390 	jc	00105$
                                    391 ;	preemptive.c:108: if (((bitmap >> tID) & 1) == 0) 
      000515 85 76 F0         [24]  392 	mov	b,_tID
      000518 05 F0            [12]  393 	inc	b
      00051A E5 75            [12]  394 	mov	a,_bitmap
      00051C 80 02            [24]  395 	sjmp	00193$
      00051E                        396 00192$:
      00051E C3               [12]  397 	clr	c
      00051F 13               [12]  398 	rrc	a
      000520                        399 00193$:
      000520 D5 F0 FB         [24]  400 	djnz	b,00192$
      000523 30 E0 07         [24]  401 	jnb	acc.0,00105$
                                    402 ;	preemptive.c:105: for (tID = 0; tID < MAXTHREADS; tID++)
      000526 E5 76            [12]  403 	mov	a,_tID
      000528 04               [12]  404 	inc	a
      000529 F5 76            [12]  405 	mov	_tID,a
      00052B 80 E2            [24]  406 	sjmp	00125$
      00052D                        407 00105$:
                                    408 ;	preemptive.c:115: bitmap |= (1 << tID); // making that bit to 1
      00052D 85 76 F0         [24]  409 	mov	b,_tID
      000530 05 F0            [12]  410 	inc	b
      000532 74 01            [12]  411 	mov	a,#0x01
      000534 80 02            [24]  412 	sjmp	00196$
      000536                        413 00195$:
      000536 25 E0            [12]  414 	add	a,acc
      000538                        415 00196$:
      000538 D5 F0 FB         [24]  416 	djnz	b,00195$
      00053B FF               [12]  417 	mov	r7,a
      00053C 42 75            [12]  418 	orl	_bitmap,a
                                    419 ;	preemptive.c:119: tempSP = SP; // Save original SP before switching to new thread stack
      00053E 85 81 78         [24]  420 	mov	_tempSP,_SP
                                    421 ;	preemptive.c:124: if (tID == 0) {
      000541 E5 76            [12]  422 	mov	a,_tID
      000543 70 05            [24]  423 	jnz	00110$
                                    424 ;	preemptive.c:125: SP = 0x3F; // Thread 0 stack range: 0x40 ~ 0x4F
      000545 75 81 3F         [24]  425 	mov	_SP,#0x3f
      000548 80 0D            [24]  426 	sjmp	00111$
      00054A                        427 00110$:
                                    428 ;	preemptive.c:126: } else if (tID == 1) {
      00054A 74 01            [12]  429 	mov	a,#0x01
      00054C B5 76 05         [24]  430 	cjne	a,_tID,00107$
                                    431 ;	preemptive.c:127: SP = 0x4F; // Thread 1 stack range: 0x50 ~ 0x5F
      00054F 75 81 4F         [24]  432 	mov	_SP,#0x4f
      000552 80 03            [24]  433 	sjmp	00111$
      000554                        434 00107$:
                                    435 ;	preemptive.c:129: SP = 0x5F; // Thread 2 stack range: 0x60 ~ 0x6F
      000554 75 81 5F         [24]  436 	mov	_SP,#0x5f
      000557                        437 00111$:
                                    438 ;	preemptive.c:137: __endasm;
      000557 C0 82            [24]  439 	push	DPL
      000559 C0 83            [24]  440 	push	DPH
                                    441 ;	preemptive.c:159: __endasm;
      00055B 74 00            [12]  442 	MOV	A, #0
      00055D F5 E0            [12]  443 	MOV	ACC, A
      00055F C0 E0            [24]  444 	PUSH	ACC
      000561 74 00            [12]  445 	MOV	A, #0
      000563 F5 F0            [12]  446 	MOV	B, A
      000565 C0 F0            [24]  447 	PUSH	B
      000567 74 00            [12]  448 	MOV	A, #0
      000569 F5 82            [12]  449 	MOV	DPL, A
      00056B C0 82            [24]  450 	PUSH	DPL
      00056D 74 00            [12]  451 	MOV	A, #0
      00056F F5 83            [12]  452 	MOV	DPH, A
      000571 C0 83            [24]  453 	PUSH	DPH
                                    454 ;	preemptive.c:162: if (tID == 0)
      000573 E5 76            [12]  455 	mov	a,_tID
                                    456 ;	preemptive.c:168: __endasm;
      000575 70 06            [24]  457 	jnz	00116$
      000577 F5 D0            [12]  458 	mov	PSW,a
      000579 C0 D0            [24]  459 	push	PSW
      00057B 80 11            [24]  460 	sjmp	00117$
      00057D                        461 00116$:
                                    462 ;	preemptive.c:170: else if (tID == 1)
      00057D 74 01            [12]  463 	mov	a,#0x01
      00057F B5 76 07         [24]  464 	cjne	a,_tID,00113$
                                    465 ;	preemptive.c:176: __endasm;
      000582 75 D0 08         [24]  466 	mov	PSW, #0x08
      000585 C0 D0            [24]  467 	push	PSW
      000587 80 05            [24]  468 	sjmp	00117$
      000589                        469 00113$:
                                    470 ;	preemptive.c:184: __endasm;
      000589 75 D0 10         [24]  471 	mov	PSW, #0x10
      00058C C0 D0            [24]  472 	push	PSW
      00058E                        473 00117$:
                                    474 ;	preemptive.c:188: if (tID == 0)
      00058E E5 76            [12]  475 	mov	a,_tID
      000590 70 05            [24]  476 	jnz	00122$
                                    477 ;	preemptive.c:190: savedSP0 = SP; 
      000592 85 81 70         [24]  478 	mov	_savedSP0,_SP
      000595 80 0D            [24]  479 	sjmp	00123$
      000597                        480 00122$:
                                    481 ;	preemptive.c:192: else if (tID == 1)
      000597 74 01            [12]  482 	mov	a,#0x01
      000599 B5 76 05         [24]  483 	cjne	a,_tID,00119$
                                    484 ;	preemptive.c:194: savedSP1 = SP;
      00059C 85 81 71         [24]  485 	mov	_savedSP1,_SP
      00059F 80 03            [24]  486 	sjmp	00123$
      0005A1                        487 00119$:
                                    488 ;	preemptive.c:198: savedSP2 = SP;
      0005A1 85 81 72         [24]  489 	mov	_savedSP2,_SP
      0005A4                        490 00123$:
                                    491 ;	preemptive.c:202: SP = tempSP; // Restore SP
      0005A4 85 78 81         [24]  492 	mov	_SP,_tempSP
                                    493 ;	preemptive.c:203: EA=1;//end of critical
                                    494 ;	assignBit
      0005A7 D2 AF            [12]  495 	setb	_EA
                                    496 ;	preemptive.c:205: return tID;
      0005A9 85 76 82         [24]  497 	mov	dpl, _tID
                                    498 ;	preemptive.c:207: }
      0005AC 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'ThreadYield'
                                    502 ;------------------------------------------------------------
                                    503 ;	preemptive.c:216: void ThreadYield(void)
                                    504 ;	-----------------------------------------
                                    505 ;	 function ThreadYield
                                    506 ;	-----------------------------------------
      0005AD                        507 _ThreadYield:
                                    508 ;	preemptive.c:219: EA=0;//Start Critical
                                    509 ;	assignBit
      0005AD C2 AF            [12]  510 	clr	_EA
                                    511 ;	preemptive.c:222: SAVESTATE;
      0005AF C0 E0            [24]  512 	PUSH ACC 
      0005B1 C0 F0            [24]  513 	PUSH B 
      0005B3 C0 82            [24]  514 	PUSH DPL 
      0005B5 C0 83            [24]  515 	PUSH DPH 
      0005B7 C0 D0            [24]  516 	PUSH PSW 
      0005B9 E5 74            [12]  517 	mov	a,_current_thread
      0005BB 70 05            [24]  518 	jnz	00105$
      0005BD 85 81 70         [24]  519 	mov	_savedSP0,_SP
      0005C0 80 0D            [24]  520 	sjmp	00106$
      0005C2                        521 00105$:
      0005C2 74 01            [12]  522 	mov	a,#0x01
      0005C4 B5 74 05         [24]  523 	cjne	a,_current_thread,00102$
      0005C7 85 81 71         [24]  524 	mov	_savedSP1,_SP
      0005CA 80 03            [24]  525 	sjmp	00106$
      0005CC                        526 00102$:
      0005CC 85 81 72         [24]  527 	mov	_savedSP2,_SP
      0005CF                        528 00106$:
                                    529 ;	preemptive.c:237: next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
      0005CF AE 74            [24]  530 	mov	r6,_current_thread
      0005D1 7F 00            [12]  531 	mov	r7,#0x00
      0005D3 8E 82            [24]  532 	mov	dpl,r6
      0005D5 8F 83            [24]  533 	mov	dph,r7
      0005D7 A3               [24]  534 	inc	dptr
      0005D8 75 0F 03         [24]  535 	mov	__modsint_PARM_2,#0x03
      0005DB 8F 10            [24]  536 	mov	(__modsint_PARM_2 + 1),r7
      0005DD 12 09 F5         [24]  537 	lcall	__modsint
      0005E0 AE 82            [24]  538 	mov	r6, dpl
      0005E2 8E 77            [24]  539 	mov	_next,r6
                                    540 ;	preemptive.c:238: while (1)
      0005E4                        541 00110$:
                                    542 ;	preemptive.c:241: if (bitmap & (0b0001 << next))
      0005E4 85 77 F0         [24]  543 	mov	b,_next
      0005E7 05 F0            [12]  544 	inc	b
      0005E9 7E 01            [12]  545 	mov	r6,#0x01
      0005EB 7F 00            [12]  546 	mov	r7,#0x00
      0005ED 80 06            [24]  547 	sjmp	00160$
      0005EF                        548 00159$:
      0005EF EE               [12]  549 	mov	a,r6
      0005F0 2E               [12]  550 	add	a,r6
      0005F1 FE               [12]  551 	mov	r6,a
      0005F2 EF               [12]  552 	mov	a,r7
      0005F3 33               [12]  553 	rlc	a
      0005F4 FF               [12]  554 	mov	r7,a
      0005F5                        555 00160$:
      0005F5 D5 F0 F7         [24]  556 	djnz	b,00159$
      0005F8 AC 75            [24]  557 	mov	r4,_bitmap
      0005FA 7D 00            [12]  558 	mov	r5,#0x00
      0005FC EC               [12]  559 	mov	a,r4
      0005FD 52 06            [12]  560 	anl	ar6,a
      0005FF ED               [12]  561 	mov	a,r5
      000600 52 07            [12]  562 	anl	ar7,a
      000602 EE               [12]  563 	mov	a,r6
      000603 4F               [12]  564 	orl	a,r7
      000604 60 05            [24]  565 	jz	00108$
                                    566 ;	preemptive.c:243: current_thread = next;// Switch to this runnable thread
      000606 85 77 74         [24]  567 	mov	_current_thread,_next
                                    568 ;	preemptive.c:244: break;// Exit the loop
      000609 80 17            [24]  569 	sjmp	00111$
      00060B                        570 00108$:
                                    571 ;	preemptive.c:248: next = (next + 1) % MAXTHREADS;
      00060B AE 77            [24]  572 	mov	r6,_next
      00060D 7F 00            [12]  573 	mov	r7,#0x00
      00060F 8E 82            [24]  574 	mov	dpl,r6
      000611 8F 83            [24]  575 	mov	dph,r7
      000613 A3               [24]  576 	inc	dptr
      000614 75 0F 03         [24]  577 	mov	__modsint_PARM_2,#0x03
      000617 8F 10            [24]  578 	mov	(__modsint_PARM_2 + 1),r7
      000619 12 09 F5         [24]  579 	lcall	__modsint
      00061C AE 82            [24]  580 	mov	r6, dpl
      00061E 8E 77            [24]  581 	mov	_next,r6
      000620 80 C2            [24]  582 	sjmp	00110$
      000622                        583 00111$:
                                    584 ;	preemptive.c:262: RESTORESTATE;
      000622 E5 74            [12]  585 	mov	a,_current_thread
      000624 70 05            [24]  586 	jnz	00116$
      000626 85 70 81         [24]  587 	mov	_SP,_savedSP0
      000629 80 0D            [24]  588 	sjmp	00117$
      00062B                        589 00116$:
      00062B 74 01            [12]  590 	mov	a,#0x01
      00062D B5 74 05         [24]  591 	cjne	a,_current_thread,00113$
      000630 85 71 81         [24]  592 	mov	_SP,_savedSP1
      000633 80 03            [24]  593 	sjmp	00117$
      000635                        594 00113$:
      000635 85 72 81         [24]  595 	mov	_SP,_savedSP2
      000638                        596 00117$:
      000638 D0 D0            [24]  597 	POP PSW 
      00063A D0 83            [24]  598 	POP DPH 
      00063C D0 82            [24]  599 	POP DPL 
      00063E D0 F0            [24]  600 	POP B 
      000640 D0 E0            [24]  601 	POP ACC 
                                    602 ;	preemptive.c:263: EA=1;//end of critical 
                                    603 ;	assignBit
      000642 D2 AF            [12]  604 	setb	_EA
                                    605 ;	preemptive.c:264: }
      000644 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'ThreadExit'
                                    609 ;------------------------------------------------------------
                                    610 ;start                     Allocated to registers r7 
                                    611 ;------------------------------------------------------------
                                    612 ;	preemptive.c:271: void ThreadExit(void)
                                    613 ;	-----------------------------------------
                                    614 ;	 function ThreadExit
                                    615 ;	-----------------------------------------
      000645                        616 _ThreadExit:
                                    617 ;	preemptive.c:274: EA=0; //Start critical
                                    618 ;	assignBit
      000645 C2 AF            [12]  619 	clr	_EA
                                    620 ;	preemptive.c:277: bitmap &= ~(1 << current_thread);// Mark current thread as inactive
      000647 85 74 F0         [24]  621 	mov	b,_current_thread
      00064A 05 F0            [12]  622 	inc	b
      00064C 74 01            [12]  623 	mov	a,#0x01
      00064E 80 02            [24]  624 	sjmp	00150$
      000650                        625 00149$:
      000650 25 E0            [12]  626 	add	a,acc
      000652                        627 00150$:
      000652 D5 F0 FB         [24]  628 	djnz	b,00149$
      000655 F4               [12]  629 	cpl	a
      000656 52 75            [12]  630 	anl	_bitmap,a
                                    631 ;	preemptive.c:280: next = (current_thread + 1) %MAXTHREADS;   // Try next thread
      000658 AE 74            [24]  632 	mov	r6,_current_thread
      00065A 7F 00            [12]  633 	mov	r7,#0x00
      00065C 8E 82            [24]  634 	mov	dpl,r6
      00065E 8F 83            [24]  635 	mov	dph,r7
      000660 A3               [24]  636 	inc	dptr
      000661 75 0F 03         [24]  637 	mov	__modsint_PARM_2,#0x03
      000664 8F 10            [24]  638 	mov	(__modsint_PARM_2 + 1),r7
      000666 12 09 F5         [24]  639 	lcall	__modsint
      000669 AE 82            [24]  640 	mov	r6, dpl
      00066B 8E 77            [24]  641 	mov	_next,r6
                                    642 ;	preemptive.c:281: ThreadID start = next; // Mark starting point to detect full cycle
      00066D AF 77            [24]  643 	mov	r7,_next
                                    644 ;	preemptive.c:283: while (1) {
      00066F                        645 00109$:
                                    646 ;	preemptive.c:284: if (bitmap & (1 << next)) { // If thread 'next' is active
      00066F 85 77 F0         [24]  647 	mov	b,_next
      000672 05 F0            [12]  648 	inc	b
      000674 7D 01            [12]  649 	mov	r5,#0x01
      000676 7E 00            [12]  650 	mov	r6,#0x00
      000678 80 06            [24]  651 	sjmp	00152$
      00067A                        652 00151$:
      00067A ED               [12]  653 	mov	a,r5
      00067B 2D               [12]  654 	add	a,r5
      00067C FD               [12]  655 	mov	r5,a
      00067D EE               [12]  656 	mov	a,r6
      00067E 33               [12]  657 	rlc	a
      00067F FE               [12]  658 	mov	r6,a
      000680                        659 00152$:
      000680 D5 F0 F7         [24]  660 	djnz	b,00151$
      000683 AB 75            [24]  661 	mov	r3,_bitmap
      000685 7C 00            [12]  662 	mov	r4,#0x00
      000687 EB               [12]  663 	mov	a,r3
      000688 52 05            [12]  664 	anl	ar5,a
      00068A EC               [12]  665 	mov	a,r4
      00068B 52 06            [12]  666 	anl	ar6,a
      00068D ED               [12]  667 	mov	a,r5
      00068E 4E               [12]  668 	orl	a,r6
      00068F 60 05            [24]  669 	jz	00102$
                                    670 ;	preemptive.c:285: current_thread = next; // Switch to it
      000691 85 77 74         [24]  671 	mov	_current_thread,_next
                                    672 ;	preemptive.c:286: break;
      000694 80 1F            [24]  673 	sjmp	00110$
      000696                        674 00102$:
                                    675 ;	preemptive.c:289: next = (next + 1) % MAXTHREADS;
      000696 AD 77            [24]  676 	mov	r5,_next
      000698 7E 00            [12]  677 	mov	r6,#0x00
      00069A 8D 82            [24]  678 	mov	dpl,r5
      00069C 8E 83            [24]  679 	mov	dph,r6
      00069E A3               [24]  680 	inc	dptr
      00069F 75 0F 03         [24]  681 	mov	__modsint_PARM_2,#0x03
      0006A2 8E 10            [24]  682 	mov	(__modsint_PARM_2 + 1),r6
      0006A4 C0 07            [24]  683 	push	ar7
      0006A6 12 09 F5         [24]  684 	lcall	__modsint
      0006A9 AD 82            [24]  685 	mov	r5, dpl
      0006AB D0 07            [24]  686 	pop	ar7
      0006AD 8D 77            [24]  687 	mov	_next,r5
                                    688 ;	preemptive.c:290: if (next == start) {
      0006AF EF               [12]  689 	mov	a,r7
      0006B0 B5 77 BC         [24]  690 	cjne	a,_next,00109$
                                    691 ;	preemptive.c:292: while (1);  
      0006B3                        692 00104$:
      0006B3 80 FE            [24]  693 	sjmp	00104$
      0006B5                        694 00110$:
                                    695 ;	preemptive.c:295: RESTORESTATE;
      0006B5 E5 74            [12]  696 	mov	a,_current_thread
      0006B7 70 05            [24]  697 	jnz	00115$
      0006B9 85 70 81         [24]  698 	mov	_SP,_savedSP0
      0006BC 80 0D            [24]  699 	sjmp	00116$
      0006BE                        700 00115$:
      0006BE 74 01            [12]  701 	mov	a,#0x01
      0006C0 B5 74 05         [24]  702 	cjne	a,_current_thread,00112$
      0006C3 85 71 81         [24]  703 	mov	_SP,_savedSP1
      0006C6 80 03            [24]  704 	sjmp	00116$
      0006C8                        705 00112$:
      0006C8 85 72 81         [24]  706 	mov	_SP,_savedSP2
      0006CB                        707 00116$:
      0006CB D0 D0            [24]  708 	POP PSW 
      0006CD D0 83            [24]  709 	POP DPH 
      0006CF D0 82            [24]  710 	POP DPL 
      0006D1 D0 F0            [24]  711 	POP B 
      0006D3 D0 E0            [24]  712 	POP ACC 
                                    713 ;	preemptive.c:296: EA=1;//end of critical
                                    714 ;	assignBit
      0006D5 D2 AF            [12]  715 	setb	_EA
                                    716 ;	preemptive.c:297: }
      0006D7 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'myTimer0Handler'
                                    720 ;------------------------------------------------------------
                                    721 ;	preemptive.c:299: void myTimer0Handler(void) {
                                    722 ;	-----------------------------------------
                                    723 ;	 function myTimer0Handler
                                    724 ;	-----------------------------------------
      0006D8                        725 _myTimer0Handler:
                                    726 ;	preemptive.c:301: EA=0;//don't do critical disable interrupt
                                    727 ;	assignBit
      0006D8 C2 AF            [12]  728 	clr	_EA
                                    729 ;	preemptive.c:305: SAVESTATE;
      0006DA C0 E0            [24]  730 	PUSH ACC 
      0006DC C0 F0            [24]  731 	PUSH B 
      0006DE C0 82            [24]  732 	PUSH DPL 
      0006E0 C0 83            [24]  733 	PUSH DPH 
      0006E2 C0 D0            [24]  734 	PUSH PSW 
      0006E4 E5 74            [12]  735 	mov	a,_current_thread
      0006E6 70 05            [24]  736 	jnz	00105$
      0006E8 85 81 70         [24]  737 	mov	_savedSP0,_SP
      0006EB 80 0D            [24]  738 	sjmp	00106$
      0006ED                        739 00105$:
      0006ED 74 01            [12]  740 	mov	a,#0x01
      0006EF B5 74 05         [24]  741 	cjne	a,_current_thread,00102$
      0006F2 85 81 71         [24]  742 	mov	_savedSP1,_SP
      0006F5 80 03            [24]  743 	sjmp	00106$
      0006F7                        744 00102$:
      0006F7 85 81 72         [24]  745 	mov	_savedSP2,_SP
      0006FA                        746 00106$:
                                    747 ;	preemptive.c:309: next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
      0006FA AE 74            [24]  748 	mov	r6,_current_thread
      0006FC 7F 00            [12]  749 	mov	r7,#0x00
      0006FE 8E 82            [24]  750 	mov	dpl,r6
      000700 8F 83            [24]  751 	mov	dph,r7
      000702 A3               [24]  752 	inc	dptr
      000703 75 0F 03         [24]  753 	mov	__modsint_PARM_2,#0x03
      000706 8F 10            [24]  754 	mov	(__modsint_PARM_2 + 1),r7
      000708 12 09 F5         [24]  755 	lcall	__modsint
      00070B AE 82            [24]  756 	mov	r6, dpl
      00070D 8E 77            [24]  757 	mov	_next,r6
                                    758 ;	preemptive.c:310: while (1)
      00070F                        759 00110$:
                                    760 ;	preemptive.c:313: if (bitmap & (0b0001 << next))
      00070F 85 77 F0         [24]  761 	mov	b,_next
      000712 05 F0            [12]  762 	inc	b
      000714 7E 01            [12]  763 	mov	r6,#0x01
      000716 7F 00            [12]  764 	mov	r7,#0x00
      000718 80 06            [24]  765 	sjmp	00160$
      00071A                        766 00159$:
      00071A EE               [12]  767 	mov	a,r6
      00071B 2E               [12]  768 	add	a,r6
      00071C FE               [12]  769 	mov	r6,a
      00071D EF               [12]  770 	mov	a,r7
      00071E 33               [12]  771 	rlc	a
      00071F FF               [12]  772 	mov	r7,a
      000720                        773 00160$:
      000720 D5 F0 F7         [24]  774 	djnz	b,00159$
      000723 AC 75            [24]  775 	mov	r4,_bitmap
      000725 7D 00            [12]  776 	mov	r5,#0x00
      000727 EC               [12]  777 	mov	a,r4
      000728 52 06            [12]  778 	anl	ar6,a
      00072A ED               [12]  779 	mov	a,r5
      00072B 52 07            [12]  780 	anl	ar7,a
      00072D EE               [12]  781 	mov	a,r6
      00072E 4F               [12]  782 	orl	a,r7
      00072F 60 05            [24]  783 	jz	00108$
                                    784 ;	preemptive.c:315: current_thread = next;// Switch to this runnable thread
      000731 85 77 74         [24]  785 	mov	_current_thread,_next
                                    786 ;	preemptive.c:316: break;// Exit the loop
      000734 80 17            [24]  787 	sjmp	00111$
      000736                        788 00108$:
                                    789 ;	preemptive.c:320: next = (next + 1) % MAXTHREADS;
      000736 AE 77            [24]  790 	mov	r6,_next
      000738 7F 00            [12]  791 	mov	r7,#0x00
      00073A 8E 82            [24]  792 	mov	dpl,r6
      00073C 8F 83            [24]  793 	mov	dph,r7
      00073E A3               [24]  794 	inc	dptr
      00073F 75 0F 03         [24]  795 	mov	__modsint_PARM_2,#0x03
      000742 8F 10            [24]  796 	mov	(__modsint_PARM_2 + 1),r7
      000744 12 09 F5         [24]  797 	lcall	__modsint
      000747 AE 82            [24]  798 	mov	r6, dpl
      000749 8E 77            [24]  799 	mov	_next,r6
      00074B 80 C2            [24]  800 	sjmp	00110$
      00074D                        801 00111$:
                                    802 ;	preemptive.c:323: RESTORESTATE;
      00074D E5 74            [12]  803 	mov	a,_current_thread
      00074F 70 05            [24]  804 	jnz	00116$
      000751 85 70 81         [24]  805 	mov	_SP,_savedSP0
      000754 80 0D            [24]  806 	sjmp	00117$
      000756                        807 00116$:
      000756 74 01            [12]  808 	mov	a,#0x01
      000758 B5 74 05         [24]  809 	cjne	a,_current_thread,00113$
      00075B 85 71 81         [24]  810 	mov	_SP,_savedSP1
      00075E 80 03            [24]  811 	sjmp	00117$
      000760                        812 00113$:
      000760 85 72 81         [24]  813 	mov	_SP,_savedSP2
      000763                        814 00117$:
      000763 D0 D0            [24]  815 	POP PSW 
      000765 D0 83            [24]  816 	POP DPH 
      000767 D0 82            [24]  817 	POP DPL 
      000769 D0 F0            [24]  818 	POP B 
      00076B D0 E0            [24]  819 	POP ACC 
                                    820 ;	preemptive.c:324: EA=1;//enable interrupt
                                    821 ;	assignBit
      00076D D2 AF            [12]  822 	setb	_EA
                                    823 ;	preemptive.c:328: __endasm;
      00076F 32               [24]  824 	RETI
                                    825 ;	preemptive.c:329: }
      000770 22               [24]  826 	ret
                                    827 	.area CSEG    (CODE)
                                    828 	.area CONST   (CODE)
                                    829 	.area XINIT   (CODE)
                                    830 	.area CABS    (ABS,CODE)
