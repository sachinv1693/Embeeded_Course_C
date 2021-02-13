#include "main.h"

Status delete_node(BST** root, data_t data)
{
		//First search for the node
		BST* found_data = *root, *parent = *root;
		data_t flag;
		//Search as long as NULL address is not encountered
		while (found_data)
		{
				//Break the loop if data is found
				if (found_data -> data == data)
				{
						break;	
				}
				parent = found_data;
				//check if data is smaller than current node's data
				if (data < (found_data -> data))
				{
						//Then move to the left node
						found_data = found_data -> left;
						flag = 1;
				}
				else
				{
						//Move to right node if data is greater
						found_data = found_data -> right;
						flag = 0;
				}
		}
		//No data found
		if (found_data == NULL)
		{
				printf("\n%s\n", DATA_NOT_FOUND);
				return FAILURE;
		}
		//An extra variable to swap data if required further
		data_t swap_data;
		//Check if given node is having only 1 child
		//If left child is NULL
		if (found_data -> left == NULL && found_data -> right)
		{
				//Check if found data is root node's data
				if (found_data == *root)
				{
						*root = (*root) -> right;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
				//Check if it is in the left sub-tree or in the right sub-tree
				if (flag)
				{
						parent -> left = found_data -> right;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
				else
				{
						parent -> right = found_data -> right;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
		}
		//If right child is NULL
		else if (found_data -> right == NULL && found_data -> left)
		{
				//Check if found data is root node's data
				if (found_data == *root)
				{
						*root = (*root) -> left;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
				//Check if it is in the left sub-tree or in the right sub-tree
				if (flag)
				{
						parent -> left = found_data -> left;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
				else
				{
						parent -> right = found_data -> left;
						free(found_data);
						found_data = NULL;
						return SUCCESS;
				}
		}
		//Check if given node is having 2 children
		else if (found_data -> left && found_data -> right)
		{
				//Replace found_data value with min value of right sub-tree 
				BST* temp = found_data -> right;
				//A sub_parent pointer to trace parent's address in right sub-tree
				BST* sub_parent = temp;
				//Check if right child data itself is the min value
				if (sub_parent -> left == NULL)
				{
						//Swap found_data value with sub_parent value
						swap_data = found_data -> data;
						found_data -> data = sub_parent -> data;
						sub_parent -> data = swap_data;
						//Assign sub-parent's right child's address as found_data node's right child
						found_data -> right = sub_parent -> right;
						//Free sub_parent node memory
						free(sub_parent);
						sub_parent = NULL;
						return SUCCESS;
				}
				//Else keep looking for min value node
				while (temp -> left)
				{
						sub_parent = temp;
						temp = temp -> left;
				}
				//Swap found_data value with sub_parent value
				swap_data = found_data -> data;
				found_data -> data = temp -> data;
				temp -> data = swap_data;
				//Now min data node is found
				//Assign its right child's address as sub_parent's left child
				sub_parent -> left = temp -> right;
				//Free min node
				free(temp);
				temp = NULL;
				return SUCCESS;
		}
		//given node is leaf node
		else
		{
				//Check if found data is root node's data
				if (found_data == *root)
				{
						free(found_data);
						found_data = NULL;
						*root = NULL;
						return SUCCESS;
				}
				//found data has to be deleted and node has to be removed
				free(found_data);
				found_data = NULL;
				if (flag)
						//Make parent node's left child point to NULL address
						parent -> left = NULL;
				else
						//Make parent node's right child point to NULL address
						parent -> right = NULL;
		}
		return SUCCESS;
}

