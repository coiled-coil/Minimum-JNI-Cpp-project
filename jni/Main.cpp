#include "Main.h"
#include <iostream>

using namespace std;

void Java_Main_doNothing(JNIEnv *, jclass)
{
    cout << "Hello JNI!" << endl;
}
