opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 14 "C:\Users\ARUNKUMAR\Desktop\PRO\PRO.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\ARUNKUMAR\Desktop\PRO\PRO.c"
	dw 0x1932 ;#
	FNCALL	_main,_setup_lcd_port
	FNCALL	_main,_adc_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_goto_pos
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_clrscr
	FNCALL	_main,_adc_channel
	FNCALL	_main,_adc_res_10_bit
	FNCALL	_main,_lcd_putn
	FNCALL	_lcd_putn,___lwdiv
	FNCALL	_lcd_putn,___lwmod
	FNCALL	_lcd_putn,_lcd_puts
	FNCALL	_lcd_clrscr,_lcd_write
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_goto_pos,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_adc_init,_DelayMs
	FNCALL	_lcd_write,_DelayMs
	FNROOT	_main
	global	_ADCON0
psect	text298,local,class=CODE,delta=2
global __ptext298
__ptext298:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_ADGO
_ADGO	set	250
	global	_RB0
_RB0	set	48
	global	_RB4
_RB4	set	52
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC4
_RC4	set	60
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_7:	
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_8:	
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	50	;'2'
	retlw	86	;'V'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_4:	
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_3:	
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_6:	
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_5:	
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"PRO.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_goto_pos
?_lcd_goto_pos:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clrscr
?_lcd_clrscr:	; 0 bytes @ 0x0
	global	?_setup_lcd_port
?_setup_lcd_port:	; 0 bytes @ 0x0
	global	??_setup_lcd_port
??_setup_lcd_port:	; 0 bytes @ 0x0
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	?_adc_channel
?_adc_channel:	; 0 bytes @ 0x0
	global	??_adc_channel
??_adc_channel:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_adc_res_10_bit
?_adc_res_10_bit:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	adc_channel@ch
adc_channel@ch:	; 1 bytes @ 0x1
	ds	1
	global	??_adc_res_10_bit
??_adc_res_10_bit:	; 0 bytes @ 0x2
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	adc_channel@_dcnt
adc_channel@_dcnt:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x4
	global	??_adc_init
??_adc_init:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	lcd_write@reg
lcd_write@reg:	; 1 bytes @ 0x4
	global	adc_res_10_bit@_dcnt
adc_res_10_bit@_dcnt:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x6
	ds	1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	lcd_write@_dcnt_331
lcd_write@_dcnt_331:	; 1 bytes @ 0x8
	ds	1
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x9
	global	??_lcd_goto_pos
??_lcd_goto_pos:	; 0 bytes @ 0x9
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x9
	global	??_lcd_clrscr
??_lcd_clrscr:	; 0 bytes @ 0x9
	global	lcd_goto_pos@cnt
lcd_goto_pos@cnt:	; 1 bytes @ 0x9
	global	lcd_puts@p
lcd_puts@p:	; 2 bytes @ 0x9
	ds	2
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0xB
	global	?_lcd_putn
?_lcd_putn:	; 0 bytes @ 0xB
	global	lcd_putn@n
lcd_putn@n:	; 2 bytes @ 0xB
	ds	2
	global	??_lcd_putn
??_lcd_putn:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	lcd_putn@array
lcd_putn@array:	; 6 bytes @ 0x0
	ds	6
	global	lcd_putn@no
lcd_putn@no:	; 2 bytes @ 0x6
	ds	2
	global	lcd_putn@dig
lcd_putn@dig:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
	global	main@s1
main@s1:	; 1 bytes @ 0xB
	ds	1
