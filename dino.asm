;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW64)
;--------------------------------------------------------
	.module dino
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cactus
	.globl _dinosaur
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _timer0_ISR
	.globl _main
	.globl _game_ctrl
	.globl _render_task
	.globl _keypad_ctrl
	.globl _LCD_set_symbol
	.globl _delay
	.globl _LCD_ready
	.globl _LCD_write_char
	.globl _LCD_IRWrite
	.globl _LCD_Init
	.globl _KeyToChar
	.globl _Init_Keypad
	.globl _ThreadYield
	.globl _ThreadCreate
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
	.globl _col_temp
	.globl _row_temp
	.globl _LCD_set_symbol_PARM_2
	.globl _myRand
	.globl _mutex
	.globl _digit
	.globl _prev
	.globl _k
	.globl _game_map
	.globl _game_over
	.globl _difficulty
	.globl _score
	.globl _dino_row
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
_dino_row	=	0x0079
_score	=	0x007a
_difficulty	=	0x007b
_game_over	=	0x007c
_game_map	=	0x0020
_k	=	0x007d
_prev	=	0x007e
_digit	=	0x007f
_mutex::
	.ds 1
_myRand::
	.ds 1
_LCD_set_symbol_PARM_2:
	.ds 3
_row_temp::
	.ds 1
_col_temp::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_set_symbol'
;------------------------------------------------------------
;symb                      Allocated with name '_LCD_set_symbol_PARM_2'
;code                      Allocated to registers r7 
;------------------------------------------------------------
;	dino.c:36: void LCD_set_symbol(char code, const char symb[])
;	-----------------------------------------
;	 function LCD_set_symbol
;	-----------------------------------------
_LCD_set_symbol:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7, dpl
;	dino.c:40: LCD_setCgRamAddress(code);
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	lcall	_LCD_IRWrite
;	dino.c:42: LCD_write_char(symb[0]);
	mov	r5,_LCD_set_symbol_PARM_2
	mov	r6,(_LCD_set_symbol_PARM_2 + 1)
	mov	r7,(_LCD_set_symbol_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:43: LCD_write_char(symb[1]);
	mov	a,#0x01
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:44: LCD_write_char(symb[2]);
	mov	a,#0x02
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:45: LCD_write_char(symb[3]);
	mov	a,#0x03
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:46: LCD_write_char(symb[4]);
	mov	a,#0x04
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:47: LCD_write_char(symb[5]);
	mov	a,#0x05
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:48: LCD_write_char(symb[6]);
	mov	a,#0x06
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_write_char
	pop	ar5
	pop	ar6
	pop	ar7
;	dino.c:49: LCD_write_char(symb[7]);
	mov	a,#0x07
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
;	dino.c:51: }
	ljmp	_LCD_write_char
;------------------------------------------------------------
;Allocation info for local variables in function 'keypad_ctrl'
;------------------------------------------------------------
;	dino.c:54: void keypad_ctrl(void)
;	-----------------------------------------
;	 function keypad_ctrl
;	-----------------------------------------
_keypad_ctrl:
;	dino.c:56: prev = '\0';  // The first character is null
	mov	_prev,#0x00
;	dino.c:57: digit = '\0'; // To get the digit for setting difficulty
	mov	_digit,#0x00
;	dino.c:58: while (1)
00120$:
;	dino.c:60: k = KeyToChar(); // Read the keyPad
	lcall	_KeyToChar
	mov	_k,dpl
;	dino.c:61: if (prev != '\0' && k == '\0')
	mov	a,_prev
	jz	00117$
	mov	a,_k
	jnz	00117$
;	dino.c:63: if (difficulty == 255)
	mov	a,#0xff
	cjne	a,_difficulty,00114$
;	dino.c:66: if (prev >= '0' && prev <= '9')
	mov	a,#0x100 - 0x30
	add	a,_prev
	jnc	00105$
	mov	a,_prev
	add	a,#0xff - 0x39
	jc	00105$
;	dino.c:68: digit = prev; // To track the digit
	mov	_digit,_prev
	sjmp	00117$
00105$:
;	dino.c:70: else if (prev == '#' && digit != '\0')
	mov	a,#0x23
	cjne	a,_prev,00117$
	mov	a,_digit
	jz	00117$
;	dino.c:72: difficulty = digit - '0'; // Save digit as difficulty
	mov	a,_digit
	add	a,#0xd0
	mov	_difficulty,a
	sjmp	00117$
00114$:
;	dino.c:77: if (prev == '2')
	mov	a,#0x32
	cjne	a,_prev,00111$
;	dino.c:79: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:80: dino_row = 0; // Move dino up
	mov	_dino_row,#0x00
