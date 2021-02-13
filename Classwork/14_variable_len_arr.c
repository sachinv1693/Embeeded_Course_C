#include <stdio.h>

int main()
{
		int s;
		printf("How many elements you want to insert?\n");
		scanf("%d", &s);
		int  k[s];
		for(int i=0; i<s; i++)
		{
		printf("Enter elememt %d: ", i+1);
		scanf("%d", &k[i]);
		}
		return 0;
}
