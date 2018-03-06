#include <iostream>

using namespace std;

void crashProgram()
{
    *((volatile char*)0) = 'a';
}

void funkcja_1()
{
    cout << "enter funkcja_1()" << endl;
    crashProgram();
}

void funkcja_2()
{
    funkcja_1();
}

void funkcja_3()
{
    funkcja_2();
}

int main()
{    int a = 10;
     int b = 12;
    funkcja_3();
    cout << "Hello World!" << endl;



    return 0;
}
