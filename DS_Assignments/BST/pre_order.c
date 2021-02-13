#include "main.h"

void pre_order(BST* current)
{
		//If root is not NULL, perform the operation
		if (current)
		{
				//printing current child's data 
				printf("%d ", current -> data);
				//Recursively print left child's data
				pre_order(current -> left);
				//Recursively print right child's data
				pre_order(current -> right);
		}
}

