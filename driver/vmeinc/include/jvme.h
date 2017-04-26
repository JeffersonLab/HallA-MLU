/*----------------------------------------------------------------------------*
 *  Copyright (c) 2010        Southeastern Universities Research Association, *
 *                            Thomas Jefferson National Accelerator Facility  *
 *                                                                            *
 *    This software was developed under a United States Government license    *
 *    described in the NOTICE file included as part of this distribution.     *
 *                                                                            *
 *    Author:  Bryan Moffit                                                   *
 *             moffit@jlab.org                   Jefferson Lab, MS-12B3       *
 *             Phone: (757) 269-5660             12000 Jefferson Ave.         *
 *             Fax:   (757) 269-5800             Newport News, VA 23606       *
 *                                                                            *
 *----------------------------------------------------------------------------*
 *
 * Description:
 *     A front for the stuff that actually does the work.
 *      APIs are switched from the Makefile
 *
 * SVN: $Rev: 473 $
 *
 *----------------------------------------------------------------------------*/

#ifndef __JVME__
#define __JVME__

#include "dmaPList.h"

/** \name Defines and typedefs 
   Several definitions and typedefs that provide some compatibility
   with those used in vxWorks
*/
/* \{ */
#define INT16  short
#define UINT16 unsigned short
#define INT32  int
#define UINT32 unsigned int
#define STATUS int
#define TRUE  1
#define FALSE 0
#define OK    0
#define ERROR -1
#define LOCAL 
#ifndef _ROLDEFINED
typedef void            (*VOIDFUNCPTR) ();
#endif
typedef char            BOOL;

/**
    \hideinitializer
    Macro to perform a byte swapping for a 32 bit integer
*/
#define LSWAP(x)        ((((x) & 0x000000ff) << 24) | \
                         (((x) & 0x0000ff00) <<  8) | \
                         (((x) & 0x00ff0000) >>  8) | \
                         (((x) & 0xff000000) >> 24))

/**
    \hideinitializer
    Macro to perform a byte swapping for a 16 bit integer
*/
#define SSWAP(x)        ((((x) & 0x00ff) << 8) | \
                         (((x) & 0xff00) >> 8))
/* \} */

/* Routine prototypes */
STATUS taskDelay(int ticks);
int logMsg(const char *format, ...);
unsigned long long int rdtsc(void);

void vmeSetQuietFlag(unsigned int pflag);
int  vmeOpenDefaultWindows();
int  vmeCloseDefaultWindows();
int  vmeOpenSlaveA32(unsigned int base, unsigned int size);
int  vmeCloseA32Slave();
unsigned int vmeReadRegister(unsigned int offset);
int  vmeWriteRegister(unsigned int offset, unsigned int buffer);
int  vmeSysReset();
int  vmeBERRIrqStatus();
int  vmeDisableBERRIrq(int pflag);
int  vmeEnableBERRIrq(int pflag);
int  vmeMemProbe(char *addr, int size, char *rval);
void vmeClearException(int pflag);
int  vmeIntConnect(unsigned int vector, unsigned int level, VOIDFUNCPTR routine, unsigned int arg);
int  vmeIntDisconnect(unsigned int level);
int  vmeBusToLocalAdrs(int vmeAdrsSpace, char *vmeBusAdrs, char **pLocalAdrs);
int  vmeSetDebugFlags(int flags);
int  vmeSetA24AM(int addr_mod);
int  vmeDmaConfig(unsigned int addrType, unsigned int dataType, unsigned int sstMode);
int  vmeDmaSend(unsigned int locAdrs, unsigned int vmeAdrs, int size);
int  vmeDmaDone();
int  vmeDmaAllocLLBuffer();
int  vmeDmaFreeLLBuffer();
void vmeDmaSetupLL(unsigned int locAddrBase,unsigned int *vmeAddr,
		       unsigned int *dmaSize,unsigned int numt);
void vmeDmaSendLL();
unsigned int vmeDmaLocalToVmeAdrs(unsigned int locAdrs);
unsigned int vmeDmaLocalToPhysAdrs(unsigned int locAdrs);
void vmeReadDMARegs();

int  vmeBusCreateLockShm();
int  vmeBusKillLockShm(int kflag);
int  vmeBusLock();
int  vmeBusUnlock();

unsigned char vmeRead8(volatile unsigned char *addr);
unsigned short vmeRead16(volatile unsigned short *addr);
unsigned int vmeRead32(volatile unsigned int *addr);
void vmeWrite8(volatile unsigned char *addr, unsigned char val);
void vmeWrite16(volatile unsigned short *addr, unsigned short val);
void vmeWrite32(volatile unsigned int *addr, unsigned int val);


#endif /* __JVME__ */
