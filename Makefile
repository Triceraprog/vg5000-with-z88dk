SOURCES = src/main.c

CC = z88dk.zcc
LINK = z88dk.zcc
CFLAGS = +vg5k
LINK_FLAGS = +vg5k -create-app

OBJS = $(patsubst %.c,%.o, $(SOURCES))

all: adventure

%o: %.c
	${CC} ${CFLAGS} -c $<

adventure: ${OBJS}
	${LINK} ${LINK_FLAGS} $^ -o $@
	cat $@.k7 zero-file > $@.fix.k7


clean:
	rm -f ${OBJS}
	rm -f adventure adventure.k7
