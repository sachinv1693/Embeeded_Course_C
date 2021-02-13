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
	FNCALL	_main,___awmod
	FNCALL	_main,_check_matrix_keypad
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_putch
	FNCALL	_main,_init_config
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	_check_matrix_keypad,_clcd_write
	FNCALL	_check_matrix_keypad,_read_switches
	FNCALL	_read_switches,_scan_key
	FNROOT	_main
	global	_selected_index
	global	_display
	global	read_switches@once
	global	_count_str
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	7

;initializer for _selected_index
	dw	(09h)&0ffffh
	line	4

;initializer for _display
	db	low(01h)
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
	file	"main.c"
	line	4

;initializer for _count_str
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(0)
	global	_wait
	global	_count_overflow
	global	_delay
	global	read_switches@key
	global	read_switches@key_state
	global	_ADCON1
_ADCON1	set	0xFC1
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
	global	_RBPU
_RBPU	set	0x7F8F
	global	_TRISD7
_TRISD7	set	0x7CAF
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	67	;'C'
	db	79	;'O'
	db	85	;'U'
	db	78	;'N'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	68	;'D'
	db	73	;'I'
	db	83	;'S'
	db	80	;'P'
	db	76	;'L'
	db	65	;'A'
	db	89	;'Y'
	db	0
	
STR_2:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	73	;'I'
	db	70	;'F'
	db	89	;'Y'
	db	32
	db	67	;'C'
	db	79	;'O'
	db	85	;'U'
	db	78	;'N'
	db	84	;'T'
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
	global	_wait
_wait:
       ds      2
_count_overflow:
       ds      1
_delay:
       ds      1
read_switches@key:
       ds      1
read_switches@key_state:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	7
	global	_selected_index
_selected_index:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	4
_display:
       ds      1
psect	dataCOMRAM
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"main.c"
	line	4
_count_str:
       ds      11
	file	"pic18F4580.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (15 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,15
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
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_clcd_write:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_check_matrix_keypad:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds   1
??_clcd_write:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	ds   1
??_init_clcd:	; 1 bytes @ 0x2
?_clcd_print:	; 1 bytes @ 0x2
?_clcd_putch:	; 1 bytes @ 0x2
??_init_config:	; 1 bytes @ 0x2
??_check_matrix_keypad:	; 1 bytes @ 0x2
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_clcd_putch:	; 1 bytes @ 0x3
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x3
	global	check_matrix_keypad@i
check_matrix_keypad@i:	; 2 bytes @ 0x3
	ds   1
??___awmod:	; 1 bytes @ 0x4
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds   1
??_clcd_print:	; 1 bytes @ 0x5
	global	check_matrix_keypad@key
check_matrix_keypad@key:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds   1
??_main:	; 1 bytes @ 0x6
	ds   4
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds   2
;!
;!Data Sizes:
;!    Strings     30
;!    Constant    0
;!    Data        15
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     12      33
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_2(CODE[13]), STR_1(CODE[17]), count_str(COMRAM[11]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___awmod
;!    _main->_check_matrix_keypad
;!    _init_clcd->_clcd_write
;!    _clcd_putch->_clcd_write
;!    _clcd_print->_clcd_write
;!    _check_matrix_keypad->_clcd_write
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0    3867
;!                                              6 COMRAM     6     6      0
;!                            ___awmod
;!                _check_matrix_keypad
;!                         _clcd_print
;!                         _clcd_putch
;!                        _init_config
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0     620
;!                          _init_clcd
;!                 _init_matrix_keypad
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0     620
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _clcd_putch                                           2     1      1     728
;!                                              2 COMRAM     2     1      1
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _clcd_print                                           3     0      3    1199
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _check_matrix_keypad                                  4     4      0     762
;!                                              2 COMRAM     4     4      0
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _read_switches                                        1     1      0      30
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (3) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1     620
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     424
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awmod
;!   _check_matrix_keypad
;!     _clcd_write
;!     _read_switches
;!       _scan_key
;!   _clcd_print
;!     _clcd_write
;!   _clcd_putch
;!     _clcd_write
;!   _init_config
;!     _init_clcd
;!       _clcd_write
;!     _init_matrix_keypad
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
;!COMRAM              5F      C      21       1       34.7%
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
;!ABS                  0      0      21       3        0.0%
;!DATA                 0      0      21      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMRAM] short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awmod
;;		_check_matrix_keypad
;;		_clcd_print
;;		_clcd_putch
;;		_init_config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	50
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	line	53
	
