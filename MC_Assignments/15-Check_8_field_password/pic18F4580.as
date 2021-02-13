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
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_check_matrix_keypad
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_putch
	FNCALL	_main,_clcd_write
	FNCALL	_main,_init_config
	FNCALL	_main,_my_strcmp
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_timer0
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	_check_matrix_keypad,_clcd_putch
	FNCALL	_check_matrix_keypad,_clcd_write
	FNCALL	_check_matrix_keypad,_read_switches
	FNCALL	_read_switches,_scan_key
	FNCALL	_clcd_putch,_clcd_write
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_no_of_tries
	global	_sec
	global	_try
	global	read_switches@once
	global	_password
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	4

;initializer for _no_of_tries
	dw	(03h)&0ffffh

;initializer for _sec
	dw	(0B4h)&0ffffh

;initializer for _try
	dw	(01h)&0ffffh
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
	file	"main.c"
	line	6

;initializer for _password
	db	low(031h)
	db	low(030h)
	db	low(030h)
	db	low(031h)
	db	low(030h)
	db	low(030h)
	db	low(031h)
	db	low(031h)
	db	low(0)
	global	_count
	global	_passcode_bit
	global	read_switches@key
	global	_user_entry
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_GIE
_GIE	set	0x7F97
	global	_PSA
_PSA	set	0x7EAB
	global	_RBPU
_RBPU	set	0x7F8F
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T0PS0
_T0PS0	set	0x7EA8
	global	_T0PS1
_T0PS1	set	0x7EA9
	global	_T0PS2
_T0PS2	set	0x7EAA
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
	global	_TRISD7
_TRISD7	set	0x7CAF
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_3:
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	70	;'F'
	db	65	;'A'
	db	73	;'I'
	db	76	;'L'
	db	85	;'U'
	db	82	;'R'
	db	69	;'E'
	db	0
	
STR_2:
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	0
	
STR_1:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	0
	
STR_4:
	db	116	;'t'
	db	114	;'r'
	db	105	;'i'
	db	101	;'e'
	db	115	;'s'
	db	32
	db	114	;'r'
	db	101	;'e'
	db	109	;'m'
	db	97	;'a'
	db	105	;'i'
	db	110	;'n'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_5:
	db	84	;'T'
	db	114	;'r'
	db	121	;'y'
	db	32
	db	105	;'i'
	db	110	;'n'
	db	32
	db	58	;':'
	db	0
	
STR_6:
	db	115	;'s'
	db	101	;'e'
	db	99	;'c'
	db	0
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
	global	_count
_count:
       ds      2
	global	_passcode_bit
_passcode_bit:
       ds      2
read_switches@key:
       ds      1
	global	_user_entry
_user_entry:
       ds      9
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	4
	global	_no_of_tries
_no_of_tries:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	4
	global	_sec
_sec:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	4
	global	_try
_try:
       ds      2
psect	dataCOMRAM
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"main.c"
	line	6
	global	_password
_password:
       ds      9
	file	"pic18F4580.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (14 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	14
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
	line	#
