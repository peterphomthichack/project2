#include <iostream>
#include <stdio.h>

int main()
{
	int x = 100;
	int y = 200;
	int z = 500;
	int largest;
	int smallest;

	if ((x > y ) && ( x > z))
	{
		largest = x;
	}
	else if ((y > x) && ( y > z))
	{
		largest = y;
	}
	else
		largest = z;

	if ((y = largest) || (z = largest))
	{
		smallest = x;
	}
	else if ((x = largest) || (z = largest))
	{
		smallest = y;
	}
	else
		smallest = z;


	std::cout << "Largest: " << largest << std::endl;
	std::cout << "Smallest: " << smallest << std::endl;
}
