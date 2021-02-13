OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
stack_linked_list.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
