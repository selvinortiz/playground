#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int search(int target, int stack[]);
int * range(int to);

int main(void) {
    int *r = range(200);

    printf("We found key %d for value %d searched.\n", search(200, r), 200);

    free(r);

    exit(0);
}

int * range(int to) {
    static int *range;

    range = malloc(to * sizeof(int));

    for (int i = 0; i <= to; i++) {
        range[i] = i + 1;
    }

    return range;
}

int search(int target, int *stack) {
    int min = stack[0];
    int max = stack[19999999];

    int guess;

    while (1) {
        guess = floor((min + max) / 2);

        if (stack[guess] == target) {
            return guess;
        }

        if (target > stack[guess]) {
            min = guess + 1;
        }
        else {
            max = guess - 1;
        }
    }
}