;	dino.c:81: EA = 1;
;	assignBit
	setb	_EA
	sjmp	00117$
00111$:
;	dino.c:83: else if (prev == '8')
	mov	a,#0x38
	cjne	a,_prev,00117$
;	dino.c:85: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:86: dino_row = 1; // Move dino down
	mov	_dino_row,#0x01
;	dino.c:87: EA = 1;
;	assignBit
	setb	_EA
00117$:
;	dino.c:91: prev = k;
	mov	_prev,_k
;	dino.c:92: ThreadYield();
	lcall	_ThreadYield
;	dino.c:94: }
	sjmp	00120$
;------------------------------------------------------------
;Allocation info for local variables in function 'render_task'
;------------------------------------------------------------
;q                         Allocated to registers r7 
;q                         Allocated to registers r7 
;q                         Allocated to registers r7 
;------------------------------------------------------------
;	dino.c:103: void render_task(void)
;	-----------------------------------------
;	 function render_task
;	-----------------------------------------
_render_task:
;	dino.c:105: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:107: LCD_clearScreen(); // Clear the screen
	mov	dpl, #0x01
	lcall	_LCD_IRWrite
;	dino.c:108: while (!LCD_ready())
00101$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00101$
;	dino.c:110: for (unsigned char q = 0; q < 40; q++)
	mov	r7,#0x00
00168$:
	cjne	r7,#0x28,00444$
00444$:
	jnc	00104$
;	dino.c:111: delay(10);
	mov	dpl, #0x0a
	push	ar7
	lcall	_delay
	pop	ar7
;	dino.c:110: for (unsigned char q = 0; q < 40; q++)
	inc	r7
	sjmp	00168$
00104$:
;	dino.c:113: EA = 1;
;	assignBit
	setb	_EA
;	dino.c:117: while (difficulty == 255)
00105$:
	mov	a,#0xff
	cjne	a,_difficulty,00107$
;	dino.c:119: ThreadYield();
	lcall	_ThreadYield
	sjmp	00105$
00107$:
;	dino.c:123: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:124: if (game_over)
	mov	a,_game_over
	jnz	00448$
	ljmp	00162$
00448$:
;	dino.c:127: while (!LCD_ready());
00108$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00108$
;	dino.c:130: LCD_clearScreen(); // Clear the screen
	mov	dpl, #0x01
	lcall	_LCD_IRWrite
;	dino.c:131: while (!LCD_ready())
00111$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00111$
;	dino.c:133: for (unsigned char q = 0; q < 40; q++)
	mov	r7,#0x00
00171$:
	cjne	r7,#0x28,00451$
00451$:
	jnc	00115$
;	dino.c:134: delay(10);
	mov	dpl, #0x0a
	push	ar7
	lcall	_delay
	pop	ar7
;	dino.c:133: for (unsigned char q = 0; q < 40; q++)
	inc	r7
;	dino.c:136: while (!LCD_ready());
	sjmp	00171$
00115$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00115$
;	dino.c:138: LCD_cursorGoTo(0, 0); // Move cursor to the (0,0) aka upper left corner
	mov	dpl, #0x80
	lcall	_LCD_IRWrite
;	dino.c:140: while (!LCD_ready());
00118$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00118$
;	dino.c:143: LCD_write_char('G');
	mov	dpl, #0x47
	lcall	_LCD_write_char
;	dino.c:144: LCD_write_char('a');
	mov	dpl, #0x61
	lcall	_LCD_write_char
;	dino.c:145: LCD_write_char('m');
	mov	dpl, #0x6d
	lcall	_LCD_write_char
;	dino.c:146: LCD_write_char('e');
	mov	dpl, #0x65
	lcall	_LCD_write_char
;	dino.c:147: LCD_write_char(' ');
	mov	dpl, #0x20
	lcall	_LCD_write_char
;	dino.c:148: LCD_write_char('O');
	mov	dpl, #0x4f
	lcall	_LCD_write_char
;	dino.c:149: LCD_write_char('v');
	mov	dpl, #0x76
	lcall	_LCD_write_char
;	dino.c:150: LCD_write_char('e');
	mov	dpl, #0x65
	lcall	_LCD_write_char
;	dino.c:151: LCD_write_char('r');
	mov	dpl, #0x72
	lcall	_LCD_write_char
;	dino.c:153: while (!LCD_ready());
00121$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00121$
;	dino.c:155: LCD_cursorGoTo(1, 0); // Move cursor to the second line and lower left corner
	mov	dpl, #0xc0
	lcall	_LCD_IRWrite
