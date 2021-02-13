OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist_merge_sorted.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