l1145:
;main.c: 53: init_config();
	call	_init_config	;wreg free
	goto	l1147
	line	54
;main.c: 54: while (1)
	
l127:
	line	57
	
l1147:
;main.c: 55: {
;main.c: 57: if (display == 1)
		decf	((c:_display)),c,w
	btfss	status,2
	goto	u751
	goto	u750

u751:
	goto	l1179
u750:
	line	60
	
l1149:
;main.c: 58: {
;main.c: 60: if (delay++ == 20 && ++count_str[9] > '9')
	incf	((c:_delay)),c
		movlw	21
	xorwf	((c:_delay)),c,w
	btfss	status,2
	goto	u761
	goto	u760

u761:
	goto	l129
u760:
	
l1151:
	incf	(0+((c:_count_str)+09h)),c
		movlw	03Ah-1
	cpfsgt	(0+((c:_count_str)+09h)),c
	goto	u771
	goto	u770

u771:
	goto	l129
u770:
	line	63
	
l1153:
;main.c: 61: {
;main.c: 63: count_overflow = 1;
	movlw	low(01h)
	movwf	((c:_count_overflow)),c
	line	65
;main.c: 65: delay = 0;
	movlw	low(0)
	movwf	((c:_delay)),c
	line	66
	
l129:
	line	68
;main.c: 66: }
;main.c: 68: if (count_overflow)
	movf	((c:_count_overflow)),c,w
	btfsc	status,2
	goto	u781
	goto	u780
u781:
	goto	l1175
u780:
	line	71
	
l1155:
;main.c: 69: {
;main.c: 71: for (short i = 9; i >= 0; i--)
	movlw	high(09h)
	movwf	((c:main@i+1)),c
	movlw	low(09h)
	movwf	((c:main@i)),c
	
l1157:
	btfsc	((c:main@i+1)),c,7
	goto	u790
	goto	u791

u791:
	goto	l1161
u790:
	goto	l1173
	
l1159:
	goto	l1173
	line	72
	
l131:
	line	74
	
l1161:
;main.c: 72: {
;main.c: 74: if (count_str[i] > '9')
	movlw	low(_count_str)
	addwf	((c:main@i)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:main@i+1)),c,w
	movwf	1+c:fsr2l
		movlw	03Ah-1
	cpfsgt	indf2
	goto	u801
	goto	u800

u801:
	goto	l1173
u800:
	line	76
	
l1163:
;main.c: 75: {
;main.c: 76: count_str[i] = '0';
	movlw	low(_count_str)
	addwf	((c:main@i)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:main@i+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	line	77
	
l1165:
;main.c: 77: if (i)
	movf	((c:main@i)),c,w
iorwf	((c:main@i+1)),c,w
	btfsc	status,2
	goto	u811
	goto	u810

u811:
	goto	l1169
u810:
	line	78
	
l1167:
;main.c: 78: count_str[i - 1] += 1;
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	1+(??_main+0+0)&0ffh,c
	movff	(c:main@i),??_main+2+0
	movff	(c:main@i+1),??_main+2+0+1
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low(_count_str)
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	incf	indf2

	goto	l1169
	
l134:
	line	79
;main.c: 79: }
	goto	l1169
	line	80
	
l133:
	line	82
;main.c: 80: else
;main.c: 82: break;
	goto	l1173
	
l135:
	line	71
	
l1169:
	decf	((c:main@i)),c
	btfss	status,0
	decf	((c:main@i+1)),c
	
l1171:
	btfsc	((c:main@i+1)),c,7
	goto	u820
	goto	u821

u821:
	goto	l1161
u820:
	goto	l1173
	
l132:
	line	85
	
l1173:
;main.c: 83: }
;main.c: 85: count_overflow = 0;
	movlw	low(0)
	movwf	((c:_count_overflow)),c
	goto	l1175
	line	86
	
l130:
	line	87
	
l1175:
;main.c: 86: }
;main.c: 87: clcd_print("COUNTING DISPLAY", (0x80 + (0)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(080h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	88
	
l1177:
;main.c: 88: clcd_print(count_str, (0xC0 + (3)));
		movlw	low(_count_str)
	movwf	((c:clcd_print@data)),c
	movlw	high(_count_str)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C3h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	90
;main.c: 90: }
	goto	l1189
	line	92
	
l128:
	line	95
	
l1179:
;main.c: 92: else
;main.c: 93: {
;main.c: 95: clcd_print("MODIFY COUNT", (0x80 + (2)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data)),c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(082h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	line	96
	
l1181:
;main.c: 96: wait = (wait + 1) % 500;
	movlw	low(01h)
	addwf	((c:_wait)),c,w
	movwf	((c:___awmod@dividend)),c
	movlw	high(01h)
	addwfc	((c:_wait+1)),c,w
	movwf	1+((c:___awmod@dividend)),c
	movlw	high(01F4h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(01F4h)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:_wait)
	movff	1+?___awmod,(c:_wait+1)
	line	97
	
l1183:
;main.c: 97: if (wait < 250)
	btfsc	((c:_wait+1)),c,7
	goto	u830
	movf	((c:_wait+1)),c,w
	bnz	u831
	movlw	250
	subwf	 ((c:_wait)),c,w
	btfsc	status,0
	goto	u831
	goto	u830

u831:
	goto	l1187
u830:
	line	98
	
l1185:
;main.c: 98: clcd_print(count_str, (0xC0 + (3)));
		movlw	low(_count_str)
	movwf	((c:clcd_print@data)),c
	movlw	high(_count_str)
	movwf	((c:clcd_print@data+1)),c

	movlw	low(0C3h)
	movwf	((c:clcd_print@addr)),c
	call	_clcd_print	;wreg free
	goto	l1189
	line	99
	
l137:
	line	101
	
l1187:
;main.c: 99: else
;main.c: 100: {
;main.c: 101: clcd_putch(' ', (0xC0 + (3 + selected_index)));
	movf	((c:_selected_index)),c,w
	addlw	low(0C3h)
	movwf	((c:clcd_putch@addr)),c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l1189
	line	103
	
l138:
	goto	l1189
	line	104
	
l136:
	line	106
	
l1189:
;main.c: 103: }
;main.c: 104: }
;main.c: 106: check_matrix_keypad();
	call	_check_matrix_keypad	;wreg free
	goto	l1147
	line	107
	
l139:
	line	54
	goto	l1147
	
l140:
	line	108
	
l141:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 10 in file "main.c"
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
;;		_init_clcd
;;		_init_matrix_keypad
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
	global	__size_of_init_config
	__size_of_init_config	equ	__end_of_init_config-_init_config
	
_init_config:
;incstack = 0
	opt	stack 28
	line	12
	
l1071:
;main.c: 12: init_clcd();
	call	_init_clcd	;wreg free
	line	13
;main.c: 13: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	14
	
l108:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	4
global __ptext2
__ptext2:
psect	text2
	file	"matrix_keypad.c"
	line	4
	global	__size_of_init_matrix_keypad
	__size_of_init_matrix_keypad	equ	__end_of_init_matrix_keypad-_init_matrix_keypad
	
_init_matrix_keypad:
;incstack = 0
	opt	stack 29
	line	7
	
l861:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987)),c	;volatile
	line	13
	
l863:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l865:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969)),c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969)),c	;volatile
	line	16
	
