#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
		int flags_c=0, flag_l=0, flag_w=0, opt;
		int nsecs, tfnd;

		nsecs = 0;
		tfnd = 0;
		while ((opt = getopt(argc, argv, "lcw")) != -1) 
		{
				switch (opt) 
				{
						case 'c':
								flags_c = 1;
								break;
						case 'l':
								flag_l = 1;
								break;
						case 'w':
								flag_w = 1;
								break;
						default: /* '?' */
								printf("ERROR\n");
				}
		}
		for (int i = 0; i < argc; i++)
		{
		printf("%s\t", argv[i]);
		}

		printf("\nflags_c=%d; flags_l=%d; flag_w=%d; optind=%d\n",flags_c, flag_l, flag_w, optind);

/*		if (optind >= argc) {
				fprintf(stderr, "Expected argument after options\n");
				exit(EXIT_FAILURE);
		}

		printf("name argument = %s\n", argv[optind]);

		0 Other code omitted 

		exit(EXIT_SUCCESS);*/
}
