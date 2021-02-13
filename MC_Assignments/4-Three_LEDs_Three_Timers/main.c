#include "pic_specific.h"
#include "main.h"
#include "timer0.h"
#include "timer1.h"
#include "timer2.h"

unsigned short count, count1;

void init_config(void)
{
	PEIE = 1;
	/* Clear old content */
	PORTB = 0x00;

	/* Set PORTB as a Output */
	TRISB = 0x00;

	/* Config PORTB as digital */
	ADCON1 = 0x0F;

	init_timer0();
	init_timer1();
	init_timer2();

	GIE = 1;
}


void main(void)
{
	init_config();
	while (1)
	{
		;
	}
}

