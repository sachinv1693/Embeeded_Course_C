#ifndef DIGITAL_KEYPAD_H
#define DIGITAL_KEYPAD_H

#define STATE_CHANGE			1

#define SWITCH1					0x0E
#define SWITCH2					0x0D
#define SWITCH3					0x0B
#define INPUT_PINS				0x0F
#define ALL_RELEASED			0x0F

void init_digital_keypad(void);
unsigned char read_digital_keypad(unsigned char detection_type);

#endif
