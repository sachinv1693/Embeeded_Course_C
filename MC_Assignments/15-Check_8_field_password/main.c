#include "main.h"

//Global Variables storing timer count, no. of tries, try flag, non-blocking delay and a passcode bit which also works as string index value
unsigned short count = 0, try = ON, no_of_tries = MAX_TRIES_ALLOWED, passcode_bit = 0, sec = BLOCK_TIME_IN_SEC;
//Original password string
unsigned char password[] = "10010011";
//A string to fetch user entry string having 8-bit passcode and a NUL character
unsigned char user_entry[MAX_PASSCODE_LEN + 1];

/* String compare function which returns 0 if the given strings are equal */
unsigned short my_strcmp(const char *str1, const char *str2)
{
		//A variable to hold string index
		unsigned short index = 0;
		//Both strings are equal in length
		while (str1[index] != '\0' && str2[index] != '\0')
		{
				//If characters are not matching, return the ascii difference
				if (str1[index] != str2[index])
						return str1[index] - str2[index];
				//Move to next index
				index++;
		}
		//Return 0 is both strings are equal
		return 0;
}

//Initialize clcd, matrix keypad and timer0 peripherals
static void init_config(void)
{
		init_clcd();
		init_matrix_keypad();
		init_timer0();
		GIE = 1;
}

//Function to check values entered from matrix keypad
void check_matrix_keypad(void)
{
		//key to hold edge triggered switch value
		unsigned char key = read_switches(STATE_CHANGE);
		for (unsigned short i = 3000; i--; );
		//If key is SW1, encode '1' and encode '0' for SW2
		if (key == MK_SW1)
		{
				user_entry[passcode_bit] = '1';
				clcd_putch('*', LINE2(4 + passcode_bit++));
		}
		else if (key == MK_SW4)
		{
				user_entry[passcode_bit] = '0';
				clcd_putch('*', LINE2(4 + passcode_bit++));
		}
		//Once index reaches to MAX_PASSCODE_LEN, clear lcd display and put a terminating '\0'
		if (passcode_bit == MAX_PASSCODE_LEN)
		{
				CLEAR_DISP_SCREEN;
				user_entry[MAX_PASSCODE_LEN] = '\0';
		}
}

void main(void)
{
		//Initialize configurations
		init_config();
		while (1)
		{
				//Accept passcode bits from 0 to MAX_PASSCODE_LEN - 1
				if (passcode_bit < MAX_PASSCODE_LEN)
				{
						//Display to enter the password
						if (!passcode_bit)
						{
								clcd_print("ENTER PASSWORD ", LINE1(1));
								MOV_CURSOR_ADDR(0xC4);
								DISP_ON_AND_CURSOR_BILNK_ON;	
						}
						//Check for matrix key press
						check_matrix_keypad();
				}
				else
				//Check if given passcode matches with the original passcode
				{
						DISP_ON_AND_CURSOR_OFF;
						if (!my_strcmp(password, user_entry))
								//Display success message if password matched
								clcd_print("PASSWORD SUCCESS", LINE1(0));
						else//No. of tries are reduced
						{
								//no. of tries should not be reduced on every iteration
								if (try)
								{
										--no_of_tries;
										//Turn off the flag
										try = OFF;
								}
								//Display password failure message along with no. of remaining tries on the next line if more than 0 tries are available
								clcd_print("PASSWORD FAILURE", LINE1(0));
								if (no_of_tries > 0)
								{
										clcd_putch('0' + no_of_tries, LINE2(0));
										clcd_print("tries remained", LINE2(2));
										for (unsigned short delay = 1000; delay--;)
												for (unsigned short wait = 1200; wait--;);
										//Show the message till some time
												//Reset delay & passcode bit
												passcode_bit = 0;
												//Turn on the flag & clear display screen
												try = ON;
												CLEAR_DISP_SCREEN;
								}
								else//Lock for 3 min
								{
										//Turn ON timer0 for 180 sec
										TMR0ON = ON;
										//Display remaing sec
										clcd_print("Try in :", LINE2(0));
										clcd_putch('0' + sec % 10, LINE2(11));
										clcd_putch('0' + (sec / 10) % 10, LINE2(10));
										clcd_putch('0' + sec / 100, LINE2(9));
										clcd_print("sec", LINE2(13));
										//For 1 sec, required count is 10
										//Use >= to avoid missing timer event
										if (count >= 10)
										{
												CLEAR_DISP_SCREEN;
												if (--sec == 0)
												{
														//Turn OFF timer0 & turn ON try flag
														TMR0ON = OFF;
														try = ON;
														//Reset passcode_bit
														passcode_bit = 0;
														//Make 3 tries available
														no_of_tries = MAX_TRIES_ALLOWED;
														//Reinitialize time in sec
														sec = BLOCK_TIME_IN_SEC;
												}
												//Reset timer count
												count = 0;
										}    

								}
						}
				}
		}
}

