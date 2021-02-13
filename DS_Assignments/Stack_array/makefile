OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
stack_array.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
