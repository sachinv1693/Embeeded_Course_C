#include "main.h"

Status insert(BST** root, data_t data)
{
		//Create a new node
		BST* new = malloc(sizeof(BST));
		//Check if memory is allocated or not
		if (new == NULL)
		{
				printf("\nUnable to allocate dynamic memory!");
				return FAILURE;
		}
		//Assign new node's value
		new -> data = data;
		new -> left = new -> right = NULL;
		//If tree is empty, assign this new node as root
		if (*root == NULL)
		{
				*root = new;
				return SUCCESS;
		}
		//Use a temp pointer for iterating in the tree
		BST* temp = *root;
		//We need a pointer to hold parent node's address
		BST* parent = NULL;//Initialize to NULL
		//A flag to know if we have left node or right node
		data_t flag;
		while (temp)
		{
				parent = temp;
				//Iterate to left child if given data is smaller
				if (data < (temp -> data))
				{
						temp = temp -> left;
						flag = 1;
				}
				//Iterate to right child if given data is larger
				else if (data > (temp -> data))
				{
						temp = temp -> right;
						flag = 0;
				}
				else//There is duplicate data entry
				{
						printf("\n%s", DUPLICATE_FOUND);
						return FAILURE;
				}
		}
		if (flag)
				parent -> left = new;
		else
				parent -> right = new;
		return SUCCESS;
}

