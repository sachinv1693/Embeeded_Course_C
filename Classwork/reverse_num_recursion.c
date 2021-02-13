#include <stdio.h>

int reverse_num_rec(int num, int rev)
{
		return (num == 0) ? rev : reverse_num_rec((num / 10), (rev * 10 + num % 10));
}

int main()
{
		int num, rev;
		printf("Enter a number: ");
		scanf("%d", &num);
		printf("After reversing: %d\n", reverse_num_rec(num, 0));
		return 0;
}
