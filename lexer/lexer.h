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
    int pos;
    std::string text;
    char current_char = '\0';

    public:
    void advance(); //iterator that moves to the next charector.
    Lexer(std::string type);
    void makeTokens(); // loop through the users input whilst determining the Tokens.
};


#endif