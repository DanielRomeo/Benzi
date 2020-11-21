#include <iostream>
#include <vector>
#include <string>
#include "jackstring.h"

namespace js{
	int length(std::string str){
		int count = 0;
		for (int i = 0; i < str.length(); ++i){
			count++;
		}
		return count;
	}

	int includes(std::string text, std::string str){
		int macro = length(str);
		int micro = length(text);
		int j;

		for (int i = 0; i < macro - micro; ++i){
			for (j =0 ; j < micro; ++j){
				if(str[i+j] != text[j]){
					break;	
				}		
			}	

			if(j == micro){
				return i;
			}
		}
		return -1;
	}

	std::string charToString(char charector){
		std::string str;
		str.push_back(charector);
		return str;
	}
}