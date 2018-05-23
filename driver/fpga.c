/***********************************************************
*
* Code to write/read FPGA file to CAEN1495 on the Linux VME frontend
* R. Michaels   Dec 2013
* This version only writes to USER FPGA.
* if you pass an argument, the firmware is NOT loaded; instead,
* the "mode" register is set.
*
************************************************************
*
* Currently being updated by Tyler Hague Sep 2017
* Adding flags so that it can be used for more control
*
*/

#include <string.h>
#include <stdio.h>
#include "v1495.h"

int address=0x520000;

int main(int argc, char *argv[]) {

  /* Intel PC version:  do NOT want fa520000, only 520000 */

  int mode, mask;
  FILE *fd;
  char modefile[]="/root/mlu/modefile";
  char *strin;

  int args_processed = 1;

  while(args_processed<argc){
    int start_args = args_processed;
    if(strcmp(argv[args_processed],"firmware")==0||strcmp(argv[args_processed],"Firmware")==0||strcmp(argv[args_processed],"FIRMWARE")==0){
      args_processed++;
      printf("v1495: About to write FPGA firmware \n File to be written is: %s \n",argv[args_processed]);
      v1495firmware(address,argv[args_processed],0,0);
      args_processed++;
    }else if(strcmp(argv[args_processed],"mode")==0||strcmp(argv[args_processed],"Mode")==0||strcmp(argv[args_processed],"MODE")==0){
      args_processed++;
      printf("v1495: Setting to mode %i and turning on I/O \n", atoi(argv[args_processed]));
      v1495initMlu(address, atoi(argv[args_processed]));
      args_processed++;
    }else if(strcmp(argv[args_processed],"off")==0||strcmp(argv[args_processed],"Off")==0||strcmp(argv[args_processed],"OFF")==0){
      args_processed++;
      printf("v1495: Turning off I/O \n");
      v1495turnOff(address);
    }else if(strcmp(argv[args_processed],"status")==0||strcmp(argv[args_processed],"Status")==0||strcmp(argv[args_processed],"STATUS")==0){
      args_processed++;
      printf("v1495: Reading control registers \n");
      v1495status(address);
    }
    if(start_args==args_processed){ //didn't process anything because typo
//      exit(0);
      printf("Fail 1\n");
    }
  }

  //Old Code - Keeping here for now for reference of what works - Tyler sep 2017
  /*if (argc < 2) {
    printf("V1495: About to write FPGA file \n");
    v1495firmware(address,"../LHRStest1.rbf",0,0);
  }

  if (argc >= 2) {

    fd = fopen(modefile,"r");
    if (fd==NULL) {
      printf("Error opening modefile %s \n",modefile);
      printf("Will use argument instead\n");
      mode = atoi(argv[1]);
    } else {
      strin = (char *)malloc(80*sizeof(char));
      fgets(strin,100,fd);
      printf("strin = %s \n",strin);
      sscanf(strin,"%d 0x%x",&mode,&mask);
      printf("mode = %d   mask = 0x%x  from modefile %s \n",
             mode,mask,modefile);
    }
    if (mode != 0  && mode != 1) {
      printf("mode must be 0 or 1 ! \n Exiting ...\n");
      exit(0);
    }
    printf("V1495: Setting mode to %d\n",mode);
    if (mode == 1) mode = 0x10; // 0x10 means 5th bit = 1 
    v1495initMlu(address, mode); 
    if (mask < 0x20000) v1495WriteCmask(address, mask);

  }*/

 
//  exit(0);
  printf("Fail 2\n");

}

