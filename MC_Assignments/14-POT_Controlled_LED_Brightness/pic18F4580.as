opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F4580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 5338 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 6262 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 6321 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0CON equ 0E20h ;# 
# 6633 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 6765 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 7024 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 7156 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0DLC equ 0E25h ;# 
# 7303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D0 equ 0E26h ;# 
# 7364 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D1 equ 0E27h ;# 
# 7425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D2 equ 0E28h ;# 
# 7486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D3 equ 0E29h ;# 
# 7547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1CON equ 0E30h ;# 
# 8278 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 8410 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 8537 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 8669 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 8801 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1DLC equ 0E35h ;# 
# 8948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D0 equ 0E36h ;# 
# 9009 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D1 equ 0E37h ;# 
# 9070 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D2 equ 0E38h ;# 
# 9131 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D3 equ 0E39h ;# 
# 9192 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2CON equ 0E40h ;# 
# 9923 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 10055 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 10191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 10323 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 10455 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2DLC equ 0E45h ;# 
# 10602 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D0 equ 0E46h ;# 
# 10663 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D1 equ 0E47h ;# 
# 10724 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D2 equ 0E48h ;# 
# 10785 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D3 equ 0E49h ;# 
# 10846 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3CON equ 0E50h ;# 
# 11577 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 11709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 11845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 11977 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 12109 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3DLC equ 0E55h ;# 
# 12256 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D0 equ 0E56h ;# 
# 12317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D1 equ 0E57h ;# 
# 12378 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D2 equ 0E58h ;# 
# 12439 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D3 equ 0E59h ;# 
# 12500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4CON equ 0E60h ;# 
# 13231 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 13363 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 13499 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 13631 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 13763 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4DLC equ 0E65h ;# 
# 13910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D0 equ 0E66h ;# 
# 13971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D1 equ 0E67h ;# 
# 14032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D2 equ 0E68h ;# 
# 14093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D3 equ 0E69h ;# 
# 14154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5CON equ 0E70h ;# 
# 14894 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 15026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 15171 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 15303 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 15435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5DLC equ 0E75h ;# 
# 15576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D0 equ 0E76h ;# 
# 15646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D1 equ 0E77h ;# 
# 15707 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D2 equ 0E78h ;# 
# 15777 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D3 equ 0E79h ;# 
# 15838 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 20438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 21816 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 23185 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 24618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 26142 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 27487 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CIOCON equ 0F73h ;# 
# 27688 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 27809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECANCON equ 0F77h ;# 
# 28001 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTA equ 0F80h ;# 
# 28211 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTB equ 0F81h ;# 
# 28384 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTC equ 0F82h ;# 
# 28556 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTD equ 0F83h ;# 
# 28735 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PORTE equ 0F84h ;# 
# 28851 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATA equ 0F89h ;# 
# 28983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATB equ 0F8Ah ;# 
# 29115 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATC equ 0F8Bh ;# 
# 29247 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATD equ 0F8Ch ;# 
# 29379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LATE equ 0F8Dh ;# 
# 29436 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISA equ 0F92h ;# 
# 29441 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRA equ 0F92h ;# 
# 29657 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISB equ 0F93h ;# 
# 29662 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRB equ 0F93h ;# 
# 29878 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISC equ 0F94h ;# 
# 29883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRC equ 0F94h ;# 
# 30099 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISD equ 0F95h ;# 
# 30104 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRD equ 0F95h ;# 
# 30320 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TRISE equ 0F96h ;# 
# 30325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
DDRE equ 0F96h ;# 
# 30471 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 30542 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 30621 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 30700 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 30788 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 30853 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 30918 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 30983 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 31091 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 31191 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 31291 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 31356 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 31362 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 31368 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
EEADR equ 0FA9h ;# 
# 31374 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA equ 0FABh ;# 
# 31379 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 31583 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA equ 0FACh ;# 
# 31588 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 31880 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG equ 0FADh ;# 
# 31885 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 31891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG equ 0FAEh ;# 
# 31896 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 31902 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 31907 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 31913 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 31919 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T3CON equ 0FB1h ;# 
# 32047 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 32053 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 32059 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 32065 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CMCON equ 0FB4h ;# 
# 32160 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 32244 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 32325 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 32394 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 32399 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 32559 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 32640 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 32646 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 32652 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 32658 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 32721 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 32727 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 32733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 32739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 32809 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 32899 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 33017 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRES equ 0FC3h ;# 
# 33023 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 33029 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 33035 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 33096 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 33165 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 33423 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 33429 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 33435 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T2CON equ 0FCAh ;# 
# 33505 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PR2 equ 0FCBh ;# 
# 33510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 33614 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 33620 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T1CON equ 0FCDh ;# 
# 33733 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 33739 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 33745 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 33751 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
RCON equ 0FD0h ;# 
# 33883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 33910 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 33915 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 34179 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 34255 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
T0CON equ 0FD5h ;# 
# 34330 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 34336 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 34342 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 34348 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STATUS equ 0FD8h ;# 
# 34426 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 34432 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 34438 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 34444 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 34450 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 34456 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 34462 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 34468 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 34474 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
BSR equ 0FE0h ;# 
# 34480 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 34486 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 34492 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 34498 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 34504 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 34510 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 34516 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 34522 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 34528 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
WREG equ 0FE8h ;# 
# 34534 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 34540 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 34546 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 34552 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 34558 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 34564 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 34570 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 34576 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 34582 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 34673 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 34749 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
INTCON equ 0FF2h ;# 
# 34865 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PROD equ 0FF3h ;# 
# 34871 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODL equ 0FF3h ;# 
# 34877 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PRODH equ 0FF4h ;# 
# 34883 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 34891 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 34897 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 34903 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 34909 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 34917 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 34924 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PC equ 0FF9h ;# 
# 34930 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCL equ 0FF9h ;# 
# 34936 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 34942 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 34948 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 35021 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOS equ 0FFDh ;# 
# 35027 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSL equ 0FFDh ;# 
# 35033 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSH equ 0FFEh ;# 
# 35039 "/opt/microchip/xc8/v1.36/include/pic18f4580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_adc
	FNCALL	_main,_init_config
	FNCALL	_main,_itoa_display
	FNCALL	_main,_puts
	FNCALL	_main,_software_pwm
	FNCALL	_puts,_is_busy
	FNCALL	_puts,_write_lcd
	FNCALL	_itoa_display,___lwdiv
	FNCALL	_itoa_display,___lwmod
	FNCALL	_itoa_display,_is_busy
	FNCALL	_itoa_display,_write_lcd
	FNCALL	_is_busy,_delay
	FNCALL	_init_config,_init_ADC_config
	FNCALL	_init_config,_init_CLCD_config
	FNCALL	_init_CLCD_config,_delay
	FNCALL	_init_CLCD_config,_write_lcd
	FNCALL	_write_lcd,_delay
	FNROOT	_main
	global	main@F15950
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	23

