/******************************************************************************
*
* v1495Lib.c  -  Driver library for operation of v1495 general purpose vme board
*                  using a VxWorks 5.4 or later based Single Board computer. 
*
*  Author: Shiuan-Hal, Shiu
*          Randall Evan McClellan
*          
*          August 2010
*
*  Revision  1.0 - Initial Revision
*  Revision  1.1 - Modify some function in 2011
*  Revision  1.2 - Shift User R/W area up to 0x1000 and above (REM - 2013-03-04)
*/

#include "vxWorks.h"
#include "stdio.h"
#include "string.h"
#include "logLib.h"
#include "taskLib.h"
#include "intLib.h"
#include "iv.h"
#include "semLib.h"
#include "vxLib.h"
#include "unistd.h"

#include "time.h"		/*for the purpose to using nanosleep */
#include "stdlib.h"		/*random */

/* Include definitions */
#include "v1495Lib-2013.h"

extern int v1495TDCcount (int id);
extern void v1495Run (int id);
extern int v1495TimewindowRead (int id);
extern void dummydelay (int id);
extern void v1495ciptag (int id);
extern int g1 (int id, int row);

/* Define external Functions */
IMPORT STATUS sysBusToLocalAdrs (int, char *, char **);
IMPORT STATUS intDisconnect (int);
IMPORT STATUS sysIntEnable (int);
IMPORT STATUS sysIntDisable (int);

/* Define global variables */
int Nv1495 = 0;			/* Number of v1495s in Crate */
volatile struct v1495_data *v1495[v1495_MAX_BOARDS];	/* pointers to v1495 memory map */
volatile struct v1495_vmestruct *v1495s[v1495_MAX_BOARDS];	/* pointers to v1495 memory map */
volatile struct v1495_memreadout *v1495m[v1495_MAX_BOARDS];	/* pointers to v1495 memory map */
volatile struct v1495_tdcreadout *v1495t[v1495_MAX_BOARDS];	/* pointers to v1495 tdc map */


//#define max1 128



/*******************************************************************************
* v1495Init - Initialize v1495 Library. 
*
* RETURNS: OK, or ERROR if the address is invalid or board is not present.
********************************************************************************/

