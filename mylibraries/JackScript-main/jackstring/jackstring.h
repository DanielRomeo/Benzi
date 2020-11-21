#ifndef JACKSTRING_H
#define JACKSTRING_H
#include <iostream>
#include <vector>
#include <string>


namespace js{
	int length(std::string str);
	int includes(std::string text, std::string str); // returns 1 else -1. 
	std::string charToString(char); // converts a charector to a string.
}

#endif