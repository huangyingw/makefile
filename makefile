OBJECTS = test.exe
CC = gcc
CCFLAGS = -ansi -W -Wall -lstdc++
all: $(OBJECTS)
%.o: %.cc %.cpp
	$(CC) $(CCFLAGS) $(LOCFLAGS) -c $< -o $@
%.exe: %.o
	$(CC) $(CCFLAGS) $(LOCFLAGS) $< -o $@
clean:
	rm -rf *.o core *.stackdump
clobber: clean
	rm -rf *.exe
LOCFLAGS = -I../makefile
