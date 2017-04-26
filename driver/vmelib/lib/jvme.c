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

/*! This is required for using mutex robust-ness */
#define _GNU_SOURCE

#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdarg.h>
#include <pthread.h>
#include <errno.h>
#include "jvme.h"

#ifdef GEFANUC
#include "jlabgef.h"
#include "jlabgefDMA.h"
#endif

/* global variables */
unsigned int vmeQuietFlag=0;


/*!
  Routine to delay a task from executing
 
  @see usleep(3)
 
  @param ticks number of ticks to delay task (units: 1 tick = 16.7 ms)
 
  @return 0 if successful, -1 on error
*/
STATUS taskDelay(int ticks) {
  return usleep(16700*ticks);  
}

/*!
  Routine to print a formatted message.  Same usage as printf(...)
 
  @see printf(3)
 
  @param format Formatted message
  @param ... additional parameters as needed by message
*/
int
logMsg(const char *format, ...)
{
  va_list args;
  int retval;

  va_start(args,format);
  retval = vprintf(format, args);
  va_end(args);

  return retval;
}

/*! 
  Routine to return system scaler
 
  @returns system clock ticks since reset (or rollover)
*/
unsigned long long int rdtsc(void)
{
  /*    unsigned long long int x; */
  unsigned a, d;
   
  __asm__ volatile("rdtsc" : "=a" (a), "=d" (d));

  return ((unsigned long long)a) | (((unsigned long long)d) << 32);;
}

/*!
  Routine to enable (default) or disable verbose messages in VME API
 
  @param pflag  
  - 0 to disable
  - 1 to enable
*/
void
vmeSetQuietFlag(unsigned int pflag)
{
  if(pflag <= 1)
    vmeQuietFlag = pflag;
  else
    printf("%s: ERROR: invalid argument pflag=%d\n",
	   __FUNCTION__,pflag);
}

/*!
  Routine to initialize the VME API
  - opens default VME Windows and maps them into Userspace
  - maps VME Bridge Registers into Userspace
  - disables interrupts on VME Bus Errors
  - creates a shared mutex for interrupt/trigger locking 
  - calls vmeBusCreateLockShm()
 
  @return 0, if successful.  An API dependent error code, otherwise.
*/
int
vmeOpenDefaultWindows()
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefOpenDefaultWindows();
#endif

  return status;
}

/*!
  Routine to cleanup what was initialized by vmeOpenDefaultWindows()
 
  @return 0, if successful.  An API dependent error code, otherwise.
*/
int
vmeCloseDefaultWindows()
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefCloseDefaultWindows();
#endif

  return status;
}

/*!
  Routine to open a Slave window to the VME A32 space and map it into Userspace
 
  @param base The base address of the A32 window
  @param size The size of the A32 window
 
  @return 0 if successful, otherwise.. an API dependent error code
 
*/
int
vmeOpenSlaveA32(unsigned int base, unsigned int size)
{
  unsigned int rval;

#ifdef GEFANUC
  rval = (unsigned int)jlabgefOpenSlaveA32(base, size);
#endif

  return rval;
}

/*!
  Routine to close and unmap the slave window opened with vmeOpenSlaveA32()
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int
vmeCloseA32Slave()
{
  unsigned int rval;

#ifdef GEFANUC
  rval = (unsigned int)jlabgefCloseA32Slave();
#endif

  return rval;
}

/*!
  Routine to read from a register from the VME Bridge Chip
 
  @param offset Register offset (from VME Bridge base register) from which to read
 
  @return 32bit word read from register, if successful.  -1, otherwise.
*/
unsigned int
vmeReadRegister(unsigned int offset)
{
  unsigned int rval;

#ifdef GEFANUC
  rval = (unsigned int)jlabgefReadRegister(offset);
#endif

  return rval;
}

/*!
  Routine to write to a register from the VME Bridge Chip
 
  @param offset Register offset (from VME Bridge base register) from which to read
  @param buffer 32bit word to write to requested register offset
 
  @return 0, if successful.  -1, otherwise.
*/
int
vmeWriteRegister(unsigned int offset, unsigned int buffer)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefWriteRegister(offset,buffer);
#endif

  return status;
}

/*!
  Routine to assert SYSRESET on the VME Bus
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int
vmeSysReset()
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefSysReset();
#endif

  return status;
}

/*!
  Routine to query the status of interrupts on VME Bus Error
 
  @return 1 if enabled, 0 if disabled, -1 if error.
*/
int
vmeBERRIrqStatus()
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefBERRIrqStatus();
#endif
  
  return status;
}

