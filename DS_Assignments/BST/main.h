#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <stdlib.h>

//Macros
typedef int data_t;

#define DUPLICATE_FOUND    "Duplicate element found in the BST"
#define BST_EMPTY          "BST is empty"
#define DATA_FOUND         "Data was found in the BST"
#define DATA_NOT_FOUND     "Data was not found in the BST"

typedef struct node
{
		data_t data;
		struct node* left;
		struct node* right;
}BST;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status insert(BST** root, data_t data);
void in_order(BST* current);
void post_order(BST* current);
void pre_order(BST* current);
void level_order(BST* root);
void print_level(BST* root, data_t level);
Status search(BST* root, data_t data);
Status min_and_max(BST* root);
data_t height(BST* root);
data_t find_no_of_nodes(BST* current, data_t count);
Status delete_node(BST** root, data_t data);

#endif