;initializer for main@F15950
	db	low(050h)
	db	low(06Fh)
	db	low(074h)
	db	low(065h)
	db	low(06Eh)
	db	low(074h)
	db	low(069h)
	db	low(06Fh)
	db	low(06Dh)
	db	low(065h)
	db	low(074h)
	db	low(065h)
	db	low(072h)
	db	low(0)
	global	software_pwm@prog_cycle
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_AN4
_AN4	set	0x7C05
	global	_TRISB0
_TRISB0	set	0x7C98
; #config settings
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
software_pwm@prog_cycle:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	23
main@F15950:
       ds      14
	file	"pic18F4580.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (2 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_delay:	; 1 bytes @ 0x0
?_is_busy:	; 1 bytes @ 0x0
?_init_CLCD_config:	; 1 bytes @ 0x0
?_init_ADC_config:	; 1 bytes @ 0x0
??_init_ADC_config:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_software_pwm:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_adc
?_adc:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	software_pwm@data
software_pwm@data:	; 2 bytes @ 0x0
	global	delay@time
delay@time:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	ds   2
??_delay:	; 1 bytes @ 0x2
??_adc:	; 1 bytes @ 0x2
??_software_pwm:	; 1 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds   2
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	global	adc@data
adc@data:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   2
?_write_lcd:	; 1 bytes @ 0x6
??_is_busy:	; 1 bytes @ 0x6
	global	write_lcd@mode
write_lcd@mode:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
??_write_lcd:	; 1 bytes @ 0x7
	global	write_lcd@data
write_lcd@data:	; 1 bytes @ 0x7
	ds   1
?_puts:	; 1 bytes @ 0x8
??_init_CLCD_config:	; 1 bytes @ 0x8
?_itoa_display:	; 1 bytes @ 0x8
??_init_config:	; 1 bytes @ 0x8
	global	puts@ptr
puts@ptr:	; 2 bytes @ 0x8
	global	itoa_display@data