;;Data sizes: Strings 75, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     12      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_adc_res_10_bit	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_puts@p	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_8(CODE[14]), STR_7(CODE[15]), STR_6(CODE[4]), STR_5(CODE[4]), 
;;		 -> STR_4(CODE[7]), STR_3(CODE[5]), STR_2(CODE[17]), STR_1(CODE[9]), 
;;		 -> lcd_putn@array(BANK0[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_putn
;;   _lcd_putn->_lcd_puts
;;   _lcd_clrscr->_lcd_write
;;   _lcd_init->_lcd_write
;;   _lcd_goto_pos->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _adc_init->_DelayMs
;;   _lcd_write->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_lcd_putn
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    1769
;;                                              9 BANK0      3     3      0
;;                     _setup_lcd_port
;;                           _adc_init
;;                           _lcd_init
;;                       _lcd_goto_pos
;;                           _lcd_puts
;;                            _DelayMs
;;                         _lcd_clrscr
;;                        _adc_channel
;;                     _adc_res_10_bit
;;                           _lcd_putn
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putn                                            12    10      2     755
;;                                             11 COMMON     3     1      2
;;                                              0 BANK0      9     9      0
;;                            ___lwdiv
;;                            ___lwmod
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clrscr                                           0     0      0     158
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0     158
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto_pos                                         1     1      0     224
;;                                              9 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) _lcd_puts                                             2     0      2     203
;;                                              9 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _adc_init                                             0     0      0      68
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (3) _lcd_write                                            5     4      1     158
;;                                              4 COMMON     5     4      1
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _adc_res_10_bit                                       5     3      2      23
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _adc_channel                                          3     3      0      45
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (4) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _setup_lcd_port                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _setup_lcd_port
;;   _adc_init
;;     _DelayMs
;;   _lcd_init
;;     _lcd_write
;;       _DelayMs
;;   _lcd_goto_pos
;;     _lcd_write
;;       _DelayMs
;;   _lcd_puts
;;     _lcd_write
;;       _DelayMs
;;   _DelayMs
;;   _lcd_clrscr
;;     _lcd_write
;;       _DelayMs
;;   _adc_channel
;;   _adc_res_10_bit
;;   _lcd_putn
;;     ___lwdiv
;;     ___lwmod
;;     _lcd_puts
;;       _lcd_write
;;         _DelayMs
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      C       C       5       15.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\ARUNKUMAR\Desktop\PRO\PRO.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s1              1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setup_lcd_port
;;		_adc_init
;;		_lcd_init
;;		_lcd_goto_pos
;;		_lcd_puts
;;		_DelayMs
;;		_lcd_clrscr
;;		_adc_channel
;;		_adc_res_10_bit
;;		_lcd_putn
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\PRO.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	21
	
l2256:	
;PRO.c: 18: unsigned char s1;
;PRO.c: 21: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
;PRO.c: 22: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	25
	
l2258:	
;PRO.c: 25: TRISB=0xf0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	26
	
l2260:	
;PRO.c: 26: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	29
	
l2262:	
;PRO.c: 29: setup_lcd_port();
	fcall	_setup_lcd_port
	line	30
	
l2264:	
;PRO.c: 30: adc_init();
	fcall	_adc_init
	line	31
	
l2266:	
;PRO.c: 31: lcd_init();
	fcall	_lcd_init
	line	33
	
l2268:	
;PRO.c: 33: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	34
	
l2270:	
;PRO.c: 34: lcd_puts("V2V COMM");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	35
	
l2272:	
;PRO.c: 35: lcd_goto_pos(17);
	movlw	(011h)
	fcall	_lcd_goto_pos
	line	36
	
l2274:	
;PRO.c: 36: lcd_puts("ANTIRAD HEADLAMP");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	37
	
l2276:	
;PRO.c: 37: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	38
	
l2278:	
;PRO.c: 38: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	39
	
l2280:	
;PRO.c: 39: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	40
	
l2282:	
;PRO.c: 40: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	43
	
l2284:	
;PRO.c: 43: lcd_clrscr();
	fcall	_lcd_clrscr
	line	44
	
l2286:	
;PRO.c: 44: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	45
	
l2288:	
;PRO.c: 45: lcd_puts("EYE:");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	46
	
l2290:	
;PRO.c: 46: lcd_goto_pos(8);
	movlw	(08h)
	fcall	_lcd_goto_pos
	line	47
	
l2292:	
;PRO.c: 47: lcd_puts("LIGHT:");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	49
;PRO.c: 49: while(1)
	
l663:	
	line	51
	
l2294:	
;PRO.c: 50: {
;PRO.c: 51: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	52
	
l2296:	
;PRO.c: 52: RC1=0;
	bcf	(57/8),(57)&7
	line	53
	
l2298:	
;PRO.c: 53: adc_channel(0);
	movlw	(0)
	fcall	_adc_channel
	line	54
	
l2300:	
;PRO.c: 54: s1=adc_res_10_bit();
	fcall	_adc_res_10_bit
	movf	(0+(?_adc_res_10_bit)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@s1)
	line	55
	
l2302:	
;PRO.c: 55: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	56
	
l2304:	
;PRO.c: 56: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	57
	
l2306:	
;PRO.c: 57: lcd_goto_pos(5);
	movlw	(05h)
	fcall	_lcd_goto_pos
	line	58
	
l2308:	
;PRO.c: 58: lcd_putn(s1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@s1),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_putn)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_putn+1)
	fcall	_lcd_putn
	line	59
	
