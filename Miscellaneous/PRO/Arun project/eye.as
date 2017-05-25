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
# 6 "C:\Users\admin\Desktop\ARUN\Arun project\eye.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\admin\Desktop\ARUN\Arun project\eye.c"
	dw 0x1932 ;#
	FNCALL	_main,_setup_lcd_port
	FNCALL	_main,_lcd_init
	FNCALL	_main,_adc_init
	FNCALL	_main,_adc_channel
	FNCALL	_main,_lcd_goto_pos
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_clrscr
	FNCALL	_main,_adc_res
	FNCALL	_main,_lcd_putn
	FNCALL	_lcd_putn,___lwdiv
	FNCALL	_lcd_putn,___lwmod
	FNCALL	_lcd_putn,_lcd_puts
	FNCALL	_lcd_clrscr,_lcd_write
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_goto_pos,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_write,_DelayMs
	FNCALL	_adc_init,_DelayMs
	FNROOT	_main
	global	_ADCON0
psect	text298,local,class=CODE,delta=2
global __ptext298
__ptext298:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCPR2L
_CCPR2L	set	27
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
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
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
	
STR_3:	
	retlw	76	;'L'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_2:	
	retlw	69	;'E'
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"eye.as"
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
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	?_adc_channel
?_adc_channel:	; 0 bytes @ 0x0
	global	??_adc_channel
??_adc_channel:	; 0 bytes @ 0x0
	global	??_adc_res
??_adc_res:	; 0 bytes @ 0x0
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_adc_res
?_adc_res:	; 1 bytes @ 0x0
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
	global	adc_res@_dcnt
adc_res@_dcnt:	; 1 bytes @ 0x1
	ds	1
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
	global	lcd_write@_dcnt_339
lcd_write@_dcnt_339:	; 1 bytes @ 0x8
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
	global	main@i
main@i:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 31, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     13      13
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_puts@p	PTR const unsigned char  size(2) Largest target is 14
;;		 -> STR_3(CODE[14]), STR_2(CODE[5]), STR_1(CODE[12]), lcd_putn@array(BANK0[6]), 
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
;;   _lcd_write->_DelayMs
;;   _adc_init->_DelayMs
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
;; (0) _main                                                 4     4      0    1747
;;                                              9 BANK0      4     4      0
;;                     _setup_lcd_port
;;                           _lcd_init
;;                           _adc_init
;;                        _adc_channel
;;                       _lcd_goto_pos
;;                           _lcd_puts
;;                            _DelayMs
;;                         _lcd_clrscr
;;                            _adc_res
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
;; (3) _lcd_write                                            5     4      1     158
;;                                              4 COMMON     5     4      1
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _adc_init                                             0     0      0      68
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _adc_res                                              2     2      0      23
;;                                              0 COMMON     2     2      0
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
;;   _lcd_init
;;     _lcd_write
;;       _DelayMs
;;   _adc_init
;;     _DelayMs
;;   _adc_channel
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
;;   _adc_res
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
;;BANK0               50      D       D       5       16.3%
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
;;		line 10 in file "C:\Users\admin\Desktop\ARUN\Arun project\eye.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setup_lcd_port
;;		_lcd_init
;;		_adc_init
;;		_adc_channel
;;		_lcd_goto_pos
;;		_lcd_puts
;;		_DelayMs
;;		_lcd_clrscr
;;		_adc_res
;;		_lcd_putn
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\admin\Desktop\ARUN\Arun project\eye.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	12
	
l2217:	
;eye.c: 11: unsigned int i;
;eye.c: 12: TRISA = 0xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	13
;eye.c: 13: TRISB = 0xf0;
	movlw	(0F0h)
	movwf	(134)^080h	;volatile
	line	14
	
l2219:	
;eye.c: 14: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	15
	
l2221:	
;eye.c: 15: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	19
	
l2223:	
;eye.c: 19: setup_lcd_port();
	fcall	_setup_lcd_port
	line	20
	
l2225:	
;eye.c: 20: lcd_init();
	fcall	_lcd_init
	line	21
	
l2227:	
;eye.c: 21: adc_init();
	fcall	_adc_init
	line	22
	
l2229:	
;eye.c: 22: adc_channel(0);
	movlw	(0)
	fcall	_adc_channel
	line	23
	
l2231:	
;eye.c: 23: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	24
	
l2233:	
;eye.c: 24: lcd_puts("HIWAY LIGHT");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	25
	
l2235:	
;eye.c: 25: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	26
	
l2237:	
;eye.c: 26: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	27
	
l2239:	
;eye.c: 27: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	28
	
l2241:	
;eye.c: 28: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	29
	