STATUS
v1495Init (UINT32 addr, UINT32 addr_inc, int nmod)
{
  int ii, resb, resl, resm, rest, rdata, errFlag = 0;
  unsigned int laddrb;
  unsigned int laddrd;
  unsigned int laddrm;
  unsigned int laddrt;
  unsigned int addrb;
  unsigned int addrd;
  unsigned int addrm;
  unsigned int addrt;

  addrb = addr + 0x1000;
  addrd = addr + 0x8000;
  addrm = addr + 0x1100;
  addrt = addr + 0x1200;

  /* Check for valid address */
  if (addr == 0)
    {
      printf
	("v1495Init: ERROR: Must specify a Bus (VME-based A24/32) address for the v1495\n");
      return (ERROR);
    }
  else if (addr > 0xffffffff)
    {				/* more then A32 Addressing */
      printf ("v1495Init: ERROR: Addressing not supported for this v1495\n");
      return (ERROR);
    }
  else
    {
      if ((addr_inc == 0) || (nmod == 0))
	nmod = 1;		/* assume only one v1495 to initialize */
      /* get the v1495 address */
      resb = sysBusToLocalAdrs (0x39, (char *) addrb, (char **) &laddrb);	/*0x39 is A32 non privileged data access */
      resl = sysBusToLocalAdrs (0x39, (char *) addrd, (char **) &laddrd);	/*0x39 is A32 non privileged data access */
      resm = sysBusToLocalAdrs (0x39, (char *) addrm, (char **) &laddrm);	/*0x39 is A32 non privileged data access */
      rest = sysBusToLocalAdrs (0x39, (char *) addrt, (char **) &laddrt);	/*0x39 is A32 non privileged data access */
      /*resb,resl,resm,rest stands for different memory blocks */

      if (resb != 0)		/*sysBusToLocalAdrs will return 0 if it work */
	{
	  printf
	    ("v1495Init: ERROR in sysBusToLocalAdrs(0x39,0x%x,&laddrb) \n",
	     addrb);
	  printf ("v1495Init: ERROR resb=%d\n", resb);
	  return (ERROR);
	}
      if (resl != 0)
	{
	  printf
	    ("v1495Init: ERROR in sysBusToLocalAdrs(0x39,0x%x,&laddrd) \n",
	     addrd);
	  printf ("v1495Init: ERROR resl=%d\n", resl);
	  return (ERROR);
	}
      if (resm != 0)
	{
	  printf
	    ("v1495Init: ERROR in sysBusToLocalAdrs(0x39,0x%x,&laddrm) \n",
	     addrm);
	  printf ("v1495Init: ERROR resm=%d\n", resm);
	  return (ERROR);
	}
      if (rest != 0)
	{
	  printf
	    ("v1495Init: ERROR in sysBusToLocalAdrs(0x39,0x%x,&laddrm) \n",
	     addrm);
	  printf ("v1495Init: ERROR rest=%d\n", rest);
	  return (ERROR);
	}
    }

  Nv1495 = 0;
  /*for multiple boards */
  for (ii = 0; ii < nmod; ii++)
    {
      v1495[ii] = (struct v1495_data *) (laddrb + ii * addr_inc);
      v1495s[ii] = (struct v1495_vmestruct *) (laddrd + ii * addr_inc);
      v1495m[ii] = (struct v1495_memreadout *) (laddrm + ii * addr_inc);
      v1495t[ii] = (struct v1495_tdcreadout *) (laddrt + ii * addr_inc);

      /* Check if Board exists at that address */

      resb =
	vxMemProbe ((char *) &(v1495[ii]->revision), VX_READ, 2,
		    (char *) &rdata);
      /*vxMemProbe will return 0 if it work */
      if (resb < 0)
	{
	  printf ("v1495: ERROR: No addressable board at addr=0x%x\n",
		  (UINT32) v1495[ii]);
	  v1495[ii] = NULL;
	  errFlag = 1;
	  break;
	}

      resl =
	vxMemProbe ((char *) &(v1495s[ii]->scratch16), VX_READ, 2,
		    (char *) &rdata);
      if (resl < 0)
	{
	  printf ("v1495: ERROR: No addressable board at addr=0x%x\n",
		  (UINT32) v1495s[ii]);
	  v1495s[ii] = NULL;
	  errFlag = 1;
	  break;
	}

      resm =
	vxMemProbe ((char *) &(v1495m[ii]->mem[1]), VX_READ, 2,
		    (char *) &rdata);
      if (resm < 0)
	{
	  printf ("v1495: ERROR: No addressable board at addr=0x%x\n",
		  (UINT32) v1495m[ii]);
	  v1495m[ii] = NULL;
	  errFlag = 1;
	  break;
	}

      rest =
	vxMemProbe ((char *) &(v1495t[ii]->tdc[1]), VX_READ, 2,
		    (char *) &rdata);
      if (rest < 0)
	{
	  printf ("v1495: ERROR: No addressable board at addr=0x%x\n",
		  (UINT32) v1495t[ii]);
	  v1495t[ii] = NULL;
	  errFlag = 1;
	  break;
	}
      Nv1495++;
      printf ("Initialized v1495 ID %d at address 0x%08x \n", ii,
	      (UINT32) v1495[ii]);
      printf ("Initialized v1495 ID %d at address 0x%08x \n", ii,
	      (UINT32) v1495s[ii]);
      printf ("Initialized v1495 ID %d at address 0x%08x \n", ii,
	      (UINT32) v1495m[ii]);
      printf ("Initialized v1495 ID %d at address 0x%08x \n", ii,
	      (UINT32) v1495t[ii]);
    }

  if (errFlag > 0)
    {
      printf ("v1495Init: ERROR: Unable to initialize all Modules\n");
    }
  if (Nv1495 > 0)
    {
      printf ("v1495Init: %d v1495(s) successfully initialized\n", Nv1495);
      return (ERROR);
    }
  else
    {
      return (OK);
    }
}

/*******************************************************************************
* v1495Status - The status of v1495
*
* RETURNS: prints some status of v1495 on screen
********************************************************************************/
void
v1495Status (int id)
{
  short a_sta_l, a_sta_h;
  short c_ctrl_l, c_ctrl_h;
  short b_sta_l, c_sta_l, a_mask_l, b_mask_l, c_mask_l;
  short b_sta_h, c_sta_h, a_mask_h, b_mask_h, c_mask_h;
  short revision, d_id, e_id, f_id;

  if ((id < 0) || (v1495[id] == NULL))
    {
      printf ("v1495Status: ERROR : v1495 id %d not initialized \n", id);
      return;
    }

  /* Get info from Module register */

  a_sta_l = v1495[id]->a_sta_l;
  a_sta_h = v1495[id]->a_sta_h;

  b_sta_l = v1495[id]->b_sta_l;
  b_sta_h = v1495[id]->b_sta_h;
  c_sta_l = v1495[id]->c_sta_l;
  c_sta_h = v1495[id]->c_sta_h;

  a_mask_l = v1495[id]->a_mask_l;
  a_mask_h = v1495[id]->a_mask_h;
  b_mask_l = v1495[id]->b_mask_l;
  b_mask_h = v1495[id]->b_mask_h;
  c_mask_l = v1495[id]->c_mask_l;
  c_mask_h = v1495[id]->c_mask_h;

  c_ctrl_l = v1495[id]->c_ctrl_l;
  c_ctrl_h = v1495[id]->c_ctrl_h;

  revision = v1495[id]->revision;

  d_id = v1495[id]->d_id;
  e_id = v1495[id]->e_id;
  f_id = v1495[id]->f_id;


  printf ("\nSTATUS for v1495 id %d at base address 0x%x \n", id,
	  (UINT32) v1495[id]);
  printf ("------------------------------------------------ \n");

  printf ("\n");
  printf ("  V1495 REVISION = 0x%08x \n", revision);
  printf ("  V1495 A_STATUS_L = 0x%04x \n", a_sta_l);
  printf ("  V1495 A_STATUS_H = 0x%04x \n", a_sta_h);
  printf ("  V1495 B_STATUS_L = 0x%08x \n", b_sta_l);
  printf ("  V1495 B_STATUS_H = 0x%08x \n", b_sta_h);
  printf ("  V1495 C_STATUS_L = 0x%08x \n", c_sta_l);
  printf ("  V1495 C_STATUS_H = 0x%08x \n", c_sta_h);
  printf ("  V1495 A_MASK_L = 0x%08x \n", a_mask_l);
  printf ("  V1495 A_MASK_H = 0x%08x \n", a_mask_h);
  printf ("  V1495 B_MASK_L = 0x%08x \n", b_mask_l);
  printf ("  V1495 B_MASK_H = 0x%08x \n", b_mask_h);
  printf ("  V1495 C_MASK_L = 0x%08x \n", c_mask_l);
  printf ("  V1495 C_MASK_H = 0x%08x \n", c_mask_h);
  printf ("  V1495 D_ID = 0x%04x \n", d_id);
  printf ("  V1495 E_ID = 0x%04x \n", e_id);
  printf ("  V1495 F_ID = 0x%04x \n", f_id);

}