itoa_display@data:	; 2 bytes @ 0x8
	ds   2
??_puts:	; 1 bytes @ 0xA
??_itoa_display:	; 1 bytes @ 0xA
	global	puts@location
puts@location:	; 1 bytes @ 0xA
	global	itoa_display@array
itoa_display@array:	; 5 bytes @ 0xA
	ds   5
	global	itoa_display@k
itoa_display@k:	; 2 bytes @ 0xF
	ds   2
??_main:	; 1 bytes @ 0x11
	global	main@message
main@message:	; 14 bytes @ 0x11
	ds   14
	global	main@data
main@data:	; 2 bytes @ 0x1F
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     33      49
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    puts@ptr	PTR const unsigned char  size(2) Largest target is 14
;!		 -> main@message(COMRAM[14]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_itoa_display
;!    _puts->_write_lcd
;!    _itoa_display->_write_lcd
;!    _is_busy->_delay
;!    _init_CLCD_config->_write_lcd
;!    _write_lcd->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                16    16      0    6284
;!                                             17 COMRAM    16    16      0
;!                                _adc
;!                        _init_config
;!                       _itoa_display
;!                               _puts
;!                       _software_pwm
;! ---------------------------------------------------------------------------------
;! (1) _software_pwm                                         3     1      2      86
;!                                              0 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _puts                                                 3     1      2    1767
;!                                              8 COMRAM     3     1      2
;!                            _is_busy
;!                          _write_lcd
;! ---------------------------------------------------------------------------------
;! (1) _itoa_display                                         9     7      2    2679
;!                                              8 COMRAM     9     7      2
;!                            ___lwdiv
;!                            ___lwmod
;!                            _is_busy
;!                          _write_lcd
;! ---------------------------------------------------------------------------------
;! (2) _is_busy                                              0     0      0     476
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     287
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     418
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    1636
;!                    _init_ADC_config
;!                   _init_CLCD_config
;! ---------------------------------------------------------------------------------
;! (2) _init_CLCD_config                                     0     0      0    1636
;!                              _delay
;!                          _write_lcd
;! ---------------------------------------------------------------------------------
;! (2) _write_lcd                                            2     1      1    1160
;!                                              6 COMRAM     2     1      1
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                6     4      2     476
;!                                              0 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _init_ADC_config                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _adc                                                  6     4      2      46
;!                                              0 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _adc
;!   _init_config
;!     _init_ADC_config
;!     _init_CLCD_config
;!       _delay
;!       _write_lcd
;!         _delay
;!   _itoa_display
;!     ___lwdiv
;!     ___lwmod
;!     _is_busy
;!       _delay
;!     _write_lcd
;!       _delay
;!   _puts
;!     _is_busy
;!       _delay
;!     _write_lcd
;!       _delay
;!   _software_pwm
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     21      31       1       51.6%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      31       3        0.0%
;!DATA                 0      0      31      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  message        14   17[COMRAM] unsigned char [14]
;;  data            2   31[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        16       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_adc
;;		_init_config
;;		_itoa_display
;;		_puts
;;		_software_pwm
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	21
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	24
	
l1054:
;main.c: 23: unsigned short data;
;main.c: 24: char message[] = "Potentiometer";
	lfsr	2,(main@F15950)
	lfsr	1,(main@message)
	movlw	14-1
u441:
	movff	plusw2,plusw1
	decf	wreg
	bc	u441

	line	26
	
l1056:
;main.c: 26: init_config();
	call	_init_config	;wreg free
	line	28
	
l1058:
;main.c: 28: puts(0x80, message);
		movlw	low(main@message)
	movwf	((c:puts@ptr)),c
	movlw	high(main@message)
	movwf	((c:puts@ptr+1)),c

	movlw	(080h)&0ffh
	
	call	_puts
	goto	l1060
	line	30
;main.c: 30: while (1)
	
l89:
	line	33
	
l1060:
;main.c: 31: {
;main.c: 33: data = adc();
	call	_adc	;wreg free
	movff	0+?_adc,(c:main@data)
	movff	1+?_adc,(c:main@data+1)
	line	35
	
l1062:
;main.c: 35: itoa_display(data);
	movff	(c:main@data),(c:itoa_display@data)
	movff	(c:main@data+1),(c:itoa_display@data+1)
	call	_itoa_display	;wreg free
	line	37
	
l1064:
;main.c: 37: software_pwm(data);
	movff	(c:main@data),(c:software_pwm@data)
	movff	(c:main@data+1),(c:software_pwm@data+1)
	call	_software_pwm	;wreg free
	goto	l1060
	line	39
	
l90:
	line	30
	goto	l1060
	
l91:
	line	41
	
l92:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_software_pwm

;; *************** function _software_pwm *****************
;; Defined at:
;;		line 10 in file "main.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	10
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	10
	global	__size_of_software_pwm
	__size_of_software_pwm	equ	__end_of_software_pwm-_software_pwm
	
_software_pwm:
;incstack = 0
	opt	stack 30
	line	15
	
l1040:
;main.c: 13: static unsigned short prog_cycle;
;main.c: 15: PORTBbits.RB0 = (prog_cycle < data) ? 1 : 0;
		movf	((c:software_pwm@data)),c,w
	subwf	((c:software_pwm@prog_cycle)),c,w
	movf	((c:software_pwm@data+1)),c,w
	subwfb	((c:software_pwm@prog_cycle+1)),c,w
	btfss	status,0
	goto	u401
	goto	u400

u401:
	clrf	(??_software_pwm+0+0)&0ffh,c
	incf	(??_software_pwm+0+0)&0ffh,c
	goto	u418
u400:
	clrf	(??_software_pwm+0+0)&0ffh,c
u418:
	movf	((c:3969)),c,w	;volatile
	xorwf	(??_software_pwm+0+0),c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_software_pwm+0+0),c,w
	movwf	((c:3969)),c	;volatile
	line	17
;main.c: 17: if (prog_cycle++ == (unsigned short)10)
	infsnz	((c:software_pwm@prog_cycle)),c
	incf	((c:software_pwm@prog_cycle+1)),c
		movlw	11
	xorwf	((c:software_pwm@prog_cycle)),c,w
iorwf	((c:software_pwm@prog_cycle+1)),c,w
	btfss	status,2
	goto	u421
	goto	u420

u421:
	goto	l84
u420:
	line	18
	
l1042:
;main.c: 18: prog_cycle = 0;
	movlw	high(0)
	movwf	((c:software_pwm@prog_cycle+1)),c
	movlw	low(0)
	movwf	((c:software_pwm@prog_cycle)),c
	goto	l84
	
l83:
	line	19
	
l84:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_software_pwm
	__end_of_software_pwm:
	signat	_software_pwm,4217
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 28 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  location        1    wreg     unsigned char 
;;  ptr             2    8[COMRAM] PTR const unsigned char 
;;		 -> main@message(14), 
;; Auto vars:     Size  Location     Type
;;  location        1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_is_busy
;;		_write_lcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	28
global __ptext2
__ptext2:
psect	text2
	file	"clcd.c"
	line	28
	global	__size_of_puts
	__size_of_puts	equ	__end_of_puts-_puts
	
_puts:
;incstack = 0
	opt	stack 28
;puts@location stored from wreg
	movwf	((c:puts@location)),c
	line	30
	
l990:
;clcd.c: 30: write_lcd(location, 0);
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movf	((c:puts@location)),c,w
	
	call	_write_lcd
	line	33
;clcd.c: 33: is_busy();
	call	_is_busy	;wreg free
	line	35
;clcd.c: 35: while (*ptr)
	goto	l998
	
l22:
	line	37
	
l992:
;clcd.c: 36: {
;clcd.c: 37: is_busy();
	call	_is_busy	;wreg free
	line	38
	
l994:
;clcd.c: 38: write_lcd(*ptr++, 1);
	movlw	low(01h)
	movwf	((c:write_lcd@mode)),c
	movff	(c:puts@ptr),fsr2l
	movff	(c:puts@ptr+1),fsr2h
	movf	indf2,w
	
	call	_write_lcd
	
l996:
	infsnz	((c:puts@ptr)),c
	incf	((c:puts@ptr+1)),c
	goto	l998
	line	39
	
l21:
	line	35
	
l998:
	movff	(c:puts@ptr),fsr2l
	movff	(c:puts@ptr+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u341
	goto	u340
u341:
	goto	l992
u340:
	goto	l24
	
l23:
	line	40
	
l24:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,8313
	global	_itoa_display

;; *************** function _itoa_display *****************
;; Defined at:
;;		line 3 in file "itoa_display.c"
;; Parameters:    Size  Location     Type
;;  data            2    8[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  array           5   10[COMRAM] unsigned char [5]
;;  k               2   15[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_is_busy
;;		_write_lcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"itoa_display.c"
	line	3
global __ptext3
__ptext3:
psect	text3
	file	"itoa_display.c"
	line	3
	global	__size_of_itoa_display
	__size_of_itoa_display	equ	__end_of_itoa_display-_itoa_display
	
_itoa_display:
;incstack = 0
	opt	stack 28
	line	5
	
l1000:
;itoa_display.c: 5: data /= 11;
	movff	(c:itoa_display@data),(c:___lwdiv@dividend)
	movff	(c:itoa_display@data+1),(c:___lwdiv@dividend+1)
	movlw	high(0Bh)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Bh)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:itoa_display@data)
	movff	1+?___lwdiv,(c:itoa_display@data+1)
	line	6
	
l1002:
;itoa_display.c: 6: if (data > 90)
		movf	((c:itoa_display@data+1)),c,w
	bnz	u350
	movlw	91
	subwf	 ((c:itoa_display@data)),c,w
	btfss	status,0
	goto	u351
	goto	u350

u351:
	goto	l56
u350:
	line	7
	
l1004:
;itoa_display.c: 7: data = 90;
	movlw	high(05Ah)
	movwf	((c:itoa_display@data+1)),c
	movlw	low(05Ah)
	movwf	((c:itoa_display@data)),c
	
l56:
	line	11
;itoa_display.c: 8: char array[5];
;itoa_display.c: 9: int k;
;itoa_display.c: 11: for(k = 0; k <= 3; k++)
	movlw	high(0)
	movwf	((c:itoa_display@k+1)),c
	movlw	low(0)
	movwf	((c:itoa_display@k)),c
	
l1006:
	btfsc	((c:itoa_display@k+1)),c,7
	goto	u361
	movf	((c:itoa_display@k+1)),c,w
	bnz	u360
	movlw	4
	subwf	 ((c:itoa_display@k)),c,w
	btfss	status,0
	goto	u361
	goto	u360

u361:
	goto	l1010
u360:
	goto	l1018
	
l1008:
	goto	l1018
	line	12
	
l57:
	line	14
	
l1010:
;itoa_display.c: 12: {
;itoa_display.c: 14: array[k]= data % 10 + '0';
	movlw	low(itoa_display@array)
	addwf	((c:itoa_display@k)),c,w
	movwf	c:fsr2l
	movlw	high(itoa_display@array)
	addwfc	((c:itoa_display@k+1)),c,w
	movwf	1+c:fsr2l
	movff	(c:itoa_display@data),(c:___lwmod@dividend)
	movff	(c:itoa_display@data+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	movwf	indf2,c

	line	15
	
l1012:
;itoa_display.c: 15: data = data / 10;
	movff	(c:itoa_display@data),(c:___lwdiv@dividend)
	movff	(c:itoa_display@data+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:itoa_display@data)
	movff	1+?___lwdiv,(c:itoa_display@data+1)
	line	11
	
l1014:
	infsnz	((c:itoa_display@k)),c
	incf	((c:itoa_display@k+1)),c
	
l1016:
	btfsc	((c:itoa_display@k+1)),c,7
	goto	u371
	movf	((c:itoa_display@k+1)),c,w
	bnz	u370
	movlw	4
	subwf	 ((c:itoa_display@k)),c,w
	btfss	status,0
	goto	u371
	goto	u370

u371:
	goto	l1010
u370:
	goto	l1018
	
l58:
	line	18
	
l1018:
;itoa_display.c: 16: }
;itoa_display.c: 18: write_lcd(0xC0, 0);
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movlw	(0C0h)&0ffh
	
	call	_write_lcd
	line	19
	
l1020:
;itoa_display.c: 19: for(k = 1; k >= 0; k--)
	movlw	high(01h)
	movwf	((c:itoa_display@k+1)),c
	movlw	low(01h)
	movwf	((c:itoa_display@k)),c
	
l1022:
	btfsc	((c:itoa_display@k+1)),c,7
	goto	u380
	goto	u381

u381:
	goto	l1026
u380:
	goto	l61
	
l1024:
	goto	l61
	line	20
	
l59:
	line	21
	
l1026:
;itoa_display.c: 20: {
;itoa_display.c: 21: is_busy();
	call	_is_busy	;wreg free
	line	24
	
l1028:
;itoa_display.c: 24: write_lcd(array[k], 1);
	movlw	low(01h)
	movwf	((c:write_lcd@mode)),c
	movlw	low(itoa_display@array)
	addwf	((c:itoa_display@k)),c,w
	movwf	c:fsr2l
	movlw	high(itoa_display@array)
	addwfc	((c:itoa_display@k+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_write_lcd
	line	19
	
l1030:
	decf	((c:itoa_display@k)),c
	btfss	status,0
	decf	((c:itoa_display@k+1)),c
	
l1032:
	btfsc	((c:itoa_display@k+1)),c,7
	goto	u390
	goto	u391

u391:
	goto	l1026
u390:
	goto	l61
	
l60:
	line	26
	
l61:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_itoa_display
	__end_of_itoa_display:
	signat	_itoa_display,4217
	global	_is_busy

;; *************** function _is_busy *****************
;; Defined at:
;;		line 11 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_puts
;;		_itoa_display
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	11
global __ptext4
__ptext4:
psect	text4
	file	"clcd.c"
	line	11
	global	__size_of_is_busy
	__size_of_is_busy	equ	__end_of_is_busy-_is_busy
	
_is_busy:
;incstack = 0
	opt	stack 28
	line	14
	
l926:
;clcd.c: 14: TRISDbits.RD7 = 1;
	bsf	((c:3989)),c,7	;volatile
	line	16
;clcd.c: 16: PORTCbits.RC1 = 0;
	bcf	((c:3970)),c,1	;volatile
	line	17
;clcd.c: 17: PORTCbits.RC0 = 1;
	bsf	((c:3970)),c,0	;volatile
	line	19
;clcd.c: 19: do
	
l16:
	line	21
;clcd.c: 20: {
;clcd.c: 21: {PORTCbits.RC2 = 1; delay(1); PORTCbits.RC2 = 0;};
	bsf	((c:3970)),c,2	;volatile
	
l928:
	movlw	high(01h)
	movwf	((c:delay@time+1)),c
	movlw	low(01h)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	
l930:
	bcf	((c:3970)),c,2	;volatile
	line	22
	
l932:
;clcd.c: 22: }while (PORTDbits.RD7);
	btfsc	((c:3971)),c,7	;volatile
	goto	u271
	goto	u270
u271:
	goto	l16
u270:
	
l17:
	line	25
;clcd.c: 25: TRISDbits.RD7 = 0;
	bcf	((c:3989)),c,7	;volatile
	line	26
	
l18:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_is_busy
	__end_of_is_busy:
	signat	_is_busy,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_itoa_display
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 29
	line	13
	
l974:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u311
	goto	u310

u311:
	goto	l525
u310:
	line	14
	
l976:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l980
	
l527:
	line	16
	
l978:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l980
	line	18
	
l526:
	line	15
	
l980:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u321
	goto	u320
u321:
	goto	l978
u320:
	goto	l982
	
l528:
	goto	l982
	line	19
	
l529:
	line	20
	
l982:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u331
	goto	u330

u331:
	goto	l986
u330:
	line	21
	
l984:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l986
	
l530:
	line	22
	
l986:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l988:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l982
	goto	l525
	
l531:
	line	24
	
l525:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l532:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_itoa_display
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l952:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l954:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u281
	goto	u280

u281:
	goto	l515
u280:
	line	16
	
l956:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l960
	
l517:
	line	18
	
l958:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l960
	line	20
	
l516:
	line	17
	
l960:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u291
	goto	u290
u291:
	goto	l958
u290:
	goto	l962
	
l518:
	goto	l962
	line	21
	
l519:
	line	22
	
l962:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l964:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u301
	goto	u300

u301:
	goto	l970
u300:
	line	24
	
l966:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l968:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l970
	line	26
	
l520:
	line	27
	
l970:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l972:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l962
	goto	l515
	
l521:
	line	29
	
l515:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l522:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 3 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init_ADC_config
;;		_init_CLCD_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"main.c"
	line	3
global __ptext7
__ptext7:
psect	text7
	file	"main.c"
	line	3
	global	__size_of_init_config
	__size_of_init_config	equ	__end_of_init_config-_init_config
	
_init_config:
;incstack = 0
	opt	stack 27
	line	5
	
l1034:
;main.c: 5: TRISB0 = 0;
	bcf	c:(31896/8),(31896)&7	;volatile
	line	6
	
l1036:
;main.c: 6: init_CLCD_config();
	call	_init_CLCD_config	;wreg free
	line	7
	
l1038:
;main.c: 7: init_ADC_config();
	call	_init_ADC_config	;wreg free
	line	8
	
l78:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_CLCD_config

;; *************** function _init_CLCD_config *****************
;; Defined at:
;;		line 3 in file "init_CLCD_config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_write_lcd
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"init_CLCD_config.c"
	line	3
global __ptext8
__ptext8:
psect	text8
	file	"init_CLCD_config.c"
	line	3
	global	__size_of_init_CLCD_config
	__size_of_init_CLCD_config	equ	__end_of_init_CLCD_config-_init_CLCD_config
	
_init_CLCD_config:
;incstack = 0
	opt	stack 27
	line	6
	
l934:
;init_CLCD_config.c: 6: TRISD = 0;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	9
;init_CLCD_config.c: 9: TRISC = 0;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	11
	
l936:
;init_CLCD_config.c: 11: delay(250);
	movlw	high(0FAh)
	movwf	((c:delay@time+1)),c
	movlw	low(0FAh)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	line	12
	
l938:
;init_CLCD_config.c: 12: write_lcd(0x38, 0);;
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movlw	(038h)&0ffh
	
	call	_write_lcd
	line	14
	
l940:
;init_CLCD_config.c: 14: delay(250);
	movlw	high(0FAh)
	movwf	((c:delay@time+1)),c
	movlw	low(0FAh)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	line	15
	
l942:
;init_CLCD_config.c: 15: write_lcd(0x0E, 0);;
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movlw	(0Eh)&0ffh
	
	call	_write_lcd
	line	17
	
l944:
;init_CLCD_config.c: 17: delay(5);
	movlw	high(05h)
	movwf	((c:delay@time+1)),c
	movlw	low(05h)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	line	18
	
l946:
;init_CLCD_config.c: 18: write_lcd(0x01, 0);;
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movlw	(01h)&0ffh
	
	call	_write_lcd
	line	20
	
l948:
;init_CLCD_config.c: 20: delay(5);
	movlw	high(05h)
	movwf	((c:delay@time+1)),c
	movlw	low(05h)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	line	21
	
l950:
;init_CLCD_config.c: 21: write_lcd(0x06, 0);;
	movlw	low(0)
	movwf	((c:write_lcd@mode)),c
	movlw	(06h)&0ffh
	
	call	_write_lcd
	line	22
	
l38:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_CLCD_config
	__end_of_init_CLCD_config:
	signat	_init_CLCD_config,89
	global	_write_lcd

;; *************** function _write_lcd *****************
;; Defined at:
;;		line 3 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  mode            1    6[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_puts
;;		_init_CLCD_config
;;		_itoa_display
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	3
global __ptext9
__ptext9:
psect	text9
	file	"clcd.c"
	line	3
	global	__size_of_write_lcd
	__size_of_write_lcd	equ	__end_of_write_lcd-_write_lcd
	
_write_lcd:
;incstack = 0
	opt	stack 28
;write_lcd@data stored from wreg
	movwf	((c:write_lcd@data)),c
	line	5
	
l914:
;clcd.c: 5: PORTD = data;
	movff	(c:write_lcd@data),(c:3971)	;volatile
	line	6
	
l916:
;clcd.c: 6: PORTCbits.RC1 = mode;
	btfsc	(c:write_lcd@mode),c,0
	bra	u265
	bcf	((c:3970)),c,1	;volatile
	bra	u266
	u265:
	bsf	((c:3970)),c,1	;volatile
	u266:

	line	7
	
l918:
;clcd.c: 7: PORTCbits.RC0 = 0;
	bcf	((c:3970)),c,0	;volatile
	line	8
	
l920:
;clcd.c: 8: {PORTCbits.RC2 = 1; delay(1); PORTCbits.RC2 = 0;};
	bsf	((c:3970)),c,2	;volatile
	
l922:
	movlw	high(01h)
	movwf	((c:delay@time+1)),c
	movlw	low(01h)
	movwf	((c:delay@time)),c
	call	_delay	;wreg free
	
l924:
	bcf	((c:3970)),c,2	;volatile
	line	9
	
l13:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_write_lcd
	__end_of_write_lcd:
	signat	_write_lcd,8313
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 3 in file "delay.c"
;; Parameters:    Size  Location     Type
;;  time            2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMRAM] unsigned int 
;;  i               2    2[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_write_lcd
;;		_is_busy
;;		_init_CLCD_config
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"delay.c"
	line	3
global __ptext10
__ptext10:
psect	text10
	file	"delay.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:
;incstack = 0
	opt	stack 28
	line	7
	
l898:
;delay.c: 5: unsigned int i, j;
;delay.c: 7: for (i = 0; i < time; i++)
	movlw	high(0)
	movwf	((c:delay@i+1)),c
	movlw	low(0)
	movwf	((c:delay@i)),c
	goto	l912
	line	8
	
l96:
	line	9
	
l900:
;delay.c: 8: {
;delay.c: 9: for (j = 0; j < 135; j++)
	movlw	high(0)
	movwf	((c:delay@j+1)),c
	movlw	low(0)
	movwf	((c:delay@j)),c
	
l902:
		movf	((c:delay@j+1)),c,w
	bnz	u230
	movlw	135
	subwf	 ((c:delay@j)),c,w
	btfss	status,0
	goto	u231
	goto	u230

u231:
	goto	l906
u230:
	goto	l910
	
l904:
	goto	l910
	line	10
	
l97:
	line	9
	
l906:
;delay.c: 10: {
;delay.c: 11: ;
	infsnz	((c:delay@j)),c
	incf	((c:delay@j+1)),c
	
l908:
		movf	((c:delay@j+1)),c,w
	bnz	u240
	movlw	135
	subwf	 ((c:delay@j)),c,w
	btfss	status,0
	goto	u241
	goto	u240

u241:
	goto	l906
u240:
	goto	l910
	
l98:
	line	7
	
l910:
	infsnz	((c:delay@i)),c
	incf	((c:delay@i+1)),c
	goto	l912
	
l95:
	
l912:
		movf	((c:delay@time)),c,w
	subwf	((c:delay@i)),c,w
	movf	((c:delay@time+1)),c,w
	subwfb	((c:delay@i+1)),c,w
	btfss	status,0
	goto	u251
	goto	u250

u251:
	goto	l900
u250:
	goto	l100
	
l99:
	line	14
	
l100:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4217
	global	_init_ADC_config

;; *************** function _init_ADC_config *****************
;; Defined at:
;;		line 3 in file "init_ADC_config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"init_ADC_config.c"
	line	3
global __ptext11
__ptext11:
psect	text11
	file	"init_ADC_config.c"
	line	3
	global	__size_of_init_ADC_config
	__size_of_init_ADC_config	equ	__end_of_init_ADC_config-_init_ADC_config
	
_init_ADC_config:
;incstack = 0
	opt	stack 29
	line	6
	
l780:
;init_ADC_config.c: 6: AN4 = 1;
	bsf	c:(31749/8),(31749)&7	;volatile
	line	9
	
l782:
;init_ADC_config.c: 9: ADCON0 = 0x11;
	movlw	low(011h)
	movwf	((c:4034)),c	;volatile
	line	10
;init_ADC_config.c: 10: ADCON1 = 0x0A;
	movlw	low(0Ah)
	movwf	((c:4033)),c	;volatile
	line	11
;init_ADC_config.c: 11: ADCON2 = 0x92;
	movlw	low(092h)
	movwf	((c:4032)),c	;volatile
	line	12
	
l49:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_ADC_config
	__end_of_init_ADC_config:
	signat	_init_ADC_config,89
	global	_adc

;; *************** function _adc *****************
;; Defined at:
;;		line 3 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"adc.c"
	line	3
global __ptext12
__ptext12:
psect	text12
	file	"adc.c"
	line	3
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:
;incstack = 0
	opt	stack 30
	line	8
	
l1044:
;adc.c: 5: unsigned short data;
;adc.c: 8: ADCON0bits.GO = 1;
	bsf	((c:4034)),c,1	;volatile
	line	11
;adc.c: 11: while(ADCON0bits.GO);
	goto	l109
	
l110:
	
l109:
	btfsc	((c:4034)),c,1	;volatile
	goto	u431
	goto	u430
u431:
	goto	l109
u430:
	
l111:
	line	14
;adc.c: 14: data = ADRESH;
	movff	(c:4036),(c:adc@data)	;volatile
	clrf	((c:adc@data+1)),c
	line	15
	
l1046:
;adc.c: 15: data = (data << 8) | ADRESL;
	movf	((c:adc@data)),c,w
	movwf	(??_adc+0+0)&0ffh,c
	movf	((c:4035)),c,w	;volatile
	movwf	((c:adc@data)),c
	movff	??_adc+0+0,((c:adc@data+1))
	line	17
	
l1048:
;adc.c: 17: return data;
	movff	(c:adc@data),(c:?_adc)
	movff	(c:adc@data+1),(c:?_adc+1)
	goto	l112
	
l1050:
	line	18
	
l112:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
	signat	_adc,90
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
