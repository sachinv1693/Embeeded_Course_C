#ifndef MAIN_H
#define MAIN_H

/* Please use this file to use all architecture dependent contents like Port Informations, system specific header files etc. */
#include "pic_specific.h"
//Include all the program headers
#include "digital_keypad.h"
#include "ssd_display.h"
#include "eeprom.h"

#define ON					1
#define OFF					0

#define DISPLAY_CONTENT(x)                   \
{                                            \
        ssd[3] = digit[x % 10];              \
        ssd[2] = digit[(x / 10) % 10];       \
        ssd[1] = digit[(x / 100) % 10];      \
        ssd[0] = digit[(x / 1000)];          \
}

#endif

