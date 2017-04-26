/***********************************************************
*
* Code to write/read FPGA file to CAEN1495 on the Linux VME frontend
* R. Michaels   Dec 2013
* This version only writes to USER FPGA.
* if you pass an argument, the firmware is NOT loaded; instead,
* the "mode" register is set.
*
*/

#include <string.h>
#include <stdio.h>
#include "v1495.h"

int setmode(int mode);
int setcmask(int cmask);

int main(int argc, char *argv[]) {

  /* Intel PC version:  do NOT want fa520000, only 520000 */

  int mode, cmask;

  if (argc < 2) {
    printf("V1495: About to write FPGA file \n");
    v1495firmware(0x520000,"gmp_mlu.rbf",0,0);
  }

  if (argc >= 2) {
    mode = atoi(argv[1]);
    setmode(mode);
  }
  if (argc > 2) {
    cmask = atoi(argv[2]);
    setcmask(cmask);
  }

  exit(0);

}

int setmode(int mode) {
  if (mode != 0  && mode != 1) {
    printf("mode must be 0 or 1 ! \n Exiting ...\n");
    exit(0);
  }
  printf("V1495: Setting mode to %d\n",mode);
  if (mode == 1) mode = 0x10; /* 0x10 means 5th bit = 1 */
  v1495initMlu(0x520000, mode);
}

int setcmask(int cmask) {
  printf("V1495: Setting cmask to %d\n",cmask);
  v1495WriteCmask(0x520000, cmask);
}