; Initialize objects allocated to COMRAM (16 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,16
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
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init_matrix_keypad:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
?_init_timer0:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_check_matrix_keypad:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
	ds   14
??_init_matrix_keypad:	; 1 bytes @ 0xE
??_read_switches:	; 1 bytes @ 0xE
??_init_timer0:	; 1 bytes @ 0xE
?_clcd_write:	; 1 bytes @ 0xE
??_scan_key:	; 1 bytes @ 0xE
	global	?_my_strcmp
?_my_strcmp:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0xE
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0xE
	global	my_strcmp@str1
my_strcmp@str1:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	ds   1
??_clcd_write:	; 1 bytes @ 0xF
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0xF
	ds   1
??_init_clcd:	; 1 bytes @ 0x10
?_clcd_print:	; 1 bytes @ 0x10
??_init_config:	; 1 bytes @ 0x10
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x10
	global	my_strcmp@str2
my_strcmp@str2:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   2
??_my_strcmp:	; 1 bytes @ 0x12
??___lwdiv:	; 1 bytes @ 0x12
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x12
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x12
	ds   1
??_clcd_print:	; 1 bytes @ 0x13
	ds   1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x14
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	my_strcmp@index
my_strcmp@index:	; 2 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x17
	ds   2
??___lwmod:	; 1 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	ds   1
?_clcd_putch:	; 1 bytes @ 0x1A
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x1A
	ds   1
??_clcd_putch:	; 1 bytes @ 0x1B
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x1B
	ds   1
??_check_matrix_keypad:	; 1 bytes @ 0x1C
	global	check_matrix_keypad@i
check_matrix_keypad@i:	; 2 bytes @ 0x1C
	ds   2
	global	check_matrix_keypad@key
check_matrix_keypad@key:	; 1 bytes @ 0x1E
	ds   1
??_main:	; 1 bytes @ 0x1F
	global	main@delay
main@delay:	; 2 bytes @ 0x1F
	ds   2
	global	main@wait
main@wait:	; 2 bytes @ 0x21
	ds   2
;!
;!Data Sizes:
;!    Strings     78
;!    Constant    0
;!    Data        16
;!    BSS         14
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     35      65
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    my_strcmp@str2	PTR const unsigned char  size(2) Largest target is 9
;!		 -> user_entry(COMRAM[9]), 
;!
;!    my_strcmp@str1	PTR const unsigned char  size(2) Largest target is 9
;!		 -> password(COMRAM[9]), 
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_6(CODE[4]), STR_5(CODE[9]), STR_4(CODE[15]), STR_3(CODE[17]), 
;!		 -> STR_2(CODE[17]), STR_1(CODE[16]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_check_matrix_keypad
;!    _init_clcd->_clcd_write
;!    _clcd_print->_clcd_write
;!    _check_matrix_keypad->_clcd_putch
;!    _clcd_putch->___lwmod
;!    ___lwmod->___lwdiv
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
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
;! (0) _main                                                 4     4      0    8702
;!                                             31 COMRAM     4     4      0
;!                            ___lwdiv
;!                            ___lwmod
;!                _check_matrix_keypad
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                        _init_config
;!                          _my_strcmp
;! ---------------------------------------------------------------------------------
;! (1) _my_strcmp                                            9     5      4     394
;!                                             14 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0     940
;!                          _init_clcd
;!                 _init_matrix_keypad
;!                        _init_timer0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0     940
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _clcd_print                                           3     0      3    1775
;!                                             16 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _check_matrix_keypad                                  3     3      0    2406
;!                                             28 COMRAM     3     3      0
;!                         _clcd_putch
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _read_switches                                        1     1      0      30
;!                                             14 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (3) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _clcd_putch                                           2     1      1    1368
;!                                             26 COMRAM     2     1      1
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1     940
;!                                             14 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) ___lwmod                                              5     1      4     415
;!                                             21 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     418
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _isr                                                 14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!   ___lwmod
;!     ___lwdiv (ARG)
;!   _check_matrix_keypad
;!     _clcd_putch
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!       _clcd_write (ARG)
;!     _clcd_write
;!     _read_switches
;!       _scan_key
;!   _clcd_print
;!     _clcd_write
;!   _clcd_putch
;!     ___lwdiv (ARG)
;!     ___lwmod (ARG)
;!       ___lwdiv (ARG)
;!     _clcd_write (ARG)
;!   _clcd_write
;!   _init_config
;!     _init_clcd
;!       _clcd_write
;!     _init_matrix_keypad
;!     _init_timer0
;!   _my_strcmp
;!
;! _isr (ROOT)
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
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     23      41       1       69.1%
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
;!ABS                  0      0      41       3        0.0%
;!DATA                 0      0      41      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 62 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2   33[COMRAM] unsigned short 
;;  delay           2   31[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_check_matrix_keypad
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_init_config
;;		_my_strcmp
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	62
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	65
	
l1315:
;main.c: 65: init_config();
	call	_init_config	;wreg free
	goto	l1317
	line	66
;main.c: 66: while (1)
	
l119:
	line	69
	
l1317:
;main.c: 67: {
;main.c: 69: if (passcode_bit < 8)
		movf	((c:_passcode_bit+1)),c,w
	bnz	u611
	movlw	8
	subwf	 ((c:_passcode_bit)),c,w
	btfsc	status,0
	goto	u611
	goto	u610

u611:
	goto	l1329
u610:
	line	72
	
l1319:
;main.c: 70: {
;main.c: 72: if (!passcode_bit)
	movf	((c:_passcode_bit)),c,w
iorwf	((c:_passcode_bit+1)),c,w
	btfss	status,2
	goto	u621
	goto	u620

u621:
	goto	l1327
u620:
	line	74
	
l1321:
;main.c: 73: {
;main.c: 74: clcd_print("ENTER PASSWORD ", (0x80 + (1)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(081h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	75
	
l1323:
;main.c: 75: clcd_write(0xC4, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0C4h)&0ffh
	
	call	_clcd_write
	line	76
	
l1325:
;main.c: 76: clcd_write(0x0F, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Fh)&0ffh
	
	call	_clcd_write
	goto	l1327
	line	77
	
l121:
	line	79
	
l1327:
;main.c: 77: }
;main.c: 79: check_matrix_keypad();
	call	_check_matrix_keypad	;wreg free
	line	80
;main.c: 80: }
	goto	l1317
	line	81
	
l120:
	line	84
	
l1329:
;main.c: 81: else
;main.c: 83: {
;main.c: 84: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	85
	
l1331:
;main.c: 85: if (!my_strcmp(password, user_entry))
		movlw	low(_password)
	movwf	((c:my_strcmp@str1)),c
	movlw	high(_password)
	movwf	((c:my_strcmp@str1+1)),c

		movlw	low(_user_entry)
	movwf	((c:my_strcmp@str2)),c
	movlw	high(_user_entry)
	movwf	((c:my_strcmp@str2+1)),c

	call	_my_strcmp	;wreg free
	movf	(0+?_my_strcmp),c,w
iorwf	(1+?_my_strcmp),c,w
	btfss	status,2
	goto	u631
	goto	u630

u631:
	goto	l1335
u630:
	line	87
	
l1333:
;main.c: 87: clcd_print("PASSWORD SUCCESS", (0x80 + (0)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l1317
	line	88
	
l123:
	line	91
	
l1335:
;main.c: 88: else
;main.c: 89: {
;main.c: 91: if (try)
	movf	((c:_try)),c,w
iorwf	((c:_try+1)),c,w
	btfsc	status,2
	goto	u641
	goto	u640

u641:
	goto	l1341
u640:
	line	93
	
l1337:
;main.c: 92: {
;main.c: 93: --no_of_tries;
	decf	((c:_no_of_tries)),c
	btfss	status,0
	decf	((c:_no_of_tries+1)),c
	line	95
	
l1339:
;main.c: 95: try = 0;
	movlw	high(0)
	movwf	((c:_try+1)),c
	movlw	low(0)
	movwf	((c:_try)),c
	goto	l1341
	line	96
	
l125:
	line	98
	
l1341:
;main.c: 96: }
;main.c: 98: clcd_print("PASSWORD FAILURE", (0x80 + (0)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	99
	
l1343:
;main.c: 99: if (no_of_tries > 0)
	movf	((c:_no_of_tries)),c,w
iorwf	((c:_no_of_tries+1)),c,w
	btfsc	status,2
	goto	u651
	goto	u650

u651:
	goto	l126
u650:
	line	101
	
l1345:
;main.c: 100: {
;main.c: 101: clcd_putch('0' + no_of_tries, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr)),c
	movf	((c:_no_of_tries)),c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	102
	
l1347:
;main.c: 102: clcd_print("tries remained", (0xC0 + (2)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	103
	
l1349:
;main.c: 103: for (unsigned short delay = 1000; delay--;)
	movlw	high(03E8h)
	movwf	((c:main@delay+1)),c
	movlw	low(03E8h)
	movwf	((c:main@delay)),c
	goto	l1357
	line	104
	
l128:
	
l1351:
;main.c: 104: for (unsigned short wait = 1200; wait--;)
	movlw	high(04B0h)
	movwf	((c:main@wait+1)),c
	movlw	low(04B0h)
	movwf	((c:main@wait)),c
	goto	l1355
	line	107
	
l130:
	
l1353:
;main.c: 107: passcode_bit = 0;
	movlw	high(0)
	movwf	((c:_passcode_bit+1)),c
	movlw	low(0)
	movwf	((c:_passcode_bit)),c
	goto	l1355
	line	104
	
l129:
	
l1355:
	decf	((c:main@wait)),c
	btfss	status,0
	decf	((c:main@wait+1)),c
		incf	((c:main@wait)),c,w
	bnz	u661
	incf	((c:main@wait+1)),c,w
	btfss	status,2
	goto	u661
	goto	u660

u661:
	goto	l1353
u660:
	goto	l1357
	
l131:
	goto	l1357
	line	103
	
l127:
	
l1357:
	decf	((c:main@delay)),c
	btfss	status,0
	decf	((c:main@delay+1)),c
		incf	((c:main@delay)),c,w
	bnz	u671
	incf	((c:main@delay+1)),c,w
	btfss	status,2
	goto	u671
	goto	u670

u671:
	goto	l1351
u670:
	goto	l1359
	
l132:
	line	109
	
l1359:
;main.c: 109: try = 1;
	movlw	high(01h)
	movwf	((c:_try+1)),c
	movlw	low(01h)
	movwf	((c:_try)),c
	line	110
	
l1361:
;main.c: 110: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	111
;main.c: 111: }
	goto	l1317
	line	112
	
l126:
	line	115
;main.c: 112: else
;main.c: 113: {
;main.c: 115: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	117
	
l1363:
;main.c: 117: clcd_print("Try in :", (0xC0 + (0)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	118
	
l1365:
;main.c: 118: clcd_putch('0' + sec % 10, (0xC0 + (11)));
	movlw	low(0CBh)
	movwf	((c:clcd_putch@addr)),c
	movff	(c:_sec),(c:___lwmod@dividend)
	movff	(c:_sec+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	119
	
l1367:
;main.c: 119: clcd_putch('0' + (sec / 10) % 10, (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr)),c
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	movff	(c:_sec),(c:___lwdiv@dividend)
	movff	(c:_sec+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	120
	
l1369:
;main.c: 120: clcd_putch('0' + sec / 100, (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr)),c
	movff	(c:_sec),(c:___lwdiv@dividend)
	movff	(c:_sec+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	121
	
l1371:
;main.c: 121: clcd_print("sec", (0xC0 + (13)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0CDh)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	124
	
l1373:
;main.c: 124: if (count >= 10)
		movf	((c:_count+1)),c,w
	bnz	u680
	movlw	10
	subwf	 ((c:_count)),c,w
	btfss	status,0
	goto	u681
	goto	u680

u681:
	goto	l1317
u680:
	line	126
	
l1375:
;main.c: 125: {
;main.c: 126: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	127
	
l1377:
;main.c: 127: if (--sec == 0)
	decf	((c:_sec)),c
	btfss	status,0
	decf	((c:_sec+1)),c
	movf	((c:_sec)),c,w
iorwf	((c:_sec+1)),c,w
	btfss	status,2
	goto	u691
	goto	u690

u691:
	goto	l135
u690:
	line	130
	
l1379:
;main.c: 128: {
;main.c: 130: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	131
	
l1381:
;main.c: 131: try = 1;
	movlw	high(01h)
	movwf	((c:_try+1)),c
	movlw	low(01h)
	movwf	((c:_try)),c
	line	133
;main.c: 133: passcode_bit = 0;
	movlw	high(0)
	movwf	((c:_passcode_bit+1)),c
	movlw	low(0)
	movwf	((c:_passcode_bit)),c
	line	135
;main.c: 135: no_of_tries = 3;
	movlw	high(03h)
	movwf	((c:_no_of_tries+1)),c
	movlw	low(03h)
	movwf	((c:_no_of_tries)),c
	line	137
;main.c: 137: sec = 180;
	movlw	high(0B4h)
	movwf	((c:_sec+1)),c
	movlw	low(0B4h)
	movwf	((c:_sec)),c
	line	138
	
l135:
	line	140
;main.c: 138: }
;main.c: 140: count = 0;
	movlw	high(0)
	movwf	((c:_count+1)),c
	movlw	low(0)
	movwf	((c:_count)),c
	goto	l1317
	line	141
	
l134:
	goto	l1317
	line	143
	
l133:
	goto	l1317
	line	144
	
l124:
	goto	l1317
	line	145
	
l122:
	goto	l1317
	line	146
	
l136:
	line	66
	goto	l1317
	
l137:
	line	147
	
l138:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_my_strcmp

;; *************** function _my_strcmp *****************
;; Defined at:
;;		line 11 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str1            2   14[COMRAM] PTR const unsigned char 
;;		 -> password(9), 
;;  str2            2   16[COMRAM] PTR const unsigned char 
;;		 -> user_entry(9), 
;; Auto vars:     Size  Location     Type
;;  index           2   21[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	11
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	11
	global	__size_of_my_strcmp
	__size_of_my_strcmp	equ	__end_of_my_strcmp-_my_strcmp
	
_my_strcmp:
;incstack = 0
	opt	stack 29
	line	14
	
l1225:
;main.c: 14: unsigned short index = 0;
	movlw	high(0)
	movwf	((c:my_strcmp@index+1)),c
	movlw	low(0)
	movwf	((c:my_strcmp@index)),c
	line	16
;main.c: 16: while (str1[index] != '\0' && str2[index] != '\0')
	goto	l1235
	
l98:
	line	19
	
l1227:
;main.c: 17: {
;main.c: 19: if (str1[index] != str2[index])
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str2)),c,w
	movwf	c:fsr2l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str2+1)),c,w
	movwf	1+c:fsr2l
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str1)),c,w
	movwf	c:fsr1l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str1+1)),c,w
	movwf	1+c:fsr1l
	movf	postinc2,w
xorwf	postinc1,w
	btfsc	status,2
	goto	u481
	goto	u480

u481:
	goto	l1233
u480:
	line	20
	
l1229:
;main.c: 20: return str1[index] - str2[index];
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str2)),c,w
	movwf	c:fsr2l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str2+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_my_strcmp+0+0)&0ffh,c
	clrf	(??_my_strcmp+0+0+1)&0ffh,c

	comf	(??_my_strcmp+0+0),c
	comf	(??_my_strcmp+0+1),c
	infsnz	(??_my_strcmp+0+0),c
	incf	(??_my_strcmp+0+1),c
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str1)),c,w
	movwf	c:fsr2l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str1+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_my_strcmp+2+0)&0ffh,c
	movf	((??_my_strcmp+2+0)),c,w
	addwf	(??_my_strcmp+0+0),c,w
	movwf	((c:?_my_strcmp)),c
	movlw	0
	addwfc	(??_my_strcmp+0+1),c,w
	movwf	1+((c:?_my_strcmp)),c
	goto	l100
	
l1231:
	goto	l100
	
l99:
	line	22
	
l1233:
;main.c: 22: index++;
	infsnz	((c:my_strcmp@index)),c
	incf	((c:my_strcmp@index+1)),c
	goto	l1235
	line	23
	
l97:
	line	16
	
l1235:
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str1)),c,w
	movwf	c:fsr2l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str1+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfsc	status,2
	goto	u491
	goto	u490
u491:
	goto	l1239
u490:
	
l1237:
	movf	((c:my_strcmp@index)),c,w
	addwf	((c:my_strcmp@str2)),c,w
	movwf	c:fsr2l
	movf	((c:my_strcmp@index+1)),c,w
	addwfc	((c:my_strcmp@str2+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l1227
u500:
	goto	l1239
	
l102:
	goto	l1239
	
l103:
	line	25
	
l1239:
;main.c: 23: }
;main.c: 25: return 0;
	movlw	high(0)
	movwf	((c:?_my_strcmp+1)),c
	movlw	low(0)
	movwf	((c:?_my_strcmp)),c
	goto	l100
	
l1241:
	line	26
	
l100:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_my_strcmp
	__end_of_my_strcmp:
	signat	_my_strcmp,8314
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 29 in file "main.c"
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
;;		_init_clcd
;;		_init_matrix_keypad
;;		_init_timer0
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	29
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	29
	global	__size_of_init_config
	__size_of_init_config	equ	__end_of_init_config-_init_config
	
_init_config:
;incstack = 0
	opt	stack 27
	line	31
	
l1243:
;main.c: 31: init_clcd();
	call	_init_clcd	;wreg free
	line	32
;main.c: 32: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	33
	
l1245:
;main.c: 33: init_timer0();
	call	_init_timer0	;wreg free
	line	34
	
l1247:
;main.c: 34: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	35
	
l106:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_timer0

;; *************** function _init_timer0 *****************
;; Defined at:
;;		line 3 in file "timer0.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"timer0.c"
	line	3
global __ptext3
__ptext3:
psect	text3
	file	"timer0.c"
	line	3
	global	__size_of_init_timer0
	__size_of_init_timer0	equ	__end_of_init_timer0-_init_timer0
	
_init_timer0:
;incstack = 0
	opt	stack 28
	line	6
	
l915:
;timer0.c: 6: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	8
;timer0.c: 8: T08BIT = 0;
	bcf	c:(32430/8),(32430)&7	;volatile
	line	10
;timer0.c: 10: PSA = 0;
	bcf	c:(32427/8),(32427)&7	;volatile
	line	12
;timer0.c: 12: T0PS0 = 0;
	bcf	c:(32424/8),(32424)&7	;volatile
	line	13
;timer0.c: 13: T0PS1 = 1;
	bsf	c:(32425/8),(32425)&7	;volatile
	line	14
;timer0.c: 14: T0PS2 = 0;
	bcf	c:(32426/8),(32426)&7	;volatile
	line	16
;timer0.c: 16: T0CS = 0;
	bcf	c:(32429/8),(32429)&7	;volatile
	line	19
	
l917:
;timer0.c: 19: TMR0 = 3036;
	movlw	high(0BDCh)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0BDCh)
	movwf	((c:4054)),c	;volatile
	line	22
	
l919:
;timer0.c: 22: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	25
	
l921:
;timer0.c: 25: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	26
	
l23:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_timer0
	__end_of_init_timer0:
	signat	_init_timer0,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 4 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	4
global __ptext4
__ptext4:
psect	text4
	file	"matrix_keypad.c"
	line	4
	global	__size_of_init_matrix_keypad
	__size_of_init_matrix_keypad	equ	__end_of_init_matrix_keypad-_init_matrix_keypad
	
_init_matrix_keypad:
;incstack = 0
	opt	stack 28
	line	7
	
l939:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987)),c	;volatile
	line	13
	
l941:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l943:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969)),c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969)),c	;volatile
	line	16
	
l151:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 26 in file "clcd.c"
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
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	26
global __ptext5
__ptext5:
psect	text5
	file	"clcd.c"
	line	26
	global	__size_of_init_clcd
	__size_of_init_clcd	equ	__end_of_init_clcd-_init_clcd
	
_init_clcd:
;incstack = 0
	opt	stack 27
	line	29
	
l1201:
;clcd.c: 29: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	31
	
l1203:
;clcd.c: 31: TRISC = TRISC & 0xF8;
	movf	((c:3988)),c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988)),c	;volatile
	line	33
	
