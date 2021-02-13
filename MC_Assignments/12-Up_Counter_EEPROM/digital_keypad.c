#include "main.h"

void init_digital_keypad(void)
{
		ADCON1 = 0x0F;
		TRISC = TRISC | INPUT_PINS;
}

unsigned char read_digital_keypad(unsigned char detection_type)
{
		static unsigned char once = 1;

		if (detection_type == STATE_CHANGE)
		{
				if (((KEY_PORT & INPUT_PINS) != ALL_RELEASED) && once)
				{
						once = 0;

						return (KEY_PORT & INPUT_PINS);
				}
				else if ((KEY_PORT & INPUT_PINS) == ALL_RELEASED)
				{
						once = 1;
				}
		}
		else if (detection_type == LEVEL)
		{
				return (KEY_PORT & INPUT_PINS);
		}

		return 0xFF;
}