/*******************************************************************************
* v1495TimewindowSet - Set the internal TDC readout time window of v1495
*
* RETURNS: error if the input setting is not correct
********************************************************************************/
void
v1495TimewindowSet (int id, int val)
{
  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495TimewindowSet: ERROR : v1495 id %d not initialized \n",
	      id, 0, 0, 0, 0, 0);
      return;
    }

  if ((val & 0xff) > 64)	/*The last 8bits for val is the delay for the time window which can larger than 64 but it will make decoder confuse so limit it */
    {
      printf
	("v1495TimewindowSet: ERROR : v1495 %d time window delay should not set larger than 0x0040\n",
	 id);
      return;
    }

/*The 9~8bits for val can set the time window width only can be 
0:256ns wide 
1:128ns wide
2:64ns wide
3:32ns wide*/
  if (((val >> 8) & 0xf) > 3)
    {
      printf
	("v1495TimewindowSet: ERROR : v1495 %d time window width can not set larger than 0x0300\n",
	 id);
      return;
    }

  v1495[id]->scratch = val;
  dummydelay (100);
  v1495[id]->scratch = val;

  return;
}

/*******************************************************************************
* v1495TimewindowRead - readout the time window setting value
** RETURNS: setting value or error if the board is not initialized
********************************************************************************/
int
v1495TimewindowRead (int id)
{
  int tmp = 0;
  /*  if ((id < 0) || (v1495[id] == NULL))
     {
     logMsg ("v1495TimewindowRead: ERROR : v1495 id %d not initialized \n", id,
     0, 0, 0, 0, 0);
     return;
     } */

  tmp = v1495[id]->scratch;
  dummydelay (100);
  tmp = v1495[id]->scratch;

  return (tmp);
}



/*v1495 reset now can't work*/
void
v1495Reset (int id)
{
  if ((id < 0) || (v1495s[id] == NULL))
    {
      logMsg ("v1495Reset: ERROR : v1495 id %d not initialized \n", id, 0, 0,
	      0, 0, 0);
      return;
    }

  v1495s[id]->mreset = 0x1;

  return;
}

void delay (int ms);
/*void nanosleep (int dwMilliseconds);*/
//void sleep(int dwMilliseconds);


/*******************************************************************************
* v1495Timeset - Set the v1495 internal delay and jittering acceptable range
*
* RETURNS: setting value or error if the board is not initialized
********************************************************************************/
void
v1495Timeset (int n, int id, int sleep)
{

  int str[n];
  short int addr;
  int i = 0;
  //  int j = 0;
  //  int k = 0;
  int a;
  FILE *fptr = NULL;

  if (id == 0)
    {
      fptr = fopen ("time_0.txt", "r");	/*time_*.txt is the timing setiing file should be put in the working folder */
    }

  if (id == 1)
    {
      fptr = fopen ("time_1.txt", "r");
    }

  if (id == 2)
    {
      fptr = fopen ("time_2.txt", "r");
    }

  if (id == 3)
    {
      fptr = fopen ("time_3.txt", "r");
    }

  if (id == 4)
    {
      fptr = fopen ("time_4.txt", "r");
    }

  if (id == 5)
    {
      fptr = fopen ("time_5.txt", "r");
    }

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Timeset: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }

  /*In order to set the internal delay, the step should be 
     1.write the internal address to address:addr
     2.write the value to the address:c_ctrl_l */

  if (fptr != NULL)
    {
      for (i = 0; i < n; i++)
	{
	  addr = 8192 + i;	/* the internal address is from 0x2000 */
	  fscanf (fptr, "%d:%x\n", &a, &str[i]);	/* scan the file and save in 16bits mode */
	  v1495[id]->c_ctrl_l = addr;	/*write the addr to c_ctrl_l */
	  dummydelay (10);
	  v1495[id]->c_ctrl_h = str[i];	/*write the str[i] to c_ctrl_l */
	  dummydelay (10);
	  v1495[id]->c_ctrl_h = str[i];	/*write the str[i] to c_ctrl_l */
	  /*write twice to make sure it will success */
	  dummydelay (10);
	  if (v1495[id]->a_sta_l != str[i])
	    {
	      printf
		("v1495Timeset: ERROR : v1495 id %d in %d timing not successfully been set\n",
		 id, i);
	      return;
	    }
	}
    }
  else
    {
      printf ("no input file for v1495 %d!!\n", id);
    }
  fclose (fptr);

  /*v1495Run (id); */

  return;
}

