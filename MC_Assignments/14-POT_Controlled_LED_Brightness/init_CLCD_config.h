#ifndef INIT_CLCD_CONFIG_H
#define INIT_CLCD_CONFIG_H

#define EIGHT_BIT_TWO_LINE_DISPLAY		write_lcd(0x38, CMD_MODE);
#define DISPLAY_ON_CURSOR_ON			write_lcd(0x0E, CMD_MODE);
#define CLEAR_DISPLAY					write_lcd(0x01, CMD_MODE);
#define ENTRY_MODE						write_lcd(0x06, CMD_MODE);
#define LINE1_HOME						0x80
#define LINE2_HOME						0xC0

void init_CLCD_config(void);

#endif
