#include <stdio.h>
#include "console.h"

/*
 * free()
 * malloc()
 * realloc()
 */
#include <stdlib.h>

/*
 * UINT_MAX
 */
#include <limits.h>

/*
 * strncpy()
 */
#include <string.h>

void red(char *str)
{
    printf("\033[91m%s\033[0m\n", str);
}

void green(char *str)
{
    printf("\033[92m%s\033[0m\n", str);
}

void yellow(char *str)
{
    printf("\033[93m%s\033[0m\n", str);
}

void blue(char *str)
{
    printf("\033[94m%s\033[0m\n", str);
}

/*
 * Reads a line of text from standard input and returns it as a
 * string (char *), sans trailing newline character.  (Ergo, if
 * user inputs only "\n", returns "" not NULL.)  Returns NULL
 * upon error or no input whatsoever (i.e., just EOF).  Leading
 * and trailing whitespace is not ignored.  Stores string on heap
 * (via malloc); memory must be freed by caller to avoid leak.
 */
char * getString(void)
{
    int current;
    char *buffer = NULL;
    unsigned int buffered = 0;
    unsigned int capacity = 0;

    while ((current = fgetc(stdin)) != '\n' && current != EOF)
    {
        if (buffered + 1 >= capacity)
        {
            if (capacity == 0)
            {
                capacity = 32;
            }
            else if (capacity <= (UINT_MAX / 2))
            {
                capacity *= 2;
            }
            else
            {
                free(buffer);

                return NULL;
            }

            char * tmp = realloc(buffer, capacity * sizeof(char));

            if (tmp == NULL)
            {
                free(buffer);

                return NULL;
            }

            buffer = tmp;
        }

        buffer[buffered++] = current;
    }

    if (buffered == 0 && current == EOF)
    {
        return NULL;
    }

    char *trimmed = malloc((buffered + 1) * sizeof(char));

    strncpy(trimmed, buffer, buffered);
    free(buffer);

    trimmed[buffered] = '\0';

    return trimmed;
}

int main(void)
{
    puts("Type anything: ");
    printf("%s\n", getString());
}
