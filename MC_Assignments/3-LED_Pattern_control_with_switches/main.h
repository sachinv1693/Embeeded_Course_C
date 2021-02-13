#ifndef MAIN_H
#define MAIN_H

/* Please use this file to use all architecture dependent contents like Port Informations, system specific header files etc. */
#include "pic_specific.h"

//Extern the variable count and iterator i since it's used by multiple source files
extern unsigned short count, i;

#define ON					1
#define OFF					0
#define LED_ARRAY           PORTB

/* Function Prototypes */
void bi_dir_led_train(void);
void uni_dir_led_train(void);
void glow_alternate_leds(void);
void glow_alternate_nibbles(void);

#endif

