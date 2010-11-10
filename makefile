run : test.o
	gcc -o run test.o -ansi -W -Wall -lstdc++
test.o : test.c
	gcc -c test.c -ansi -W -Wall -lstdc++
clean :
	rm run test.o
