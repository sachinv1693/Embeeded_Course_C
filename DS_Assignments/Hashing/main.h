#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <stdlib.h>

#define               SIZE                         5
#define            DATA_NOT_FOUND     "Data was not found in the hash table"

//Macros
#define         HASH_FUNCTION(data)      (data % SIZE)

typedef int data_t;

typedef struct node
{
		data_t key;
		data_t value;
		struct node* link;
}Hash_t;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status insert_element(Hash_t a[], data_t data);
Status delete_element(Hash_t a[], data_t data);
Status search_element(Hash_t a[], data_t data);
Status delete_hash_table(Hash_t a[]);
void print_hash_table(Hash_t a[]);

#endif

