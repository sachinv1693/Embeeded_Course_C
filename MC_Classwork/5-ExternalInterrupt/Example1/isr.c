#include "main.h"
#include "isr.h"

bit key_detected;

void interrupt isr(void)
{
	if (INT0F == 1)
	{
		key_detected = 1;

		INT0F = 0;
	}
}
