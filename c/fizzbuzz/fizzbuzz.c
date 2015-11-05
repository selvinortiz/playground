/**
 * FizzBuzz by Selvin Ortiz
 *
 * Simple implementation of the fizzbuzz spec with custom start and finish input options
 *
 * - Print the numbers from start to finish
 * - For each number divisible by 3, fizz should be printed.
 * - For each number divisible by 5, buzz should be printed.
 * - For each number divisible by 3 and 5, fizzbuzz should be printed.
 */
#include <stdio.h>

void fizzbuzz(int start, int finish);
int max(int a, int b);
int min(int a, int b);

int main()
{
    int start  = 0;
    int finish = 100;

    do
    {
        printf("Give me a number to start at: ");
        scanf("%d", &start);

        printf("Give me a number to finish at: ");
        scanf("%d", &finish);
    }
    while (!start || !finish || !(finish > start));

    fizzbuzz(start, finish);
}

/**
 * Prints x number of lines specified by range(start, finish) in accordance with fizzbuzz
 *
 * @param start
 * @param finish
 *
 * @return void
 */
void fizzbuzz(int start, int finish)
{
    // Ensure proper start and finish
    start = min(start, finish);
    finish  = max(finish, start);

    for (int i = start; i <= finish; i++)
    {
        if (i % 3 == 0 && i % 5 == 0)
        {
            printf("%d : %s\n", i, "fizzbuzz");
        }
        else if (i % 3 == 0)
        {
            printf("%d : %s\n", i, "fizz");
        }
        else if (i % 5 == 0)
        {
            printf("%d : %s\n", i, "buzz");
        }
        else
        {
            printf("%d : %d\n", i, i);
        }
    }
}

/**
 * Returns the larger of the two integers passed in
 *
 * @param int a
 * @param int b
 *
 * @return int a or b
 */
int max(int a, int b)
{
    if (b > a)
    {
        return b;
    }

    return a;
}

/**
 * Returns the smaller of the two integers passed in
 *
 * @param int a
 * @param int b
 *
 * @return int a or b
 */
int min(int a, int b)
{
    if (b < a)
    {
        return b;
    }

    return a;
}
