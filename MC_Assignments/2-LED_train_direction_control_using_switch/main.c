#include "main.h"
#include "digital_keypad.h"

static void init_config(void)
{
		//Set ADCON1 to 0x0F so that the LED pins become digital pins
		ADCON1 = 0x0F;
		//Initialize LED_ARRAY means PORTB to 0 i.e. all LEDs are OFF initially
		LED_ARRAY = OFF;
		//Set TRISB to 0 so that the PORTB behaves as output port
		TRISB = 0x00;
		init_digital_keypad();
}

void main(void)
{
		//Initialize LEDs and keypad
		init_config();
		//A key to hold switch state & direction initialized as FORWARD
		unsigned char key, direction = FORWARD;
		while (1)
		{
				//Read the switch state
				key = read_digital_keypad(STATE_CHANGE);
				//If key is holding one of the SWITCH values, change direction
			    if (key == SWITCH1)
						direction = !direction;
				//Call to LED display function
		        uni_dir_led_train(direction);
		}
}

