#
# Description:  Makefile for SIS 3300 Flash ADC library
#   This driver is specific to VxWorks BSPs and must be compiled
#   with access to vxWorks headers.
#

#Check Operating system we are using
ifndef OSNAME
  OSNAME := $(subst -,_,$(shell uname))
endif

ifndef ARCH
ARCH = VXWORKSPPC
endif

#ifeq ($(OSNAME),SunOS)
LIBDIR = $(CODA)/$(ARCH)/lib


ifeq ($(ARCH),VXWORKSPPC)
INCDIR=$(WIND_BASE)/target/h
CC = ccppc
LD = ldppc
DEFS = -mcpu=604 -DCPU=PPC604 -DVXWORKS -D_GNU_TOOL -DVXWORKSPPC
INCS = -Wall -fno-for-scope -fno-builtin -fvolatile -fstrength-reduce -mlongcall -I. -I$(INCDIR)
endif

ifeq ($(ARCH),VXWORKSPPC55)
INCDIR=$(WIND_BASE)/target/h
CC = ccppc
LD = ldppc
DEFS = -mcpu=604 -DCPU=PPC604 -DVXWORKS -D_GNU_TOOL -DVXWORKSPPC
INCS = -Wall -fno-for-scope -fno-builtin -fvolatile -fstrength-reduce -mlongcall -I. -I$(INCDIR)
endif


CFLAGS = -O $(DEFS) $(INCS)

#endif



all: echoarch v1495Lib-2013.o

sis3610Lib.o: sis3610Lib.c sis3610.h
	$(CC) -c $(CFLAGS) -o $@ sis3610Lib.c

v1495.o: v1495.c v1495.h
	$(CC) -c $(CFLAGS) -o $@ v1495.c

v1495-2013.o: v1495-2013.c v1495-2013.h
	$(CC) -c $(CFLAGS) -o $@ v1495-2013.c

v1495Lib.o: v1495Lib.c v1495Lib.h
	$(CC) -c $(CFLAGS) -o $@ v1495Lib.c

v1495Lib-2011.o: v1495Lib-2011.c v1495Lib.h
	$(CC) -c $(CFLAGS) -o $@ v1495Lib-2011.c

v1495Lib-2013.o: v1495Lib-2013.c v1495Lib-2013.h
	$(CC) -c $(CFLAGS) -o $@ v1495Lib-2013.c

sis3600Lib.o: sis3600Lib.c sis3600.h
	$(CC) -c $(CFLAGS) -o $@ sis3600Lib.c

# DaShungCR.o: DaShungCR.c sis3600.h
dsLatchCard.o: dsLatchCard.c dsLatchCard.h
	$(CC) -c $(CFLAGS) -o $@ dsLatchCard.c
dsTDC.o: dsTDC.C dsTDC.h
	$(CC) -c $(CFLAGS) -o $@ dsTDC.C

codarun.o:codarun.c sis3610.h  sis3600.h
	$(CC) -c $(CFLAGS) -o $@ codarun.c

clean:
	rm -f *.o

echoarch:
	echo "Make for $(ARCH)"




