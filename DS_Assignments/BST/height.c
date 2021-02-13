#include "main.h"

data_t height(BST* root)
{
		//Return 0 when NULL is encountered
		if (root == NULL)
				return 0;
		else
		{
				//Recursively call the function to get left sub-tree height
				data_t left_height = height(root -> left);
				//Recursively call the function to get right sub-tree height
				data_t right_height = height(root -> right);
				//Check which sub-tree has more height and return that height +1 to correctly change the tree level
				if (left_height > right_height)
						return left_height + 1;
				else
						return right_height + 1;
		}
}

