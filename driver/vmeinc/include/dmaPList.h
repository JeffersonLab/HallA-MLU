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
 *     Header for a memory allocation system
 *
 * SVN: $Rev: 473 $
 *
 *----------------------------------------------------------------------------*/

#ifndef __DMAPLIST__
#define __DMAPLIST__
#include <stdarg.h>
#include <pthread.h>
#include "gef/gefcmn_vme.h"
#include "gef/gefcmn_vme_framework.h"

/*! Node of a linked list. */
typedef struct dmanode
{
  struct dmanode         *n;	              /*!< Points at the next node in the list. */
  struct dmanode         *p;	              /*!< Points at the previous node in the list. */
  struct dma_mem_part   *part;	              /*!< Which partition "owns" this node. */    
  int                    fd;		      /*!< File descriptor associated with this node. */
  GEF_VME_DMA_HDL        dmaHdl;              /*!< GE-VME DMA handle for this node */
  char                  *current;	      /*!< Current data mark */
  unsigned long          left;	              /*!< data left to process (bytes) */
  unsigned long          type;                /*!< data type */
  unsigned long          partBaseAdr;         /*!< Base Address of the partition owning this node */
  unsigned long          physMemBase;         /*!< Physical Base address of the node */
  void                   (*reader)();         /*!< routine to read data if data segment is empty */
  long                   nevent;              /*!< event number */
  unsigned long          length;	      /*!< Length of data to follow (bytes). */
  unsigned long          data[1];	      /*!< Node data. */
} DMANODE;

/*! Header for a linked list. */
typedef struct admalist
{
  DMANODE        *f;		              /*!< head */
  DMANODE        *l;		              /*!< tail */
  int             c;			      /*!< Number of nodes in list */
  int            to;
  void          (*add_cmd)(struct admalist *li);     /*!< command to call on list add */
  void          *clientData;                  /*!< data to pass for add_cmd */ 
} DMALIST;

/*! Pointer to Memory partition structure */
typedef struct dma_mem_part *DMA_MEM_ID;

/*! Memory partition structure */
typedef struct dma_mem_part
{
  DMANODE	 node;		/*!< global partition list */
  DMALIST	 list;		/*!< free item list */
  char	         name[40];	/*!< part name */
  GEF_VME_DMA_HDL dmaHdl;       /*!< GE-VME DMA handle for this partition */
  void         (*free_cmd)();   /*!< command to call when fifo is empty */
  void          *clientData;    /*!< data to pass for free_cmd */ 
  int		 size;		/*!< size of a single item */
  int		 incr;		/*!< Flag incr=1 when memory pool is fragmented */
  int		 total;		/*!< total items allocated so far */

  long         part[1];	/*!< pointer to memory pool */
} DMA_MEM_PART;

/*! \name List manipulation Macros 
  \{ */
/*! Initialize a given dma list (li)
  \hideinitializer
*/
#ifdef VXWORKS
#define dmalistInit(li) {bzero((char *) (li), sizeof(DMALIST));}
#else
#define dmalistInit(li) {memset((char *) (li), 0, sizeof(DMALIST));}
#endif

/*! Get a node (no) from a given list (li)
  \hideinitializer
*/
#define dmalistGet(li,no) {			\
    (no) = 0;					\
    if ((li)->c){				\
      (li)->c--;				\
      (no) = (li)->f;				\
      (li)->f = (li)->f->n;			\
    };						\
    if (!(li)->c) {				\
      (li)->l = 0;				\
    }						\
  }

/*!
  \hideinitializer
*/
#define dmalistWait(li,no) {					    \
    (no) = 0;(li)->to = 0;					    \
    while(((li)->c == 0) && ((li)->to == 0)) {			    \
    };								    \
    if ((li)->to == 0) {					    \
      (li)->c--;						    \
      (no) = (li)->f;						    \
      (li)->f = (li)->f->n;					    \
      if (!(li)->c)						    \
	(li)->l = 0;						    \
    } else {							    \
      (no) = (void *) -1;					    \
    };								    \
  }
 