l1205:
;clcd.c: 33: PORTCbits.RC0 = 0;
	bcf	((c:3970)),c,0	;volatile
	line	35
	
l1207:
;clcd.c: 35: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	36
	
l1209:
;clcd.c: 36: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	37
	
l1211:
;clcd.c: 37: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	38
	
l1213:
;clcd.c: 38: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	39
	
l53:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 41 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2   16[COMRAM] PTR const unsigned char 
;;		 -> STR_6(4), STR_5(9), STR_4(15), STR_3(17), 
;;		 -> STR_2(17), STR_1(16), 
;;  addr            1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	41
global __ptext6
__ptext6:
psect	text6
	file	"clcd.c"
	line	41
	global	__size_of_clcd_print
	__size_of_clcd_print	equ	__end_of_clcd_print-_clcd_print
	
_clcd_print:
;incstack = 0
	opt	stack 28
	line	43
	
l1217:
;clcd.c: 43: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_print@addr)),c,w
	
	call	_clcd_write
	line	44
;clcd.c: 44: while (*data != '\0')
	goto	l1223
	
l57:
	line	46
	
l1219:
;clcd.c: 45: {
;clcd.c: 46: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit)),c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_clcd_write
	
l1221:
	infsnz	((c:clcd_print@data)),c
	incf	((c:clcd_print@data+1)),c
	goto	l1223
	line	47
	
