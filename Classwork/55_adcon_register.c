#include <stdio.h>

typedef union ADCON
{
		struct Bitfields
		{
				unsigned char adcs0 : 1;
				unsigned char adcs1 : 1;
				unsigned char adcs2 : 1;
				unsigned char acqt0 : 1;
				unsigned char acqt1 : 1;
				unsigned char acqt2 : 1;
				unsigned char       : 1;
				unsigned char adfm  : 1;
		}bitfields;
		unsigned char adcon_byte;
}ADCON;

int main()
{
		ADCON adcon;
		unsigned char opt, val, ch;
		unsigned char* p = (unsigned char*)(&adcon);
		do
		{
		printf("\n-----ADCON Register access-----\
						\n1. Byte access\
						\n2. Bit access\
						\nPlease select an option: ");
		scanf("%hhx", &opt);
		switch (opt)
		{
				case 1://Byte access
						printf("\nEnter a value (0-255): ");
						scanf("%hhx", &val);
						adcon.adcon_byte = val;
						printf("The ADCON register has been set to: %#2x\n\n", *p);
						break;
				case 2://Bit access
						printf("\nWhich bitfield do you want to access?\
										\n1. ADCS0\
										\n2. ADCS1\
										\n3. ADCS2\
										\n4. ACQT0\
										\n5. ACQT1\
										\n6. ACQT2\
										\n7. ADFM\
										\nPlease select an option: ");
						scanf("%hhd", &opt);
						if (opt >= 1 && opt <= 7)
						{
								int bit;
								printf("Press 1 to set or 0 to clear: ");
								scanf("%d", &bit);
								if (bit < 0 || bit > 1)
								{
										printf("Error: Invalid bit value\n");
										goto to_continue;
								}
								switch (opt)
								{
										case 1://ADCS0
												adcon.bitfields.adcs0 = (bit) ? 1 : 0;
												break;
										case 2://ADCS1
												adcon.bitfields.adcs1 = (bit) ? 1 : 0;
												break;
										case 3://ADCS2
												adcon.bitfields.adcs2 = (bit) ? 1 : 0;
												break;
										case 4://ACQT0
												adcon.bitfields.acqt0 = (bit) ? 1 : 0;
												break;
										case 5://ACQT1
												adcon.bitfields.acqt1 = (bit) ? 1 : 0;
												break;
										case 6://ACQT2
												adcon.bitfields.acqt2 = (bit) ? 1 : 0;
												break;
										default://ADFM
												adcon.bitfields.adfm = (bit) ? 0 : 1;
								}
								printf("ADCON register value: %#2x\n\n", adcon.adcon_byte);
						}
						else
								printf("\nError: Invalid option selected.\n");
						break;
				default://Invalid option
						printf("\nInvalid option selected.\n");
		}
to_continue:
		printf("\nDo you want to continue? (y / n): ");
		scanf("\n%c", &ch);
		}
		while (ch == 'y');
						printf("The ADCON register has been set to: %#2x\n\n", *p);
		return 0;
}

