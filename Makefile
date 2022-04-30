CC=cc
CFLAGS=-static -Wall -std=c99 -O3

FORMATTER=clang-format
FFLAGS=-i

LINTER=splint
LFLAGS=

SOURCE=src
BUILD=build
PROGRAM=telegraph


all: $(BUILD)/$(PROGRAM)

$(BUILD)/$(PROGRAM): $(SOURCE)/**.[ch]
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf $(BUILD)

format:
	find ./src -type f -name '*.[ch]' -exec $(FORMATTER) $(FFLAGS) {} \;

fmt: format

lint:
	find ./src -type f -name '*.[ch]' -exec $(LINTER) $(LFLAGS) {} \;
