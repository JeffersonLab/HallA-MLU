/*----------------------------------------------------------------------------*
 *  Copyright (c) 2009        Southeastern Universities Research Association, *
 *                            Thomas Jefferson National Accelerator Facility  *
 *                                                                            *
 *    This software was developed under a United States Government license    *
 *    described in the NOTICE file included as part of this distribution.     *
 *                                                                            *
 *    Authors: David Abbott                                                   *
 *             abbottd@jlab.org                  Jefferson Lab, MS-12B3       *
 *             Phone: (757) 269-7190             12000 Jefferson Ave.         *
 *             Fax:   (757) 269-5800             Newport News, VA 23606       *
 *                                                                            *
 *             Bryan Moffit                                                   *
 *             moffit@jlab.org                   Jefferson Lab, MS-12B3       *
 *             Phone: (757) 269-5660             12000 Jefferson Ave.         *
 *             Fax:   (757) 269-5800             Newport News, VA 23606       *
 *                                                                            *
 *----------------------------------------------------------------------------*
 *
 * Description:
 *     Library for a memory allocation system
 *
 * SVN: $Rev: 473 $
 *
 *----------------------------------------------------------------------------*/
#ifdef VXWORKS
#include <vxWorks.h>
#include <memLib.h>
#include <cacheLib.h>
#include <types.h>
#else
#include <stdlib.h>
#include "jlabgef.h"
#endif

#include <stdio.h>
#include <string.h>
#include "dmaPList.h"

#define DOMUTEX
/* Maximum size that can be allocated for one DMA partition in Linux = 4 MB */
#define LINUX_MAX_PARTSIZE 0x400000

pthread_mutex_t   partMutex = PTHREAD_MUTEX_INITIALIZER;
#ifdef DOMUTEX
#define PARTLOCK     if(pthread_mutex_lock(&partMutex)<0) perror("pthread_mutex_lock");
#define PARTUNLOCK   if(pthread_mutex_unlock(&partMutex)<0) perror("pthread_mutex_unlock");
#else
#define PARTLOCK
#define PARTUNLOCK
#endif


#define maximum(a,b) (a<b ? b : a)

/* global data */
static DMALIST  dmaPList;     /* global part list */
static int useSlaveWindow=0;  /* decision to use (1) a Slave VME window (useful for SFI) */
extern void *a32slave_window; /* global variable from jlabgef.c */
extern int a32slave_physmembase;

/*!
 Routine to obtain the physical address from a GE-VME DMA handle

 @param inpDmaHdl GE-VME DMA handle
 
 @return The 32bit physical address
*/
GEF_UINT32
dmaHdl_to_PhysAddr
(
 GEF_VME_DMA_HDL inpDmaHdl
 )
{
  /* This returns an UINT32 because we're not using 64bit addresses.. yet */
  return (GEF_UINT32)inpDmaHdl->phys_addr;
}

/*!
  Routine to allow for using a Slave VME window (opened with vmeOpenSlaveA32)
  for the DMA buffer.
  This routine MUST be called before initializing DMA buffers, if the Slave
  VME Window physical memory is to be used.

  @param iFlag 
  - 0 to use regular physical memory
  - 1 to use physical memory already mapped to a VME Slave Window

  @return OK if successful, ERROR on error
*/
int
dmaPUseSlaveWindow (int iFlag)
{
  /* Check argument */
  if(iFlag<0 | iFlag>1)
    {
      printf("%s: ERROR: Invalid iFlag (%d).  Must be 0 or 1.\n",
	     __FUNCTION__,iFlag);
      return ERROR;
    }

  if(iFlag==0) /* Don't use Slave Window.. */
    {
      useSlaveWindow=0;
      return OK;
    }
  
  if(iFlag==1) /* Use Slave Window */
    {
      /* Check if window was already opened and initialized */
      if(a32slave_window==NULL)
	{
	  useSlaveWindow=0;
	  printf("%s: ERROR: Slave Window has not been initialized.\n",
		 __FUNCTION__);
	  return ERROR;
	}

      useSlaveWindow=1;
      return OK;
    }
  
  return ERROR; /* Shouldn't get here, anyway */
}


void
dmaPartInit()
{
  dmalistInit(&dmaPList);
}

