#ifndef MAIN_H
#define MAIN_H

#include "pic_specific.h"
#include "digital_keypad.h"
#include "timer0.h"
#include "isr.h"
#include "ssd_display.h"

#define MAX_SSD_CNT		4
#define MAX_COUNT		9
#define COUNT_ADDR		0x00

#define DISPLAY_CONTENT(SEC_MIN, MIN_HR)          \
{                                                 \
		ssd[3] = digit[SEC_MIN % 10];             \
		ssd[2] = digit[SEC_MIN / 10];             \
		ssd[1] = digit[MIN_HR % 10];              \
		ssd[0] = digit[MIN_HR / 10];              \
}

#endif

