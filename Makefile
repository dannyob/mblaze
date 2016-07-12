CFLAGS=-g -O1 -Wall -Wno-switch -Wextra -Wwrite-strings -fstack-protector-strong -D_FORTIFY_SOURCE=2

ALL = scan thread hdr show

all: $(ALL)

scan: blaze822.o scan.o rfc2047.o
thread: blaze822.o thread.o
hdr: blaze822.o hdr.o
show: blaze822.o show.o

clean: FRC
	-rm -f $(ALL) *.o

FRC: