all:
	# g++ -O3 -s hello.cpp -o hello.cgi
	g++ -O3 -s hello.cpp -o index.html
clean:
	rm -f hello.cgi