void
v1495Chread (int id, int sleep)
{

  FILE *fsav = NULL;
  /*int array[16][128]; */
  //  short c_ctrl_l,c_ctrl_h;
  int value = 0;
  //  int n=0;
  int g = 0;
  int h = 0;
  int i = 0;
  int j = 0;
  int k = 0;
  //  int chl,chh,samp,cha;
  short int addr;
  short int addrg0;
  int valueg0 = 0;
  struct timespec req;
  req.tv_sec = 0;
  req.tv_nsec = 1000;

  if (id == 0)
    {
      fsav = fopen ("arrayout_0.txt", "wb");
    }

  if (id == 1)
    {
      fsav = fopen ("arrayout_1.txt", "wb");
    }

  if (id == 2)
    {
      fsav = fopen ("arrayout_2.txt", "wb");
    }

  if (id == 3)
    {
      fsav = fopen ("arrayout_3.txt", "wb");
    }

  if (id == 4)
    {
      fsav = fopen ("arrayout_4.txt", "wb");
    }

  if (id == 5)
    {
      fsav = fopen ("arrayout_5.txt", "wb");
    }

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Chread: ERROR : v1495 id %d not initialized \n", id, 0, 0,
	      0, 0, 0);
      return;
    }

  /*g is for 8 groups of 16 channels. h is for the channel increase i */
  /*2011 version modified the 8 groups to 6 groups. */
  for (g = 0; g < 6; g++)
    {
      k = g * 16;
      fprintf (fsav,
	       "sample ch  G0  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d\n",
	       k, k + 1, k + 2, k + 3, k + 4, k + 5, k + 6, k + 7, k + 8,
	       k + 9, k + 10, k + 11, k + 12, k + 13, k + 14, k + 15);

      for (h = 0; h < 128; h++)
	{
	  fprintf (fsav, "%3d     ", h);

	  addrg0 = 4 * 2048 + h * 4 + 0 * 512 + 0 + 16384;
	  v1495[id]->c_ctrl_l = addrg0;
	  nanosleep (NULL, &req);
	  valueg0 = v1495[id]->a_sta_l;
	  fprintf (fsav, "  %3x", valueg0);

	  for (i = 0; i < 4; i++)
	    {
	      for (j = 0; j < 4; j++)
		{
		  addr = g * 2048 + h * 4 + i * 512 + j + 16384;
		  /*    fprintf(fsav,"addr=%x g=%d h=%d i=%d j=%d\n",addr,g,h,i,j); */
		  v1495[id]->c_ctrl_l = addr;
		  nanosleep (NULL, &req);
		  value = v1495[id]->a_sta_l;
		  fprintf (fsav, "  %3x", value);
		}
	    }
	  fprintf (fsav, "\n");
	}
    }

  fclose (fsav);

  v1495[id]->c_ctrl_l = 0x8000;

  v1495[id]->c_ctrl_l = 0x0000;

  return;
}