l56:
	line	44
	
l1223:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u471
	goto	u470
u471:
	goto	l1219
u470:
	goto	l59
	
l58:
	line	48
	
l59:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_check_matrix_keypad

;; *************** function _check_matrix_keypad *****************
;; Defined at:
;;		line 38 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   28[COMRAM] unsigned short 
;;  key             1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clcd_putch
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"main.c"
	line	38
global __ptext7
__ptext7:
psect	text7
	file	"main.c"
	line	38
	global	__size_of_check_matrix_keypad
	__size_of_check_matrix_keypad	equ	__end_of_check_matrix_keypad-_check_matrix_keypad
	
_check_matrix_keypad:
;incstack = 0
	opt	stack 27
	line	41
	
l1249:
;main.c: 41: unsigned char key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:check_matrix_keypad@key)),c
	line	42
	
l1251:
;main.c: 42: for (unsigned short i = 3000; i--; );
	movlw	high(0BB8h)
	movwf	((c:check_matrix_keypad@i+1)),c
	movlw	low(0BB8h)
	movwf	((c:check_matrix_keypad@i)),c
	goto	l1253
	
l110:
	goto	l1253
	
l109:
	
l1253:
	decf	((c:check_matrix_keypad@i)),c
	btfss	status,0
	decf	((c:check_matrix_keypad@i+1)),c
		incf	((c:check_matrix_keypad@i)),c,w
	bnz	u511
	incf	((c:check_matrix_keypad@i+1)),c,w
	btfss	status,2
	goto	u511
	goto	u510

