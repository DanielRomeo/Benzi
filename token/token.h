#ifndef TOKEN_H
#define TOKEN_H
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <string>

//Token class:
class Token{
    private:
    std::string type;
    std::string value;

    public:
    void autorun(std::string type, std::string value);
    Token(std::string type, std::string value);

};


#endif