/*!
  Create and initialize a memory partition

  @param *name Name of the new partition
  @param size  Size of a single item
  @param c     Initial number if items
  @param incr  Number of items to add when enlarging

  @return Created memory partition
*/
DMA_MEM_ID 
dmaPCreate (name, size, c, incr)
     char *name;		/* name of new partition */
     int size;			/* size of a single item */
     int c;			/* initial number of items */
     int incr;			/* number of items to add when enlarging */
     
{
  DMA_MEM_ID pPart;
  /*   int c_alloc = 0; */
  GEF_STATUS status;
  GEF_VME_DMA_HDL dma_hdl;
  GEF_MAP_PTR mapPtr;
  
#ifdef VXWORKS
  pPart = (DMA_MEM_ID) cacheDmaMalloc (sizeof(DMA_MEM_PART));
  bzero ((char *) pPart, sizeof(DMA_MEM_PART));
#else
  if(vmeHdl==NULL) 
    {
      printf("dmaPCreate: ERROR: vmeHdl undefined.\n");
      return 0;
    }
  status = gefVmeAllocDmaBuf (vmeHdl,sizeof(DMA_MEM_PART),	
			      &dma_hdl,&mapPtr);
  if(status != GEF_STATUS_SUCCESS) 
    {
      printf("dmaPCreate: ERROR:  gefVmeAllocDmaBuf returned 0x%x\n",status);
      return 0;
    }
  pPart = (DMA_MEM_ID) mapPtr;
  memset ((char *)pPart,0,sizeof(DMA_MEM_PART));
#endif
  if (pPart != NULL)
    {
      dmalistInit (&(pPart->list));
      pPart->size = size + sizeof(DMANODE);
      pPart->incr = 0; 
      pPart->total = 0;
#ifndef VXWORKS
      pPart->dmaHdl = dma_hdl;
#endif
      strcpy(pPart->name, name);
      if (name && strlen(name) == 0)
	pPart->name[0] = 0;
      dmalistAdd (&dmaPList, (DMANODE *)pPart);      
      if((dmaPIncr (pPart, c)) != c)
	return (0);
    }
  return pPart;
}

/*!
  Routine to find a memory partition based on its name

  @param *name Name of the partition to find

  @return Pointer to found memory partition, if successful. 
*/
DMA_MEM_ID 
dmaPFindByName (char *name)
{
  DMA_MEM_ID	pPart;

  pPart = (DMA_MEM_ID) dmalistFirst (&dmaPList);
  
  while (pPart != NULL)
    {
      if (pPart->name && strcmp(pPart->name, name) == 0)break;
      pPart = (DMA_MEM_ID) dmalistNext ((DMANODE *)pPart);
    }
  return (pPart);
}


/*!
  Frees all nodes for a given memory part and removes part from global
  part list.

  @param pPart Memory parition
*/
void 
dmaPFree(DMA_MEM_ID pPart)
{
  DMANODE *the_node;
#ifndef VXWORKS
  GEF_STATUS status;
#endif

  if(pPart == NULL) return;
  printf("free list %s\n",pPart->name);

  if (pPart->incr == 1) 
    {
      /* Free all buffers in the partition individually */
      while (pPart->list.c) 
	{
	  dmalistGet(&(pPart->list),the_node);
#ifdef VXWORKS
	  cacheDmaFree(the_node);
#else
#ifdef DEBUG
	  printf("the_node->dmaHdl : 0x%x\n",(unsigned int)the_node->dmaHdl);
#endif
	  status = gefVmeFreeDmaBuf(the_node->dmaHdl);
	  if(status != GEF_STATUS_SUCCESS) 
	    {
	      printf("dmaPFree: gefVmeFreeDmaBuf returned 0x%x\n",status);
	    }
#endif
	  the_node = (DMANODE *)0;
	}
      dmalistSnip (&dmaPList, (DMANODE *)pPart);
    } 
  else 
    {
      /* Just need to Free the one contiguous block of data */
      dmalistSnip (&dmaPList, (DMANODE *)pPart);      
#ifdef VXWORKS
      cacheDmaFree( *((char **) &pPart->part[0]));
#else
      dmalistGet(&(pPart->list),the_node);
      if(the_node) 
	{
#ifdef DEBUG
	  printf("the_node->dmaHdl : 0x%x\n",
		 (unsigned int)the_node->dmaHdl );
#endif
	  if(!useSlaveWindow)
	    {
	      status = gefVmeFreeDmaBuf(the_node->dmaHdl );
	      if(status != GEF_STATUS_SUCCESS) 
		{
		  printf("dmaPFree: gefVmeFreeDmaBuf returned 0x%x (%d)\n",status,status&0xff);
		}
	    }
	}
#endif
    }
#ifdef VXWORKS
  cacheDmaFree(pPart);
#else
#ifdef DEBUG
  printf("pPart->dmaHdl: 0x%x\n",(unsigned int)pPart->dmaHdl);
#endif
  status = gefVmeFreeDmaBuf(pPart->dmaHdl);
  if(status != GEF_STATUS_SUCCESS) 
    {
      printf("dmaPFree: gefVmeFreeDmaBuf returned 0x%x (%d)\n",status,status&0xff);
    }
#endif
  pPart = 0;
}


