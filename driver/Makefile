# R. Michaels, Oct 2013
# Compile the flash programmer for the CAEN 1495

# pick one of these:

# VXWORKS=1
INTELVME=1

MLUDIR=/adaqfs/home/dvcs/IntelCPU/MLU/driver
#LOCALDIR=/adaqfs/home/atrig/mlu
#for compliling on haplix6
#LOCALDIR=/home/randallm/MLU/driver

ifdef VXWORKS

INCFLAGS =
VXDIR=/site/vxworks/5.5/ppc/target/h
CCPPCFLAGS =  -I$(VXDIR) -DVXWORKS -DCPU_FAMILY=PPC -DCPU=PPC604 -mlongcall


CFLAGS=
all: v1495.o
v1495.o: v1495.c v1495.h
	rm -f $@
	ccppc -c $(CCPPCFLAGS) v1495.c 


endif

ifdef INTELVME

CAEN1495LIB     = ./v1495.so

ifndef MLU_LIB
        MLU_LIB    = ${MLUDIR}/vmelib/lib
#	MLU_LIB = ${LINUXVME_LIB}	#use same libs as ROC20 ROL build
endif
ifndef MLU_INC
#        MLU_INC    = ${MLUDIR}/vmeinc/include
	MLU_INC=${LINUXVME_INC}		#use same includes as roc20 ROL build
endif

# libs for the client
LIBS  = ${CAEN1495LIB} ${MLU_LIB}/libjvme.so

# DEFs for compiling primary readout lists
CC                      = gcc
AR                      = ar
RANLIB                  = ranlib
CFLAGS                  = -m32 -lm -O3 -w -I${MLU_INC} -I. -I/usr/include -L${MLU_LIB} -L. -DJLAB
CFLAGS                  += -DLINUX -DDAYTIME=\""`date`"\"
ifdef DEBUG
CFLAGS                  += -Wall -g
endif

all: $(CAEN1495LIB) fpga

v1495.so: v1495.c v1495.h
	@echo
	@echo "Building $@ from $<"
	@echo
	$(CC) -fpic -shared $(CFLAGS) -DLinux_vme -D_GNU_SOURCE -DINIT_NAME=$(@:.so=__init) -o $@ $<

fpga: fpga.o 
	$(CC) -o $@ fpga.c $(LIBS)

endif

clean:
	rm -f  $(CAEN1495LIB) fpga *.o *~ 



 




