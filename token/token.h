#ifndef TOKEN_H
#define TOKEN_H
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <string>

// digits constant:
const std::string DIGITS = "0123456789";

//tokens:
const std::string TT_INT    = "TT_INT";
const std::string TT_FLOAT  = "TT_FLOAT";
const std::string TT_PLUS   = "TT_PLUS";
const std::string TT_MINUS  = "TT_MINUS";
const std::string TT_MUL    = "TT_MUL";
const std::string TT_DIV    = "TT_DIV";
const std::string TT_LPAREN = "TT_LPAREN";
const std::string TT_RPAREN = "TT_RPAREN";

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