#include "main.h"
#include "timer2.h"

void init_timer2(void)
{
	/**/
	TMR2ON = 1;
		/**/
	TMR2 = 6;

	/**/
	T2CKPS1 = 0;
	T2CKPS0 = 1;

	
	/*
	//TMR0ON = 1;

	 * Setting instruction cycle clock (Fosc / 4) as the source of
	 * timer0
	 */
	//T08BIT = 0;
	//PSA = 0;
	//T0PS0 = 0;
	//T0PS1 = 0;
	//T0PS2 = 0;
	//T0CS = 0;

	//TMR0 = 3036;

	/* Clearing timer0 overflow interrupt flag bit */
	//TMR0IF = 0;

	/* Enabling timer0 overflow interrupt */
	TMR2IE = 1;
}
