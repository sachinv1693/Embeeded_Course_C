#include "main.h"

//An array to hold values to be displayed on 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//A digit array to hold set of values that can be displayed on 7SD
static unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};

//Initialize 7SD and keypad
static void init_config(void)
{
		init_ssd_control();
		init_digital_keypad();
}

void main(void)
{
		unsigned char key;
		unsigned short count, delay = 0;

		init_config();

		//Read from eeprom and store in the count
		count = (read_internal_eeprom(0x00) << 8) | read_internal_eeprom(0x01);

		while (1)
		{
				key = read_digital_keypad(STATE_CHANGE);
				//A non-blocking delay between every next
				if(delay++ == 100)
				{
						//Increment count and reinitialize the delay
						count++;
						delay = 0;
				}
				if (key == SWITCH1)
				//Write the value of count into eeprom
				{
						write_internal_eeprom(0x00, (count >> 8) & 0xFF);
						write_internal_eeprom(0x01, count & 0xFF);
				}
				else if (key == SWITCH2)
				//Reset count value by using switch 2
				{
						write_internal_eeprom(0x00, 0x00);
						write_internal_eeprom(0x01, 0x0A);
				}
				//Reset count value after it reaches max displayable count
				if (count > 9999)
						count = 0;
				//Adjust the display contents based on the display count
				DISPLAY_CONTENT(count);
				//Call to Display function
				display(ssd);
		}
}