l42:
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"clcd.c"
	line	26
global __ptext3
__ptext3:
psect	text3
	file	"clcd.c"
	line	26
	global	__size_of_init_clcd
	__size_of_init_clcd	equ	__end_of_init_clcd-_init_clcd
	
_init_clcd:
;incstack = 0
	opt	stack 28
	line	29
	
l1047:
;clcd.c: 29: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	31
	
l1049:
;clcd.c: 31: TRISC = TRISC & 0xF8;
	movf	((c:3988)),c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988)),c	;volatile
	line	33
	
l1051:
;clcd.c: 33: PORTCbits.RC0 = 0;
	bcf	((c:3970)),c,0	;volatile
	line	35
	
l1053:
;clcd.c: 35: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	36
	
l1055:
;clcd.c: 36: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	37
	
l1057:
;clcd.c: 37: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	38
	
l1059:
;clcd.c: 38: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	39
	
l20:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 50 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMRAM] const unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	50
global __ptext4
__ptext4:
psect	text4
	file	"clcd.c"
	line	50
	global	__size_of_clcd_putch
	__size_of_clcd_putch	equ	__end_of_clcd_putch-_clcd_putch
	
_clcd_putch:
;incstack = 0
	opt	stack 29
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data)),c
	line	52
	
l1069:
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
	
