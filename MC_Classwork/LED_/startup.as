
	; Microchip MPLAB XC8 C Compiler V1.36
	; Copyright (C) 1984-2016 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F4580 -I/opt/microchip/xc8/v1.36/include/ --ROM=0-3000 -Q \
	; --opt=all --asmlist --summary=psect,mem -Mpic18F4580.map -DCOMPILER= \
	; -intel main.p1 digital_keypad.p1 -opic18F4580.hex
	;


	processor	18F4580

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CONST,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine
	GLOBAL __accesstop
__accesstop EQU 96


	psect	init
start:

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	060h
	stackhi	equ	05FFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:

	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0xFF

; Config register CONFIG1H @ 0x300001
;	Oscillator Selection bits
;	OSC = XT, XT oscillator
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = 0x0, unprogrammed default
;	Internal/External Oscillator Switchover bit
;	IESO = 0x0, unprogrammed default

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0x1

; Config register CONFIG2L @ 0x300002
;	Power-up Timer Enable bit
;	PWRT = 0x1, unprogrammed default
;	Brown-out Reset Enable bits
;	BOREN = OFF, Brown-out Reset disabled in hardware and software
;	Brown-out Reset Voltage bits
;	BORV = 0x3, unprogrammed default

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0x19

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer Postscale Select bits
;	WDTPS = 0xF, unprogrammed default
;	Watchdog Timer Enable bit
;	WDT = OFF, WDT disabled (control is placed on the SWDTEN bit)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0x1E

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0xFF

; Config register CONFIG3H @ 0x300005
;	PORTB A/D Enable bit
;	PBADEN = OFF, PORTB<4:0> pins are configured as digital I/O on Reset
;	MCLR Pin Enable bit
;	MCLRE = 0x1, unprogrammed default
;	Low-Power Timer 1 Oscillator Enable bit
;	LPT1OSC = 0x0, unprogrammed default

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0x80

; Config register CONFIG4L @ 0x300006
;	Stack Full/Underflow Reset Enable bit
;	STVREN = 0x1, unprogrammed default
;	Background Debugger Enable bit
;	DEBUG = 0x1, unprogrammed default
;	Single-Supply ICSP Enable bit
;	LVP = OFF, Single-Supply ICSP disabled
;	Extended Instruction Set Enable bit
;	XINST = 0x0, unprogrammed default
;	Boot Block Size Select bit
;	BBSIZ = 0x0, unprogrammed default

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0x81

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect sfr,class=SFR,space=1


	end	start
