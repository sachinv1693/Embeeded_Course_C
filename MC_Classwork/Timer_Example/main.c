#include "pic_specific.h"
#include "main.h"
#include "timer1.h"

void init_config(void)
{
	PEIE = 1;
	TMR1IE = 1;
	/* Clear old content */
	PORTB = 0x00;

	/* Set PORTB as a Output */
	TRISB = 0x00;

	/* Config PORTB as digital */
	ADCON1 = 0x0F;

	init_timer1();

	GIE = 1;
}


void main(void)
{
	init_config();
//    RB1 = 1;
	while (1)
	{
		;
	}
}

