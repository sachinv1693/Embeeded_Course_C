#ifndef PIC_SPECIFIC_H
#define PIC_SPECIFIC_H

#include <xc.h>

#define _XTAL_FREQ 20000000

#pragma config OSC			= XT
#pragma config WDT			= OFF
#pragma config BOREN		= OFF
#pragma config PBADEN		= OFF
#pragma config LVP			= OFF

/* The name LED1 is based on the legend in eCee Board */
#define LED8				RB6

#endif