l29:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 41 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_2(13), STR_1(17), count_str(11), 
;;  addr            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	41
global __ptext5
__ptext5:
psect	text5
	file	"clcd.c"
	line	41
	global	__size_of_clcd_print
	__size_of_clcd_print	equ	__end_of_clcd_print-_clcd_print
	
_clcd_print:
;incstack = 0
	opt	stack 29
	line	43
	
l1061:
;clcd.c: 43: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movf	((c:clcd_print@addr)),c,w
	
	call	_clcd_write
	line	44
;clcd.c: 44: while (*data != '\0')
	goto	l1067
	
l24:
	line	46
	
l1063:
;clcd.c: 45: {
;clcd.c: 46: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit)),c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u537
	tblrd	*
	
	movf	tablat,w
	bra	u530
u537:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u530:
	
	call	_clcd_write
	
l1065:
	infsnz	((c:clcd_print@data)),c
	incf	((c:clcd_print@data+1)),c
	goto	l1067
	line	47
	
l23:
	line	44
	
l1067:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u547
	tblrd	*
	
	movf	tablat,w
	bra	u540
u547:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u540:
	iorlw	0
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l1063
u550:
	goto	l26
	
l25:
	line	48
	
l26:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_check_matrix_keypad

;; *************** function _check_matrix_keypad *****************
;; Defined at:
;;		line 17 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMRAM] unsigned short 
;;  key             1    5[COMRAM] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"main.c"
	line	17
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	17
	global	__size_of_check_matrix_keypad
	__size_of_check_matrix_keypad	equ	__end_of_check_matrix_keypad-_check_matrix_keypad
	
_check_matrix_keypad:
;incstack = 0
	opt	stack 28
	line	19
	
l1073:
;main.c: 19: unsigned char key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:check_matrix_keypad@key)),c
	line	20
	
l1075:
;main.c: 20: for (unsigned short i = 50; i--;);
	movlw	high(032h)
	movwf	((c:check_matrix_keypad@i+1)),c
	movlw	low(032h)
	movwf	((c:check_matrix_keypad@i)),c
	goto	l1077
	
l112:
	goto	l1077
	
l111:
	
l1077:
	decf	((c:check_matrix_keypad@i)),c
	btfss	status,0
	decf	((c:check_matrix_keypad@i+1)),c
		incf	((c:check_matrix_keypad@i)),c,w
	bnz	u561
	incf	((c:check_matrix_keypad@i+1)),c,w
	btfss	status,2
	goto	u561
	goto	u560

u561:
	goto	l1077
u560:
	goto	l1079
	
l113:
	line	22
	
l1079:
;main.c: 22: if (key == 1)
		decf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u571
	goto	u570

u571:
	goto	l1085
u570:
	line	24
	
l1081:
;main.c: 23: {
;main.c: 24: display = !display;
	movf	((c:_display)),c,w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	movlw	1
	goto	u590
u580:
	movlw	0
u590:
	movwf	((c:_display)),c
	line	25
	
l1083:
;main.c: 25: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit)),c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	26
;main.c: 26: }
	goto	l124
	line	28
	
l114:
	
l1085:
;main.c: 28: else if (display == 0 && key == 4)
	movf	((c:_display)),c,w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1093
u600:
	
l1087:
		movlw	4
	xorwf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u611
	goto	u610

u611:
	goto	l1093
u610:
	line	31
	
l1089:
;main.c: 29: {
;main.c: 31: if (--selected_index < 0)
	decf	((c:_selected_index)),c
	btfss	status,0
	decf	((c:_selected_index+1)),c
	btfsc	((c:_selected_index+1)),c,7
	goto	u620
	goto	u621

u621:
	goto	l124
u620:
	line	32
	
l1091:
;main.c: 32: selected_index = 9;
	movlw	high(09h)
	movwf	((c:_selected_index+1)),c
	movlw	low(09h)
	movwf	((c:_selected_index)),c
	goto	l124
	
l117:
	line	33
;main.c: 33: }
	goto	l124
	line	35
	
