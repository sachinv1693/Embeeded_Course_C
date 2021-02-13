OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
hash_table.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