l2243:	
;eye.c: 29: lcd_clrscr();
	fcall	_lcd_clrscr
	line	31
	
l2245:	
;eye.c: 31: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	32
	
l2247:	
;eye.c: 32: lcd_puts("Eye:");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	33
	
l2249:	
;eye.c: 33: lcd_goto_pos(17);
	movlw	(011h)
	fcall	_lcd_goto_pos
	line	34
	
l2251:	
;eye.c: 34: lcd_puts("L1:       L2:");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	35
;eye.c: 35: while(1)
	
l663:	
	line	37
	
l2253:	
;eye.c: 36: {
;eye.c: 37: adc_channel(0);
	movlw	(0)
	fcall	_adc_channel
	line	38
	
l2255:	
;eye.c: 38: i = adc_res();
	fcall	_adc_res
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@i)
	movf	1+(??_main+0)+0,w
	movwf	(main@i+1)
	line	39
	
l2257:	
;eye.c: 39: DelayMs(250);DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	
l2259:	
	movlw	(0FAh)
	fcall	_DelayMs
	line	40
	
l2261:	
;eye.c: 40: lcd_goto_pos(1);
	movlw	(01h)
	fcall	_lcd_goto_pos
	line	41
	
l2263:	
;eye.c: 41: lcd_putn(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	(?_lcd_putn+1)
	addwf	(?_lcd_putn+1)
	movf	(main@i),w
	clrf	(?_lcd_putn)
	addwf	(?_lcd_putn)

	fcall	_lcd_putn
	line	42
	
l2265:	
;eye.c: 42: DelayMs(250);DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	
l2267:	
	movlw	(0FAh)
	fcall	_DelayMs
	line	44
	
l2269:	
;eye.c: 44: if(RB4 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l664
u2690:
	line	46
	
l2271:	
;eye.c: 45: {
;eye.c: 46: PR2=249;
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	47
;eye.c: 47: CCPR2L=62;
	movlw	(03Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	48
	
l664:	
	line	49
;eye.c: 48: }
;eye.c: 49: if(i> 150)
	movlw	high(097h)
	subwf	(main@i+1),w
	movlw	low(097h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l665
u2700:
	line	51
	
l2273:	
;eye.c: 50: {
;eye.c: 51: RB0=1;
	bsf	(48/8),(48)&7
	line	52
	
l665:	
	line	53
	
l666:	
	line	35
	goto	l663
	
l667:	
	line	54
	
l668:	
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
;;		line 69 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	69
	global	__size_of_lcd_putn
	__size_of_lcd_putn	equ	__end_of_lcd_putn-_lcd_putn
	
_lcd_putn:	
	opt	stack 7
; Regs used in _lcd_putn: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	71
	
l2199:	
;lcd_driver.c: 70: unsigned int no;
;lcd_driver.c: 71: unsigned char dig=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_putn@dig)
	bsf	status,0
	rlf	(lcd_putn@dig),f
	line	73
	
l2201:	
;lcd_driver.c: 72: char array[6];
;lcd_driver.c: 73: if(n)
	movf	(lcd_putn@n+1),w
	iorwf	(lcd_putn@n),w
	skipnz
	goto	u2661
	goto	u2660
u2661:
	goto	l612
u2660:
	line	74
	
l2203:	
;lcd_driver.c: 74: for(no=n; no/=10; dig++);
	movf	(lcd_putn@n+1),w
	clrf	(lcd_putn@no+1)
	addwf	(lcd_putn@no+1)
	movf	(lcd_putn@n),w
	clrf	(lcd_putn@no)
	addwf	(lcd_putn@no)

	goto	l613
	
l614:	
	
l2205:	
	movlw	(01h)
	movwf	(??_lcd_putn+0)+0
	movf	(??_lcd_putn+0)+0,w
	addwf	(lcd_putn@dig),f
	
l613:	
	
l2207:	
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
	goto	u2671
	goto	u2670
u2671:
	goto	l614
u2670:
	
l615:	
	
l612:	
	line	75
	
l2209:	
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
	
l616:	
	line	77
	
l2211:	
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
	
l2213:	
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
	goto	u2681
	goto	u2680
u2681:
	goto	l616
u2680:
	
l617:	
	line	80
	
l2215:	
;lcd_driver.c: 80: lcd_puts(array);
	movlw	(lcd_putn@array&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x0/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	81
	
l618:	
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
;;		line 124 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	124
	global	__size_of_lcd_clrscr
	__size_of_lcd_clrscr	equ	__end_of_lcd_clrscr-_lcd_clrscr
	
_lcd_clrscr:	
	opt	stack 7
; Regs used in _lcd_clrscr: [wreg+status,2+status,0+pclath+cstack]
	line	125
	
l2197:	
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
	
l654:	
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
;;		line 109 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	109
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2195:	
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
	
l638:	
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
;;		line 96 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	96
	global	__size_of_lcd_goto_pos
	__size_of_lcd_goto_pos	equ	__end_of_lcd_goto_pos-_lcd_goto_pos
	
_lcd_goto_pos:	
	opt	stack 7
; Regs used in _lcd_goto_pos: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto_pos@cnt stored from wreg
	movwf	(lcd_goto_pos@cnt)
	line	97
	
l2189:	
;lcd_driver.c: 97: if(cnt>16)
	movlw	(011h)
	subwf	(lcd_goto_pos@cnt),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l630
u2650:
	line	98
	
l2191:	
;lcd_driver.c: 98: lcd_write((0xC0+(cnt-17)),0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_lcd_write)
	movf	(lcd_goto_pos@cnt),w
	addlw	0AFh
	fcall	_lcd_write
	goto	l631
	line	99
	
l630:	
	line	100
	
l2193:	
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
	
l631:	
	line	101
	
l632:	
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
;;		line 53 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  p               2    9[COMMON] PTR const unsigned char 
;;		 -> STR_3(14), STR_2(5), STR_1(12), lcd_putn@array(6), 
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	53
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	54
	
l2181:	
;lcd_driver.c: 54: while(*p != '\0'){
	goto	l600
	
l601:	
	line	55
	
l2183:	
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
	
l2185:	
;lcd_driver.c: 56: p++;
	movlw	low(01h)
	addwf	(lcd_puts@p),f
	skipnc
	incf	(lcd_puts@p+1),f
	movlw	high(01h)
	addwf	(lcd_puts@p+1),f
	line	57
	
l600:	
	line	54
	
l2187:	
	movf	(lcd_puts@p+1),w
	movwf	btemp+1
	movf	(lcd_puts@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l601
u2640:
	
l602:	
	line	58
	
l603:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_write
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 117 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
psect	text304
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	117
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	118
	
l2165:	
;lcd_driver.c: 118: PORTD = c;
	movf	(lcd_write@c),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	119
	
l2167:	
;lcd_driver.c: 119: reg ? RE2=1 : RE2=0;
	movf	(lcd_write@reg),w
	skipz
	goto	u2610
	goto	l642
u2610:
	
l2169:	
	bsf	(74/8),(74)&7
	goto	l644
	
l642:	
	bcf	(74/8),(74)&7
	
l644:	
	line	120
	
l2171:	
;lcd_driver.c: 120: { unsigned char _dcnt; _dcnt = 1; while(--_dcnt != 0) { _nop(); } };RE1=1;{ unsigned char _dcnt; _dcnt = 10; while(--_dcnt != 0) { _nop(); } };RE1=0;DelayMs(2);
	clrf	(lcd_write@_dcnt)
	bsf	status,0
	rlf	(lcd_write@_dcnt),f
	goto	l645
	
l646:	
	nop
	
l645:	
	
l2173:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l646
u2620:
	
l647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l2175:	
	movlw	(0Ah)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt_339)
	goto	l648
	
l649:	
	nop
	
l648:	
	
l2177:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt_339),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l649
u2630:
	
l650:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	
l2179:	
	movlw	(02h)
	fcall	_DelayMs
	line	121
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,8312
	global	_adc_init
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 24 in file "C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
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
psect	text305
	file	"C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
	line	24
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 7
; Regs used in _adc_init: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2161:	
;adc_driver.c: 25: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	26
	
l2163:	
;adc_driver.c: 26: ADCON1 = 0x82;
	movlw	(082h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	27
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	_adc_res
psect	text306,local,class=CODE,delta=2
global __ptext306
__ptext306:

;; *************** function _adc_res *****************
;; Defined at:
;;		line 40 in file "C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text306
	file	"C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
	line	40
	global	__size_of_adc_res
	__size_of_adc_res	equ	__end_of_adc_res-_adc_res
	
_adc_res:	
	opt	stack 7
; Regs used in _adc_res: [wreg+status,2+status,0]
	line	41
	
l2151:	
;adc_driver.c: 41: ADRESL = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(158)^080h	;volatile
	line	42
	
l2153:	
;adc_driver.c: 42: { unsigned char _dcnt; _dcnt = 20; while(--_dcnt != 0) { _nop(); } };
	movlw	(014h)
	movwf	(??_adc_res+0)+0
	movf	(??_adc_res+0)+0,w
	movwf	(adc_res@_dcnt)
	goto	l582
	
l583:	
	nop
	
l582:	
	
l2155:	
	movlw	low(01h)
	subwf	(adc_res@_dcnt),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l583
u2590:
	
l584:	
	line	43
;adc_driver.c: 43: ADGO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	45
;adc_driver.c: 45: while(ADGO)
	goto	l585
	
l586:	
	line	46
;adc_driver.c: 46: continue;
	
l585:	
	line	45
	btfsc	(250/8),(250)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l586
u2600:
	
l587:	
	line	48
	
l2157:	
;adc_driver.c: 48: return ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	
l2159:	
	line	49
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_adc_res
	__end_of_adc_res:
;; =============== function _adc_res ends ============

	signat	_adc_res,89
	global	_adc_channel
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:

;; *************** function _adc_channel *****************
;; Defined at:
;;		line 32 in file "C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\adc_driver.c"
	line	32
	global	__size_of_adc_channel
	__size_of_adc_channel	equ	__end_of_adc_channel-_adc_channel
	
_adc_channel:	
	opt	stack 7
; Regs used in _adc_channel: [wreg+status,2+status,0]
;adc_channel@ch stored from wreg
	movwf	(adc_channel@ch)
	line	33
	
l2145:	
;adc_driver.c: 33: { unsigned char _dcnt; _dcnt = 100; while(--_dcnt != 0) { _nop(); } };
	movlw	(064h)
	movwf	(??_adc_channel+0)+0
	movf	(??_adc_channel+0)+0,w
	movwf	(adc_channel@_dcnt)
	goto	l576
	
l577:	
	nop
	
l576:	
	
l2147:	
	movlw	low(01h)
	subwf	(adc_channel@_dcnt),f
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l577
u2570:
	
l578:	
	line	34
	
l2149:	
;adc_driver.c: 34: ADCON0 = 193 | (ch << 3);
	movf	(adc_channel@ch),w
	movwf	(??_adc_channel+0)+0
	movlw	(03h)-1
u2585:
	clrc
	rlf	(??_adc_channel+0)+0,f
	addlw	-1
	skipz
	goto	u2585
	clrc
	rlf	(??_adc_channel+0)+0,w
	iorlw	0C1h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	35
	
l579:	
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
;;		line 24 in file "C:\Users\admin\Desktop\ARUN\Arun project\delay.c"
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
;;		_adc_init
;;		_lcd_write
;;		_main
;; This function uses a non-reentrant model
;;
psect	text308
	file	"C:\Users\admin\Desktop\ARUN\Arun project\delay.c"
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
	
l2137:	
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
	
l2139:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l566
u2540:
	
l567:	
	line	30
	
l2141:	
;delay.c: 30: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l564
u2550:
	
l568:	
	line	31
	
l2143:	
;delay.c: 31: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l563
u2560:
	
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
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
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
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2115:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l693
u2480:
	line	9
	
l2117:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l694
	
l695:	
	line	11
	
l2119:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	12
	
l2121:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l694:	
	line	10
	
l2123:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l695
u2500:
	
l696:	
	line	14
	
l697:	
	line	15
	
l2125:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2515
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2515:
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l698
u2510:
	line	16
	
l2127:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l698:	
	line	17
	
l2129:	
	movlw	01h
	
u2525:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2525
	line	18
	
l2131:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l697
u2530:
	
l699:	
	line	19
	
l693:	
	line	20
	
l2133:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2135:	
	line	21
	
l700:	
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
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
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
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2091:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2411
	goto	u2410
u2411:
	goto	l683
u2410:
	line	11
	
l2093:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l684
	
l685:	
	line	13
	
l2095:	
	movlw	01h
	
u2425:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2425
	line	14
	
l2097:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l684:	
	line	12
	
l2099:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l685
u2430:
	
l686:	
	line	16
	
l687:	
	line	17
	
l2101:	
	movlw	01h
	
u2445:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2445
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2455
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l688
u2450:
	line	19
	
l2103:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2105:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l688:	
	line	22
	
l2107:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	23
	
l2109:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l687
u2470:
	
l689:	
	line	24
	
l683:	
	line	25
	
l2111:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2113:	
	line	26
	
l690:	
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
;;		line 135 in file "C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
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
	file	"C:\Users\admin\Desktop\ARUN\Arun project\lcd_driver.c"
	line	135
	global	__size_of_setup_lcd_port
	__size_of_setup_lcd_port	equ	__end_of_setup_lcd_port-_setup_lcd_port
	
_setup_lcd_port:	
	opt	stack 7
; Regs used in _setup_lcd_port: [wreg+status,2]
	line	136
	
l2087:	
;lcd_driver.c: 136: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	137
;lcd_driver.c: 137: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	138
	
l2089:	
;lcd_driver.c: 138: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	139
	
l660:	
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
