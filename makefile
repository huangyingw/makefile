run : test.o
	gcc -o run test.o
test.o : test.c
	gcc -c test.c
clean :
	rm run test.o
