;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _tempSP
	.globl _next
	.globl _tID
	.globl _bitmap
	.globl _current_thread
	.globl _savedSP2
	.globl _savedSP1
	.globl _savedSP0
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
	.globl _myTimer0Handler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_savedSP0	=	0x0070
_savedSP1	=	0x0071
_savedSP2	=	0x0072
_current_thread	=	0x0074
_bitmap	=	0x0075
_tID	=	0x0076
_next	=	0x0077
_tempSP	=	0x0078
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:70: void Bootstrap(void)
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:73: bitmap = 0;               // No threads created yet (all 4 bits cleared)
	mov	_bitmap,#0x00
;	preemptive.c:74: savedSP0 = savedSP1 = savedSP2 = 0; // Clear all saved stack pointers
	mov	_savedSP2,#0x00
	mov	_savedSP1,#0x00
	mov	_savedSP0,#0x00
;	preemptive.c:75: current_thread = 0;            // Initialize current thread ID to 0
	mov	_current_thread,#0x00
;	preemptive.c:76: tID = 0;                       // Reset thread ID
	mov	_tID,#0x00
;	preemptive.c:77: next = 0;                      // Reset next thread tracker
	mov	_next,#0x00
;	preemptive.c:78: tempSP = 0;                    // Clear temporary SP 
	mov	_tempSP,#0x00
;	preemptive.c:82: TMOD=0;//timer 0 mode 0
	mov	_TMOD,#0x00
;	preemptive.c:83: IE=0x82; //enable timer 0 interrupt
	mov	_IE,#0x82
;	preemptive.c:84: TR0=1; //start running timer0
;	assignBit
	setb	_TR0
;	preemptive.c:86: current_thread=ThreadCreate(main); // Create main thread and  set current thread to the thread ID of main
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_current_thread,dpl
;	preemptive.c:87: RESTORESTATE;       // Restore main context;
	mov	a,_current_thread
	jnz	00105$
	mov	_SP,_savedSP0
	sjmp	00106$
00105$:
	mov	a,#0x01
	cjne	a,_current_thread,00102$
	mov	_SP,_savedSP1
	sjmp	00106$
00102$:
	mov	_SP,_savedSP2