l116:
	
l1093:
;main.c: 35: else if (display == 0 && key == 7)
	movf	((c:_display)),c,w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l1101
u630:
	
l1095:
		movlw	7
	xorwf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u641
	goto	u640

u641:
	goto	l1101
u640:
	line	38
	
l1097:
;main.c: 36: {
;main.c: 38: if (++count_str[selected_index] > '9')
	movlw	low(_count_str)
	addwf	((c:_selected_index)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:_selected_index+1)),c,w
	movwf	1+c:fsr2l
	incf	indf2

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u651
	goto	u650

u651:
	goto	l124
u650:
	line	39
	
l1099:
;main.c: 39: count_str[selected_index] = '0';
	movlw	low(_count_str)
	addwf	((c:_selected_index)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:_selected_index+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	goto	l124
	
l120:
	line	40
;main.c: 40: }
	goto	l124
	line	42
	
l119:
	
l1101:
;main.c: 42: else if (display == 0 && key == 10)
	movf	((c:_display)),c,w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l124
u660:
	
l1103:
		movlw	10
	xorwf	((c:check_matrix_keypad@key)),c,w
	btfss	status,2
	goto	u671
	goto	u670

u671:
	goto	l124
u670:
	line	45
	
l1105:
;main.c: 43: {
;main.c: 45: if (--count_str[selected_index] < '0')
	movlw	low(_count_str)
	addwf	((c:_selected_index)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:_selected_index+1)),c,w
	movwf	1+c:fsr2l
	decf	indf2

		movlw	030h-0
	cpfslt	indf2
	goto	u681
	goto	u680

u681:
	goto	l124
u680:
	line	46
	
l1107:
;main.c: 46: count_str[selected_index] = '9';
	movlw	low(_count_str)
	addwf	((c:_selected_index)),c,w
	movwf	c:fsr2l
	movlw	high(_count_str)
	addwfc	((c:_selected_index+1)),c,w
	movwf	1+c:fsr2l
	movlw	low(039h)
	movwf	indf2
	goto	l124
	
l123:
	goto	l124
	line	47
	
l122:
	goto	l124
	line	48
	
l121:
	goto	l124
	
l118:
	goto	l124
	
l115:
	
l124:
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
;;  detection_ty    1    0[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_check_matrix_keypad
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"matrix_keypad.c"
	line	88
global __ptext7
__ptext7:
psect	text7
	file	"matrix_keypad.c"
	line	88
	global	__size_of_read_switches
	__size_of_read_switches	equ	__end_of_read_switches-_read_switches
	
_read_switches:
;incstack = 0
	opt	stack 28
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type)),c
	line	92
	
l867:
;matrix_keypad.c: 90: static unsigned char once = 1, key, key_state;
;matrix_keypad.c: 92: if (detection_type == 1)
		decf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u151
	goto	u150

u151:
	goto	l887
u150:
	line	94
	
l869:
;matrix_keypad.c: 93: {
;matrix_keypad.c: 94: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key)),c
	line	95
	
l871:
;matrix_keypad.c: 95: if(key == 0xFF && once)
		incf	((c:read_switches@key)),c,w
	btfss	status,2
	goto	u161
	goto	u160

u161:
	goto	l881
u160:
	
l873:
	movf	((c:read_switches@once)),c,w
	btfsc	status,2
	goto	u171
	goto	u170
u171:
	goto	l881
u170:
	line	97
	
l875:
;matrix_keypad.c: 96: {
;matrix_keypad.c: 97: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once)),c
	line	98
;matrix_keypad.c: 98: return key_state;
	movf	((c:read_switches@key_state)),c,w
	goto	l77
	
l877:
	goto	l77
	line	99
	
l879:
;matrix_keypad.c: 99: }
	goto	l893
	line	100
	
l76:
	
l881:
;matrix_keypad.c: 100: else if(key != 0xFF)
		incf	((c:read_switches@key)),c,w
	btfsc	status,2
	goto	u181
	goto	u180

u181:
	goto	l893
u180:
	line	102
	
l883:
;matrix_keypad.c: 101: {
;matrix_keypad.c: 102: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once)),c
	line	103
	