u511:
	goto	l1253
u510:
	goto	l1255
	
l111:
	line	44
	
l1255:
;main.c: 44: if (key == 1)
		decf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u521
	goto	u520

u521:
	goto	l1263
u520:
	line	46
	
l1257:
;main.c: 45: {
;main.c: 46: user_entry[passcode_bit] = '1';
	movlw	low(_user_entry)
	addwf	((c:_passcode_bit)),c,w
	movwf	c:fsr2l
	movlw	high(_user_entry)
	addwfc	((c:_passcode_bit+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(031h)
	movwf	indf2
	line	47
	
l1259:
;main.c: 47: clcd_putch('*', (0xC0 + (4 + passcode_bit++)));
	movf	((c:_passcode_bit)),c,w
	addlw	low(0C4h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l1261:
	infsnz	((c:_passcode_bit)),c
	incf	((c:_passcode_bit+1)),c
	line	48
;main.c: 48: }
	goto	l1271
	line	49
	
l112:
	
l1263:
;main.c: 49: else if (key == 4)
		movlw	4
	xorwf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u531
	goto	u530

u531:
	goto	l1271
u530:
	line	51
	
l1265:
;main.c: 50: {
;main.c: 51: user_entry[passcode_bit] = '0';
	movlw	low(_user_entry)
	addwf	((c:_passcode_bit)),c,w
	movwf	c:fsr2l
	movlw	high(_user_entry)
	addwfc	((c:_passcode_bit+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	line	52
	
l1267:
;main.c: 52: clcd_putch('*', (0xC0 + (4 + passcode_bit++)));
	movf	((c:_passcode_bit)),c,w
	addlw	low(0C4h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l1269:
	infsnz	((c:_passcode_bit)),c
	incf	((c:_passcode_bit+1)),c
	goto	l1271
	line	53
	
l114:
	goto	l1271
	line	55
	
l113:
	
l1271:
;main.c: 53: }
;main.c: 55: if (passcode_bit == 8)
		movlw	8
	xorwf	((c:_passcode_bit)),c,w
iorwf	((c:_passcode_bit+1)),c,w
	btfss	status,2
	goto	u541
	goto	u540

u541:
	goto	l116
u540:
	line	57
	
l1273:
;main.c: 56: {
;main.c: 57: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	58
	
l1275:
;main.c: 58: user_entry[8] = '\0';
	movlw	low(0)
	movwf	(0+((c:_user_entry)+08h)),c
	goto	l116
	line	59
	
l115:
	line	60
	
l116:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_check_matrix_keypad
	__end_of_check_matrix_keypad:
	signat	_check_matrix_keypad,89
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 88 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_check_matrix_keypad
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	88
global __ptext8
__ptext8:
psect	text8
	file	"matrix_keypad.c"
	line	88
	global	__size_of_read_switches
	__size_of_read_switches	equ	__end_of_read_switches-_read_switches
	
_read_switches:
;incstack = 0
	opt	stack 27
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type)),c
	line	92
	
l945:
;matrix_keypad.c: 90: static unsigned char once = 1, key;
;matrix_keypad.c: 92: if (detection_type == 1)
		decf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u151
	goto	u150

u151:
	goto	l963
u150:
	line	94
	
l947:
;matrix_keypad.c: 93: {
;matrix_keypad.c: 94: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key)),c
	line	95
	
l949:
;matrix_keypad.c: 95: if(key != 0xFF && once )
		incf	((c:read_switches@key)),c,w
	btfsc	status,2
	goto	u161
	goto	u160

u161:
	goto	l959
u160:
	
l951:
	movf	((c:read_switches@once)),c,w
	btfsc	status,2
	goto	u171
	goto	u170
u171:
	goto	l959
u170:
	line	97
	
l953:
;matrix_keypad.c: 96: {
;matrix_keypad.c: 97: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once)),c
	line	98
;matrix_keypad.c: 98: return key;
	movf	((c:read_switches@key)),c,w
	goto	l184
	
l955:
	goto	l184
	line	99
	
l957:
;matrix_keypad.c: 99: }
	goto	l969
	line	100
	
l183:
	
l959:
;matrix_keypad.c: 100: else if(key == 0xFF)
		incf	((c:read_switches@key)),c,w
	btfss	status,2
	goto	u181
	goto	u180

u181:
	goto	l969
u180:
	line	102
	
l961:
;matrix_keypad.c: 101: {
;matrix_keypad.c: 102: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once)),c
	goto	l969
	line	103
	
l186:
	goto	l969
	line	104
	
l185:
;matrix_keypad.c: 103: }
;matrix_keypad.c: 104: }
	goto	l969
	line	105
	
