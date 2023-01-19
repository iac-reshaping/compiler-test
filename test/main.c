#include <stdio.h>

void test(float a)
{
    printf("Test from RISC-V: %f\n", a + 3.2f);
}

int main()
{
    test(5.5f);
    return 5;
}