/*!
  Routine to disable interrupts on VME Bus Error
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int
vmeDisableBERRIrq(int pflag)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefDisableBERRIrq(pflag);
#endif
  
  return status;
}

/*!
  Routine to enable interrupts on VME Bus Error
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int
vmeEnableBERRIrq(int pflag)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefEnableBERRIrq(pflag);
#endif
  
  return status;
}

/*!
  Routine to probe a VME Address for a VME Bus Error
 
  @param *addr address to be probed
  @param size  size (1, 2, or 4) of address to read (in bytes)
  @param *rval where to return value
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeMemProbe(char *addr, int size, char *rval)
{
  int status;

#ifdef GEFANUC
  status = jlabgefMemProbe(addr, size, rval);
#endif

  return status;
}

/*!
  Routine to clear any VME Exception that is currently flagged on the VME Bridge Chip
 
  @param pflag 
  - 1 to turn on verbosity
  - 0 to disable verbosity.
*/
void
vmeClearException(int pflag)
{
#ifdef GEFANUC
  jlabgefClearException(pflag);
#endif
}

/*!
  Routine to connect a routine to a VME Bus Interrupt
 
  @param vector  interrupt vector to attach to
  @param level   VME Bus interrupt level
  @param routine routine to be called
  @param arg     argument to be passed to the routine
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeIntConnect(unsigned int vector, unsigned int level, VOIDFUNCPTR routine, unsigned int arg)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefIntConnect(vector, level, routine, arg);
#endif
  
  return status;
}

/*!
  Routine to release the routine attached with vmeIntConnect()
 
  @param level  VME Bus Interrupt level
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeIntDisconnect(unsigned int level)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefIntDisconnect(level);
#endif
  
  return status;

}

/*!
  Routine to convert a a VME Bus address to a Userspace Address
 
  @param vmeAdrsSpace Bus address space in whihc vmeBusAdrs resides
  @param *vmeBusAdrs  Bus address to convert
  @param **pLocalAdrs   Where to return Userspace address
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeBusToLocalAdrs(int vmeAdrsSpace, char *vmeBusAdrs, char **pLocalAdrs)
{
  int status;

#ifdef GEFANUC
  status = (int)jlabgefVmeBusToLocalAdrs(vmeAdrsSpace, vmeBusAdrs, pLocalAdrs);
#endif
  
  return status;

}

/*!
  Routine to enable/disable debug flags set in the VME Bridge Kernel Driver
 
  @param flags API dependent flags to toggle specific debug levels and messages
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeSetDebugFlags(int flags)
{
  int status;

#ifdef GEFANUC
  status = jlabgefSetDebugFlags(flags);
#endif

  return status;

}


/*!
  Routine to change the address modifier of the A24 Outbound VME Window.
  The A24 Window must be opened, prior to calling this routine.

  @param addr_mod Address modifier to be used.  If 0, the default (0x39) will be used.

  @return 0, if successful. -1, otherwise
*/

int
vmeSetA24AM(int addr_mod)
{
  int status;

#ifdef GEFANUC
  status = jlabgefSetA24AM(addr_mod);
#endif

  return status;
}

/* DMA SUBROUTINES */

/*!
  Routine to initialize the Tempe DMA Interface
 
  @param addrType
  Address Type of the data source
  - 0: A16
  - 1: A24
  - 2: A32
  @param dataType
  Data type of the data source
  - 0: D16
  - 1: D32
  - 2: BLT
  - 3: MBLT
  - 4: 2eVME
  - 5: 2eSST
  @param sstMode
  2eSST transfer rate.  If 2eSST is set for dataType (otherwise, ignored):
  - 0: 160 MB/s
  - 1: 267 MB/s
  - 2: 320 MB/s
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeDmaConfig(unsigned int addrType, unsigned int dataType, unsigned int sstMode)
{
  int retVal;

#ifdef GEFANUC
  retVal = jlabgefDmaConfig(addrType,dataType,sstMode);
#endif

  return retVal;
}

/*!
  Routine to initiate a DMA
 
  @param locAdrs Destination Userspace address
  @param vmeAdrs VME Bus source address
  @param size    Maximum size of the DMA in bytes
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeDmaSend(unsigned int locAdrs, unsigned int vmeAdrs, int size)
{
  int status;

#ifdef GEFANUC
  status = jlabgefDmaSend(locAdrs,vmeAdrs,size);
#endif

  return status;

}

/*!
  Routine to poll for a DMA Completion or timeout.
 
  @return Number of bytes transferred, if successful, -1, otherwise.
*/
int
vmeDmaDone()
{
  int retVal;

#ifdef GEFANUC
  retVal = jlabgefDmaDone();
#endif

  return retVal;
}

