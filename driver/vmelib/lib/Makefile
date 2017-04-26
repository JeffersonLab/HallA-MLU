#
# File:
#    Makefile
#
# Description:
#    Makefile for the JLAB extensions to the VME Controller API (GEFANUC and others)
#
# SVN: $Rev: 473 $
#
#
#DEBUG=1

ifndef ARCH
ARCH			:= $(shell uname -m)
endif

ifndef LINUXVME_LIB
	LINUXVME_LIB	= ${CODA}/extensions/linuxvme/libs
endif
ifndef LINUXVME_INC
	LINUXVME_INC	= ${CODA}/extensions/linuxvme/include
endif

CROSS_COMPILE		=
CC			= $(CROSS_COMPILE)gcc
AR                      = ar
RANLIB                  = ranlib
CFLAGS			= -O2 -I. -I/usr/include
CFLAGS                 += -DGEFANUC
ifdef DEBUG
CFLAGS			+= -Wall -g
endif

SRC			= jvme.c jlabgef.c jlabgefDMA.c dmaPList.c

OBJS			= $(SRC:%.c=%.o)

LIBS			= libjvme.a
SHLIBS			= libjvme.so

ifeq ($(ARCH),x86_64)
	libdir:=/usr/lib64/gef
else
	libdir:=/usr/lib/gef
endif

all: $(LIBS) links

libjvme.so: $(SRC) $(libdir)/libvme.a Makefile
	$(AR) x $(libdir)/libvme.a
	$(CC) -fpic -shared $(CFLAGS) -lrt -lpthread -o $@ $(SRC) gefcmn_*.o
	@rm gefcmn_*.o

libjvme.a: $(OBJS) $(libdir)/libvme.a Makefile
	$(AR) x $(libdir)/libvme.a
	$(AR) rv $@ $(OBJS)
	$(AR) rv $@ gefcmn_*.o
	@rm gefcmn_*.o

clean distclean:
	@rm -f $(OBJS) $(LIBS) $(SHLIBS) *~

links: libjvme.a libjvme.so
	ln -sf $(PWD)/libjvme.so $(LINUXVME_LIB)/libjvme.so
	ln -sf $(PWD)/libjvme.a $(LINUXVME_LIB)/libjvme.a
	ln -sf $(PWD)/dmaPList.h $(LINUXVME_INC)/dmaPList.h
	ln -sf $(PWD)/jvme.h $(LINUXVME_INC)/jvme.h

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: all clean distclean
