
output: main.o ./JackScript/jackstring/jackstring.o
	g++ main.o ./JackScript/./jackstring/jackstring.o  -o output 

main.o: main.cpp
	g++ -c main.cpp

jackstring.o: ./JackScript/jackstring/jackstring.cpp ./JackScript/jackstring/jackstring.h
	g++ -c ./JackScript/jackstring/jackstring.cpp

clean:
	rm *.o output