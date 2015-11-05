#include <stdio.h>

int fib(int n);

int main()
{
    int n;

    printf("\nReturns the (nth) number in the fibonacci sequence for the number provided\n--\n");
    printf("Type a number: ");
    scanf("%d", &n);
    printf("Result: %d\n", fib(n));

    return 0;
}

/**
 * Returns the (nth) number in the fibonacci sequence
 *
 * Sequence
 * --------
 * n =  0  1  2  3  4  5  6   7   8   9  10  11   12   13   14...
 * r =  0  1  1  2  3  5  8  13  21  34  55  89  144  233  377...
 *
 * @param int n
 *
 * @return int
 */
int fib(int n)
{
    switch (n)
    {
    case 0: return 0;
    case 1: case 2: return 1;
    default:
        return fib(n-1) + fib(n-2);
    }
}
