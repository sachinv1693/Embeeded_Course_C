#ifndef MAIN_H
#define MAIN_H

/* Please use this file to use all architecture dependent contents like Port Informations, system specific header files etc. */
#include "pic_specific.h"

#define ON					1
#define OFF					0
#define FORWARD				1
#define REVERSE				0
#define LED_ARRAY           PORTB

/* Function Prototypes */
void uni_dir_led_train(unsigned char direction);

#endif