l182:
	
l963:
;matrix_keypad.c: 105: else if (detection_type == 0)
	movf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l969
u190:
	line	107
	
l965:
;matrix_keypad.c: 106: {
;matrix_keypad.c: 107: return scan_key();
	call	_scan_key	;wreg free
	goto	l184
	
l967:
	goto	l184
	line	108
	
l188:
	goto	l969
	line	110
	
l187:
	
l969:
;matrix_keypad.c: 108: }
;matrix_keypad.c: 110: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l184
	
l971:
	line	111
	
l184:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 18 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	18
global __ptext9
__ptext9:
psect	text9
	file	"matrix_keypad.c"
	line	18
	global	__size_of_scan_key
	__size_of_scan_key	equ	__end_of_scan_key-_scan_key
	
_scan_key:
;incstack = 0
	opt	stack 27
	line	20
	
l843:
;matrix_keypad.c: 20: PORTBbits.RB5 = 0;
	bcf	((c:3969)),c,5	;volatile
	line	21
;matrix_keypad.c: 21: PORTBbits.RB6 = 1;
	bsf	((c:3969)),c,6	;volatile
	line	22
;matrix_keypad.c: 22: PORTBbits.RB7 = 1;
	bsf	((c:3969)),c,7	;volatile
	line	24
;matrix_keypad.c: 24: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969)),c,1	;volatile
	goto	u31
	goto	u30
u31:
	goto	l154
u30:
	line	26
	
l845:
;matrix_keypad.c: 25: {
;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l155
	
l847:
	goto	l155
	line	27
	
l849:
;matrix_keypad.c: 27: }
	goto	l156
	line	28
	
l154:
;matrix_keypad.c: 28: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u41
	goto	u40
u41:
	goto	l157
u40:
	line	30
	
