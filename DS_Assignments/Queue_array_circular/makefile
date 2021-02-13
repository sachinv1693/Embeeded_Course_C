OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
queue_array.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
