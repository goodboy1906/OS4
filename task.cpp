#include <iostream>
#include <time.h>

int main() {
    int64_t a = 0;
    int b = 2;
    int c = 3;
    clock_t start = clock(), end;
    for (int i = 0; i < 100000000; i++)
        a = a + (b * 2 + c - i);

    end = clock();
    std::cout << a << " = a, " << ((float)(end - start)) / CLOCKS_PER_SEC * 1000 << " ms, " << (float)(end - start) / CLOCKS_PER_SEC / 100 << " speed iteration/ms" << '\n';
}