l851:
;matrix_keypad.c: 29: {
;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l155
	
l853:
	goto	l155
	line	31
	
l855:
;matrix_keypad.c: 31: }
	goto	l156
	line	32
	
l157:
;matrix_keypad.c: 32: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u51
	goto	u50
u51:
	goto	l159
u50:
	line	34
	
l857:
;matrix_keypad.c: 33: {
;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l155
	
l859:
	goto	l155
	line	35
	
l861:
;matrix_keypad.c: 35: }
	goto	l156
	line	36
	
l159:
;matrix_keypad.c: 36: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u61
	goto	u60
u61:
	goto	l156
u60:
	line	38
	
l863:
;matrix_keypad.c: 37: {
;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l155
	
l865:
	goto	l155
	line	39
	
l161:
	goto	l156
	line	41
	
l160:
	goto	l156
	
l158:
	
l156:
;matrix_keypad.c: 39: }
;matrix_keypad.c: 41: PORTBbits.RB5 = 1;
	bsf	((c:3969)),c,5	;volatile
	line	42
;matrix_keypad.c: 42: PORTBbits.RB6 = 0;
	bcf	((c:3969)),c,6	;volatile
	line	43
;matrix_keypad.c: 43: PORTBbits.RB7 = 1;
	bsf	((c:3969)),c,7	;volatile
	line	45
;matrix_keypad.c: 45: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969)),c,1	;volatile
	goto	u71
	goto	u70
u71:
	goto	l162
u70:
	line	47
	
l867:
;matrix_keypad.c: 46: {
;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l155
	
l869:
	goto	l155
	line	48
	
l871:
;matrix_keypad.c: 48: }
	goto	l163
	line	49
	
l162:
;matrix_keypad.c: 49: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u81
	goto	u80
u81:
	goto	l164
u80:
	line	51
	
l873:
;matrix_keypad.c: 50: {
;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l155
	
l875:
	goto	l155
	line	52
	
l877:
;matrix_keypad.c: 52: }
	goto	l163
	line	53
	
l164:
;matrix_keypad.c: 53: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u91
	goto	u90
u91:
	goto	l166
u90:
	line	55
	
l879:
;matrix_keypad.c: 54: {
;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l155
	
l881:
	goto	l155
	line	56
	
l883:
;matrix_keypad.c: 56: }
	goto	l163
	line	57
	
l166:
;matrix_keypad.c: 57: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u101
	goto	u100
u101:
	goto	l163
u100:
	line	59
	
l885:
;matrix_keypad.c: 58: {
;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l155
	
l887:
	goto	l155
	line	60
	
l168:
	goto	l163
	line	62
	
l167:
	goto	l163
	
l165:
	
l163:
;matrix_keypad.c: 60: }
;matrix_keypad.c: 62: PORTBbits.RB5 = 1;
	bsf	((c:3969)),c,5	;volatile
	line	63
;matrix_keypad.c: 63: PORTBbits.RB6 = 1;
	bsf	((c:3969)),c,6	;volatile
	line	64
;matrix_keypad.c: 64: PORTBbits.RB7 = 0;
	bcf	((c:3969)),c,7	;volatile
	line	66
;matrix_keypad.c: 66: PORTBbits.RB7 = 0;
	bcf	((c:3969)),c,7	;volatile
	line	68
;matrix_keypad.c: 68: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969)),c,1	;volatile
	goto	u111
	goto	u110
u111:
	goto	l169
u110:
	line	70
	
l889:
;matrix_keypad.c: 69: {
;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l155
	
l891:
	goto	l155
	line	71
	
l893:
;matrix_keypad.c: 71: }
	goto	l911
	line	72
	
l169:
;matrix_keypad.c: 72: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u121
	goto	u120
u121:
	goto	l171
u120:
	line	74
	
l895:
;matrix_keypad.c: 73: {
;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l155
	
l897:
	goto	l155
	line	75
	
l899:
;matrix_keypad.c: 75: }
	goto	l911
	line	76
	
l171:
;matrix_keypad.c: 76: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u131
	goto	u130
u131:
	goto	l173
u130:
	line	78
	
l901:
;matrix_keypad.c: 77: {
;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l155
	
l903:
	goto	l155
	line	79
	
l905:
;matrix_keypad.c: 79: }
	goto	l911
	line	80
	
l173:
;matrix_keypad.c: 80: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u141
	goto	u140
u141:
	goto	l911
u140:
	line	82
	
l907:
;matrix_keypad.c: 81: {
;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l155
	
l909:
	goto	l155
	line	83
	
l175:
	goto	l911
	line	85
	
l174:
	goto	l911
	
l172:
	goto	l911
	
l170:
	
l911:
;matrix_keypad.c: 83: }
;matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l155
	
l913:
	line	86
	
l155:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 50 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1   26[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   27[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_check_matrix_keypad
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	50
global __ptext10
__ptext10:
psect	text10
	file	"clcd.c"
	line	50
	global	__size_of_clcd_putch
	__size_of_clcd_putch	equ	__end_of_clcd_putch-_clcd_putch
	
_clcd_putch:
;incstack = 0
	opt	stack 28
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data)),c
	line	52
	
l1215:
;clcd.c: 52: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_putch@addr)),c,w
	
	call	_clcd_write
	line	53
;clcd.c: 53: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_putch@data)),c,w
	
	call	_clcd_write
	line	54
	
l62:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 3 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;;		Nothing
;; This function is called by:
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;;		_check_matrix_keypad
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	3
global __ptext11
__ptext11:
psect	text11
	file	"clcd.c"
	line	3
	global	__size_of_clcd_write
	__size_of_clcd_write	equ	__end_of_clcd_write-_clcd_write
	
