CC=cc
CFLAGS=-Wall -std=c99 -O3
SOURCE=src
BUILD=build
EXE=telegraph


all: $(BUILD)/$(EXE)

$(BUILD)/$(EXE): $(SOURCE)/**.[ch]
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf $(BUILD)
