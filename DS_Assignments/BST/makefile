OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
bst_search.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