/*!  
  Frees all memory parts in global part list and frees all nodes for a
  given list.
*/
void 
dmaPFreeAll()
{
  DMA_MEM_ID	pPart = (DMA_MEM_ID) 0;

  if (dmalistCount(&dmaPList)) 
    {
      pPart = (DMA_MEM_ID) dmalistFirst (&dmaPList);    
      while (pPart != NULL)
	{
	  dmaPFree(pPart);
	  pPart = (DMA_MEM_ID) dmalistFirst (&dmaPList);
	}
    }
}



/*!
  Routine to increase a partition size.

  @param pPart Memory parition to increase
  @param c     Minimum number of items to add.

  @return Number of items added, if successful, -1, otherwise.
*/
int 
dmaPIncr ( DMA_MEM_ID pPart, int c)
{

  register char *node;
  register long *block;
  /*   unsigned bytes; */
  int total_bytes;
  int actual = c;		/* actual # of items added */
  GEF_STATUS status;
  GEF_MAP_PTR mapPtr;
  GEF_VME_DMA_HDL dma_hdl;
  int physMemBase=0;

  pPart->total += c;

  if ((pPart == NULL)||(c == 0)) return (0);

  total_bytes =  c * pPart->size;

#ifdef VXWORKS
  if (memFindMax() <= total_bytes) 
    {
      printf("dmaPIncr: Creating a fragmented memory partition\n");
      if (memFindMax() < total_bytes/4) 
	{
	  printf("dmaPIncr: Memory Fragmentation to severe to allocate buffers - Reboot CPU");
	  return (-1);
	} 
      else 
	{
	  pPart->incr = 1; /* Create a Fragmented memory Partition */
	  while (actual--)
	    {
	      if ( memFindMax() <= (pPart->size * actual)/4 ) 
		{
		  printf("dmaPIncr: bufs %d max %d  needed %d \n",actual, 
			 memFindMax(),(pPart->size * (actual+1)));
		  printf("dmaPIncr: ERROR: Cannot complete buffer allocation - Reboot CPU");
		  return ((c - actual + 1));
		}
	      block = (long *) cacheDmaMalloc (pPart->size);
	      if (block == NULL)
		return (-1);
	      bzero((char *) block, pPart->size);
	      ((DMANODE *)block)->part = pPart; /* remember where we came from... */
	      dmalistAdd (&pPart->list,(DMANODE *)block);
	    }
	  return (c);
	}
    } 
  else 
    {
      block = (long *) cacheDmaMalloc (total_bytes);
      if (block == NULL)
	return (-1);
    
      pPart->incr = 0;
      bzero((char *) block, c * pPart->size);
      node = (char *) block;
      *((char **) &pPart->part[0]) = node;

      while (actual--)
	{      
	  ((DMANODE *)node)->part = pPart; /* remember where we came from... */
	  dmalistAdd (&pPart->list,(DMANODE *)node);
	  node += pPart->size;
	}
      return (c);
    }
#else
  if(LINUX_MAX_PARTSIZE <= total_bytes)
    {
      if(useSlaveWindow)
	{
	  printf("%s: ERROR:  Unable to create memory partition for Slave Window.\n",
		 __FUNCTION__);
	  printf("  Requested partition size (%d) is larger than max allowed (%d)\n",
		 total_bytes,LINUX_MAX_PARTSIZE);
	  return ERROR;
	}
      printf("%s: Creating a fragmented memory partition.\n",__FUNCTION__);
      if(LINUX_MAX_PARTSIZE < pPart->size)
	{
	  printf("%s: ERROR: Requested partition size (%d) is larger than max allowed (%d)\n",
		 __FUNCTION__,pPart->size,LINUX_MAX_PARTSIZE);
	  return (-1);
	}
      else
	{
	  pPart->incr = 1; /* Create a Fragmented memory Partition */
	  while (actual--)
	    {
	      status = gefVmeAllocDmaBuf (vmeHdl,pPart->size,	
					  &dma_hdl,&mapPtr);
	      if(status != GEF_STATUS_SUCCESS) 
		{
		  printf("dmaPIncr: ERROR.  gefVmeAllocDmaBuf returned 0x%x\n",status);
		  printf("                bytes requested = %d\n",pPart->size);
		  return -1;
		}
	      block = (long *) mapPtr;
#ifdef DEBUG
	      printf("block = 0x%x\t dma_hdl = 0x%x\n",block,dma_hdl);
#endif
	      if (block == NULL) 
		{
		  return (-1);
		}
  
	      memset((char *) block, 0, pPart->size);
	      ((DMANODE *)block)->part = pPart; /* remember where we came from... */
	      ((DMANODE *)block)->dmaHdl = dma_hdl;
	      ((DMANODE *)block)->partBaseAdr = (unsigned long)block;
	      ((DMANODE *)block)->physMemBase = dmaHdl_to_PhysAddr(dma_hdl);
	      dmalistAdd (&pPart->list,(DMANODE *)block);
	    }
	  return (c);
	}
    }
  else /* Single memory block for data */
    {
      if(useSlaveWindow)
	{
	  dma_hdl=NULL;
	  block = (long *)a32slave_window;
	  physMemBase = a32slave_physmembase;
	}
      else
	{
	  status = gefVmeAllocDmaBuf (vmeHdl,total_bytes,	
				      &dma_hdl,&mapPtr);
	  if(status != GEF_STATUS_SUCCESS) 
	    {
	      printf("dmaPIncr: ERROR.  gefVmeAllocDmaBuf returned 0x%x\n",status);
	      printf("          total_bytes requested = %d\n",total_bytes);
	      return -1;
	    }
	  block = (long *) mapPtr;
	  physMemBase = dmaHdl_to_PhysAddr(dma_hdl);
#ifdef DEBUG
	  printf("block = 0x%x\t dma_hdl = 0x%x\n",block,dma_hdl);
#endif
	}
      if (block == NULL) 
	{
	  printf("%s: ERROR: Memory Allocator returned NULL\n",
		 __FUNCTION__);
	  return (-1);
	}
  
      pPart->incr = 0;
      memset((char *) block, 0, c * pPart->size);

      node = (char *) block;
      *((char **) &pPart->part[0]) = node;

      while (actual--)
	{      
	  ((DMANODE *)node)->part = pPart; /* remember where we came from... */
	  ((DMANODE *)node)->dmaHdl = dma_hdl;
	  ((DMANODE *)node)->partBaseAdr = (pPart->part[0]);
	  ((DMANODE *)node)->physMemBase = physMemBase;
	  dmalistAdd (&pPart->list,(DMANODE *)node);
	  node += pPart->size;
	}

      return (c);
    }
#endif
}



