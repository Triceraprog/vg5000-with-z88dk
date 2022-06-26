#pragma define CRT_ORG_CODE = 18953

#include <conio.h>
#include <graphics.h>

extern void put_char_on_video();
extern void put_char_at_address(int address);

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

    put_char_on_video();

    for (int i=0x4690+2; i<0x4690+80; i+=2)
    {
        put_char_at_address(i);
    }

    return 0;
}
