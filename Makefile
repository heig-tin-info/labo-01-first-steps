EXEC=gcd
CFLAGS=-g -std=c11 -Wall -Werror

all: test

%: %.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

test: $(EXEC)
	test/test.sh $(abspath $<)

clean:
	$(RM) $(EXEC) *.o

PHONY: test all
