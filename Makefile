EXEC=poly2
CFLAGS=-c99 -Wall

all: $(EXEC) test

test: 
	python test/test.py

patch-config:
	git config filter.openssl.diff '.obfuscator/diff'
	git config filter.openssl.clean '.obfuscator/clean'
	git config filter.openssl.smudge '.obfuscator/smudge'
	git config filter.openssl.required true

PHONY: patch-config test all