l885:
;matrix_keypad.c: 103: key_state = key;
	movff	(c:read_switches@key),(c:read_switches@key_state)
	goto	l893
	line	104
	
l79:
	goto	l893
	line	105
	
l78:
;matrix_keypad.c: 104: }
;matrix_keypad.c: 105: }
	goto	l893
	line	106
	
l75:
	
l887:
;matrix_keypad.c: 106: else if (detection_type == 0)
	movf	((c:read_switches@detection_type)),c,w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l893
u190:
	line	108
	
l889:
;matrix_keypad.c: 107: {
;matrix_keypad.c: 108: return scan_key();
	call	_scan_key	;wreg free
	goto	l77
	
l891:
	goto	l77
	line	109
	
l81:
	goto	l893
	line	111
	
l80:
	
l893:
;matrix_keypad.c: 109: }
;matrix_keypad.c: 111: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l77
	
l895:
	line	112
	
l77:
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	18
global __ptext8
__ptext8:
psect	text8
	file	"matrix_keypad.c"
	line	18
	global	__size_of_scan_key
	__size_of_scan_key	equ	__end_of_scan_key-_scan_key
	
_scan_key:
;incstack = 0
	opt	stack 28
	line	20
	
l775:
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
	goto	l45
u30:
	line	26
	
l777:
;matrix_keypad.c: 25: {
;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l46
	
l779:
	goto	l46
	line	27
	
l781:
;matrix_keypad.c: 27: }
	goto	l47
	line	28
	
l45:
;matrix_keypad.c: 28: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u41
	goto	u40
u41:
	goto	l48
u40:
	line	30
	
l783:
;matrix_keypad.c: 29: {
;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l46
	
l785:
	goto	l46
	line	31
	
l787:
;matrix_keypad.c: 31: }
	goto	l47
	line	32
	
l48:
;matrix_keypad.c: 32: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u51
	goto	u50
u51:
	goto	l50
u50:
	line	34
	
l789:
;matrix_keypad.c: 33: {
;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l46
	
l791:
	goto	l46
	line	35
	
l793:
;matrix_keypad.c: 35: }
	goto	l47
	line	36
	
l50:
;matrix_keypad.c: 36: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u61
	goto	u60
u61:
	goto	l47
u60:
	line	38
	
l795:
;matrix_keypad.c: 37: {
;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l46
	
l797:
	goto	l46
	line	39
	
l52:
	goto	l47
	line	41
	
l51:
	goto	l47
	
l49:
	
l47:
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
	goto	l53
u70:
	line	47
	
l799:
;matrix_keypad.c: 46: {
;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l46
	
l801:
	goto	l46
	line	48
	
l803:
;matrix_keypad.c: 48: }
	goto	l54
	line	49
	
l53:
;matrix_keypad.c: 49: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u81
	goto	u80
u81:
	goto	l55
u80:
	line	51
	
l805:
;matrix_keypad.c: 50: {
;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l46
	
l807:
	goto	l46
	line	52
	
l809:
;matrix_keypad.c: 52: }
	goto	l54
	line	53
	
l55:
;matrix_keypad.c: 53: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u91
	goto	u90
u91:
	goto	l57
u90:
	line	55
	
l811:
;matrix_keypad.c: 54: {
;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l46
	
l813:
	goto	l46
	line	56
	
l815:
;matrix_keypad.c: 56: }
	goto	l54
	line	57
	
l57:
;matrix_keypad.c: 57: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u101
	goto	u100
u101:
	goto	l54
u100:
	line	59
	
l817:
;matrix_keypad.c: 58: {
;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l46
	
l819:
	goto	l46
	line	60
	
l59:
	goto	l54
	line	62
	
l58:
	goto	l54
	
l56:
	
l54:
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
	goto	l60
u110:
	line	70
	
l821:
;matrix_keypad.c: 69: {
;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l46
	
l823:
	goto	l46
	line	71
	
l825:
;matrix_keypad.c: 71: }
	goto	l843
	line	72
	
l60:
;matrix_keypad.c: 72: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969)),c,2	;volatile
	goto	u121
	goto	u120
u121:
	goto	l62
u120:
	line	74
	
l827:
;matrix_keypad.c: 73: {
;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l46
	
l829:
	goto	l46
	line	75
	
l831:
;matrix_keypad.c: 75: }
	goto	l843
	line	76
	