/*! Add a node (no) onto a specified list (li).  Call add_cmd (if it exists)
  \hideinitializer
*/
#define dmalistAdd(li,no) { \
    if(! (li)->c ) {							\
      (li)->f = (li)->l = (no);						\
      (no)->p = 0;							\
    } else {								\
      (no)->p = (li)->l;						\
      (li)->l->n = (no);						\
      (li)->l = (no);							\
    }									\
    (no)->n = 0;							\
    (li)->c++;								\
    if((li)->add_cmd != NULL)						\
      (*((li)->add_cmd)) ((li));					\
  }

/*!
  \hideinitializer
*/
#define dmalistSnip(li,no) {						\
    if ((no)->p) {							\
      (no)->p->n =(no)->n;						\
    } else {								\
      (li)->f = (no)->n;						\
    }									\
    if ((no)->n) {							\
      (no)->n->p =(no)->p;						\
    } else {								\
      (li)->l = (no)->p;						\
    }									\
    (li)->c--;								\
    if ((li)->c==0)							\
      (li)->f = (li)->l = (DMANODE *)0;					\
    (no)->p=(no)->n= (DMANODE *)0;					\
  }

/*! Return the number of nodes in the list
  \hideinitializer
*/
#define dmalistCount(li) ((li)->c)
/*! Return the first node in the list
  \hideinitializer
*/
#define dmalistFirst(li) ((li)->f)
/*! Return the last node in the list
  \hideinitializer
*/
#define dmalistLast(li) ((li)->l)
/*! Return the next node in the list
  \hideinitializer
*/
#define dmalistNext(no) ((no)->n)
/*  \} */



/*! Buffer node pointer */
DMANODE *the_event;
/*! Data pointer */
unsigned int *dma_dabufp;

/*! \name Event formating macros
  \{ */

/*! Get a node from a partition and point *dma_dabufp to the current
  data array.
  \hideinitializer

  @param part Partition of which to get the node
  @param num  Event number to assign to node
*/
#define GETEVENT(part, num) {						\
    the_event = dmaPGetItem(part);					\
    if(the_event == (DMANODE *) 0) {					\
      logMsg("DMA BUFFER ERROR: no pool buffer available for part %s\n", \
	     part->name,0,0,0,0);					\
    } else {								\
      dma_dabufp = (unsigned int *) &(the_event->data[0]);		\
      the_event->nevent = num;						\
    }									\
  }									\
    
/*! Put a node (the_event) into a partition
  \hideinitializer

  @param part Partition of which to put the node
*/
#define PUTEVENT(part)      {						\
    the_event->length =							\
      (((int)(dma_dabufp) - (int)(&the_event->length))>>2) - 1;		\
    dmaPAddItem(part,the_event);					\
  }									\
/* \} */

/* Prototypes */
GEF_UINT32 dmaHdl_to_PhysAddr(GEF_VME_DMA_HDL inpDmaHdl);
int        dmaPUseSlaveWindow(int iFlag);
void       dmaPartInit();
DMA_MEM_ID dmaPCreate (char *name, int size, int c, int incr);
DMA_MEM_ID dmaPFindByName (char *name);
void       dmaPFree(DMA_MEM_ID pPart);
void       dmaPFreeAll();
int        dmaPIncr ( DMA_MEM_ID pPart, int c);
void       dmaPFreeItem(DMANODE *pItem);
int        dmaPEmpty(DMA_MEM_ID pPart);
DMANODE   *dmaPGetItem(DMA_MEM_ID pPart);
void       dmaPAddItem(DMA_MEM_ID pPart, DMANODE *pItem);
int        dmaPReInit (DMA_MEM_ID pPart);
int        dmaPReInitAll();
int        dmaPStats (DMA_MEM_ID pPart);
int        dmaPStatsAll();
int        dmaPPrintList(DMALIST *admalist);


#endif






