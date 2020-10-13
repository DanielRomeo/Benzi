#include <iostream>
#include <cmath>
#include <cstdlib>

#include <vector>
#include <fstream>
#include <string>
#include "token.h";

//##########################################
//TOKEN
//##########################################

void Token::autorun(std::string type, std::string value){
    std::cout << "TYPE:"<<type << " VALUE:"<<value << std::endl;
}

Token::Token(std::string type, std::string value){
    type = type;
    value = value;

    // mans added a __repr__ function here:
    autorun(type, value);
}