CC=gcc
CFLAGS=
LDFLAGS=
EXEC=libmdst.a

LIBDIR=lib/
OBJDIR=obj/
SRCDIR=src/
SRCC=mdst.c
OBJ=$(SRCC:.c=.o)

all: $(EXEC)

$(EXEC): $(SRCDIR)$(OBJ)
	@$(AR) rcs $(LIBDIR)$(EXEC) $(OBJDIR)$(OBJ)

%.o: %.c
	@$(CC) -o $(OBJDIR)$(OBJ) -c $< $(CFLAGS)

.PHONY: all clean install
clean:
	@rm -f $(LIBDIR)$(EXEC)
	@rm -f $(OBJDIR)*.o

install:
	@cp $(LIBDIR)$(EXEC) /usr/local/lib/$(EXEC)
