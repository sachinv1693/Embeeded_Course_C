#include "main.h"
#include "timer1.h"

void init_timer1(void)
{
	/**/
	TMR1ON = 1;
		/**/
	T1CONbits.RD16 = 1;
	TMR1 = 3036;

	/**/
	T1CKPS1 = 1;
	T1CKPS0 = 0;

	
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
	TMR1IE = 1;

}