void
v1495Chout (int id, int sleep)
{

  FILE *fsav = NULL;
  //  short c_ctrl_l,c_ctrl_h;
  int value = 0;
  //  int n=0;
  int g = 0;
  int h = 0;
  int i = 0;
  int j = 0;
  int k = 0;
  //  int chl,chh,samp,cha;
  short int addr;
  short int addrg0;
  int valueg0 = 0;
  struct timespec req;
  req.tv_sec = 0;
  req.tv_nsec = 1000;

  if (id == 0)
    {
      fsav = fopen ("arrayout_0.txt", "wb");
    }

  if (id == 1)
    {
      fsav = fopen ("arrayout_1.txt", "wb");
    }

  if (id == 2)
    {
      fsav = fopen ("arrayout_2.txt", "wb");
    }

  if (id == 3)
    {
      fsav = fopen ("arrayout_3.txt", "wb");
    }

  if (id == 4)
    {
      fsav = fopen ("arrayout_4.txt", "wb");
    }

  if (id == 5)
    {
      fsav = fopen ("arrayout_5.txt", "wb");
    }

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Chout: ERROR : v1495 id %d not initialized \n", id, 0, 0,
	      0, 0, 0);
      return;
    }

  /*g is for 8 groups of 16 channels. h is for the channel increase i */
  /*2011 version modified the 8 groups to 6 groups. */
  for (g = 0; g < 6; g++)
    {
      k = g * 16;
      fprintf (fsav,
	       "sample ch  G0  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d\n",
	       k, k + 1, k + 2, k + 3, k + 4, k + 5, k + 6, k + 7, k + 8,
	       k + 9, k + 10, k + 11, k + 12, k + 13, k + 14, k + 15);

      for (h = 0; h < 128; h++)
	{
	  fprintf (fsav, "%3d     ", h);

	  addrg0 = 4 * 2048 + h * 4 + 0 * 512 + 0 + 16384;
	  v1495[id]->c_ctrl_l = addrg0;
	  nanosleep (NULL, &req);
	  valueg0 = v1495[id]->a_sta_l;
	  fprintf (fsav, "  %3x", valueg0);

	  for (i = 0; i < 4; i++)
	    {
	      for (j = 0; j < 4; j++)
		{
		  addr = g * 2048 + h * 4 + i * 512 + j + 16384;
		  /*    fprintf(fsav,"addr=%x g=%d h=%d i=%d j=%d\n",addr,g,h,i,j); */
		  v1495[id]->c_ctrl_l = addr;
		  nanosleep (NULL, &req);
		  value = v1495[id]->a_sta_l;
		  fprintf (fsav, "  %3x", value);
		}
	    }
	  fprintf (fsav, "\n");
	}
    }

  fclose (fsav);
  return;
}

void
v1495Run (int id)
{
  if ((id < 0) || (v1495s[id] == NULL))
    {
      logMsg ("v1495Run ERROR : v1495 id %d not initialized \n", id, 0, 0, 0,
	      0, 0);
      return;
    }

  v1495ciptag (id);

  dummydelay (10);

  v1495[id]->c_ctrl_l = 0x8000;

  dummydelay (10);

  v1495[id]->c_ctrl_l = 0x0000;

  return;
}

void
dummydelay (int delay)
{

  int j = 0;
  int k = 0;

  for (j = 0; j < delay; j++)
    {
      k = k + 1;
    }
  k = 0;

  return;
}

void
v1495Reload (int id)
{
  if ((id < 0) || (v1495s[id] == NULL))
    {
      logMsg ("v1495Reload ERROR : v1495 id %d not initialized \n", id, 0, 0,
	      0, 0, 0);
      return;
    }
  v1495s[id]->fpgaconf = 0x1;
  return;
}

void
v1495AutoTimeset (int id, int sleep, short seedch, int startp)
{

  FILE *ftest;
  short int seedaddr;
  short int comparaddr;
  int i = 0;
  int j = 0;
  int l = 0;
  //  int a;

  int seed[128];
  //  int chn[128];
  //  short temp1=0;
  short compare = 0;
  short ana = 0;
  short anacom = 0;
  short res = 0;
  short addr = 0;

  struct timespec req;
  req.tv_sec = 0;
  req.tv_nsec = 1000;

  ftest = fopen ("ftest.txt", "wb");

  v1495Run (id);

  for (i = 0; i < 96; i++)
    {
      addr = 8192 + i;		/* the internal address is from 0x2000 */
      v1495[id]->c_ctrl_l = addr;	/*write the addr to c_ctrl_l */
      nanosleep (NULL, &req);
      v1495[id]->c_ctrl_h = 0xf60;	/*write the str[i] to c_ctrl_l */
      nanosleep (NULL, &req);
      v1495[id]->c_ctrl_h = 0xf60;	/*write the str[i] to c_ctrl_l */
      nanosleep (NULL, &req);
      if (v1495[id]->a_sta_l != 0xf60)
	{
	  printf
	    ("v1495Timeset: ERROR : v1495 id %d in %d timing not successfully been set\n",
	     id, i);
	  return;
	}
    }

  v1495Run (id);

  for (l = 63; l < 128; l++)
    {
      /*0~1 ch low, 2~8 sample #, 9~13 ch high */
      seedaddr =
	((seedch & 0x3) + (((seedch & 0xfc) << 7) & 0x3e00) + ((l) << 2)) +
	16384;

      printf ("l=%d=%x\n", l, l);
      printf ("seedaddr=0x%x\n", seedaddr);

      v1495[id]->c_ctrl_l = seedaddr;
      nanosleep (NULL, &req);

      if (((v1495[id]->a_sta_l & 0x100) >> 8) == 1)
	{
	  seed[l] = (v1495[id]->a_sta_l & 0xf0) >> 4;
	  ana = seed[l] + l * 16;
	  printf ("ana=%d\n", ana);
	  for (i = 0; i < 96; i++)
	    {
	      for (j = l - 7; j < l + 7; j++)
		{
		  comparaddr =
		    (((i) & 0x3) + ((((i) & 0xfc) << 7) & 0x3e00) +
		     ((j) << 2)) + 16384;
		  v1495[id]->c_ctrl_l = comparaddr;
		  nanosleep (NULL, &req);
		  if (((v1495[id]->a_sta_l & 0x100) >> 8) == 1)
		    {
		      compare = (v1495[id]->a_sta_l & 0xf0) >> 4;
		      anacom = compare + j * 16;
		      res = ana - anacom;
		      res = res + 0xf60;
		      fprintf (ftest, "%d:%x\n", i, res);
		    }
		}
	      if (i == 95)
		{
		  fclose (ftest);

		  v1495Run (id);

		  return;
		}
	    }
	}
    }
  fclose (ftest);
  return;
}





