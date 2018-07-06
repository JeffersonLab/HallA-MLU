/* v1495.c - CAEN v1495 logic unit library



    --------------------------------------------------------------------------

                   --- CAEN SpA - Front End Electronics  ---

    --------------------------------------------------------------------------

    Name        :   V1495Upgrade.c

    Project     :   V1495Upgrade

    Description :   V1495 Upgrade Software


	  This program writes the configuration file (Altera RBF Format) into the
	  flash memory of the Module V1495. This allows to upgrade the firmware
	  for either the VME_INT and the USER fpga from the VME.
	  The program is based on the CAEN Bridge (V1718 or V2718).
	  The software can be compiled for other VME CPUs, changing the functions
      in the custom VME functions (VME_Init(),VME_Write(), VME_Read()).
      Comment away CAENVMElib.h include in this case.

    Date        :   March 2006
    Release     :   1.0
    Author      :   C.Tintori

    --------------------------------------------------------------------------


    --------------------------------------------------------------------------
*/

/*

  Revision History:
  1.0    CT     First release
  1.1    LC     USER Flash page map changed. Only STD update allowed.

Adjustment for Motorola VME controllers: Sergey Boyarinov April 23 2007

More adjustment by R. Michaels, Jan 2014 for using 1495 as an MLU

*/




/*vxworks/linux firmware upgrade
#if defined(VXWORKS) || defined(Linux_vme)
*/

#ifdef Linux_vme



#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#include "jvme.h"
#include "v1495.h"

/*sergey*/
#define EIEIO 
#define SYNC 

/* Parameters for the access to the Flash Memory */
#define VME_FIRST_PAGE_STD    768    /* first page of the image STD */
#define VME_FIRST_PAGE_BCK    1408   /* first page of the image BCK */
#define USR_FIRST_PAGE_STD    48     /* first page of the image STD */
//#define USR_FIRST_PAGE_BCK    104b   /* first page of the image BCK */
#define USR_FIRST_PAGE_BCK    1048   /* first page of the image BCK */
#define PAGE_SIZE       264 /* Number of bytes per page in the target flash */

/* flash memory Opcodes */
#define MAIN_MEM_PAGE_READ          0x00D2
#define MAIN_MEM_PAGE_PROG_TH_BUF1  0x0082

volatile V1495 *v1495=0;

int MLU_lock_test(base_address)
{
  printf("Locking %x...\n",base_address);
  vmeOpenDefaultWindows();
  vmeBusLock();
  printf("UnLocking %x...\n",base_address);
  vmeBusUnlock();
  vmeCloseDefaultWindows();
  printf("Done.\n");
  return 0;
}

static unsigned short
v1495Read16(volatile unsigned short *addr)
{
  unsigned short rval;
  rval = *addr;
#ifndef VXWORKS
  rval = SSWAP(rval);
#endif
  return rval;
}

static void
v1495Write16(volatile unsigned short *addr, unsigned short val)
{
#ifndef VXWORKS
  val = SSWAP(val);
#endif
  *addr = val;
  return;
}


int open_vme_coda(base_address)
{
  long laddr;
  int res = 0;
  v1495 = 0;

//  vmeOpenDefaultWindows();	//CODA already knows about the VME!
//  vmeBusLock();

  res = vmeBusToLocalAdrs(0x39, base_address, &laddr);
  v1495 = (struct v1495_struct *)laddr;

  printf("Opened VME (CODA mode)\n");
  return 1;
}

