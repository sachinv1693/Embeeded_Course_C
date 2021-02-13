#ifndef MAIN_H
#define MAIN_H

/* Please use this file to use all architecture dependent contents like Port Informations, system specific header files etc. */
#include "pic_specific.h"

#define ON				    1
#define OFF				    0
#define LED_ARRAY			PORTB
#define BLOCKING			OFF

/* Function prototypes */
void blocking_led_train(void);
void non_blocking_led_train(void);

#endif
