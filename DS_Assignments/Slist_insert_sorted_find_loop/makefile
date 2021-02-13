OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist_insert_sorted_find_loop.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
