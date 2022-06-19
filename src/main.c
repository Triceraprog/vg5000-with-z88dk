#pragma define CRT_ORG_CODE = 18953

#include <conio.h>
#include <graphics.h>

int main()
{
    for (int i = 0; i < 10; i++)
    {
        printf("\n");
    }
    printf("Coucou\n");

    for (int i = 0; i < 10; i++)
    {
        plot(i, i);
    }

    return 0;
}
