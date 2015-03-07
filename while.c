#include <stdio.h>

int main(int argc, char const* argv[])
{
    long i, sum;
    i = 1;
    sum = 0;
    while (i <= 100000000) {
        sum += i;
        i++;
    }
    printf("Sum: %ld\n", sum);
    return 0;
}
