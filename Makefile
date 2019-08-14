EXEC=poly2
CFLAGS=-std=c99 -Wall -Werror
LDFLAGS=-lm

all: test

%: %.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

test: $(EXEC)	
	python test/test.py $<

check: solution
	python test/test.py solution

patch-config:
	git config filter.openssl.diff '.obfuscator/diff'
	git config filter.openssl.clean '.obfuscator/clean'
	git config filter.openssl.smudge '.obfuscator/smudge'
	git config filter.openssl.required true

clean: 
	$(RM) $(EXEC) solution *.o

PHONY: patch-config test all