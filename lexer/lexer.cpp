#include <iostream>
#include <cmath>
#include <cstdlib>

#include <vector>
#include <fstream>
#include <string>
#include "lexer.h";

//##########################################
//LEXER
//##########################################

void Lexer::autorun(std::string type, std::string value){
    std::cout << "TYPE:"<<type << " VALUE:"<<value << std::endl;
}

Lexer::Lexer(std::string type, std::string value){
    type = type;
    value = value;

    // mans added a __repr__ function here:
    autorun(type, value);
}
