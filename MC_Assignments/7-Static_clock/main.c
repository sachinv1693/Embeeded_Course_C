#include "main.h"

//An array to hold values to be displayed on 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//A digit array to hold set of values to be displayed on 7SD
static unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};

//Variables to store values of sec, min, hr and timer count
unsigned short sec = 0, min = 0, hr = 0, count = 0;

//Initialize 7SD and timer0
void init_config(void)
{
		init_ssd_control();
		init_timer0();
		GIE = 1;
}

void main(void)
{
		init_config();
		while (1)
		{
				//Uodate display contents in terms of hr-min
				DISPLAY_CONTENT(min, hr);
				//Add 3036 with 2 extra cycle
				//For 0.5 sec, glow the dot, for later half don't glow the dot
				if (count < 20) 
						ssd[1] |= DOT;
				else
						ssd[1] |= BLANK;
				//Call to Display function
				display(ssd);
		}
}