int open_vme(base_address)
{
  char c;
  long laddr;
  unsigned short sdat;
  int isok= 0;
  int res = 0;
  v1495 = 0;

  vmeOpenDefaultWindows();
  vmeBusLock();

  res = vmeBusToLocalAdrs(0x39, base_address, &laddr);
  if (res != 0) {
       printf("ERROR:  vmeBusToLocalAdrs address %x\n",laddr);
       vmeBusUnlock();
       vmeCloseDefaultWindows();
       return -1;  
  } else {
       printf("address %x\n", laddr);
  }  

  /*0x0000*/ volatile unsigned short data[14300];    /* R/W */
  /*0x8000*/ volatile unsigned short control;        /* R/W */
  /*0x8002*/ volatile unsigned short status;         /* R */
  /*0x8004*/ volatile unsigned short intLevel;       /* R/W */
  /*0x8006*/ volatile unsigned short intVector;      /* R/W */
  /*0x8008*/ volatile unsigned short geoAddr;        /* R */
  /*0x800A*/ volatile unsigned short moduleReset;    /* W */
  /*0x800C*/ volatile unsigned short firmwareRev;    /* R */


  v1495 = (struct v1495_struct *)laddr;

  isok = 1;
  sdat = vmeRead16(&v1495->control);
  printf("control address = 0x%x\n",&v1495->control);
  printf("control = 0x%x\n",sdat);

  printf("astatus_l address = 0x%x\n",&v1495->astatus_l);

  printf("diff control skip = 0x%x\n",(int)&v1495->control - (int)&v1495->skip);

  sdat = vmeRead16(&v1495->status);
  printf("status = 0x%x\n",sdat);
  if (sdat == 0xffff) isok=0;

  sdat = vmeRead16(&v1495->intLevel);
  printf("intLevel = 0x%x\n",sdat);
  if (sdat == 0xffff) isok=0;

  sdat = vmeRead16(&v1495->intVector);
  printf("intVector = 0x%x\n",sdat); 
  if (sdat == 0xffff) isok=0;

  sdat = vmeRead16(&v1495->geoAddr);
  printf("geoAddr = 0x%x\n",sdat);
  if (sdat == 0xffff) isok=0;

  sdat = vmeRead16(&v1495->moduleReset);
  printf("moduleReset = 0x%x\n",sdat);

  sdat = vmeRead16(&v1495->firmwareRev); 
  printf("firmwareRev = 0x%x\n",sdat); 
  if (sdat == 0xffff) isok=0;

  if (!isok) {
    printf("The v1495 seems to not be addressable\n");
    v1495=0;
    printf("Exiting ....\n");
    exit(0);
  }

  printf("Opened VME\n");

  return 1;
}


int close_vme_coda()
{
//  vmeBusUnlock();
//  vmeCloseDefaultWindows();
  printf("Closed VME (CODA mode)\n");
  return 1;
}

int close_vme()
{
  vmeBusUnlock();
  vmeCloseDefaultWindows();
  printf("Closed VME\n");
  return 1;
}


/****************************************************************************
 write_flash_page
    flag=0 for USER flash (default)
        =1 for VME flash
****************************************************************************/
int
write_flash_page1(unsigned int addr, unsigned char *page, int pagenum, int flag)
{
  int i, flash_addr;
  unsigned char addr0, addr1, addr2;
  int res = 0;
  unsigned short data16;
  unsigned short *Sel_Flash; /* VME Address of the FLASH SELECTION REGISTER */
  unsigned short *RW_Flash;  /* VME Address of the FLASH Read/Write REGISTER */

  printf("write_flash 0x%x\n",addr);

  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  if(flag==1)
  {
    Sel_Flash = (short *)&(v1495->selflashVME);
    RW_Flash = (short *)&(v1495->flashVME);
  }
  else
  {
    Sel_Flash = (short *)&(v1495->selflashUSER);
    RW_Flash = (short *)&(v1495->flashUSER);
    printf("Write selflashUSER address = 0x%x\n", (int)&v1495->selflashUSER);
    printf("Write flashUSER address = 0x%x\n", (int)&v1495->flashUSER);
  }


  EIEIO;
  SYNC;
  flash_addr = pagenum << 9;
  addr0 = (unsigned char)flash_addr;
  addr1 = (unsigned char)(flash_addr>>8);
  addr2 = (unsigned char)(flash_addr>>16);

  EIEIO;
  SYNC;

  /* enable flash (NCS = 0) */
  data16 = 0;

  vmeWrite16(&v1495->selflashUSER,data16); /* *Sel_Flash = data; */


  EIEIO;
  SYNC;
  /* write opcode */
  data16 = MAIN_MEM_PAGE_PROG_TH_BUF1;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */

  EIEIO;
  SYNC;
  /* write address */
  data16 = addr2;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  data16 = addr1;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  data16 = addr0;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */

  EIEIO;
  SYNC;
  /* write flash page */
  for(i=0; i<PAGE_SIZE; i++)
  {
    data16 = page[i];
    /*    printf("data16 = 0x%x\n",data16);*/
    vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  }

  EIEIO;
  SYNC;
  /* wait 20ms (max time required by the flash to complete the writing) */
//  taskDelay(1/*10*/); /* 1 tick = 10ms */
  usleep(20000);

  EIEIO;
  SYNC;
  /* disable flash (NCS = 1) */
  data16 = 1;
  vmeWrite16(Sel_Flash,data16); /* *Sel_Flash = data; */


  EIEIO;
  SYNC;
  /* wait 20ms (max time required by the flash to complete the writing) */
//  taskDelay(2/*20*/);
  usleep(20000);
  EIEIO;
  SYNC;


  return(res);
}

