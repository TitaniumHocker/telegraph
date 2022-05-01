CC=cc
CFLAGS=-Wall -std=c99 -O3
CLIBS=$(shell pkg-config --cflags --libs gnutls)

FORMATTER=clang-format
FFLAGS=-i --style=LLVM

LINTER=splint
LFLAGS=

SRCDIR=src
BUILDDIR=build
DISTDIR=dist
SRC=$(wildcard ${SRCDIR}/*.c)
OBJ=${SRC:${SRCDIR}/%.c=${BUILDDIR}/%.o}
BIN=telegraph

LIBDIR=./lib
TERMBOXDIR=$(LIBDIR)/termbox
THPOOLDIR=$(LIBDIR)/thpool
CVECTORDIR=$(LIBDIR)/cvector

TERMBOX=$(BUILDDIR)/termbox.o
THPOOL=$(BUILDDIR)/thpool.o
CVECTOR=$(BUILDDIR)/cvector.o

all: $(DISTDIR)/$(BIN)

$(DISTDIR)/$(BIN): $(OBJ) $(TERMBOX) $(THPOOL) $(CVECTOR)
	mkdir -p $(DISTDIR)
	$(CC) $(CFLAGS) $(CLIBS) $^ -o $@

$(OBJ): $(SRC)
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $^ -o $@

$(TERMBOX): $(TERMBOXDIR)/termbox.h
	mkdir -p $(BUILDDIR)
	$(MAKE) -C $(TERMBOXDIR) termbox.o
	mv $(TERMBOXDIR)/termbox.o $(TERMBOX)

$(THPOOL): $(THPOOLDIR)/thpool.c
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -fPIC -c $^ -o $@

$(CVECTOR): $(CVECTORDIR)/cvector.h
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -fPIC -xc -c $^ -o $@

clean:
	rm -rf $(BUILDDIR)
	rm -rf $(DISTDIR)

fmt:
	find ./src -type f -name '*.[ch]' -exec $(FORMATTER) $(FFLAGS) {} \;

lint:
	find ./src -type f -name '*.[ch]' -exec $(LINTER) $(LFLAGS) {} \;

run: $(DISTDIR)/$(BIN)
	./$^