/*****************************************************************
 *
 *  Wrapper routines for DMA Memory Partition list manipulation
 *
 *   dmaPFreeItem:  Free a buffer(node) back to its owner partition
 *   dmaPEmpty   :  Check if a Partition has available nodes
 *   dmaPGetItem :  Get (reserve) the first available  node from a partition
 *   dmaAddItem  :  Add node to a specified partition's list.
 *
 */

/*!
  Free a buffer(node) back to its owner partition

  @param *pItem Buffer(node) to free
*/
void 
dmaPFreeItem(DMANODE *pItem) 
{
#ifndef VXWORKS
  GEF_STATUS status;
#endif
  unsigned long length=0;

  PARTLOCK;
  /* if the node does not have an owner then delete it - otherwise add it back to
     the owner list - lock out interrupts to be safe */
  if ((pItem)->part == 0) 
    {
#ifdef VXWORKS
      cacheDmaFree(pItem); pItem = 0;
#else
      if(useSlaveWindow)
	{
	  printf("%s: I dont think I should be here... useSlaveWindow==%d",
		 __FUNCTION__,useSlaveWindow);
	}
      status = gefVmeFreeDmaBuf(pItem->dmaHdl);
      if(status != GEF_STATUS_SUCCESS) 
	{
	  printf("dmaPFreeItem: gefVmeFreeDmaBuf returned 0x%x\n",status);
	}
      pItem = 0;  
#endif
    } 
  else 
    {
      /* length=(pItem->part->size - sizeof(DMANODE))>>2; */
/*       memset((char *)pItem->data,0,length*sizeof(unsigned int)); */
      pItem->length=0;
      dmalistAdd (&pItem->part->list, pItem);
    }
  
  /* execute any command accociated with freeing the buffer */
  if(pItem->part->free_cmd != NULL)
    (*(pItem->part->free_cmd)) (pItem->part->clientData);

  PARTUNLOCK;
}