/****************************************************************************
 read_flash_page
****************************************************************************/
int
read_flash_page1(unsigned int addr, unsigned char *page, int pagenum, int flag)
{
  int i, flash_addr;
  unsigned char addr0,addr1,addr2;
  int res = 0;
  unsigned short data16;
  unsigned short *Sel_Flash; /* VME Address of the FLASH SELECTION REGISTER */
  unsigned short *RW_Flash;  /* VME Address of the FLASH Read/Write REGISTER */

  if(flag==1)
  {
    Sel_Flash = (short *)&(v1495->selflashVME);
    RW_Flash = (short *)&(v1495->flashVME);
  }
  else
  {
    Sel_Flash = (short *)&(v1495->selflashUSER);
    RW_Flash = (short *)&(v1495->flashUSER);
    printf("Read selflashUSER address = 0x%x\n", (int)&v1495->selflashUSER);
    printf("Read flashUSER address = 0x%x\n", (int)&v1495->flashUSER);
  }

  EIEIO;
  SYNC;
  flash_addr = pagenum << 9;
  addr0 = (unsigned char)flash_addr;
  addr1 = (unsigned char)(flash_addr>>8);
  addr2 = (unsigned char)(flash_addr>>16);

  EIEIO;
  SYNC;
  /* enable flash (NCS = 0) */
  data16 = 0;
  vmeWrite16(Sel_Flash,data16); /* *Sel_Flash = data; */


  EIEIO;
  SYNC;
  /* write opcode */
  data16 = MAIN_MEM_PAGE_READ;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */



  EIEIO;
  SYNC;
  /* write address */
  data16 = addr2;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  data16 = addr1;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  data16 = addr0;
  vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */


  EIEIO;
  SYNC;
  /* additional don't care bytes */
  data16 = 0;
  for(i=0; i<4; i++)
  {
    vmeWrite16(RW_Flash,data16); /* *RW_Flash = data; */
  }





  EIEIO;
  SYNC;
  /* read flash page */
  for(i=0; i<PAGE_SIZE; i++)
  {
    data16 = vmeRead16(RW_Flash); /* data16 = *RW_Flash; */
    page[i] = (unsigned char)data16;
  }
  EIEIO;
  SYNC;

  /* disable flash (NCS = 1) */
  data16 = 1;
  vmeWrite16(Sel_Flash,data16); /* *Sel_Flash = data; */
  EIEIO;
  SYNC;


  return(res);
}

