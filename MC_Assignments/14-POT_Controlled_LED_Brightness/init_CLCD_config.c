#include "main.h"

void init_CLCD_config(void)
{
	//Config PORTD as output port, for sending the data
	TRISD = 0;

	//Config PORTC as output port, for sending the control signals
	TRISC = 0;

	delay(250);
	EIGHT_BIT_TWO_LINE_DISPLAY;

	delay(250);
	DISPLAY_ON_CURSOR_ON;

	delay(5);
	CLEAR_DISPLAY;

	delay(5);
	ENTRY_MODE;
}