/*!
  Routine to allocate memory for a linked list buffer.
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int  
vmeDmaAllocLLBuffer()
{
  int retVal;
  
#ifdef GEFANUC
  retVal = jlabgefDmaAllocLLBuffer();
#endif

  return retVal;
}

/*!
  Routine to free the memory allocated with vmeDmaAllocLLBuffer()
 
  @return 0 if successful, otherwise.. an API dependent error code
*/
int
vmeDmaFreeLLBuffer()
{
  int retVal;

#ifdef GEFANUC
  retVal = jlabgefDmaFreeLLBuffer();
#endif

  return retVal;
}

/*!
  Routine to setup a DMA Linked List
 
  @param locAddrBase Userspace Destination address
  @param *vmeAddr    Array of VME Source addresses
  @param *dmaSize    Array of sizes of each DMA, in bytes
  @param numt        Nuumber of DMA (also size of the arrays)
 
  @return 0, if successful.  -1, otherwise.
*/
void 
vmeDmaSetupLL(unsigned int locAddrBase,unsigned int *vmeAddr,
	      unsigned int *dmaSize,unsigned int numt)
{

#ifdef GEFANUC
  jlabgefDmaSetupLL(locAddrBase,vmeAddr,dmaSize,numt);
#endif

}

/*!
  Routine to initiate a linked list DMA that was setup with vmeDmaSetupLL()
*/
void
vmeDmaSendLL()
{

#ifdef GEFANUC
  jlabgefDmaSendLL();
#endif

}

/*!
  Routine to convert the current data buffer pointer position in userspace
  to Physical Memory space

  @param locAdrs
  Pointer to current position in data buffer in userspace.

  @return Physical Memory address of the current position in the data buffer.
*/
unsigned int
vmeDmaLocalToPhysAdrs(unsigned int locAdrs)
{
  unsigned int retVal;

#ifdef GEFANUC
  retVal = jlabgefDmaLocalToPhysAdrs(locAdrs);
#endif
  return retVal;
}

/*!
  Routine to convert the current data buffer pointer position in userspace
  to a VME Address.

  The VME Slave window must be initialized, prior to a call to this routine.

  @param locAdrs
  Pointer to current position in data buffer in userspace.

  @return VME Slave address of the current position in the data buffer.
*/
unsigned int
vmeDmaLocalToVmeAdrs(unsigned int locAdrs)
{
  int retVal;

#ifdef GEFANUC
  retVal =  jlabgefDmaLocalToVmeAdrs(locAdrs);
#endif

  return retVal;
}

/*!
  Routine to print the Tempe DMA Registers
*/
void
vmeReadDMARegs()
{

#ifdef GEFANUC
  jlabgefReadDMARegs();
#endif

}

/* API independent code here */

/* Shared Robust Mutex for vme bus access */
char* shm_name_vmeBus = "/vmeBus";
/* Keep this as a structure, in case we want to add to it in the future */
struct shared_memory_mutex
{
  pthread_mutex_t mutex;
};
struct shared_memory_mutex *p_sync=NULL;
/* mmap'd address of shared memory mutex */
void *addr_shm = NULL;

/*!
  Routine to create (if needed) a shared mutex for VME Bus locking
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeBusCreateLockShm()
{
  int fd_shm;
  pthread_mutexattr_t m_attr;
  int needMutexInit=0;

  /* First check to see if the file already exists */
  fd_shm = shm_open(shm_name_vmeBus, O_RDWR, S_IRUSR|S_IWUSR);
  if(fd_shm<0)
    {
      /* Bad file handler.. */
      if(errno == ENOENT)
	{
	  needMutexInit=1;
	}
      else
	{
	  perror("shm_open");
	  printf(" %s: ERROR: Unable to open shared memory\n",__FUNCTION__);
	  return ERROR;
	}
    }

  if(needMutexInit)
    {
      /* Create and map 'mutex' shared memory */
      fd_shm = shm_open(shm_name_vmeBus, O_CREAT|O_RDWR, S_IRUSR|S_IWUSR);
      if(fd_shm<0)
	{
	  perror("shm_open");
	  printf(" %s: ERROR: Unable to open shared memory\n",__FUNCTION__);
	  return ERROR;
	}
      ftruncate(fd_shm, sizeof(struct shared_memory_mutex));
    }

  addr_shm = mmap(0, sizeof(struct shared_memory_mutex), PROT_READ|PROT_WRITE, MAP_SHARED, fd_shm, 0);
  if(addr_shm<0) {
    perror("mmap");
    printf("%s: ERROR: Unable to mmap shared memory\n",__FUNCTION__);
    return ERROR;
  }
  p_sync = addr_shm;

  if(needMutexInit)
    {
      if(pthread_mutexattr_init(&m_attr)<0) 
	{
	  perror("pthread_mutexattr_init");
	  printf("%s: ERROR:  Unable to initialized mutex attribute\n",__FUNCTION__);
	  return ERROR;
	}
      if(pthread_mutexattr_setpshared(&m_attr, PTHREAD_PROCESS_SHARED)<0) 
	{
	  perror("pthread_mutexattr_setpshared");
	  printf("%s: ERROR:  Unable to set shared attribute\n",__FUNCTION__);
	  return ERROR;
	}
      if(pthread_mutexattr_setrobust_np(&m_attr, PTHREAD_MUTEX_ROBUST_NP)<0)
	{
	  perror("pthread_mutexattr_setrobust_np");
	  printf("%s: ERROR:  Unable to set shared attribute\n",__FUNCTION__);
	  return ERROR;
	}
      if(pthread_mutex_init(&(p_sync->mutex), &m_attr)<0)
	{
	  perror("pthread_mutex_init");
	  printf("%s: ERROR:  Unable to initialize shared mutex\n",__FUNCTION__);
	  return ERROR;
	}
      if(pthread_mutexattr_destroy(&m_attr)<0)
	{
	  perror("pthread_mutexattr_destroy");
	  printf("%s: ERROR:  Unable to destroy mutex attribute\n",__FUNCTION__);
	  return ERROR;
	}
    }

  if(!vmeQuietFlag)
    printf("%s: vmeBus shared memory mutex created\n",__FUNCTION__);
  return OK;
}

