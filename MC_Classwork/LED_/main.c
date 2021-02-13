#include "main.h"
#include "digital_keypad.h"

#define BLOCKING           0

static void init_config(void)
{
		//Set ADCON1 to 0xFF so that all the pins are digital pins
		ADCON1 = 0x0F;
		//Initialize LED_ARRAY to 0 i.e. in OFF condition
		LED1 = OFF;
		//LED2 = ON;
		//Set TRISB to 0 so that the port behaves as output port
		TRISB = 0x00;
}

void main(void)
{
		int count = 0, period = 1000;
		unsigned char key;
		init_config();
		while (1)
		{
				key = read_digital_keypad(LEVEL);
				if (key == SWITCH1)
				{
						if (count < 1000)
								count++;
				}
				else if (key == SWITCH2)
				{
						if (count > 0)
								count--;
				}
				LED1 = ON;
				for (volatile int i = count; i--;);
				LED1 = OFF;
				for (volatile int i = period - count; i--;);
				for (volatile int i = 50000; i--;);
		}
}