l62:
;matrix_keypad.c: 76: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969)),c,3	;volatile
	goto	u131
	goto	u130
u131:
	goto	l64
u130:
	line	78
	
l833:
;matrix_keypad.c: 77: {
;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l46
	
l835:
	goto	l46
	line	79
	
l837:
;matrix_keypad.c: 79: }
	goto	l843
	line	80
	
l64:
;matrix_keypad.c: 80: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969)),c,4	;volatile
	goto	u141
	goto	u140
u141:
	goto	l843
u140:
	line	82
	
l839:
;matrix_keypad.c: 81: {
;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l46
	
l841:
	goto	l46
	line	83
	
l66:
	goto	l843
	line	85
	
l65:
	goto	l843
	
l63:
	goto	l843
	
l61:
	
l843:
;matrix_keypad.c: 83: }
;matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l46
	
l845:
	line	86
	
l46:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 3 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;;		_check_matrix_keypad
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
	global	__size_of_clcd_write
	__size_of_clcd_write	equ	__end_of_clcd_write-_clcd_write
	
_clcd_write:
;incstack = 0
	opt	stack 28
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte)),c
	line	5
	
l1027:
;clcd.c: 5: PORTCbits.RC1 = control_bit;
	btfsc	(c:clcd_write@control_bit),c,0
	bra	u515
	bcf	((c:3970)),c,1	;volatile
	bra	u516
	u515:
	bsf	((c:3970)),c,1	;volatile
	u516:

	line	6
	
l1029:
;clcd.c: 6: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	9
	
l1031:
;clcd.c: 9: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	10
	
l1033:
;clcd.c: 10: PORTCbits.RC2 = 0;
	bcf	((c:3970)),c,2	;volatile
	line	12
	
l1035:
;clcd.c: 12: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	13
	
l1037:
;clcd.c: 13: PORTCbits.RC0 = 1;
	bsf	((c:3970)),c,0	;volatile
	line	14
	
l1039:
;clcd.c: 14: PORTCbits.RC1 = 0;
	bcf	((c:3970)),c,1	;volatile
	goto	l1041
	line	16
;clcd.c: 16: do
	
l15:
	line	18
	
l1041:
;clcd.c: 17: {
;clcd.c: 18: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	19
	
l1043:
;clcd.c: 19: PORTCbits.RC2 = 0;
	bcf	((c:3970)),c,2	;volatile
	line	20
	
l1045:
;clcd.c: 20: } while (PORTDbits.RD7);
	btfsc	((c:3971)),c,7	;volatile
	goto	u521
	goto	u520
u521:
	goto	l1041
u520:
	
l16:
	line	22
;clcd.c: 22: PORTCbits.RC0 = 0;
	bcf	((c:3970)),c,0	;volatile
	line	23
;clcd.c: 23: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	24
	
l17:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
global __ptext10
__ptext10:
psect	text10
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 30
	line	13
	
l1109:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l1111:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u690
	goto	u691

u691:
	goto	l1117
u690:
	line	15
	
l1113:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l1115:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l1117
	line	17
	
l322:
	line	18
	
l1117:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u700
	goto	u701

u701:
	goto	l1121
u700:
	line	19
	
l1119:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l1121
	
l323:
	line	20
	
l1121:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u711
	goto	u710

u711:
	goto	l1137
u710:
	line	21
	
l1123:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l1127
	
l326:
	line	23
	
l1125:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l1127
	line	25
	
l325:
	line	22
	
l1127:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u721
	goto	u720
u721:
	goto	l1125
u720:
	goto	l1129
	
l327:
	goto	l1129
	line	26
	
l328:
	line	27
	
l1129:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u731
	goto	u730

u731:
	goto	l1133
u730:
	line	28
	
l1131:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l1133
	
l329:
	line	29
	
l1133:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l1135:
	decfsz	((c:___awmod@counter)),c
	
	goto	l1129
	goto	l1137
	
l330:
	goto	l1137
	line	31
	
l324:
	line	32
	
l1137:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u741
	goto	u740
u741:
	goto	l1141
u740:
	line	33
	
l1139:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l1141
	
l331:
	line	34
	
l1141:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l332
	
l1143:
	line	35
	
l332:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
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