/*!
  Routine to destroy the shared mutex created by vmeBusCreateLockShm()
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeBusKillLockShm(int kflag)
{
  if(munmap(addr_shm, sizeof(struct shared_memory_mutex))<0)
    perror("munmap");
  if(kflag==1)
    {
      if(shm_unlink(shm_name_vmeBus)<0) 
	perror("shm_unlink");
      printf("%s: vmeBus shared memory mutex destroyed\n",__FUNCTION__);
    }
  return OK;
}

/*!
  Routine to lock the shared mutex created by vmeBusCreateLockShm()
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeBusLock()
{
  int rval;

  if(p_sync!=NULL)
    {
      rval = pthread_mutex_lock(&(p_sync->mutex));
      if(rval<0) 
	{
	  perror("pthread_mutex_lock");
	  printf("%s: ERROR locking vmeBus\n",__FUNCTION__);
	  return ERROR;
	}
      if(rval==EOWNERDEAD)
	{
	  printf("%s: WARN: Previous owner of vmeBus (mutex) died unexpectedly\n",
		 __FUNCTION__);
	  printf("  Attempting to recover..\n");
	  if(pthread_mutex_consistent_np(&(p_sync->mutex))<0)
	    perror("pthread_mutex_consistent_np");
	}
      if(rval==ENOTRECOVERABLE)
	{
	  printf("%s: ERROR: vmeBus mutex in an unrecoverable state!\n",
		 __FUNCTION__);
	  return ERROR;
	}
    }
  else
    {
      printf("%s: ERROR: vmeBusLock not initialized.\n",__FUNCTION__);
      return ERROR;
    }
  return OK;
}

/*!
  Routine to unlock the shared mutex created by vmeBusCreateLockShm()
 
  @return 0, if successful. -1, otherwise.
*/
int
vmeBusUnlock()
{
  if(p_sync!=NULL)
    {
      if(pthread_mutex_unlock(&(p_sync->mutex))<0) 
	{
	  perror("pthread_mutex_unlock");
	  printf("%s: ERROR unlocking vmeBus\n",__FUNCTION__);
	  return ERROR;
	}
    }
  else
    {
      printf("%s: ERROR: vmeBusUnlock not initialized.\n",__FUNCTION__);
      return ERROR;
    }
  return OK;
}

/* Register Read/Write routines */
unsigned char
vmeRead8(volatile unsigned char *addr)
{
  unsigned char rval;

  rval = *addr;

  return rval;
}

unsigned short
vmeRead16(volatile unsigned short *addr)
{
  unsigned short rval;

  rval = *addr;
  rval = SSWAP(rval);

  return rval;
}

unsigned int
vmeRead32(volatile unsigned int *addr)
{
  unsigned int rval;

  rval = *addr;
  rval = LSWAP(rval);

  return rval;
}

void
vmeWrite8(volatile unsigned char *addr, unsigned char val)
{

  *addr = val;

  return;
}

void
vmeWrite16(volatile unsigned short *addr, unsigned short val)
{

  val = SSWAP(val);
  *addr = val;

  return;
}

void
vmeWrite32(volatile unsigned int *addr, unsigned int val)
{

  val = LSWAP(val);
  *addr = val;

  return;
}
