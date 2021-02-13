#include "main.h"

unsigned short adc(void)
{
	unsigned short data;

	//Start ADC conversion
	ADCON0bits.GO = 1;

	//wait till conversion is complete
	while(ADCON0bits.GO);

	//Store the result
	data = ADRESH;
	data = (data << 8) | ADRESL;

	return data;
}