;	dino.c:156: while (!LCD_ready());
00124$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00124$
;	dino.c:157: LCD_write_char('S');
	mov	dpl, #0x53
	lcall	_LCD_write_char
;	dino.c:158: LCD_write_char('c');
	mov	dpl, #0x63
	lcall	_LCD_write_char
;	dino.c:159: LCD_write_char('o');
	mov	dpl, #0x6f
	lcall	_LCD_write_char
;	dino.c:160: LCD_write_char('r');
	mov	dpl, #0x72
	lcall	_LCD_write_char
;	dino.c:161: LCD_write_char('e');
	mov	dpl, #0x65
	lcall	_LCD_write_char
;	dino.c:162: LCD_write_char(':');
	mov	dpl, #0x3a
	lcall	_LCD_write_char
;	dino.c:163: LCD_write_char(' ');
	mov	dpl, #0x20
	lcall	_LCD_write_char
;	dino.c:164: while (!LCD_ready());
00127$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00127$
;	dino.c:165: LCD_write_char((score / 10) + '0'); // Ten's digit
	mov	r6,_score
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__divsint
	mov	r6, dpl
	mov	a,#0x30
	add	a, r6
	mov	dpl,a
	lcall	_LCD_write_char
;	dino.c:166: while (!LCD_ready())
00130$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00130$
;	dino.c:168: LCD_write_char((score % 10) + '0'); // First digit
	mov	r6,_score
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	a,#0x30
	add	a, r6
	mov	dpl,a
	lcall	_LCD_write_char
;	dino.c:170: while (1); // Wait forever
00134$:
	sjmp	00134$
00162$:
;	dino.c:175: LCD_clearScreen();
	mov	dpl, #0x01
	lcall	_LCD_IRWrite
;	dino.c:176: while (!LCD_ready());
00136$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00136$
;	dino.c:177: for (unsigned char q = 0; q < 40; q++)
	mov	r7,#0x00
00174$:
	cjne	r7,#0x28,00460$
00460$:
	jnc	00139$
;	dino.c:178: delay(10);
	mov	dpl, #0x0a
	push	ar7
	lcall	_delay
	pop	ar7
;	dino.c:177: for (unsigned char q = 0; q < 40; q++)
	inc	r7
	sjmp	00174$
00139$:
;	dino.c:179: for (row_temp = 0; row_temp < 2; row_temp++)
	mov	_row_temp,#0x00
00178$:
;	dino.c:182: for (col_temp = 0; col_temp < 16; col_temp++)
	mov	_col_temp,#0x00
00176$:
;	dino.c:184: LCD_cursorGoTo(row_temp, col_temp);//Move to row_temp and col_temp
	mov	a,_row_temp
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	a,_col_temp
	add	a, r7
	orl	a,#0x80
	mov	dpl,a
	lcall	_LCD_IRWrite
;	dino.c:185: while (!LCD_ready());
00140$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00140$
;	dino.c:187: if (row_temp == dino_row && col_temp == 0)
	mov	a,_dino_row
	cjne	a,_row_temp,00156$
	mov	a,_col_temp
	jnz	00156$
;	dino.c:190: LCD_write_char('\1'); // Write the dinosaur bitmap
	mov	dpl, #0x01
	lcall	_LCD_write_char
;	dino.c:191: while (!LCD_ready());
00143$:
	lcall	_LCD_ready
	mov	a, dpl
	jnz	00177$
	sjmp	00143$
00156$:
;	dino.c:195: else if (game_map[row_temp][col_temp])
	mov	a,_row_temp
	swap	a
	anl	a,#0xf0
	add	a,#_game_map
	add	a,_col_temp
	mov	r1,a
	mov	a,@r1
	jz	00153$
;	dino.c:197: LCD_write_char('\2');
	mov	dpl, #0x02
	lcall	_LCD_write_char
;	dino.c:198: while (!LCD_ready());
00146$:
	lcall	_LCD_ready
	mov	a, dpl
	jnz	00177$
	sjmp	00146$
00153$:
;	dino.c:203: LCD_write_char(' '); // Write space
	mov	dpl, #0x20
	lcall	_LCD_write_char
;	dino.c:205: while (!LCD_ready());
00149$:
	lcall	_LCD_ready
	mov	a, dpl
	jz	00149$
00177$:
;	dino.c:182: for (col_temp = 0; col_temp < 16; col_temp++)
	inc	_col_temp
	mov	a,#0x100 - 0x10
	add	a,_col_temp
	jnc	00176$
;	dino.c:179: for (row_temp = 0; row_temp < 2; row_temp++)
	inc	_row_temp
	mov	a,#0x100 - 0x02
	add	a,_row_temp
	jnc	00178$
