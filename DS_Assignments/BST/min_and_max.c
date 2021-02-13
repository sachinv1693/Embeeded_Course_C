#include "main.h"

Status min_and_max(BST* root)
{
		//Check if BST is empty
		if (root == NULL)
				return FAILURE;
		//Save root address in a temp pointer
		BST* temp = root;
		//Iterate till we find the leftmost node
		while (temp -> left)
		{
				temp = temp -> left;
		}
		//Now we found the minimum node data
		printf("\nMinimum node data = %d\n", temp -> data);
		//Iterate the root pointer till we find the rightmost node
		while (root -> right)
		{
				root = root -> right;
		}
		//Now we found the maximum node data
		printf("Maximum node data = %d\n\n", root -> data);
		return SUCCESS;
}

