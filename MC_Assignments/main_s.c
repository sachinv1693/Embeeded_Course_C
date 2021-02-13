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
		init_config();
		unsigned char key;
		unsigned short count, delay = 0;
		unsigned char mem_reader[2];
		//Use of pointers eats up more space in embedded systems
		void* read = mem_reader;

		mem_reader[0] = read_internal_eeprom(0x00);
		mem_reader[1] = read_internal_eeprom(0x01);
		count = *(unsigned short*)(read);

		while (1)
		{
				key = read_digital_keypad(STATE_CHANGE);
				//A non-blocking delay between every next
				if(delay++ == 100)
				{
						//Increment count and reinitialize the delay
						++count;
						delay = 0;
				}
				if (key == SWITCH1)
				{
						//Read each byte of count and write onto eeprom
						read = &count;
						write_internal_eeprom(0x00, *(unsigned char*)(read));
						write_internal_eeprom(0x01, *(unsigned char*)((unsigned char*)read + 1));
				}
				//Use Switch 2 to reset the count value
				else if (key == SWITCH2)
				{
						write_internal_eeprom(0x00, 0x00);
						write_internal_eeprom(0x01, 0x00);
				}
				//Adjust the display contents based on the display count
				DISPLAY_CONTENT(count);
				//Call to Display function
				display(ssd);
		}
}

