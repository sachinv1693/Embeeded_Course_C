OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist_reverse.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