;	dino.c:211: EA = 1;
;	assignBit
	setb	_EA
;	dino.c:212: ThreadYield();
	lcall	_ThreadYield
;	dino.c:214: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'game_ctrl'
;------------------------------------------------------------
;q                         Allocated to registers r7 
;------------------------------------------------------------
;	dino.c:217: void game_ctrl(void)
;	-----------------------------------------
;	 function game_ctrl
;	-----------------------------------------
_game_ctrl:
;	dino.c:219: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:220: myRand = 137; // My own rand
	mov	_myRand,#0x89
;	dino.c:222: dino_row = 0;
	mov	_dino_row,#0x00
;	dino.c:223: score = 0;
	mov	_score,#0x00
;	dino.c:224: difficulty = 255;//Initial difficulty is 255
	mov	_difficulty,#0xff
;	dino.c:225: game_over = 0;
	mov	_game_over,#0x00
;	dino.c:227: for (row_temp = 0; row_temp < 2; row_temp++)
	mov	_row_temp,#0x00
00128$:
;	dino.c:229: for (col_temp = 0; col_temp < 16; col_temp++)
	mov	_col_temp,#0x00
00126$:
;	dino.c:231: game_map[row_temp][col_temp] = 0; // Initialize the game map
	mov	a,_row_temp
	swap	a
	anl	a,#0xf0
	add	a,#_game_map
	mov	r7,a
	add	a,_col_temp
	mov	r0,a
	mov	@r0,#0x00
;	dino.c:229: for (col_temp = 0; col_temp < 16; col_temp++)
	inc	_col_temp
	mov	a,#0x100 - 0x10
	add	a,_col_temp
	jnc	00126$
;	dino.c:227: for (row_temp = 0; row_temp < 2; row_temp++)
	inc	_row_temp
	mov	a,#0x100 - 0x02
	add	a,_row_temp
	jnc	00128$
;	dino.c:235: EA = 1;
;	assignBit
	setb	_EA
;	dino.c:236: while (difficulty == 255)
00103$:
	mov	a,#0xff
	cjne	a,_difficulty,00123$
;	dino.c:238: ThreadYield();
	lcall	_ThreadYield
;	dino.c:242: while (!game_over)
	sjmp	00103$
00123$:
	mov	a,_game_over
	jz	00264$
	ljmp	00137$
00264$:
;	dino.c:244: SemaphoreWait(mutex);
0$:
	MOV A, _mutex 
	JZ 0$ 
	JB ACC.7,0$ 
	DEC _mutex 
;	dino.c:245: EA = 0;
;	assignBit
	clr	_EA
;	dino.c:247: for (row_temp = 0; row_temp < 2; row_temp++)
	mov	_row_temp,#0x00
00132$:
;	dino.c:249: for (col_temp = 0; col_temp < 15; col_temp++)
	mov	_col_temp,#0x00
00130$:
;	dino.c:251: game_map[row_temp][col_temp] = game_map[row_temp][col_temp + 1]; // Move the cacti to left one column
	mov	a,_row_temp
	swap	a
	anl	a,#0xf0
	mov	r7,a
	add	a, #_game_map
	add	a,_col_temp
	mov	r1,a
	mov	a,r7
	add	a, #_game_map
	mov	r7,a
	mov	a,_col_temp
	inc	a
	add	a, r7
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
;	dino.c:249: for (col_temp = 0; col_temp < 15; col_temp++)
	inc	_col_temp
	mov	a,#0x100 - 0x0f
	add	a,_col_temp
	jnc	00130$
;	dino.c:254: game_map[row_temp][15] = 0; // Set the last column to 0
	mov	a,_row_temp
	swap	a
	anl	a,#0xf0
	add	a,#_game_map
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x00
;	dino.c:247: for (row_temp = 0; row_temp < 2; row_temp++)
	inc	_row_temp
	mov	a,#0x100 - 0x02
	add	a,_row_temp
	jnc	00132$
;	dino.c:261: myRand = myRand * 17 + 23;
	mov	a,_myRand
	mov	b,#0x11
	mul	ab
	add	a, #0x17
	mov	_myRand,a
;	dino.c:264: if (myRand % 3 == 0)
	mov	r6,_myRand
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	orl	a,r7
	jnz	00115$
;	dino.c:268: if (game_map[1][14]==0)
	mov	a,(_game_map + 0x001e)
	jnz	00116$
;	dino.c:271: game_map[0][15] = 1; // Generate cactus at row 0 col 15
	mov	(_game_map + 0x000f),#0x01
	sjmp	00116$
