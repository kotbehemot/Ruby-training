#include <stdio.h>
extern float two();
int main() {
    float x = 1.5 + two();
    printf("%f\n", x);
    printf("%d\n", x);
    return 0;
}

int two() { return 2; }


// nan
// 0

