OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
dlist1.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