/*!
  Check if a Partition has available nodes

  @param pPart Partition to check

  @return Number of nodes available.
*/
int
dmaPEmpty(DMA_MEM_ID pPart) 
{
  return((pPart->list.c == 0));
}

/*!
  Get (reserve) the first available node from a parititon

  @param pPart Partition to obtain a node

  @return First available node, if successful. 0, otherwise.
*/
DMANODE *
dmaPGetItem(DMA_MEM_ID pPart) 
{
  DMANODE *theNode;

  PARTLOCK;
  dmalistGet(&(pPart->list),theNode);
  if(!theNode)
    {
      PARTUNLOCK;
      return 0;
    }

  if(theNode->length > theNode->part->size) 
    {
      printf("dmaPGetItem: ERROR.");
      printf("  Event length (%d) is larger than the Event buffer size (%d).  (Event %d)\n",
	     (int)theNode->length,theNode->part->size,
	     (int)theNode->nevent);
    }
  PARTUNLOCK;
  return(theNode);
}

/*!
  Add node to a specified partition's list

  @param pPart  Partition to add to
  @param *pItem Item to add to partition's list
*/
void
dmaPAddItem(DMA_MEM_ID pPart, DMANODE *pItem) 
{

  PARTLOCK;
  dmalistAdd(&(pPart->list),pItem);
  if(pItem->length > pItem->part->size) 
    {
      printf("dmaPAddItem: ERROR.");
      printf("  Event length (%d) is larger than the Event buffer size (%d).  (Event %d)\n",
	     (int)pItem->length,pItem->part->size,
	     (int)pItem->nevent);
    }
  PARTUNLOCK;
}



/*!
  Initialize an existing partition 

  @param pPart Parition to initialize

  @return 0, if successful.  -1, otherwise.
*/
int 
dmaPReInit (DMA_MEM_ID pPart)
{
  register char *node;
  register DMANODE *theNode;
  int actual;
  int oldPhysMemBase=0;
  unsigned long oldPartBaseAdr=0;
#ifndef VXWORKS
  GEF_VME_DMA_HDL oldPartDMAHdl,oldNodeDMAHdl;
#endif

  if (pPart == NULL) return -1;

  if (pPart->incr == 1) 
    {   /* Does this partition have a Fragmented buffer list */
      /* Check if partition has buffers that do not belong to it
	 and return them to their rightful owners */
      if ((pPart->total == 0) && (dmalistCount(&pPart->list) > 0)) 
	{
	  while (dmalistCount(&pPart->list) > 0) 
	    {
	      dmalistGet(&pPart->list,theNode);
	      dmaPFreeItem(theNode);
	    }
	}
    
    } 
  else 
    {
      /* Cheat to initialize memory partition assuming buffers in one
	 contiguous memory bloack */
#ifdef VXWORKS
      bzero(*((char **) &pPart->part[0]), pPart->total * pPart->size);
#else
      /* Get the dma handles (if they exist) before they're erased */
      dmalistGet(&pPart->list,theNode);
      if(theNode) 
	{
	  oldNodeDMAHdl = theNode->dmaHdl;
	  oldPhysMemBase = theNode->physMemBase;
	  oldPartBaseAdr = theNode->partBaseAdr;
	} 
      else 
	{
	  oldNodeDMAHdl = 0;
	}
      oldPartDMAHdl = pPart->dmaHdl;
      memset(*((char **) &pPart->part[0]), 0, pPart->total * pPart->size);
#endif
    
      node = *((char **) &pPart->part[0]);
    
      actual = pPart->total;

      pPart->list.f = pPart->list.l = (DMANODE *) (pPart->list.c = 0);
 
      while (actual--)
	{      
	  ((DMANODE *)node)->part = pPart; /* remember where we came from... */
	  ((DMANODE *)node)->dmaHdl = oldNodeDMAHdl;
	  ((DMANODE *)node)->physMemBase = oldPhysMemBase;
	  ((DMANODE *)node)->partBaseAdr = oldPartBaseAdr;
	  dmalistAdd (&pPart->list,(DMANODE *)node);
	  node += pPart->size;
	}
    }
  return 0;
}

