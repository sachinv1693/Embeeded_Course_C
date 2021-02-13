#include "main.h"
#include "timer0.h"
#include "digital_keypad.h"

//Define clock period as 100
#define PERIOD			100
//Variable to store duty cycle, initialized to 25
unsigned char duty_change = 25;

void software_pwm(void)
{
		//A variable to hold program cycle iteration
		static unsigned char prog_cycle;
		//Check if SWITCH1 is pressed
		if (read_digital_keypad(STATE_CHANGE) == SWITCH1)
		{
				//Glow the LED for 5 sec with full intensity (100% Duty cycle)
				duty_change = 100;
				//Turn ON timer0 to wait for 5 sec
				TMR0ON = ON;
		}
		//Keep the LED ON till the required duty cycle is achieved
		if (prog_cycle < duty_change)
				LED1 = ON;
		else
				LED1 = OFF;
		//Continue till total clock period, else reset program cycle
		if (prog_cycle++ == PERIOD)
				prog_cycle = 0;
}

//Function to initialize LED pin
static void init_led(void)
{
		ADCON1 = 0x0F;
		LED1 = OFF;
		TRISB = 0;
}

//Initialize led, keppad and timer configurations
static void init_config(void)
{
		init_led();
		init_digital_keypad();
		init_timer0();
		GIE = 1;
}

void main(void)
{
		init_config();
		while (1)
		{
				//Call the software_pwm function
				software_pwm();
		}
}

