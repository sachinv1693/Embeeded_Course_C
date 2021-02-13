#ifndef MAIN_H
#define MAIN_H

/* Please use this file to use all architecture dependent contents like Port Informations, system specific header files etc. */
#include "pic_specific.h"
#include "clcd.h"
#include "timer0.h"
#include "isr.h"
#include "eeprom.h"
#include "matrix_keypad.h"

#define MAX_PASSCODE_LEN    8
#define MAX_TRIES_ALLOWED   3
#define BLOCK_TIME_IN_SEC   180

#define ON				    1
#define OFF				    0

#endif

