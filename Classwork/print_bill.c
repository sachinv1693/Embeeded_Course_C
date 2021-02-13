#include <stdio.h>
#include <stdio_ext.h>

int main()
{
		int no_of_items, total_quantity = 0;
		printf("Enter the number of items: ");
		scanf("%d", &no_of_items);
		if (no_of_items > 0)
		{	
				//Since we are going to print only 14 characters, let each element of the array contain 15 characters (14 + '\0')
				char item_str[no_of_items * 15];
				int pcs[no_of_items];
				float cost[no_of_items], total_cost = 0;
				for(int i = 0; i < no_of_items; i++)
				{
						__fpurge(stdin);
						printf("Enter the item %d: ", i + 1);
						scanf("%[^\n]", &item_str[i * 15]);
						printf("Enter no of pcs: ");
						scanf("%d", &pcs[i]);
						printf("Enter the cost: ");
						scanf("%f", &cost[i]);
				}
				printf("\n-------------------------------------------------------------\n");
				printf("S.No  Name%*sQuantity%*sCost%*sAmount", 12, "", 11, "", 10, "");
				printf("\n-------------------------------------------------------------\n");
				for (int j = 0; j < no_of_items; j++)
				{
						total_cost += (pcs[j] * cost[j]);
						total_quantity += pcs[j];
						printf("%2.1d.   %-16.14s%8.1d%15.2f%16.2f\n", j + 1, &item_str[j * 15], pcs[j], cost[j], pcs[j] * cost[j]);
				}
				printf("-------------------------------------------------------------\n");
				printf("Total%25.1d%31.2f", total_quantity, total_cost);
				printf("\n-------------------------------------------------------------\n\n");
		}
		else
		{
				printf("Error: Invalid no. of items\n\n");
		}

		return 0;
}