/*!
  Initialize all existing memory partitions

  @return 0
*/
int 
dmaPReInitAll()
{
  DMA_MEM_ID	pPart = (DMA_MEM_ID) 0;

  if (dmalistCount(&dmaPList)) 
    {
      pPart = (DMA_MEM_ID) dmalistFirst (&dmaPList);    
      while (pPart != NULL)
	{
	  dmaPReInit(pPart);
	  pPart = (DMA_MEM_ID) dmalistNext ((DMANODE *) pPart);
	}
    }
  return 0;
}

/*************************************************************** 
 * dmaPHdr - Print headings for part statitistics printout 
 */

static void 
dmaPHdr ()
     
{
  printf("Address    total  free   busy   size  incr  (KBytes)  Name\n");
  printf("---------- -----  ----   ----  -----  ----  --------  ----\n");
}


/*************************************************************** 
 * dmaPPrint - Print statitistics for a single part 
 */

static void 
dmaPPrint (pPart)
     DMA_MEM_ID	pPart;    
{
  int freen;

  printf("0x%08x  ",(unsigned int)pPart);

  if (pPart != NULL)
    {
      freen = dmalistCount (&pPart->list); 
      printf("%4d  %4d  %4d   %5d  %4d  (%d)       %s\n",
	     pPart->total,
	     freen,
	     pPart->total - freen,
	     pPart->size,
	     pPart->incr,
	     (((pPart->total * pPart->size) + 1023) / 1024),
	     pPart->name
	     );
    }
}


/*!
  Print statistics on a memory part 

  @param pPart Memory paritition

  @return 0
*/
int 
dmaPStats (pPart)
     DMA_MEM_ID	pPart;
     
{
  dmaPHdr ();
  dmaPPrint (pPart);
  return (0);
}


/*!
  Print statistics on all partitions
*/
int 
dmaPStatsAll ()
{
#ifdef VXWORKS
  int lockKey;
#endif
  DMA_MEM_ID  pPart;
  
  dmaPHdr ();
#ifdef VXWORKS
  lockKey = intLock();
#endif
  pPart = (DMA_MEM_ID) dmalistFirst (&dmaPList);
  while (pPart != NULL)
    {
      dmaPPrint (pPart);
      pPart = (DMA_MEM_ID) dmalistNext ((DMANODE *)pPart);
    }
#ifdef VXWORKS
  intUnlock(lockKey);
#endif
  return (0);
}


/*!
  Prints statistics for a given list structure

  @param *admalist List of nodes

  @return 0
*/
int 
dmaPPrintList(admalist)
     DMALIST *admalist;
{
  DMANODE *theNode;

  printf("dalist->f         %x\n",(unsigned int)admalist->f);
  printf("dalist->l         %x\n",(unsigned int)admalist->l);
  printf("dalist->c         %d\n",(unsigned int)admalist->c);

  theNode = dmalistFirst(admalist);
  while (theNode) 
    {
      printf ("part %x prev %x self %x next %x left %d fd %d\n",
	      (unsigned int)theNode->part,
	      (unsigned int)theNode->p,
	      (unsigned int)theNode,
	      (unsigned int)theNode->n,
	      (int)theNode->left,
	      theNode->fd);
      theNode = dmalistNext(theNode);
    }
  return(0);
}

