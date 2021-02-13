#include "main.h"

void init_config(void)
{
		TRISB0 = 0;
		init_CLCD_config();
		init_ADC_config();
}

void software_pwm(unsigned short data)
{
		//A variable to hold program cycle iteration
		static unsigned short prog_cycle;
		//Keep the LED ON till the required duty cycle is achieved
		LED1 = (prog_cycle < data) ? ON : OFF;
		//Continue till total clock period, else reset program cycle
		if (prog_cycle++ == (unsigned short)PERIOD)
				prog_cycle = 0;
}

void main(void)
{
		unsigned short data;
		char message[] = "Potentiometer";

		init_config();

		puts(LINE1_HOME, message);

		while (1)
		{

				data = adc();

				itoa_display(data);

				software_pwm(data);

		}

}

