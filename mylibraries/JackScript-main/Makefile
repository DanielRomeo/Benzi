
output: main.o ./jackstring/jackstring.o
	g++ main.o ./jackstring/jackstring.o  -o output 

main.o: main.cpp
	g++ -c main.cpp

jackstring.o: ./jackstring/jackstring.cpp ./jackstring/jackstring.h
	g++ -c ./jackstring/jackstring.cpp

clean:
	rm *.o output