#ifndef MAIN_H
#define MAIN_H

#define MAX_SSD_CNT		4
#define MAX_COUNT		9
#define TO_LEFT         1
#define COUNT_ADDR		0x00

#define DISPLAY_CONTENT(x)             \
{                                      \
		ssd[3] = digit[(x + 3) % 12];  \
		ssd[2] = digit[(x + 2) % 12];  \
		ssd[1] = digit[(x + 1) % 12];  \
		ssd[0] = digit[x % 12];        \
}

#endif

