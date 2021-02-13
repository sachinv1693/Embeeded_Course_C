#ifndef BIN_SEARCH_H
#define BIN_SEARCH_H

#include <stdio.h>
#include <stdlib.h>

typedef int data_t;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status search_iterative(data_t* arr, data_t size, data_t data);
Status search_recursive(data_t* arr, data_t lower, data_t upper, data_t data);

#endif

