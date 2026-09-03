all:
	g++ -std=c++11 -Wall -I. s7poll.cpp snap7.cpp -lsnap7 -Wl,-rpath,. -o s7poll

clean:
	rm -f *.o s7poll