l2310:	
;PRO.c: 59: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	60
	
l2312:	
;PRO.c: 60: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	62
	
l2314:	
;PRO.c: 62: if(RC4==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l664
u2750:
	line	64
	
l2316:	
;PRO.c: 63: {
;PRO.c: 64: lcd_goto_pos(15);
	movlw	(0Fh)
	fcall	_lcd_goto_pos
	line	65
	
l2318:	
;PRO.c: 65: lcd_puts("DET");
	movlw	low((STR_5-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	66
	
l2320:	
;PRO.c: 66: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	67
	
l2322:	
;PRO.c: 67: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	68
;PRO.c: 68: }
	goto	l665
	line	69
	
l664:	
	line	71
	
l2324:	
;PRO.c: 69: else
;PRO.c: 70: {
;PRO.c: 71: lcd_goto_pos(15);
	movlw	(0Fh)
	fcall	_lcd_goto_pos
	line	72
	
l2326:	
;PRO.c: 72: lcd_puts("NDE");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	73
	
l2328:	
;PRO.c: 73: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	74
	
l2330:	
;PRO.c: 74: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	75
	
l665:	
	line	77
	
l2332:	
;PRO.c: 75: }
;PRO.c: 77: if(RC4==0 && s1>150)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l666
u2760:
	
l2334:	
	movlw	(097h)
	subwf	(main@s1),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l666
u2770:
	line	79
	
l2336:	
;PRO.c: 78: {
;PRO.c: 79: RB0=1;
	bsf	(48/8),(48)&7
	line	80
	
l666:	
	line	81
;PRO.c: 80: }
;PRO.c: 81: if(RC4==0 || s1>150)
	btfss	(60/8),(60)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l669
u2780:
	
l2338:	
	movlw	(097h)
	subwf	(main@s1),w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l667
u2790:
	
l669:	
	line	83
;PRO.c: 82: {
;PRO.c: 83: RB0=1;
	bsf	(48/8),(48)&7
	line	84
	
l667:	
	line	85
;PRO.c: 84: }
;PRO.c: 85: if(RB4==0)
	btfsc	(52/8),(52)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l670
u2800:
	line	87
	
l2340:	
;PRO.c: 86: {
;PRO.c: 87: RC0=0;
	bcf	(56/8),(56)&7
	line	88
;PRO.c: 88: RC1=1;
	bsf	(57/8),(57)&7
	line	89
	
l2342:	
;PRO.c: 89: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	90
;PRO.c: 90: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	91
;PRO.c: 91: lcd_clrscr();
	fcall	_lcd_clrscr
	line	92
;PRO.c: 92: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	93
	
l2344:	
;PRO.c: 93: lcd_puts("YOUR LIGHT HAS");
	movlw	low((STR_7-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	94
	
l2346:	
;PRO.c: 94: lcd_goto_pos(17);
	movlw	(011h)
	fcall	_lcd_goto_pos
	line	95
;PRO.c: 95: lcd_puts("BEEN MADE DIM");
	movlw	low((STR_8-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	96
	
l670:	
	line	97
	
l671:	
	line	49
	goto	l663
	
l672:	
	line	98
	
l673:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_putn
psect	text299,local,class=CODE,delta=2
global __ptext299
__ptext299:

;; *************** function _lcd_putn *****************
;; Defined at:
;;		line 69 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  n               2   11[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  array           6    0[BANK0 ] unsigned char [6]
;;  no              2    6[BANK0 ] unsigned int 
;;  dig             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       9       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text299
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	69
	global	__size_of_lcd_putn
	__size_of_lcd_putn	equ	__end_of_lcd_putn-_lcd_putn
	
_lcd_putn:	
	opt	stack 7
; Regs used in _lcd_putn: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	71
	
l2238:	
;lcd_driver.c: 70: unsigned int no;
;lcd_driver.c: 71: unsigned char dig=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_putn@dig)
	bsf	status,0
	rlf	(lcd_putn@dig),f
	line	73
	
l2240:	
;lcd_driver.c: 72: char array[6];
;lcd_driver.c: 73: if(n)
	movf	(lcd_putn@n+1),w
	iorwf	(lcd_putn@n),w
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l585
u2720:
	line	74
	
l2242:	
;lcd_driver.c: 74: for(no=n; no/=10; dig++);
	movf	(lcd_putn@n+1),w
	clrf	(lcd_putn@no+1)
	addwf	(lcd_putn@no+1)
	movf	(lcd_putn@n),w
	clrf	(lcd_putn@no)
	addwf	(lcd_putn@no)

	goto	l586
	
l587:	
	
l2244:	
	movlw	(01h)
	movwf	(??_lcd_putn+0)+0
	movf	(??_lcd_putn+0)+0,w
	addwf	(lcd_putn@dig),f
	
l586:	
	
l2246:	
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(lcd_putn@no+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(lcd_putn@no),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_putn@no+1)
	addwf	(lcd_putn@no+1)
	movf	(0+(?___lwdiv)),w
	clrf	(lcd_putn@no)
	addwf	(lcd_putn@no)

	movf	(((lcd_putn@no+1))),w
	iorwf	(((lcd_putn@no))),w
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l587
u2730:
	
l588:	
	
l585:	
	line	75
	
l2248:	
;lcd_driver.c: 75: array[dig] = '\0';
	clrc
	movf	(lcd_putn@dig),w
	addlw	lcd_putn@array&0ffh
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	76
;lcd_driver.c: 76: do{
	
l589:	
	line	77
	
l2250:	
;lcd_driver.c: 77: array[--dig] = (n%10) + 48;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(lcd_putn@n+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(lcd_putn@n),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_lcd_putn+0)+0
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(lcd_putn@dig),f
	movf	((lcd_putn@dig)),w
	addlw	lcd_putn@array&0ffh
	movwf	fsr0
	movf	(??_lcd_putn+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	78
	
l2252:	
;lcd_driver.c: 78: }while(n/=10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(lcd_putn@n+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(lcd_putn@n),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	(lcd_putn@n+1)
	addwf	(lcd_putn@n+1)
	movf	(0+(?___lwdiv)),w
	clrf	(lcd_putn@n)
	addwf	(lcd_putn@n)

	movf	(((lcd_putn@n+1))),w
	iorwf	(((lcd_putn@n))),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l589
u2740:
	
l590:	
	line	80
	
l2254:	
;lcd_driver.c: 80: lcd_puts(array);
	movlw	(lcd_putn@array&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	81
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putn
	__end_of_lcd_putn:
;; =============== function _lcd_putn ends ============

	signat	_lcd_putn,4216
	global	_lcd_clrscr
psect	text300,local,class=CODE,delta=2
global __ptext300
__ptext300:

;; *************** function _lcd_clrscr *****************
;; Defined at:
;;		line 124 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text300
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	124
	global	__size_of_lcd_clrscr
	__size_of_lcd_clrscr	equ	__end_of_lcd_clrscr-_lcd_clrscr
	
_lcd_clrscr:	
	opt	stack 7
; Regs used in _lcd_clrscr: [wreg+status,2+status,0+pclath+cstack]
	line	125
	
l2236:	
;lcd_driver.c: 125: lcd_write(0x01,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(01h)
	fcall	_lcd_write
	line	126
;lcd_driver.c: 126: lcd_write(0x80,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(080h)
	fcall	_lcd_write
	line	127
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clrscr
	__end_of_lcd_clrscr:
;; =============== function _lcd_clrscr ends ============

	signat	_lcd_clrscr,88
	global	_lcd_init
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 109 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text301
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	109
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2234:	
;lcd_driver.c: 110: lcd_write(0x38,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(038h)
	fcall	_lcd_write
	line	111
;lcd_driver.c: 111: lcd_write(0x0C,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(0Ch)
	fcall	_lcd_write
	line	112
;lcd_driver.c: 112: lcd_write(0x01,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(01h)
	fcall	_lcd_write
	line	113
;lcd_driver.c: 113: lcd_write(0x80,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movlw	(080h)
	fcall	_lcd_write
	line	114
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_goto_pos
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

;; *************** function _lcd_goto_pos *****************
;; Defined at:
;;		line 96 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text302
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	96
	global	__size_of_lcd_goto_pos
	__size_of_lcd_goto_pos	equ	__end_of_lcd_goto_pos-_lcd_goto_pos
	
_lcd_goto_pos:	
	opt	stack 7
; Regs used in _lcd_goto_pos: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto_pos@cnt stored from wreg
	movwf	(lcd_goto_pos@cnt)
	line	97
	
l2228:	
;lcd_driver.c: 97: if(cnt>16)
	movlw	(011h)
	subwf	(lcd_goto_pos@cnt),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l603
u2710:
	line	98
	
l2230:	
;lcd_driver.c: 98: lcd_write((0xC0+(cnt-17)),0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movf	(lcd_goto_pos@cnt),w
	addlw	0AFh
	fcall	_lcd_write
	goto	l604
	line	99
	
l603:	
	line	100
	
l2232:	
;lcd_driver.c: 99: else
;lcd_driver.c: 100: lcd_write((0x80+(cnt-1)),0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movf	(lcd_goto_pos@cnt),w
	addlw	07Fh
	fcall	_lcd_write
	
l604:	
	line	101
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto_pos
	__end_of_lcd_goto_pos:
;; =============== function _lcd_goto_pos ends ============

	signat	_lcd_goto_pos,4216
	global	_lcd_puts
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 53 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  p               2    9[COMMON] PTR const unsigned char 
;;		 -> STR_8(14), STR_7(15), STR_6(4), STR_5(4), 
;;		 -> STR_4(7), STR_3(5), STR_2(17), STR_1(9), 
;;		 -> lcd_putn@array(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_lcd_putn
;;		_main
;; This function uses a non-reentrant model
;;
psect	text303
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	53
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	54
	
l2220:	
;lcd_driver.c: 54: while(*p != '\0'){
	goto	l573
	
l574:	
	line	55
	
l2222:	
;lcd_driver.c: 55: lcd_write(*p,1);
	clrf	(?_lcd_write)
	bsf	status,0
	rlf	(?_lcd_write),f
	movf	(lcd_puts@p+1),w
	movwf	btemp+1
	movf	(lcd_puts@p),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	line	56
	
l2224:	
;lcd_driver.c: 56: p++;
	movlw	low(01h)
	addwf	(lcd_puts@p),f
	skipnc
	incf	(lcd_puts@p+1),f
	movlw	high(01h)
	addwf	(lcd_puts@p+1),f
	line	57
	
l573:	
	line	54
	
l2226:	
	movf	(lcd_puts@p+1),w
	movwf	btemp+1
	movf	(lcd_puts@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l574
u2700:
	
l575:	
	line	58
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_adc_init
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 24 in file "C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text304
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
	line	24
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 7
; Regs used in _adc_init: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2216:	
;adc_driver.c: 25: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	26
	
l2218:	
;adc_driver.c: 26: ADCON1 = 0x82;
	movlw	(082h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	27
	
l636:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	_lcd_write
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 117 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  reg             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMMON] unsigned char 
;;  _dcnt           1    8[COMMON] unsigned char 
;;  _dcnt           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_lcd_puts
;;		_lcd_goto_pos
;;		_lcd_init
;;		_lcd_clrscr
;;		_lcd_put_array
;;		_lcd_goto
;;		_lcd_putc
;;		_lcd_puta
;; This function uses a non-reentrant model
;;
psect	text305
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	117
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	118
	
l2200:	
;lcd_driver.c: 118: PORTD = c;
	movf	(lcd_write@c),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	119
	
l2202:	
;lcd_driver.c: 119: reg ? RE2=1 : RE2=0;
	movf	(lcd_write@reg),w
	skipz
	goto	u2670
	goto	l615
u2670:
	
l2204:	
	bsf	(74/8),(74)&7
	goto	l617
	
l615:	
	bcf	(74/8),(74)&7
	
l617:	
	line	120
	
l2206:	
;lcd_driver.c: 120: { unsigned char _dcnt; _dcnt = 1; while(--_dcnt != 0) { _nop(); } };RE1=1;{ unsigned char _dcnt; _dcnt = 10; while(--_dcnt != 0) { _nop(); } };RE1=0;DelayMs(2);
	clrf	(lcd_write@_dcnt)
	bsf	status,0
	rlf	(lcd_write@_dcnt),f
	goto	l618
	
l619:	
	nop
	
l618:	
	
l2208:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l619
u2680:
	
l620:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l2210:	
	movlw	(0Ah)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt_331)
	goto	l621
	
l622:	
	nop
	
l621:	
	
l2212:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt_331),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l622
u2690:
	
l623:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	
l2214:	
	movlw	(02h)
	fcall	_DelayMs
	line	121
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,8312
	global	_adc_res_10_bit
psect	text306,local,class=CODE,delta=2
global __ptext306
__ptext306:

;; *************** function _adc_res_10_bit *****************
;; Defined at:
;;		line 53 in file "C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text306
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
	line	53
	global	__size_of_adc_res_10_bit
	__size_of_adc_res_10_bit	equ	__end_of_adc_res_10_bit-_adc_res_10_bit
	
_adc_res_10_bit:	
	opt	stack 7
; Regs used in _adc_res_10_bit: [wreg+status,2-btemp+0]
	line	57
	
l2190:	
;adc_driver.c: 57: ADRESL = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(158)^080h	;volatile
	line	58
;adc_driver.c: 58: ADRESH = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(30)	;volatile
	line	59
	
l2192:	
;adc_driver.c: 59: { unsigned char _dcnt; _dcnt = 20; while(--_dcnt != 0) { _nop(); } };
	movlw	(014h)
	movwf	(??_adc_res_10_bit+0)+0
	movf	(??_adc_res_10_bit+0)+0,w
	movwf	(adc_res_10_bit@_dcnt)
	goto	l654
	
l655:	
	nop
	
l654:	
	
l2194:	
	movlw	low(01h)
	subwf	(adc_res_10_bit@_dcnt),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l655
u2640:
	
l656:	
	line	60
;adc_driver.c: 60: ADGO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	62
;adc_driver.c: 62: while(ADGO)
	goto	l657
	
l658:	
	line	63
;adc_driver.c: 63: continue;
	
l657:	
	line	62
	btfsc	(250/8),(250)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l658
u2650:
	
l659:	
	line	65
	
l2196:	
;adc_driver.c: 65: return (((unsigned int)ADRESH)<<8)|(ADRESL);
	movf	(30),w	;volatile
	movwf	(??_adc_res_10_bit+0)+0
	clrf	(??_adc_res_10_bit+0)+0+1
	movlw	08h
	movwf	btemp+0
u2665:
	clrc
	rlf	(??_adc_res_10_bit+0)+0,f
	rlf	(??_adc_res_10_bit+0)+1,f
	decfsz	btemp+0,f
	goto	u2665
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	0+(??_adc_res_10_bit+0)+0,w
	movwf	(?_adc_res_10_bit)
	movf	1+(??_adc_res_10_bit+0)+0,w
	movwf	1+(?_adc_res_10_bit)
	
l2198:	
	line	67
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_adc_res_10_bit
	__end_of_adc_res_10_bit:
;; =============== function _adc_res_10_bit ends ============

	signat	_adc_res_10_bit,90
	global	_adc_channel
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:

;; *************** function _adc_channel *****************
;; Defined at:
;;		line 32 in file "C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    1[COMMON] unsigned char 
;;  _dcnt           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text307
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\adc_driver.c"
	line	32
	global	__size_of_adc_channel
	__size_of_adc_channel	equ	__end_of_adc_channel-_adc_channel
	
_adc_channel:	
	opt	stack 7
; Regs used in _adc_channel: [wreg+status,2+status,0]
;adc_channel@ch stored from wreg
	movwf	(adc_channel@ch)
	line	33
	
l2184:	
;adc_driver.c: 33: { unsigned char _dcnt; _dcnt = 100; while(--_dcnt != 0) { _nop(); } };
	movlw	(064h)
	movwf	(??_adc_channel+0)+0
	movf	(??_adc_channel+0)+0,w
	movwf	(adc_channel@_dcnt)
	goto	l639
	
l640:	
	nop
	
l639:	
	
l2186:	
	movlw	low(01h)
	subwf	(adc_channel@_dcnt),f
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l640
u2620:
	
l641:	
	line	34
	
l2188:	
;adc_driver.c: 34: ADCON0 = 193 | (ch << 3);
	movf	(adc_channel@ch),w
	movwf	(??_adc_channel+0)+0
	movlw	(03h)-1
u2635:
	clrc
	rlf	(??_adc_channel+0)+0,f
	addlw	-1
	skipz
	goto	u2635
	clrc
	rlf	(??_adc_channel+0)+0,w
	iorlw	0C1h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	35
	
l642:	
	return
	opt stack 0
GLOBAL	__end_of_adc_channel
	__end_of_adc_channel:
;; =============== function _adc_channel ends ============

	signat	_adc_channel,4216
	global	_DelayMs
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 24 in file "C:\Users\ARUNKUMAR\Desktop\PRO\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  _dcnt           1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_write
;;		_adc_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text308
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\delay.c"
	line	24
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 4
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	26
;delay.c: 25: unsigned char i;
;delay.c: 26: do {
	
l563:	
	line	27
	
l2176:	
;delay.c: 27: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	28
;delay.c: 28: do {
	
l564:	
	line	29
;delay.c: 29: { unsigned char _dcnt; _dcnt = 250; while(--_dcnt != 0) { _nop(); } };
	movlw	(0FAh)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l565
	
l566:	
	nop
	
l565:	
	
l2178:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l566
u2590:
	
l567:	
	line	30
	
l2180:	
;delay.c: 30: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l564
u2600:
	
l568:	
	line	31
	
l2182:	
;delay.c: 31: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l563
u2610:
	
l569:	
	line	32
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	___lwmod
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putn
;; This function uses a non-reentrant model
;;
psect	text309
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2154:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l698
u2530:
	line	9
	
l2156:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l699
	
l700:	
	line	11
	
l2158:	
	movlw	01h
	
u2545:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2545
	line	12
	
l2160:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l699:	
	line	10
	
l2162:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l700
u2550:
	
l701:	
	line	14
	
l702:	
	line	15
	
l2164:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2565
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2565:
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l703
u2560:
	line	16
	
l2166:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l703:	
	line	17
	
l2168:	
	movlw	01h
	
u2575:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2575
	line	18
	
l2170:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l702
u2580:
	
l704:	
	line	19
	
l698:	
	line	20
	
l2172:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2174:	
	line	21
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putn
;; This function uses a non-reentrant model
;;
psect	text310
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2130:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l688
u2460:
	line	11
	
l2132:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l689
	
l690:	
	line	13
	
l2134:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2475
	line	14
	
l2136:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l689:	
	line	12
	
l2138:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l690
u2480:
	
l691:	
	line	16
	
l692:	
	line	17
	
l2140:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2495
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2505
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l693
u2500:
	line	19
	
l2142:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2144:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l693:	
	line	22
	
l2146:	
	movlw	01h
	
u2515:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2515
	line	23
	
l2148:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l692
u2520:
	
l694:	
	line	24
	
l688:	
	line	25
	
l2150:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2152:	
	line	26
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_setup_lcd_port
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _setup_lcd_port *****************
;; Defined at:
;;		line 135 in file "C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text311
	file	"C:\Users\ARUNKUMAR\Desktop\PRO\lcd_driver.c"
	line	135
	global	__size_of_setup_lcd_port
	__size_of_setup_lcd_port	equ	__end_of_setup_lcd_port-_setup_lcd_port
	
_setup_lcd_port:	
	opt	stack 7
; Regs used in _setup_lcd_port: [wreg+status,2]
	line	136
	
l2126:	
;lcd_driver.c: 136: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	137
;lcd_driver.c: 137: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	138
	
l2128:	
;lcd_driver.c: 138: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	139
	
l633:	
	return
	opt stack 0
GLOBAL	__end_of_setup_lcd_port
	__end_of_setup_lcd_port:
;; =============== function _setup_lcd_port ends ============

	signat	_setup_lcd_port,88
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
