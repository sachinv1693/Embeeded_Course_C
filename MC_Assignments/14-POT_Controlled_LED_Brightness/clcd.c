#include "main.h"

void write_lcd(unsigned char data, unsigned char mode)
{
	PORTD = data;
	RS = mode;
	RW = 0;
	LCD_STROBE;
}

void is_busy(void)
{
	//Config RD7 as an input port
	TRISDbits.RD7 = 1;

	RS = 0;
	RW = 1;

	do 
	{
		LCD_STROBE;
	}while (BUSY);

	//Config PORTD as an output
	TRISDbits.RD7 = 0;
}

void puts(unsigned char location, const char *ptr)
{
	write_lcd(location, CMD_MODE);

	//Wait, if LCD is busy 
	is_busy();

	while (*ptr)
	{
		is_busy();
		write_lcd(*ptr++, DATA_MODE);
	}
}

void putchar(unsigned char location, unsigned char ch)
{
	write_lcd(location, CMD_MODE);

	//Wait, if LCD is busy 
	is_busy();

	write_lcd(ch, DATA_MODE);
}

