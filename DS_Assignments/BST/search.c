#include "main.h"

Status search(BST* root, data_t data)
{
		//Search as long as NULL address is not encountered
		if (root == NULL)
				//No data found
				return FAILURE;
		//Return Success if data is found
		if (root -> data == data)
		{
				return SUCCESS;
		}
		//check if data is smaller than current node's data
		else if (data < (root -> data))
				//Then move to the left node
				return search(root -> left, data);
		else
				//Move to right node if data is greater
				return search(root -> right, data);
}

