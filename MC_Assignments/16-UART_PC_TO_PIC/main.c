#include "pic_specific.h"
#include "main.h"
#include "uart.h"
#include "clcd.h"

void init_config(void)
{
	init_uart();
	init_clcd();
	puts("Emertxe Information Technologies. Press any key to continue\n\r");
	getch();
}

void main()
{
	char c, i = 0;

	init_config();

	puts("Welcome. This is UART Test Code.\n\r");
	puts("You can see on clcd whatever you type:\n\r");

	while (1)
	{
                        //As long as i is less than 16, print on 1st line
			if (i < 16)
					clcd_putch(getche(), LINE1(i++));
                        //As i is greater 15, then print on line 2 with adjusted index value
			else if (i < 32)
					clcd_putch(getche(), LINE2(i++ - 16));
                        //Make i = 0 when it reaches to 32
			else
					i = 0;
	}
}