/*******************************************************************************
* v1495TDCRead - This function is to readout the data for debug !DON'T PUT IN .CRL!
* MAY CRASH ROC!!!
* RETURNS: TDC data
********************************************************************************/
void
v1495TDCRead (int id)
{

  int ii = 1;
  int tmpNum = v1495TDCcount (id);
  const int unreadfifo = tmpNum;
  unsigned int res[unreadfifo];
  for (ii = 0; ii < unreadfifo; ii++)
    {

      res[ii] = v1495t[id]->tdc[ii];

      printf ("TDCdata[%d]=0x%x\n", ii, res[ii]);
    }
  return;
}

int
v1495TDCReadout (int id, int ii)
{

  int readout = 0;
  if (ii <= 256)
    {
      readout = v1495t[id]->tdc[ii];
      dummydelay (10);
      readout = v1495t[id]->tdc[ii];
    }


/*  else
    {
      printf
	("v1495TDCReadout: ERROR : v1495TDCReadout %d not availiable\n", id);
      return (ERROR);
    }  */

  return (readout);
}

int
v1495TDCcount (int id)
{
  int tmp;

  dummydelay (10000);


  if (((v1495t[id]->tdc[255]) >> 8) == 0x81)
    {
      tmp = v1495t[id]->tdc[255] & 0xff;
    }
  else
    {
      /*      printf ("v1495TDCcount: ERROR : v1495TDCcount %d not availiable\n", id);
         return (ERROR); */
      tmp = 0xd1ad;
    }
  return (tmp);
}


int
v1495RevisionRead (int id)
{
  int revision = 0;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495RevisionRead ERROR : v1495 id %d not initialized \n", id,
	      0, 0, 0, 0, 0);
      return (ERROR);
    }

  revision = v1495[id]->revision;
  dummydelay (10);
  revision = v1495[id]->revision;

  return (revision);
}


int
v1495CommonstopRead (int id)
{
  int temp = 0;
  int g1value = 0;
  int g1valueoutput = 0;
  int i = 0;
  int j = 0;

  temp = v1495TimewindowRead (id) & 0xff;
  //  for(i=-6;i<-2;i++)
  for (i = -10; i < 3; i++)
    {
      j = (temp + i) & 0x7f;

      if ((g1 (id, j) >> 8) != 1)
	{
	  g1value = 0xd2ad;
	}
      else
	{
	  g1value = g1 (id, j);
	  if ((temp + i) < 0)
	    {
	      g1valueoutput =
		((((g1value >> 4) & 0xf) + ((j << 4) & 0x0ff0)) & 0x00ff) +
		0x1000;
	      return (g1valueoutput);
	    }
	  else if (0 <= j <= 58)
	    {
	      g1valueoutput =
		((g1value >> 4) & 0xf) + ((j << 4) & 0x0ff0) + 0x1100;
	      return (g1valueoutput);
	    }
	  else
	    {
	      printf
		("v1495TimewindowRead: ERROR : v1495TimewindowSet %d timing should not larger than 64\n",
		 id);
	      g1valueoutput = 0xd3ad;
	      return (g1valueoutput);
	    }
	}
    }
  return (g1value);
}


int
g1 (int id, int row)
{
  int addrg1 = 0;
  int valueg1 = 0;

  addrg1 = 4 * 2048 + row * 4 + 0 * 512 + 1 + 16384;

  v1495[id]->c_ctrl_l = addrg1;

  dummydelay (10);

  v1495[id]->c_ctrl_l = addrg1;

  dummydelay (10);

  valueg1 = v1495[id]->a_sta_l;

  return (valueg1);
}


void
v1495ciptag (int id)
{

  v1495t[id]->tdc[255] = 0x7fff;
  dummydelay (10);
  v1495t[id]->tdc[255] = 0x7fff;
  return;
}



/*====================================test function======================================*/

