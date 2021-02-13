#ifndef LCD_H
#define LCD_H

#define RS PORTCbits.RC1
#define RW PORTCbits.RC0
#define EN PORTCbits.RC2
#define BUSY PORTDbits.RD7
#define CMD_MODE 0
#define DATA_MODE 1

#define LCD_STROBE {EN = 1;  \
					delay(1);\
					EN = 0;}

void write_lcd(unsigned char data, unsigned char mode);
void is_busy(void);
void puts(unsigned char location, const char *ptr);
void putchar(unsigned char location, unsigned char ch);

#endif
