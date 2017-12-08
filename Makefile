CC=gcc
CFLAGS=
LDFLAGS=
EXEC=mdst.a

LIBDIR=lib/
BINDIR=bin/
SRCDIR=src/
SRCC=mdst.c
OBJ=$(SRCC:.c=.o)

all: $(EXEC)

$(EXEC): $(SRCDIR)$(OBJ)
	@$(AR) rcs $(LIBDIR)$(EXEC) $(BINDIR)$(OBJ)

%.o: %.c
	@$(CC) -o $(BINDIR)$(OBJ) -c $< $(CFLAGS)

.PHONY: all clean install
clean:
	@rm -f $(LIBDIR)$(EXEC)
	@rm -f $(BINDIR)*.o

install:
	@cp $(LIBDIR)$(EXEC) /usr/local/lib/$(EXEC)
