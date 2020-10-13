#include <iostream>
#include <cmath>
#include <cstdlib>

#include <vector>
#include <fstream>
#include <string>
#include "lexer.h" // include my header file
#include "../token/token.h" // inclde my token header file

//##########################################
//LEXER
//##########################################

void Lexer::advance(){
    pos += 1;

    if(pos < text.length() ){
        current_char = text[pos];
    }
}

Lexer::Lexer(std::string text){
    text = text;
    //
    advance();
}

void Lexer::makeTokens(){
    std::vector<std::string> tokens;
    
    //We loop through every charector in the users text and if we have a toke, we push it to 'tokens array'
    while(current_char != '\0'){ // long as the charector is not an empty charector...
        if(current_char == ' ' || current_char == '\t'){
            advance();
        }else if(current_char == '+'){
            tokens.push_back(TT_PLUS);
        }else if(current_char == '-'){
            tokens.push_back(TT_MINUS);
        }else if(current_char == '/'){
            tokens.push_back(TT_DIV);
        }else if(current_char == '*'){
            tokens.push_back(TT_MUL);
        }else if(current_char == '('){
            tokens.push_back(TT_LPAREN);
        }else if(current_char == ')'){
            tokens.push_back(TT_RPAREN);
        }


    }
}