unsigned int
v1495ClockCountReadCODA()
{
  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  int mode = 0x0080;	/*trig bit high, all others low*/
  unsigned short a_count_l = 0;
  unsigned short a_count_h = 0;
  unsigned int a_count = 0;


  v1495Write16(&v1495->mode, mode); 
  v1495Write16(&v1495->mode, mode);	/*twice, to make sure we wait long enough*/ 

  mode = 0x0000;
  v1495Write16(&v1495->mode, mode); 
  v1495Write16(&v1495->mode, mode); 

  a_count_l = v1495Read16(&v1495->count_l);
  a_count_h = v1495Read16(&v1495->count_h);
  a_count = a_count_l + (a_count_h<<16);

  return a_count;
}

unsigned int
v1495ClockCountRead(unsigned int address)
{ 

//  printf("\nReading MLU Clock Counter.  CAEN V1495 address = 0x%x\n",address);


  open_vme(address);
//  open_vme_coda(address);
//  long laddr;
//  int res = 0;
//  res = vmeBusToLocalAdrs(0x39, address, &laddr);
//  v1495 = (struct v1495_struct *)laddr;


  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  int mode = 0x0080;	/*trig bit high, all others low*/
  unsigned short a_count_l = 0;
  unsigned short a_count_h = 0;
  unsigned int a_count = 0;

//  printf("about to set mode bits = 0x%x\n",mode);

  v1495Write16(&v1495->mode, mode); 
//  v1495->mode = mode; 
  v1495Write16(&v1495->mode, mode);	/*twice, to make sure we wait long enough*/ 
//  v1495->mode = mode;	/*twice, to make sure we wait long enough*/ 

  mode = 0x0000;
  v1495Write16(&v1495->mode, mode); 
//  v1495->mode = mode; 

  a_count_l = v1495Read16(&v1495->count_l);
//  a_count_l = v1495->count_l;
  a_count_h = v1495Read16(&v1495->count_h);
//  a_count_h = v1495->count_h;
  a_count = a_count_l + (a_count_h<<16);
//  printf("count_l= 0x%x\n\n",a_count_l);
//  printf("count_h= 0x%x\n\n",a_count_h);
  printf("MLU Clock Count = 0x%x\n\n",a_count);


  //close_vme_coda();
  close_vme();

//  printf("closing time \n");

  return a_count;
}

unsigned int
v1495BCM_ReadCODA()
{
	/*
	 * Return bcm data
	 */

  	if (!v1495) 
	{
    		printf("v1495 not initialized.  must open_vme. \n");
    		printf(" ... quitting ... \n");
    		exit(0);
  	}

  	int mode = 0x0080;    /*trig bit high, all others low*/
	unsigned short a_bcm_l = 0;
	unsigned short a_bcm_h = 0;
	unsigned int a_bcm = 0;
	
  	v1495Write16(&v1495->mode, mode);
  	v1495Write16(&v1495->mode, mode);     /*twice, to make sure we wait long enough*/

 	mode = 0x0000;
  	v1495Write16(&v1495->mode, mode);
  	v1495Write16(&v1495->mode, mode);

  	a_bcm_l = v1495Read16(&v1495->abcm_l);
  	a_bcm_h = v1495Read16(&v1495->abcm_h);
  	a_bcm = a_bcm_l + (a_bcm_h<<16);

  	return a_bcm;

}

unsigned int
v1495BCM_Read(unsigned int address)
{
	open_vme(address);	
	
	unsigned int a_bcm = v1495BCM_ReadCODA();
	printf("BCM Value = 0x%x\n\n",a_bcm);

	close_vme();

	return a_bcm;
}

int
v1495ClockCountSyncCODA(unsigned int address)
{ 
  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  int mode = 0x0040;	/*sync bit high, all others low*/

  v1495Write16(&v1495->mode, mode); 
  v1495Write16(&v1495->mode, mode); 

  mode = 0x0000;	/*all bits 0*/
  v1495Write16(&v1495->mode, mode); 
  v1495Write16(&v1495->mode, mode); 

  return 0;
}

