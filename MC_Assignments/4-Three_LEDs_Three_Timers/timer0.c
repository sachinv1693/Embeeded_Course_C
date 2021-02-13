#include "main.h"
#include "timer0.h"

void init_timer0(void)
{
	//Turn timer0 ON
    TMR0ON = 1;

	//Using 16-bit resolution
    T08BIT = 0;
	//To enable prescalar
    PSA = 0;
	//Setting prescalar value as 1:2
    T0PS0 = 0;
    T0PS1 = 0;
    T0PS2 = 0;
     /* Setting instruction cycle clock (Fosc / 4) as the source of timer0 */
    T0CS = 0;

	//Setting initial count value from 3036 (65536 - 62500)
    TMR0 = 3036;

    /* Clearing timer0 overflow interrupt flag bit */
    TMR0IF = 0;

    /* Enabling timer0 overflow interrupt */
    TMR0IE = 1;

}

