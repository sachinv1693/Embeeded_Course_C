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

unsigned char operation(unsigned char key)
{
		//Return numeric equivalents for every switch
		if (key == SWITCH1)
				return 1;
		else if (key == SWITCH2)
				return 2;
		else if (key == SWITCH3)
				return 3;
		else if (key == SWITCH4)
				return 4;
		else
				return 0;
}

unsigned short count = 0, i = 0;

void main(void)
{
		//Initialize LEDs and keypad
		init_config();
		//A key to hold switch state, option to know the key operation & a change flag to note if different key is pressed.
		unsigned char key, opt;
		while (1)
		{
				//Read the switch state
				key = read_digital_keypad(STATE_CHANGE);
				//If key is holding one of the SWITCH values, turn ON the change flag and note the opetation
				if (key != ALL_RELEASED)
				{
						count = i = 0;
						LED_ARRAY = OFF;
						opt = operation(key);
				}
				//Call to LED display function
				switch (opt)
				{
						case 1://Bidirectional LED train
								bi_dir_led_train();
								break;
						case 2://Unidirectional LED train
								uni_dir_led_train();
								break;
						case 3://Glow alternate leds
								glow_alternate_leds();
								break;
						case 4://Glow alternate nibbles
								glow_alternate_nibbles();
								break;
				}
		}
}

