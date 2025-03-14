#include <stdio.h>
#include <time.h>

int main() {
    clock_t start, end;
    double cpu_time_used;
    double pi = 0.0;
    double sign = 1.0;

    start = clock();
    for (int n = 0; n < 1000000; n++) {
        pi += sign / (2.0 * n + 1.0);
        sign = -sign;
    }
    pi *= 4.0;
    end = clock();

    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC * 1000;
    printf("Temps d'exécution en C : %.3f ms\n", cpu_time_used);

    return 0;
}
