#include "main.h"
#include "external_interrupt.h"
#include "isr.h"

//#define POLLING
 
bit key_detected;

static void init_config(void)
{
	ADCON1 = 0x0F;
	TRISB1 = 0;
	TRISB0 = 1;

#ifndef POLLING 

	init_external_interrupt();

	GIE = 1;
#endif

}

void main(void)
{
	unsigned short wait1;
	unsigned long int wait2;
	unsigned short once = 1;

	init_config();

	while (1)
	{
		
		if (key_detected)
		{
			key_detected = 0;
			LED2 = !LED2;
		}
#ifdef POLLING

		if ( RC0 && once)
		{
			key_detected= 1;

			once = 0;
		}
		else if(!RC0)
		{
			once = 1;
		}
#endif
	for (wait1 = 50000; wait1--; );
	for (wait2 = 50000; wait2--; );
    //for (wait2 = 50000; wait2--; );
    //for (wait2 = 50000; wait2--; );
	}
}







