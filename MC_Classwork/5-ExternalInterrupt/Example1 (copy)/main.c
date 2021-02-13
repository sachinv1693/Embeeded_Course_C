#include "main.h"

#include "external_interrupt.h"
#include "isr.h"

//#define POLLING

extern bit key_detected;

static void init_config(void)
{
	ADCON1 = 0x0F;

	TRISB6 = 0;
	TRISB0 = 1;
#ifndef POLLING
	init_external_interrupt();

	GIE = 1;
#endif

}

void main(void)
{
	unsigned short wait1;
	unsigned short wait2;
	unsigned short once = 1;
	init_config();

	while (1)
	{
		if (key_detected)
		{
			key_detected = 0;
			LED8 = !LED8;
		}
#ifdef POLLING
		if( !RC0 && once)
		{
			once = 0;
			key_detected = 1;
		}
		else if(RC0)
		{
			once = 1;
		}
#endif

	for (wait1 = 50; wait1--; )
			for (wait2 = 50000; wait2--; );
	}
}