00115$:
;	dino.c:277: else if (myRand % 3 == 1)
	cjne	r6,#0x01,00116$
	cjne	r7,#0x00,00116$
;	dino.c:280: if (game_map[0][14]==0)
	mov	a,(_game_map + 0x000e)
	jnz	00116$
;	dino.c:283: game_map[1][15] = 1; // Generate cactus at row 1 col 15
	mov	(_game_map + 0x001f),#0x01
00116$:
;	dino.c:288: if (game_map[dino_row][0])
	mov	a,_dino_row
	swap	a
	anl	a,#0xf0
	add	a, #_game_map
	mov	r1,a
	mov	a,@r1
	jz	00120$
;	dino.c:290: game_over = (char)1; // If the dino is at the same position as the cactus, game over
	mov	_game_over,#0x01
;	dino.c:292: return; // Game finish
	ret
00120$:
;	dino.c:294: else if (game_map[1 - dino_row][0])
	mov	r7,_dino_row
	mov	a,#0x01
	clr	c
	subb	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	add	a, #_game_map
	mov	r1,a
	mov	a,@r1
	jz	00121$
;	dino.c:296: score++; // If the dino is not at the same position as the cactus, we get a score
	mov	a,_score
	inc	a
	mov	_score,a
00121$:
;	dino.c:299: EA = 1;
;	assignBit
	setb	_EA
;	dino.c:300: SemaphoreSignal(mutex);
	INC _mutex 
;	dino.c:301: for ( char q = 0; q < (char)10*difficulty; q++)
	mov	r7,#0x00
00135$:
	mov	a,_difficulty
	mov	b,#0x0a
	mul	ab
	mov	r5,a
	mov	r6,b
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	dino.c:302: delay(10);
	mov	dpl, #0x0a
	push	ar7
	lcall	_delay
	pop	ar7
;	dino.c:301: for ( char q = 0; q < (char)10*difficulty; q++)
	inc	r7
	sjmp	00135$
00122$:
;	dino.c:303: ThreadYield();
	lcall	_ThreadYield
	ljmp	00123$
00137$:
;	dino.c:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	dino.c:407: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	dino.c:410: EA = 0;     // Critical start
;	assignBit
	clr	_EA
;	dino.c:411: LCD_Init(); // Initialize LCD
	lcall	_LCD_Init
;	dino.c:412: LCD_entryModeSet(1, 0);
	mov	dpl, #0x06
	lcall	_LCD_IRWrite
;	dino.c:413: Init_Keypad();                   // Initialize keypad
	lcall	_Init_Keypad
;	dino.c:414: LCD_set_symbol('\10', dinosaur); // bitmap for dinosaur
	mov	_LCD_set_symbol_PARM_2,#_dinosaur
	mov	(_LCD_set_symbol_PARM_2 + 1),#(_dinosaur >> 8)
	mov	(_LCD_set_symbol_PARM_2 + 2),#0x80
	mov	dpl, #0x08
	lcall	_LCD_set_symbol
;	dino.c:415: LCD_set_symbol('\20', cactus);   // bitmap for cactus
	mov	_LCD_set_symbol_PARM_2,#_cactus
	mov	(_LCD_set_symbol_PARM_2 + 1),#(_cactus >> 8)
	mov	(_LCD_set_symbol_PARM_2 + 2),#0x80
	mov	dpl, #0x10
	lcall	_LCD_set_symbol
;	dino.c:416: SemaphoreCreate(mutex, 1);       // one mutex
	mov	_mutex,#0x01
;	dino.c:417: ThreadCreate(keypad_ctrl);       // Create keypad thread
	mov	dptr,#_keypad_ctrl
	lcall	_ThreadCreate
;	dino.c:418: ThreadCreate(render_task);       // Create render task thread
	mov	dptr,#_render_task
	lcall	_ThreadCreate
;	dino.c:420: EA = 1;      // Critical end
;	assignBit
	setb	_EA
;	dino.c:421: game_ctrl(); // Let main be game control
	lcall	_game_ctrl
;	dino.c:422: while (1)
00102$:
;	dino.c:424: ThreadYield();
	lcall	_ThreadYield
;	dino.c:426: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	dino.c:428: void timer0_ISR(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	dino.c:432: __endasm;
	ljmp	_myTimer0Handler
;	dino.c:433: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	dino.c:435: void _sdcc_gsinit_startup(void)
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	dino.c:439: __endasm;
	LJMP	_Bootstrap
;	dino.c:440: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	dino.c:441: void _mcs51_genRAMCLEAR(void)
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
;	dino.c:443: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	dino.c:444: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	dino.c:445: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_dinosaur:
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x0e	; 14
	.db #0x0a	; 10
_cactus:
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
