OBJ := $(patsubst %.c, %.o, $(wildcard *.c))
infix_post_fix_eval.exe : $(OBJ)
	gcc -o $@ $^
clean:
	rm *.o *.exe