_clcd_write:
;incstack = 0
	opt	stack 27
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte)),c
	line	5
	
l1181:
;clcd.c: 5: PORTCbits.RC1 = control_bit;
	btfsc	(c:clcd_write@control_bit),c,0
	bra	u455
	bcf	((c:3970)),c,1	;volatile
	bra	u456
	u455:
	bsf	((c:3970)),c,1	;volatile
	u456:

	line	6
	
l1183:
;clcd.c: 6: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	9
	
l1185:
;clcd.c: 9: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	10
	
l1187:
;clcd.c: 10: PORTCbits.RC2 = 0;
	bcf	((c:3970)),c,2	;volatile
	line	12
	
l1189:
;clcd.c: 12: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	13
	
l1191:
;clcd.c: 13: PORTCbits.RC0 = 1;
	bsf	((c:3970)),c,0	;volatile
	line	14
	
l1193:
;clcd.c: 14: PORTCbits.RC1 = 0;
	bcf	((c:3970)),c,1	;volatile
	goto	l1195
	line	16
;clcd.c: 16: do
	
l48:
	line	18
	
l1195:
;clcd.c: 17: {
;clcd.c: 18: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	19
	
l1197:
;clcd.c: 19: PORTCbits.RC2 = 0;
	bcf	((c:3970)),c,2	;volatile
	line	20
	
l1199:
;clcd.c: 20: } while (PORTDbits.RD7);
	btfsc	((c:3971)),c,7	;volatile
	goto	u461
	goto	u460
u461:
	goto	l1195
u460:
	
l49:
	line	22
;clcd.c: 22: PORTCbits.RC0 = 0;
	bcf	((c:3970)),c,0	;volatile
	line	23
;clcd.c: 23: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	24
	
l50:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   21[COMRAM] unsigned int 
;;  divisor         2   23[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.36/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 29
	line	13
	
l1299:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u581
	goto	u580

u581:
	goto	l622
u580:
	line	14
	
l1301:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l1305
	
l624:
	line	16
	
l1303:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l1305
	line	18
	
l623:
	line	15
	
l1305:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u591
	goto	u590
u591:
	goto	l1303
u590:
	goto	l1307
	
l625:
	goto	l1307
	line	19
	
l626:
	line	20
	
l1307:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u601
	goto	u600

u601:
	goto	l1311
u600:
	line	21
	
l1309:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l1311
	
l627:
	line	22
	
l1311:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l1313:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l1307
	goto	l622
	
l628:
	line	24
	
l622:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l629:
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
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   18[COMRAM] unsigned int 
;;  counter         1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.36/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l1277:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l1279:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u551
	goto	u550

u551:
	goto	l612
u550:
	line	16
	
l1281:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l1285
	
l614:
	line	18
	
l1283:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l1285
	line	20
	
l613:
	line	17
	
l1285:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u561
	goto	u560
u561:
	goto	l1283
u560:
	goto	l1287
	
l615:
	goto	l1287
	line	21
	
l616:
	line	22
	
l1287:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l1289:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u571
	goto	u570

u571:
	goto	l1295
u570:
	line	24
	
l1291:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l1293:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l1295
	line	26
	
l617:
	line	27
	
l1295:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l1297:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l1287
	goto	l612
	
l618:
	line	29
	
l612:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l619:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 6 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"isr.c"
	line	6
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 27
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_isr+0
	movff	pclat+1,??_isr+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_isr+2
	movff	fsr0h+0,??_isr+3
	movff	fsr1l+0,??_isr+4
	movff	fsr1h+0,??_isr+5
	movff	fsr2l+0,??_isr+6
	movff	fsr2h+0,??_isr+7
	movff	prodl+0,??_isr+8
	movff	prodh+0,??_isr+9
	movff	tblptrl+0,??_isr+10
	movff	tblptrh+0,??_isr+11
	movff	tblptru+0,??_isr+12
	movff	tablat+0,??_isr+13
	line	9
	
i2l1071:
;isr.c: 9: if (TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u34_41
	goto	i2u34_40
i2u34_41:
	goto	i2l33
i2u34_40:
	line	12
	
i2l1073:
;isr.c: 10: {
;isr.c: 12: TMR0 = TMR0 + 3038;
	movlw	low(0BDEh)
	addwf	((c:4054)),c,w	;volatile
	movwf	((c:4054)),c	;volatile
	movlw	high(0BDEh)
	addwfc	((c:4054+1)),c,w	;volatile
	movwf	1+((c:4054)),c	;volatile
	line	14
	
i2l1075:
;isr.c: 14: count++;
	infsnz	((c:_count)),c
	incf	((c:_count+1)),c
	line	16
	
i2l1077:
;isr.c: 16: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l33
	line	17
	
i2l32:
	line	18
	
i2l33:
	movff	??_isr+13,tablat+0
	movff	??_isr+12,tblptru+0
	movff	??_isr+11,tblptrh+0
	movff	??_isr+10,tblptrl+0
	movff	??_isr+9,prodh+0
	movff	??_isr+8,prodl+0
	movff	??_isr+7,fsr2h+0
	movff	??_isr+6,fsr2l+0
	movff	??_isr+5,fsr1h+0
	movff	??_isr+4,fsr1l+0
	movff	??_isr+3,fsr0h+0
	movff	??_isr+2,fsr0l+0
	movff	??_isr+1,pclat+1
	movff	??_isr+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
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
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
