#include "main.h"

int main()
{
		BST* root = NULL;
		data_t data, opt;//data entry, user option
		char ch;//User choice to continue program
		do
		{
				printf("\n-----Oprtations on BST-----\
								\n1. Insert data\
								\n2. In-order printing\
								\n3. Post-order printing\
								\n4. Pre-order printing\
								\n5. Level-order printing\
								\n6. Search data\
								\n7. Find min and max data\
								\n8. Find BST height\
								\n9. Find no. of BST nodes\
								\n10. Delete BST node\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert data
								printf("\nEnter the data: ");
								scanf("%d", &data);
								if (insert(&root, data))
								{
										printf("\nSuccessfully inserted %d in the BST.\n\n", data);
								}
								else
								{
										printf("\nFailed to insert %d in the BST.\n\n", data);
								}
								break;
						case 2://In-order printing
								if (root)
								{
										printf("\n");
										in_order(root);
										printf("\n\n");
								}
								else
										printf("\n%s\n\n", BST_EMPTY);
								break;
						case 3://Post-order printing
								if (root)
								{
										printf("\n");
										post_order(root);
										printf("\n\n");
								}
								else
										printf("\n%s\n\n", BST_EMPTY);
								break;
						case 4://Pre-order printing
								if (root)
								{
										printf("\n");
										pre_order(root);
										printf("\n\n");
								}
								else
										printf("\n%s\n\n", BST_EMPTY);
								break;
						case 5://Level-order printing
								if (root)
								{
										printf("\n");
										level_order(root);
										printf("\n\n");
								}
								else
										printf("\n%s\n\n", BST_EMPTY);
								break;
						case 6://Search data
								if (root)
								{
								printf("\nEnter the data to be searched: ");
								scanf("%d", &data);
								if (search(root, data))
										printf("%s\n\n", DATA_FOUND);
								else
										printf("%s\n\n", DATA_NOT_FOUND);
								}
								else
										printf("\n%s\nCannot perform this operation!\n\n", BST_EMPTY);
								break;
						case 7://Find min and max data
								if (!min_and_max(root))
								{
										printf("\n%s\nCannot perform this operation!\n\n", BST_EMPTY);
								}
								break;
						case 8://Find BST height
								printf("\nBST height is: %d\n\n", height(root));
								break;
						case 9://Find no. of nodes
								printf("\nNo. of nodes: %d\n\n", find_no_of_nodes(root, 0));
								break;
						case 10://Delete node
								if (root)
								{
								printf("\nEnter the node data to be deleted: ");
								scanf("%d", &data);
								if (delete_node(&root, data))
										printf("\nSuccessfully deleted the node having data %d!\n\n", data);
								else
										printf("Cannot perform this operation!\n\n");
								}
								else
										printf("\n%s\nCannot perform this operation!\n\n", BST_EMPTY);
								break;
						default://Invalid option
								printf("\nError: Invalid option selected!\n\n");
				}
				printf("Do you want to continue the program? (y / n): ");
				scanf("\n%c", &ch);
		} while (ch == 'y');
		return 0;
}

