#ifndef LEXER_H
#define LEXER_H
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <string>

//Lexer class:
class Lexer{
    private:
    std::string type;
    std::string value;

    public:
    void autorun(std::string type, std::string value);
    Lexer(std::string type, std::string value);

};


#endif