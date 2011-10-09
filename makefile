main:
	gcc -shared max.c -o libmax.so
	sudo cp libmax.so /usr/lib
	gcc -lmax test_so.c -o test_so
