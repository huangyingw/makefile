CC = g++
CCFLAGS = -ansi -W -Wall -lstdc++
HEADERS = $(wildcard *.h)
OBJECTS = singleton.exe
LOCFLAGS =-I.
all: $(OBJECTS)
%.o: %.cc %.cpp $(HEADERS)
	$(CC) $(CCFLAGS) $(LOCFLAGS) -c $< -o $@
%.exe: %.o
	$(CC) $(CCFLAGS) $(LOCFLAGS) $< -o $@
clean:
	rm -rf *.o core *.stackdump
clobber: clean
	rm -rf *.exe
