#include "pic_specific.h"
#include "main.h"
#include "ssd_display.h"

//An array to hold values to be displayed on 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//Digits array having set of values to be displayed on the 7SD 
static unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, MINUS, MINUS};

//Initialize 7SD configurations
void init_config(void)
{
		init_ssd_control();
}

void main(void)
{
		//initialze 7SD
		init_config();
		//Varibale i acts as an iterator and delay to hold the delay count
		unsigned short i = 0, delay = 0;
		while(1)
		{
				if (delay++ == 300)
				{
#if TO_LEFT
						//Increment i if it is LEFT rotating Marique
						++i;
#else
						//Decrement i if it is RIGHT rotating Marique
						--i;
#endif
						delay = 0;
				}
				/* Check if i reaches to -1 on decrementing or if it reaches to 12 on incrementing and reinitialize it. */
				i = (i == -1) ? 11 : (i == 12) ? 0 : i;
				//Adjust 7SD display contents based on value of i
				DISPLAY_CONTENT(i);
				//Call to Display function
				display(ssd);
		}
}