int
v1495ClockCountSync(unsigned int address)
{ 

  printf("\nResetting MLU Clock Counter.  CAEN V1495 address = 0x%x\n",address);

  printf("about to open vme \n");

  open_vme(address);

  printf("opened vme \n");

  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  int mode = 0x0040;	/*sync bit high, all others low*/

  printf("about to set mode bits = 0x%x\n",mode);

  vmeWrite16(&v1495->mode, mode); 
  vmeWrite16(&v1495->mode, mode); 

  mode = 0x0000;	/*all bits 0*/
  vmeWrite16(&v1495->mode, mode); 

  printf("about to close vme \n");

  close_vme();

  printf("closing time \n");

  return 0;
}

int
v1495InitCODA(unsigned int address, int mode)
{
  long laddr;
  int res = 0;
  v1495 = 0;

  res = vmeBusToLocalAdrs(0x39, address, &laddr);
  v1495 = (struct v1495_struct *)laddr;
  
  v1495Write16(&v1495->mode, mode); 
  v1495Write16(&v1495->fctrl_l, 1);  /* NIM output */ 
  v1495Write16(&v1495->ectrl_l, 1);  /* NIM input  */
  v1495Write16(&v1495->dctrl_l, 1);  /* ECL output */

  printf("\nInitialized MLU.  CAEN V1495 address = 0x%x\n",address);
  printf("mode register = 0x%x \n",mode);

  return 0;
}

int
v1495initMlu(unsigned int address, int mode)
{  /* Initiate MLU behavior */
  /* Intel PC version */

  printf("\nInitializing MLU.  CAEN V1495 address = 0x%x\n",address);
  printf("mode register = 0x%x \n",mode);

  printf("about to open vme \n");

  open_vme(address);

  printf("opened vme \n");

  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  printf("about to set bits \n");

  vmeWrite16(&v1495->mode, mode); 
  vmeWrite16(&v1495->fctrl_l, 1);  /* NIM output */ 
  vmeWrite16(&v1495->ectrl_l, 1);  /* NIM input  */
  vmeWrite16(&v1495->dctrl_l, 1);  /* ECL output */

  printf("about to close vme \n");

  close_vme();

  printf("closing time \n");

  return 0;
}

int
v1495status(unsigned int address){
  printf("\nReading out control registers\n");
  
  open_vme(address);
  
  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }
  
  printf("USER revision= 0x%x\n",vmeRead16(&v1495->revision));
  printf("Val159= 0x%x\n",vmeRead16(&v1495->aval159));
  printf("Val161= 0x%x\n",vmeRead16(&v1495->aval161));
  printf("Val167= 0x%x\n",vmeRead16(&v1495->aval167));
  printf("Val94= 0x%x\n\n",vmeRead16(&v1495->aval94));

  printf("\ndcrtl_l= 0x%x\n",vmeRead16(&v1495->dctrl_l));
  printf("ecrtl_l= 0x%x\n",vmeRead16(&v1495->ectrl_l));
  printf("fcrtl_l= 0x%x\n\n",vmeRead16(&v1495->fctrl_l));
  printf("ddata_l= 0x%x\n",vmeRead16(&v1495->ddata_l));
  printf("ddata_h= 0x%x\n\n",vmeRead16(&v1495->ddata_h));
  printf("count_l= 0x%x\n\n",vmeRead16(&v1495->count_l));
  printf("count_h= 0x%x\n\n",vmeRead16(&v1495->count_h));
  
  close_vme();
  
  return 0;
}

