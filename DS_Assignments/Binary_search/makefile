OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
binary_search.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
