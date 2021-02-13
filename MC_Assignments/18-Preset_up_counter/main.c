#include "main.h"

/* Initialize a string with all zeros, a variable to store non-blocking delay count. Define the display persepective in START_MODE. And use a flag to store count overflow value */
static unsigned char count_str[] = "0000000000", delay = 0, display = START_MODE, count_overflow = OFF;

//A varaible to hold the string index value
short selected_index = 9, wait;

//Initialize clcd and matrix keypad
static void init_config(void)
{
		init_clcd();
		init_matrix_keypad();
}

//Function to check values entered from matrix keypad
void check_matrix_keypad(void)
{
		unsigned char key = read_switches(STATE_CHANGE);
		for (unsigned short i = 50; i--;);
		//Change from START mode to STOP mode & vice versa when SW1 is pressed
		if (key == MK_SW1)
		{
				display = !display;
				CLEAR_DISP_SCREEN;
		}
		//Change the cursor position in STOP mode when SW4 is pressed
		else if (display == STOP_MODE && key == MK_SW4)
		{		
				//Shift cursor along with selected digit
				if (--selected_index < 0)
						selected_index = 9;
		}
		//Increment the selected digit in STOP mode when SW7 is pressed
		else if (display == STOP_MODE && key == MK_SW7)
		{
				//Increment the digit & reset it when it reaches to 10
				if (++count_str[selected_index] > '9')
						count_str[selected_index] = '0';	
		}
		//Decrement the selected digit in STOP mode when SW12 is pressed
		else if (display == STOP_MODE && key == MK_SW10)
		{
				//Increment the digit & reset it when it reaches to 10
				if (--count_str[selected_index] < '0')
						count_str[selected_index] = '9';	
		}
}

void main(void)
{
		//Initialize configurations
		init_config();
		while (1)
		{
				//If it is counting display, display the incrementing count
				if (display == START_MODE)
				{
						//Increment unit's value with some non-blocking delay
						if (delay++ == 20 && ++count_str[9] > '9')
						{
								//Turn ON count overflow flag
								count_overflow = ON;
								//Reinitialize the delay to 0
								delay = 0;
						}
						//Check for count overflow to avoid looping in every iteration
						if (count_overflow)
						{
								//Check for every digit value. Note that we should not used 'unsigned' value of iterator since it will be always greater than 0
								for (short i = 9; i >= 0; i--)
								{
										//If digit is more than 9, bring it back to 0 and increment the digit at previous index unless it is index 0
										if (count_str[i] > '9')
										{
												count_str[i] = '0';
												if (i)
														count_str[i - 1] += 1;
										}
										else
												//If digit is not crossing 9, break the loop
												break;
								}
								//Turn OFF the count overflow flag
								count_overflow = OFF;
						}
						clcd_print("COUNTING DISPLAY", LINE1(0));
						clcd_print(count_str, LINE2(3));
						//some delay
				}
				//Otherwise display the STOP mode with MODIFY option
				else
				{
						//clcd_print(count_str, LINE2(3));
						clcd_print("MODIFY COUNT", LINE1(2));
						wait = (wait + 1) % 500;
						if (wait < 250)
								clcd_print(count_str, LINE2(3));
						else
						{
								clcd_putch(' ', LINE2(3 + selected_index));
						}
				}
				//Check for matrix key press
				check_matrix_keypad();
		}
}

