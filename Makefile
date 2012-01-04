CFLAGS=-g -Wall `xml2-config --cflags`
LDLIBS=-lpthread -lm `xml2-config --libs` `pkg-config --libs libusb-1.0`

all:	gant

gant: gant.o antlib.o

gant.o:	gant.c antdefs.h

antlib.o: antlib.c antdefs.h

clean:
	-rm *.o gant