00106$:
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:94: ThreadID ThreadCreate(FunctionPtr fp)
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:98: if ((bitmap & 0x07) == 0x07) {
	mov	r7,_bitmap
	anl	ar7,#0x07
	cjne	r7,#0x07,00102$
;	preemptive.c:99: return -1;//Return cannot be inside critical
	mov	dpl, #0xff
	ret
00102$:
;	preemptive.c:102: EA=0;//Start Critical
;	assignBit
	clr	_EA
;	preemptive.c:105: for (tID = 0; tID < MAXTHREADS; tID++)
	mov	_tID,#0x00
00125$:
	mov	a,#0x100 - 0x03
	add	a,_tID
	jc	00105$
;	preemptive.c:108: if (((bitmap >> tID) & 1) == 0) 
	mov	b,_tID
	inc	b
	mov	a,_bitmap
	sjmp	00193$
00192$:
	clr	c
	rrc	a
00193$:
	djnz	b,00192$
	jnb	acc.0,00105$
;	preemptive.c:105: for (tID = 0; tID < MAXTHREADS; tID++)
	mov	a,_tID
	inc	a
	mov	_tID,a
	sjmp	00125$
00105$:
;	preemptive.c:115: bitmap |= (1 << tID); // making that bit to 1
	mov	b,_tID
	inc	b
	mov	a,#0x01
	sjmp	00196$
00195$:
	add	a,acc
00196$:
	djnz	b,00195$
	mov	r7,a
	orl	_bitmap,a
;	preemptive.c:119: tempSP = SP; // Save original SP before switching to new thread stack
	mov	_tempSP,_SP
;	preemptive.c:124: if (tID == 0) {
	mov	a,_tID
	jnz	00110$
;	preemptive.c:125: SP = 0x3F; // Thread 0 stack range: 0x40 ~ 0x4F
	mov	_SP,#0x3f
	sjmp	00111$
00110$:
;	preemptive.c:126: } else if (tID == 1) {
	mov	a,#0x01
	cjne	a,_tID,00107$
;	preemptive.c:127: SP = 0x4F; // Thread 1 stack range: 0x50 ~ 0x5F
	mov	_SP,#0x4f
	sjmp	00111$
00107$:
;	preemptive.c:129: SP = 0x5F; // Thread 2 stack range: 0x60 ~ 0x6F
	mov	_SP,#0x5f
00111$:
;	preemptive.c:137: __endasm;
	push	DPL
	push	DPH
;	preemptive.c:159: __endasm;
	MOV	A, #0
	MOV	ACC, A
	PUSH	ACC
	MOV	A, #0
	MOV	B, A
	PUSH	B
	MOV	A, #0
	MOV	DPL, A
	PUSH	DPL
	MOV	A, #0
	MOV	DPH, A
	PUSH	DPH
;	preemptive.c:162: if (tID == 0)
	mov	a,_tID
;	preemptive.c:168: __endasm;
	jnz	00116$
	mov	PSW,a
	push	PSW
	sjmp	00117$
00116$:
;	preemptive.c:170: else if (tID == 1)
	mov	a,#0x01
	cjne	a,_tID,00113$
;	preemptive.c:176: __endasm;
	mov	PSW, #0x08
	push	PSW
	sjmp	00117$
00113$:
;	preemptive.c:184: __endasm;
	mov	PSW, #0x10
	push	PSW
00117$:
;	preemptive.c:188: if (tID == 0)
	mov	a,_tID
	jnz	00122$
;	preemptive.c:190: savedSP0 = SP; 
	mov	_savedSP0,_SP
	sjmp	00123$
00122$:
;	preemptive.c:192: else if (tID == 1)
	mov	a,#0x01
	cjne	a,_tID,00119$
;	preemptive.c:194: savedSP1 = SP;
	mov	_savedSP1,_SP
	sjmp	00123$
00119$:
;	preemptive.c:198: savedSP2 = SP;
	mov	_savedSP2,_SP
00123$:
;	preemptive.c:202: SP = tempSP; // Restore SP
	mov	_SP,_tempSP
;	preemptive.c:203: EA=1;//end of critical
;	assignBit
	setb	_EA
;	preemptive.c:205: return tID;
	mov	dpl, _tID
;	preemptive.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:216: void ThreadYield(void)
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:219: EA=0;//Start Critical
;	assignBit
	clr	_EA
;	preemptive.c:222: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_current_thread
	jnz	00105$
	mov	_savedSP0,_SP
	sjmp	00106$
00105$:
	mov	a,#0x01
	cjne	a,_current_thread,00102$
	mov	_savedSP1,_SP
	sjmp	00106$
00102$:
	mov	_savedSP2,_SP
00106$:
;	preemptive.c:237: next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
	mov	r6,_current_thread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	_next,r6
;	preemptive.c:238: while (1)
00110$:
;	preemptive.c:241: if (bitmap & (0b0001 << next))
	mov	b,_next
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00160$
00159$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00160$:
	djnz	b,00159$
	mov	r4,_bitmap
	mov	r5,#0x00
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00108$
;	preemptive.c:243: current_thread = next;// Switch to this runnable thread
	mov	_current_thread,_next
;	preemptive.c:244: break;// Exit the loop
	sjmp	00111$
00108$:
;	preemptive.c:248: next = (next + 1) % MAXTHREADS;
	mov	r6,_next
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	_next,r6
	sjmp	00110$
00111$:
;	preemptive.c:262: RESTORESTATE;
	mov	a,_current_thread
	jnz	00116$
	mov	_SP,_savedSP0
	sjmp	00117$
00116$:
	mov	a,#0x01
	cjne	a,_current_thread,00113$
	mov	_SP,_savedSP1
	sjmp	00117$
00113$:
	mov	_SP,_savedSP2
00117$:
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:263: EA=1;//end of critical 
;	assignBit
	setb	_EA
;	preemptive.c:264: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;start                     Allocated to registers r7 
;------------------------------------------------------------
;	preemptive.c:271: void ThreadExit(void)
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:274: EA=0; //Start critical
;	assignBit
	clr	_EA
;	preemptive.c:277: bitmap &= ~(1 << current_thread);// Mark current thread as inactive
	mov	b,_current_thread
	inc	b
	mov	a,#0x01
	sjmp	00150$
00149$:
	add	a,acc
00150$:
	djnz	b,00149$
	cpl	a
	anl	_bitmap,a
;	preemptive.c:280: next = (current_thread + 1) %MAXTHREADS;   // Try next thread
	mov	r6,_current_thread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	_next,r6
;	preemptive.c:281: ThreadID start = next; // Mark starting point to detect full cycle
	mov	r7,_next
;	preemptive.c:283: while (1) {
00109$:
;	preemptive.c:284: if (bitmap & (1 << next)) { // If thread 'next' is active
	mov	b,_next
	inc	b
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00152$
00151$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
00152$:
	djnz	b,00151$
	mov	r3,_bitmap
	mov	r4,#0x00
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	orl	a,r6
	jz	00102$
;	preemptive.c:285: current_thread = next; // Switch to it
	mov	_current_thread,_next
;	preemptive.c:286: break;
	sjmp	00110$
00102$:
;	preemptive.c:289: next = (next + 1) % MAXTHREADS;
	mov	r5,_next
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r6
	push	ar7
	lcall	__modsint
	mov	r5, dpl
	pop	ar7
	mov	_next,r5
;	preemptive.c:290: if (next == start) {
	mov	a,r7
	cjne	a,_next,00109$
;	preemptive.c:292: while (1);  
00104$:
	sjmp	00104$
00110$:
;	preemptive.c:295: RESTORESTATE;
	mov	a,_current_thread
	jnz	00115$
	mov	_SP,_savedSP0
	sjmp	00116$
00115$:
	mov	a,#0x01
	cjne	a,_current_thread,00112$
	mov	_SP,_savedSP1
	sjmp	00116$
00112$:
	mov	_SP,_savedSP2
00116$:
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:296: EA=1;//end of critical
;	assignBit
	setb	_EA
;	preemptive.c:297: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:299: void myTimer0Handler(void) {
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:301: EA=0;//don't do critical disable interrupt
;	assignBit
	clr	_EA
;	preemptive.c:305: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_current_thread
	jnz	00105$
	mov	_savedSP0,_SP
	sjmp	00106$
00105$:
	mov	a,#0x01
	cjne	a,_current_thread,00102$
	mov	_savedSP1,_SP
	sjmp	00106$
00102$:
	mov	_savedSP2,_SP
00106$:
;	preemptive.c:309: next = (current_thread + 1) % MAXTHREADS; // Start checking from the next thread
	mov	r6,_current_thread
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	_next,r6
;	preemptive.c:310: while (1)
00110$:
;	preemptive.c:313: if (bitmap & (0b0001 << next))
	mov	b,_next
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00160$
00159$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00160$:
	djnz	b,00159$
	mov	r4,_bitmap
	mov	r5,#0x00
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00108$
;	preemptive.c:315: current_thread = next;// Switch to this runnable thread
	mov	_current_thread,_next
;	preemptive.c:316: break;// Exit the loop
	sjmp	00111$
00108$:
;	preemptive.c:320: next = (next + 1) % MAXTHREADS;
	mov	r6,_next
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6, dpl
	mov	_next,r6
	sjmp	00110$
00111$:
;	preemptive.c:323: RESTORESTATE;
	mov	a,_current_thread
	jnz	00116$
	mov	_SP,_savedSP0
	sjmp	00117$
00116$:
	mov	a,#0x01
	cjne	a,_current_thread,00113$
	mov	_SP,_savedSP1
	sjmp	00117$
00113$:
	mov	_SP,_savedSP2
00117$:
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:324: EA=1;//enable interrupt
;	assignBit
	setb	_EA
;	preemptive.c:328: __endasm;
	RETI
;	preemptive.c:329: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
