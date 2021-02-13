#include "main.h"

data_t find_no_of_nodes(BST* current, data_t count)
{
		//If root is not NULL, perform the operation
		if (current)
		{
				count++;
				//Recursively print left child's data
				count = find_no_of_nodes(current -> left, count);
				//Recursively print right child's data
				count = find_no_of_nodes(current -> right, count);
		}
		return count;
}

