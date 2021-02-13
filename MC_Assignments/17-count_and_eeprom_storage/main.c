#include "main.h"

//Global Variables storing passcode bit and string index value
//Variable to store non-blocking delay element, display count & timer count
unsigned short delay = 0, tim_count = 0;

//Initialize a string with all zeros & define eeprom address. Define the display persepective as 'counting display'. A read address to read from eeprom
static unsigned char count_str[] = "0000000000", eeprom_addr = 0x00, read_addr = 0x00, display = COUNTING_DISP, storage_str[11], disp_num = 1, count_overflow = OFF, first_change = OFF;

//Initialize clcd, matrix keypad, eeprom and timer0 peripherals
static void init_config(void)
{
		init_clcd();
		init_matrix_keypad();
		init_timer0();
		GIE = 1;
}

/* Function to write 10 bytes onto the internal eeprom */
void write_onto_eeprom()
{
		for (unsigned short i = 0; i < 10; i++)
		{
				if (eeprom_addr++ == 100)
				//10 strings are allowed to be stored on eeprom. Let's use %100
				write_internal_eeprom((eeprom_addr++) % 100, count_str[i]);
		}
}

/* Function to read 10 bytes from the internal eeprom */
void read_from_eeprom()
{
		//Iterator i
		unsigned short i;
		//Read address holds base address value of the string
		read_addr = disp_num * 10 - 10;
		for (i = 0; i < 10; i++)
		{
				//Read bytes and store in storage string
				storage_str[i] = read_internal_eeprom(read_addr + i);
		}
		//Append a NUL character in the end of the string
		storage_str[i] = '\0';
}

//Function to check values entered from matrix keypad
void check_matrix_keypad(void)
{
		unsigned char key_edge_trig = read_switches(STATE_CHANGE), key_level_trig = read_switches(LEVEL_CHANGE);
		//Write the 10 byte count value onto the eeprom when SWITCH1 is pressed
		if (display == COUNTING_DISP && key_edge_trig == MK_SW1)
				write_onto_eeprom();
		//Change to eeprom storage display when SWITCH4 is long pressed
		else if (display == COUNTING_DISP && key_level_trig == MK_SW4)
		{				
				//Turn ON timer0
				TMR0ON = ON;
				//Change display persepective after 3 sec
				if (tim_count >= 30)
				{
						//Turn OFF timer0 & reset timer count
						TMR0ON = OFF, first_change = ON;
						tim_count = 0;
						//Clear the current screen & switch to counting display
						display = STORAGE_DISP;
						CLEAR_DISP_SCREEN;
						//Read the 1st storage value
						read_from_eeprom();
				}
		}
		//Show next storage string when SWITCH4 is pressed in STORAGE mode
		else if (display == STORAGE_DISP && key_edge_trig == MK_SW4)
		{
				//Don't increment display number on 1st perspective change
				//Otherwise roll it over to 1 when it reaches to 11
				if (!first_change && ++disp_num == 11)
						disp_num = 1;
				//Turn OFF the first_change flag
				first_change = OFF;
				//Call to read 10 byte string from eeprom
				read_from_eeprom();
				//Clear screen
				CLEAR_DISP_SCREEN;
		}
		//Show previous storage string when SWITCH7 is pressed in STORAGE mode
		else if (display == STORAGE_DISP && key_edge_trig == MK_SW7)
		{
				//Decrement display number & turn it to 10 when it reaches to 0
				if (--disp_num == 0)
						disp_num = 10;
				//Call to read 10 byte string from eeprom
				read_from_eeprom();
				//Clear screen
				CLEAR_DISP_SCREEN;
		}
		//Change back to the counting display after long pressing SWITCH7
		else if (display == STORAGE_DISP && key_level_trig == MK_SW7)
		{
				//Turn ON timer0
				TMR0ON = ON;
				//Change display persepective after 3 sec
				if (tim_count >= 30)
				{
						//Turn OFF timer0, reset timer count & display number
						TMR0ON = OFF;
						tim_count = 0, disp_num = 1;
						//Clear the current screen & switch to counting display
						CLEAR_DISP_SCREEN;
						//Change back to counting display perspective
						display = COUNTING_DISP;
				}
		}
		else//Keep the timer count value as 0 when none of the keys is pressed
				tim_count = 0;
}

void main(void)
{
		//Initialize configurations
		init_config();
		while (1)
		{
				//Non-blocking delay
				if (delay++ == 150)
				{
						//Increment unit's place number
						if (++count_str[9] > '9')
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
				//If it is counting display, display the incrementing count
				if (display == COUNTING_DISP)
				{
						clcd_print("COUNTING DISPLAY", LINE1(0));
						clcd_print(count_str, LINE2(3));
				}
				//Otherwise display value read from eeprom storage
				else
				{
						clcd_print("EEPROM STORAGE", LINE1(1));
						//Take care of 2 digit display number
						if (disp_num == 10)
								clcd_print("10", LINE2(1));
						else
								clcd_putch('0' + disp_num, LINE2(2));
						clcd_putch('.', LINE2(3));
						clcd_print(storage_str, LINE2(5));
				}
				//Check for matrix key press
				check_matrix_keypad();
		}
}

