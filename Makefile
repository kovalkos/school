.PHONY: clean calc

default: all

all: calc

calc:
	cd src/calc; make

clean:
	sh misc/clean.sh
