#ifndef PIC_SPECIFIC_H
#define PIC_SPECIFIC_H

#include <xc.h>

#define CLCD_PORT			PORTD
#define CLCD_EN			    RC2
#define CLCD_RS				RC1
#define CLCD_RW				RC0
#define CLCD_BUSY			RD7
#define PORT_DIR			TRISD7

#endif
