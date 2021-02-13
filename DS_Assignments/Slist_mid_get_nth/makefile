OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
slist_mid_get_nth.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
