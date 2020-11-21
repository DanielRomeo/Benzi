# JackScript
A string and vector library for C++

## Current Version 
version 0.1.1-alpha

## First Release Version
version 1.0

## String library Usage
```c++
#import <string>
#import <vector>
#import <jackstring.h> // include Jackscript

main(){
  	//declarations
  	string str = "samantha";
	string str2 = "ant";

	//implementation
	int a = js::length(str);
	cout << a << endl; // returns 8
	
	int b = js::includes(str2, str);
	cout << b << endl; // returns 3

	/////////////////////////////
	//convert a char to a string
	char myChar = 'A';
	string str3 ;   
	str3 = js::charToString(myChar); 
	cout << str3 << endl; // returns "A"

	return 0;
}
```


## Vector library Usage
```c++
#import <string>
#import <vector>
#import <jackvector.h> // include Jackscript

main(){
  // declarations
  std::vector<Char> MyArray;
  std::string MyString = "hello world";
  
  // call function
  MyArray = js::stringToVector(MyString); // returns a vector  
}
```