//Turns off MLU I/O
int
v1495turnOff(unsigned int address)
{
  open_vme(address);

  if(!v1495) {
    printf("v1495 not initialized. must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  vmeWrite16(&v1495->dctrl_l, 0);
  vmeWrite16(&v1495->ectrl_l, 0);
  vmeWrite16(&v1495->fctrl_l, 0);

  close_vme();

  return 0;
}

int
v1495WriteCmask(unsigned int address, int cmask_l)
{    /* Set the C-Mask.  Only need lower 16 bits.
     Intel PC version */

  printf("cmask for CAEN V1495 address = 0x%x\n",address);
  printf("lower cmask = 0x%x \n",cmask_l);

  open_vme(address);

  if (!v1495) {
    printf("v1495 not initialized.  must open_vme. \n");
    printf(" ... quitting ... \n");
    exit(0);
  }

  vmeWrite16(&v1495->cmask_l, cmask_l); 

  close_vme();

  return 0;
}

//New code by Adam Kobert
void
v1495SetTriggerRate(unsigned int address, unsigned short LFSR, int thresh)
{
	/* Assigns threshold value to specified LFSR
	 *
	 * Assumes Clock Period of 25 ns
	*/

        open_vme(address);
	unsigned int LFSRadd;
	if(thresh < 0)
	{
		printf("Negative thresholds are invalid.\nThreshold set to 0.\n");
		thresh = 0;
	}
	else if (thresh > 65535)
	{
		printf("Warning, threshold being set exceeds 16bit limit.\nSetting threshold to maximum allowed.\n");
		thresh = 65535;
	}

	switch (LFSR)
	{
		case 0:
			LFSRadd = &v1495->aval94;
			printf("LFSR94 assigned threshold value: ");
			break;

		case 1:
                        LFSRadd = &v1495->aval159;
                        printf("LFSR159 assigned threshold value: ");
			break;

		case 2:
                        LFSRadd = &v1495->aval161;
                        printf("LFSR161 assigned threshold value: ");
			break;

		case 3:
                        LFSRadd = &v1495->aval167;
                        printf("LFSR167 assigned threshold value: ");			
			break;

		default:
			printf("Invalid LFSR ID #, choose 0-3 (LFSR 94, 159, 161, 167)\n");
			return;
	}
	printf("%d\n", thresh);
	printf("Probability of trigger is: %f%s", ((float)thresh/65536.0)*100.0, "%\n");
	printf("Average Frequency is: %f%s", (float)thresh/(16.0 * 65536.0 * .000000025 * 1000.0), " Kilohertz\n");

        printf("LFSRadd = 0x%x\n",LFSRadd);	
	vmeWrite16(LFSRadd, thresh);
        close_vme();
}

void
v1495SetTriggerFrequency(unsigned int address, unsigned short LFSR, double freq)
{
	/* Assigns frequency value to specified LFSR as close
	 * to specified as possible
	 * freq entered in Kilohertz
	 *
	 * Assumes Clock Period of 25 ns
	*/

	if(freq < 0.0)
	{
		printf("Negative Frequencies are invalid.\nFrequency set to 0\n");
		freq = 0.0;
	}
	else if (freq > 2499.9427)
	{
		printf("Frequency exceeds allowed limits.\nFrequency set to maximum allowed.\n");
		freq = 2499.943;
	}

	printf("Setting to closest possible frequency...\n");

        double nfloat = freq * 16.0 * 65536.0 * .000000025 * 1000.0;
	unsigned short n = round(nfloat);
	v1495SetTriggerRate(address, LFSR, n);

}

/*****************************************************************************
     Intel PC version

     baseaddr: full board address (for example 0x80510000)
     filename: RBF file name
     page: =0 for standard, =1 for backup
     user_vme: Firmware to update selector = 0 => USER, 1 => VME

*****************************************************************************/
int
v1495firmware(unsigned int baseaddr, char *filename, int page, int user_vme)
{
  int finish,i;
  int bp, bcnt, pa;
  char c;
  unsigned char pdw[PAGE_SIZE], pdr[PAGE_SIZE];
  unsigned long vboard_base_address;
  FILE *cf;

  page = 0;    /* ONLY STD !!!!!!!!!!!!! */
  user_vme = 0; /* ONLY USER !!!!!!!!!!!! */

  printf("\n");
  printf("********************************************************\n");
  printf("* CAEN SpA - Front-End Division                        *\n");
  printf("* ---------------------------------------------------- *\n");
  printf("* Firmware Upload of the V1495                        *\n");
  printf("* R. Michaels                                         *\n");
  printf("* Version 2.0 (Dec 2013)                               *\n");
  printf("* based on Sergey Boyarinov: CLAS version 23-Apr-2007  *\n");
  printf("********************************************************\n\n");

  /* open the configuration file */
  cf = fopen(filename,"rb");
  if(cf==NULL)
  {
    printf("\n\nCan't open v1495 firmware file >%s< - exit\n",filename);
    exit(0);
  }

  if(user_vme == 0) /* FPGA "User" */
  {
    if(page == 0)
    {
      pa = USR_FIRST_PAGE_STD;
    }
    else if(page == 1)
    {
      printf("Backup image not supported for USER FPGA\n");
      exit(0);
	}
    else
    {
      printf("Bad Image.\n");
	  exit(0);
    }

    printf("Updating firmware of the FPGA USER with the file >%s<\n",filename);
  }
  else if(user_vme == 1) /* FPGA "VME_Interface" */
  {
    if(page == 0)
    {
      printf("Writing STD page of the VME FPGA\n");
      pa = VME_FIRST_PAGE_STD;
	}
    else if(page == 1)
    {
      printf("Writing BCK page of the VME FPGA\n");
      pa = VME_FIRST_PAGE_BCK;
	}
    else
    {
      printf("Bad Image.\n");
      exit(0);
	}

    printf("Updating firmware of the FPGA VME with the file %s\n", filename);
  }
  else
  {
    printf("Bad FPGA Target.\n");
	exit(0);
  }

  
  open_vme(baseaddr);


  bcnt = 0; /* byte counter */
  bp = 0;   /* byte pointer in the page */
  finish = 0;

  /* while loop */
  while(!finish)
  {
    c = (unsigned char) fgetc(cf); /* read one byte from file */

    /* mirror byte (lsb becomes msb) */
    pdw[bp] = 0;
    for(i=0; i<8; i++)
    {
      if(c & (1<<i))
	  {
        pdw[bp] = pdw[bp] | (0x80>>i);
	  }
	}

    bp++;
    bcnt++;
    if(feof(cf))
    {
      printf("End of file: bp=%d bcnt=%d\n",bp,bcnt);fflush(stdout);
      finish = 1;
    }

    /* write and verify a page */
    if((bp == PAGE_SIZE) || finish)
    {
      write_flash_page1(baseaddr, pdw, pa, user_vme);
      read_flash_page1(baseaddr, pdr, pa, user_vme);
      if(pa % 16 == 0){
	printf("working ... be patient ...\n");
      }
      for(i=0; i<PAGE_SIZE; i++)
      {
	//        printf("pdr[%d] = 0x%x  =?=  0x%x  pdw?\n",
	//	  i,pdr[i],pdw[i]); 
   //     if(pdr[i] != pdw[i])
   //     {
   //       printf("[%3d] written 0x%02x, read back 0x%02x",i,pdw[i],pdr[i]);
   //       printf(" -> Flash writing failure (byte %d of page %d)!\n",i,pa);
   //       printf("\nFirmware not loaded !\n");
   //       exit(0);
   //     }
	  }
      bp=0;
      pa++;
    }
  } /* end of while loop */


  fclose(cf);
  printf("\nFirmware loaded successfully. Written %d bytes\n", bcnt);

  /* reload new firmware for USER only */
  if(user_vme == 0)
  {
    printf("Activating updated version of the User FPGA, should be running now\n");
    vmeWrite16(&v1495->configUSER,1); 
  }
  else
  {
    printf("Write 1 at address 0x8016 to reload updated version of the User FPGA\n");
  }

  close_vme();

  printf("\nAll done with firmware loading !\n");

  return 1;

}




#endif




