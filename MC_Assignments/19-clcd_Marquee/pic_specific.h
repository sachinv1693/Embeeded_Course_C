#ifndef PIC_SPECIFIC_H
#define PIC_SPECIFIC_H

#include <xc.h>

#define CLCD_PORT			PORTD
#define CLCD_EN			    PORTCbits.RC2
#define CLCD_RS				PORTCbits.RC1
#define CLCD_RW				PORTCbits.RC0
#define CLCD_BUSY			PORTDbits.RD7
#define PORT_DIR			TRISD7

#endif
