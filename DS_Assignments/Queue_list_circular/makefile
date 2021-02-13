OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
queue_list.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
