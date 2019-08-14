EXEC=poly2
CFLAGS=-std=c99 -Wall -Werror
LDFLAGS=-lm

all: $(EXEC) test

$(EXEC): %: %.c
	$(CC) $(CFLAGS) $? -o $@ $(LDFLAGS)

test: $(EXEC)
	python test/test.py $<

patch-config:
	git config filter.openssl.diff '.obfuscator/diff'
	git config filter.openssl.clean '.obfuscator/clean'
	git config filter.openssl.smudge '.obfuscator/smudge'
	git config filter.openssl.required true

PHONY: patch-config test all