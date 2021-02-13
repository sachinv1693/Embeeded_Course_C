#include "main.h"

//An array to hold values to be displayed on 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//Digits array having set of values to be displayed on the 7SD
static unsigned char digit[] = {ZERO, ONE,TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};

//Initialize 7SD and keypad configurations
static void init_config(void)
{
		//Initialize 7SD
		init_ssd_control();
		//Initialize digital keypad
		init_digital_keypad();
		//Initialize timer0
		init_timer0();
		//Enable global interrupt
		GIE = 1;
}

//Variable to be displayed on 7SD, tim_count is timer count, incrementer flag
unsigned short disp_count = 0, tim_count = 0, inc_flag = ON;

void main(void)
{
		//Initialize 7SD, keypad & timer0
		init_config();
		while (1)
		{
				//Check for edge trigger
				if (read_digital_keypad(STATE_CHANGE) == SWITCH1)
				{
						//Keep the timer count as 0
						tim_count = 0;
						//Increment display count unless it's reinitialzed to 0
						(inc_flag) ? ++disp_count : inc_flag = ON;
				}
				//Turn ON the timer if level triggered else turn it OFF
				else if (read_digital_keypad(LEVEL) == SWITCH1)
						TMR0ON = ON;
				else
						TMR0ON = OFF;
				//Reset the count if it exceeds 9999
				if (disp_count > 9999)
						disp_count = 0;
				//Adjust the 7SD display contents based on value of i
				DISPLAY_CONTENT(disp_count);
				//Call to Display function
				display(ssd);
		}
}

