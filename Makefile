# This is a simple reference makefile to build VG5000 programs with z88k
# It is not used by the project

SOURCES = src/main.c

CC = z88dk.zcc
LINK = z88dk.zcc
CFLAGS = +vg5k
LINK_FLAGS = +vg5k -create-app

OBJS = $(patsubst %.c,%.o, $(SOURCES))

all: vg_tests

%o: %.c
	${CC} ${CFLAGS} -c $<

vg_tests: ${OBJS}
	${LINK} ${LINK_FLAGS} $^ -o $@
	cat $@.k7 zero-file > $@.fix.k7  # Waiting for the fix to be deployed in the offical package


clean:
	rm -f ${OBJS}
	rm -f vg_tests vg_tests.k7 vg_tests.fix.k7
