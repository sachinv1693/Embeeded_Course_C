#include "main.h"

//Initialize a string with all zeros
static char str[] = "0000000000";

void main(void)
{
		//Initialize clcd
		init_clcd();
		//Initial count is 0
		unsigned short count = 0;
		while (1)
		{
				//Print every number string on 1st line
				clcd_print(str, LINE1(0));
				//Non-blocking delay
				if (count++ == 800)
				{
						//Increment unit's place number
						str[9]++;
						//Reinitialize the count to 0
						count = 0;
				}
		        //Check for every digit value
				for (unsigned short i = 9; i > 0; i--)
				{
						//If the digit is more than 9, bring it back to 0
						//And increment the digit at previous index
						if (str[i] > '9')
						{
								str[i - 1] += 1;
								str[i] = '0';
						}
						else
								//If digit is not crossing 9, break the loop
								break;
				}
				//Check for the roll over of the first index
				if (str[0] > '9')
						str[0] = '0';
		}
}

