#include <stdio.h>
#include <time.h>
#include <math.h>

int main()
{
    clock_t start, end;
    double cpu_time_used;
    double pi = 0.0;

    start = clock();
    for (int n = 0; n < 1000000; n++) {
        pi += pow(-1, n) / (2.0 * n + 1.0);
    }
    pi *= 4;
    end = clock();

    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC * 1000;
    printf("Temps d'exécution en C : %fms\n", cpu_time_used);

    return pi;
}
