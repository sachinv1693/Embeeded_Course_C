#include "main.h"

void post_order(BST* current)
{
		//If root is not NULL, perform the operation
		if (current)
		{
				//Recursively print left child's data
				post_order(current -> left);
				//Recursively print right child's data
				post_order(current -> right);
				//printing current child's data 
				printf("%d ", current -> data);
		}
}

