OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist_remove_list.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
