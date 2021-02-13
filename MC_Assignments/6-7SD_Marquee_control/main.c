#include "pic_specific.h"
#include "digital_keypad.h"
#include "main.h"
#include "ssd_display.h"

//An array to hold values to be displayed on 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//Digits array having set of values to be displayed on the 7SD
static unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, MINUS, MINUS};

//Initialize 7SD and keypad configurations
static void init_config(void)
{
		init_ssd_control();
		init_digital_keypad();
}

void main(void)
{
		//Initialize 7SD and keypad
		init_config();
		//i is an iterator, delay to hold the delay count
		unsigned short i = 0, delay = 0;
		//key holds the switch value to be read, key_state holds direction which is initialized to left
		unsigned char key, key_state = TO_LEFT;
		while (1)
		{
				//Read switch value
				key = read_digital_keypad(STATE_CHANGE);
				if (key == SWITCH1)
						key_state = TO_LEFT;
				else if (key == SWITCH2)
						key_state = TO_RIGHT;
				else if (key == SWITCH3)
						key_state = TO_STOP;
				if(delay++ == 300)
				{
						//Increment or decrement i based on key_state
						if (key_state == TO_LEFT)
								++i;
						else if (key_state == TO_RIGHT)
								--i;
						//Reinitialize delay to 0
						delay = 0;
				}
				/* Check if i reaches to -1 on decrementing or if it reaches to 12 on incrementing and reinitialize it. */
				i = (i == -1) ? 11 : (i == 12) ? 0 : i;
				//Adjust the 7SD display contents based on value of i
				DISPLAY_CONTENT(i);
				//Call to Display function
				display(ssd);
		}
}