/*void
v1495Timetest1(int round, int id)
{
  int i=0;

  struct timespec req;
  req.tv_sec = 0;
  req.tv_nsec = 2100;

  if((id<0) || (v1495[id] == NULL)) {
    logMsg("v1495Timetest: ERROR : v1495 id %d not initialized \n",id,0,0,0,0,0	\
	   );
    return;
  }
  

  for(i=0; i < round; i++){
    v1495[id]->scratch = 0x0001;
    nanosleep(&req,NULL);
    v1495[id]->scratch = 0x0000;
    nanosleep(&req,NULL);
  }
  
  return;
  }*/


 /*void
    v1495Timetest2(int round, int id)
    {
    int i=0;

    struct timespec req;
    req.tv_sec = 1;
    req.tv_nsec = 0;

    if((id<0) || (v1495[id] == NULL)) {
    logMsg("v1495Timetest: ERROR : v1495 id %d not initialized \n",id,0,0,0,0,0 \
    );
    return;
    }

    for(i=0; i < round; i++){
    v1495[id]->scratch = 0x0001;
    nanosleep(&req,NULL);
    v1495[id]->scratch = 0x0000;
    nanosleep(&req,NULL);
    }

    return;
    } */




void
v1495Writetest (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Writetest: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {
      k = 0;
      v1495[id]->scratch = 0x2354;
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      v1495[id]->scratch = 0x5168;
    }
  return;
}

void
v1495Readtest (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  int array[200];

  int readbuff1 = 0;
  int readbuff2 = 0;

  //  int scratch;
  //  int a_mask;
  //  int d_ctrl;

  round = 100;

  for (i = 0; i <= 200; i++)
    {
      array[i] = 0;
    }

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Readtest: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff1 = v1495[id]->scratch;
      array[i] = readbuff1;
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff2 = v1495[id]->revision;
      array[i + 100] = readbuff2;
      //    printf(" %d end V1495 readbuff2 = 0x%08x \n",i,readbuff2);
    }

  for (i = 0; i <= 200; i++)
    {
      printf (" %d end V1495 array = 0x%08x \n", i, array[i]);
    }

  return;
}

void
v1495Readtest1 (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  int readbuff1 = 0;
  int readbuff2 = 0;

  //  int scratch;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Readtest: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff1 = v1495[id]->scratch;
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff2 = v1495[id]->revision;
    }

  return;
}

void
v1495Readtest2 (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  int readbuff1 = 0;
  int readbuff2 = 0;

  //  int scratch;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Readtest: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff1 = v1495[id]->scratch;
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff2 = v1495[id]->scratch;
    }

  return;
}

void
v1495Readtest3 (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  int readbuff1 = 0;
  int readbuff2 = 0;
  int readbuff3 = 0;

  //  int scratch;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Readtest: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff3 = 0;
      readbuff1 = v1495[id]->scratch;

      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff3 = 0;
      readbuff2 = v1495[id]->a_sta_l;

      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff3 = 0;
      readbuff2 = v1495[id]->scratch;

      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;

      readbuff1 = 0;
      readbuff2 = 0;
      readbuff3 = 0;
      readbuff2 = v1495[id]->a_sta_l;
    }

  return;
}


void
v1495ReadWritetest (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;

  int scratch;
  //  int a_mask;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495ReadWritetest: ERROR : v1495 id %d not initialized \n",
	      id, 0, 0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {
      v1495[id]->scratch = 0x0056;
      //    scratch   = v1495[id]->scratch;
      //    printf(" %d start V1495 SCRATCH = 0x%08x \n",round,scratch);
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      //a_mask     = v1495[id]->a_mask;
      scratch = v1495[id]->scratch;
      //    printf(" %d end V1495 scratch = 0x%08x \n",i,scratch);
    }
  return;
}


//MAY NOT WORK AFTER TODAY - REM - 2013-03-14
void
v1495Memwritese (int id, int mode, int loop, int base)
{
  int i = 0;
  int j = 0;
  int k = 0;


  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Memwritese: ERROR : v1495 id %d not initialized \n", id,
	      0, 0, 0, 0, 0);
      return;
    }

  if (mode == 0)
    {

      i = 0;
      j = 0;
      k = 0;

      for (i = 0; i < loop; i++)
	{
	  for (j = 0; j < 128; j++)
	    {
	      k = j;
	      v1495m[id]->mem[j] = k;
	    }
	}
    }

  if (mode == 1)
    {

      i = 0;
      j = 0;
      k = 0;

      for (i = 0; i < loop; i++)
	{
	  for (j = 127; j >= 0; j--)
	    {
	      k = j;
	      v1495m[id]->mem[j] = k;
	    }
	}
    }

  if (mode == 2)
    {

      i = 0;
      j = 0;
      k = 0;

      for (i = 0; i < loop; i++)
	{
	  for (j = 0; j < 128; j++)
	    {
	      k = j + base;
	      v1495m[id]->mem[j] = k;
	    }
	}
    }

  return;
}

