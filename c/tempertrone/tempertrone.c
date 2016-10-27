#include <stdio.h>
#include "../console/console.h"

float toFahrenheit(float celsius)
{
    return (float) celsius * (9.0 / 5.0) + 32;
}

float toCelsius(float fahrenheit)
{
    return (float) (fahrenheit - 32) * (5.0 / 9.0);
}

int main(const int argc, const char *argv[])
{
    float f = 72;
    float c = 32;

    green("Printing the fahrenheit to celsius table:)");

    for (int i = 0; i <= 100; i++)
    {
        printf(" > %.1fF\t%.1fC\n", (float) i, toCelsius((float) i));
    }

    for (int j = 0; j <= 50; j++)
    {
        printf(" > %.1fC\t%.1fF\n", (float) j, toFahrenheit((float) j));
    }
}
