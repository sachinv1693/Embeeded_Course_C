#include "main.h"

//An array to store the value to be displayed on the 7SD
static unsigned char ssd[MAX_SSD_CNT] = {ZERO};
//A digit array to store set of values to be displayed on the 7SD
static unsigned char digit[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};

//Variables to store sec, min, hr, timer count, flag to know if START/STOP button is pressed and a variable to hold the position of the dot
unsigned short sec = 0, min = 0, hr = 0, pressed = 0, count = 0, dot_shift = 1;

//Initialize 7SD and timer0
void init_config(void)
{
		init_ssd_control();
		init_timer0();
		GIE = 1;
}

void main(void)
{
        unsigned char key;
		init_config();
		while (1)
		{
				//Read the key with Edge Triggering
				key = read_digital_keypad(STATE_CHANGE);
				//Display the clock in terms of hr and min
				DISPLAY_CONTENT(min, hr);
				//Turn OFF timer0
				TMR0ON = 0;
				//Start and STOP the clock using SWITCH1
				if (key == SWITCH1)
				{
						//Keep the DOT lit
						ssd[1] |= DOT;
						//Toggle the pressed flag
						pressed = !pressed;
				}
				//If pressed flag is 0, keep the timer running
				else if (!pressed)
				{
						//Turn ON timer0
						TMR0ON = 1;	
						//Keep the dot position at 2nd 7SD.
						dot_shift = 1;
						//If count < 20, glow the decimal point
						if (count < 20)
								ssd[1] |= DOT;
                        //For later half of the count, clear the DOT
						else
								ssd[1] |= BLANK;
				}
				//SWITCH2 to perform shifting of the dot
				else if (pressed && (key == SWITCH2))
				{
						//AND with EIGHT so that dot is not displayed & shift dot position to next 7SD
						ssd[dot_shift++] |= BLANK;
						//Use Mod 4 to adjust dot position from 0 to 3
						//OR with DOT value to display the DOT
						ssd[dot_shift %= 4] |= DOT;
				}
				//SWITCH3 to increment value at dot postion
				else if (pressed && (key == SWITCH3))
				{
						//Depending on dot position, adjust the values
						//Updated values are displayed in next iteration, human eye cannot see this delayed update
						switch (dot_shift)
						{
								case 0://ssd[0]
										hr = ((hr % 10) > 3) ? (hr + 10) % 20 : (hr + 10) % 30;
										break;
								case 1://ssd[1]
										hr = (hr < 23) ? (hr / 10) * 10 + (hr + 1) % 10 : 20 + (hr + 1) % 4;
										break;
								case 2://ssd[2]
										min = (min + 10) % 60;
										break;
								case 3://ssd[3]
										min = (min / 10) * 10 + (min + 1) % 10;
										break;
						}
						//Keep the DOT lit
						ssd[dot_shift] |= DOT;
				}
				else if (pressed && (key == SWITCH4))
				{
						//Depending on dot position, adjust the values
						//Updated values are displayed in next iteration, human eye cannot see this small delay in updating
						switch (dot_shift)
						{
								case 0://ssd[0]
										if ((hr % 10) > 3)
											hr = (hr < 10) ? hr + 10 : hr - 10;
										else
											hr = (hr < 10) ? hr + 20 : hr - 10;
										break;
								case 1://ssd[1]
										if (hr == 20)
												hr = 23;
										else if (hr == 0 || hr == 10)
												hr = (hr / 10) * 10 + 9;
										else
												hr--;
										break;
								case 2://ssd[2]
										min = (min < 10) ? min + 50 : min - 10;
										break;
								case 3://ssd[3]
										min = (!(min % 10)) ? (min / 10) * 10 + 9 : min - 1;
										break;
						}
						//Keep the DOT lit
						ssd[dot_shift] |= DOT;
				}
				else//SWITCH1 is pressed but any other SWITCH is not pressed
				{
						//Keep the DOT lit at position requested
						ssd[dot_shift] |= DOT;
				}
				//Display the 7SD contents
				display(ssd);
		}
}