void
v1495Memwriterd (int id, int mode, int loop, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;
  int l = 0;

  int memarray[128];
  int tempvalue = 0;

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Memwriterd: ERROR : v1495 id %d not initialized \n", id,
	      0, 0, 0, 0, 0);
      return;
    }


  for (i = 0; i < 128; i++)
    {
      memarray[i] = i + 1;
    }

  for (i = 0; i < 128; i++)
    {
      l = rand () % 128;
      tempvalue = memarray[l];
      memarray[l] = memarray[i];
      memarray[i] = tempvalue;
    }

  for (i = 0; i < 128; i++)
    {
      printf ("%d\t", memarray[i]);
      printf ("\n");
    }

  if (mode == 0)
    {

      i = 0;
      j = 0;
      k = 0;
      l = 0;
      for (i = 0; i < loop; i++)
	{
	  for (j = 0; j < 128; j++)
	    {
	      k = j + 1;
	      l = memarray[j] - 1;
	      v1495m[id]->mem[l] = k;
	    }
	}
    }

  if (mode == 1)
    {
      i = 0;
      j = 0;
      k = 0;
      for (i = 0; i < loop; i++)
	{
	  k = 65535;
	  v1495m[id]->mem[0] = k;
	}
    }

  if (mode == 2)
    {
      i = 0;
      j = 0;
      k = 0;
      for (i = 0; i < loop; i++)
	{
	  k = 65535;
	  v1495m[id]->mem[0] = k;
	  for (j = 0; j < loopn; j++)
	    {
	      k = k + 1;
	    }
	  k = 0;
	}
    }

  return;
}

void
v1495Memread (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;
  int l = 0;
  short readbuff1 = 0;
  short array[128];

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Memread: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {
      readbuff1 = 0;
      for (l = 0; l < 128; l++)
	{
	  readbuff1 = v1495m[id]->mem[l];
	  for (j = 0; j < loopn; j++)
	    {
	      k = k + 1;
	    }
	  array[l] = readbuff1;
	  k = 0;
	  readbuff1 = 0;
	}
    }

  for (i = 0; i < 128; i++)
    {
      //    printf("0x%08x\t",array[i]);
      printf ("%d\t", array[i]);
      printf ("\n");
    }

  return;
}

void
v1495Memreadcon (int id, int round, int loopn)
{
  int i = 0;
  int j = 0;
  int k = 0;
  //int l=0;
  short readbuff1 = 0;
  //  short array[128];
  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Memread: ERROR : v1495 id %d not initialized \n", id, 0,
	      0, 0, 0, 0);
      return;
    }
  for (i = 0; i < round; i++)
    {
      readbuff1 = 0;
      readbuff1 = v1495m[id]->mem[0];
      for (j = 0; j < loopn; j++)
	{
	  k = k + 1;
	}
      k = 0;
      readbuff1 = 0;
    }
  return;
}


/*====================================test function======================================*/

void
v1495Testread (int id)
{

  FILE *fsav;
  /*int array[16][128]; */
  //  short c_ctrl_l,c_ctrl_h;
  int value = 0;
  //  int n=0;
  int g = 0;
  int h = 0;
  int i = 0;
  int j = 0;
  int k = 0;
  //  int chl,chh,samp,cha;
  short int addr;

  //  struct timespec req;
  //  req.tv_sec = 0;
  //  req.tv_nsec = 1000;
  fsav = fopen ("testread.txt", "wb");

  if ((id < 0) || (v1495[id] == NULL))
    {
      logMsg ("v1495Chread: ERROR : v1495 id %d not initialized \n", id, 0, 0,
	      0, 0, 0);
      return;
    }

  /*g is for 8 groups of 16 channels. h is for the channel increase i */
  /*2011 version modified the 8 groups to 6 groups. */
  for (g = 0; g < 6; g++)
    {
      k = g * 16;
      //    fprintf(fsav,"sample ch  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d  %3d\n",k,k+1,k+2,k+3,k+4,k+5,k+6,k+7,k+8,k+9,k+10,k+11,k+12,k+13,k+14,k+15);

      //    for(h=0;h<128;h++){
      for (h = 0; h < 6; h++)
	{
	  //      fprintf(fsav,"%3d        ",h);
	  for (i = 0; i < 4; i++)
	    {
	      for (j = 0; j < 4; j++)
		{
		  addr = g * 2048 + h * 4 + i * 512 + j + 16384;
		  /*    fprintf(fsav,"addr=%x g=%d h=%d i=%d j=%d\n",addr,g,h,i,j); */
		  v1495[id]->c_ctrl_l = addr;
		  //  nanosleep(NULL,&req);
		  value = v1495[id]->a_sta_l;
		  fprintf (fsav, "  %3x", value);
		}
	    }
	  fprintf (fsav, "\n");
	}
    }

  //  fclose(fsav);  

  //  v1495[id]->c_ctrl_l = 0x8000;

  //  v1495[id]->c_ctrl_l = 0x0000;

  return;
}
