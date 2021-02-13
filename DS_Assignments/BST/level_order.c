#include "main.h"

void level_order(BST* root)
{
		//Print the BST levels based on height of BST
		for (data_t i = 0; i <= height(root); i++)
		{
				//Print node data level by level
				print_level(root, i);
		}
}

void print_level(BST* root, data_t level)
{
		//Return when NULL is encountered
		if (root == NULL)
				return;
		//Print current root's data when level is 1
		if (level == 1)
				printf("%d ", root -> data);
		else if (level > 1)
		{
				//Recursively call to print left and right nodes
				print_level(root -> left, level - 1);
				print_level(root -> right, level - 1);
		}
}

