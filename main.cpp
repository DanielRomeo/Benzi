#include <iostream>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <string>
#include "JackScript/jackstring/jackstring.h"
using namespace js;
int main(){
   
    std::string str = "daniel";
    int length = js::length(str);

    std::cout << length << std::endl;
    std::cout << "hello world" << std::endl;



    return 0;
}