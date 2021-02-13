#include "main.h"

void in_order(BST* current)
{
		//If root is not NULL, perform the operation
		if (current)
		{
				//Recursively print left child's data
				in_order(current -> left);
				//printing current child's data 
				printf("%d ", current -> data);
				//Recursively print right child's data
				in_order(current -> right);
		}
}

