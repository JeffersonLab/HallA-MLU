
/* v1495.h */

#define V890_MAX_CHANNELS   128
#define V890_MAX_WORDS_PER_EVENT  34
#define V890_MAX_WORDS_PER_BOARD  3000

/* Define a Structure for access */
/* all addressing is A24/A32, all data D16 except scratch32 */
typedef struct v1495_struct
{

  /*0x0000*/ volatile unsigned short skip[2048];  /* 2048 */  

/* start of COIN_REFERENCE register map, default FPGA */ 

  /*0x1000*/ volatile unsigned short astatus_l;  /*  RO  */
  /*0x1002*/ volatile unsigned short astatus_h;  /*  RO  */
  /*0x1004*/ volatile unsigned short bstatus_l;
  /*0x1006*/ volatile unsigned short bstatus_h;
  /*0x1008*/ volatile unsigned short cstatus_l;
  /*0x100a*/ volatile unsigned short cstatus_h;
  /*0x100c*/ volatile unsigned short amask_l;    /*  WO  */
  /*0x100e*/ volatile unsigned short amask_h;    /*  WO  */
  /*0x1010*/ volatile unsigned short bmask_l;
  /*0x1012*/ volatile unsigned short bmask_h;
  /*0x1014*/ volatile unsigned short cmask_l;
  /*0x1016*/ volatile unsigned short cmask_h;
  /*0x1018*/ volatile unsigned short gatewidth;
  /*0x101a*/ volatile unsigned short cctrl_l;
  /*0x101c*/ volatile unsigned short cctrl_h;
  /*0x101e*/ volatile unsigned short mode;       /*  WO  */

  /*0x1020*/ volatile unsigned short scratch;    /*  RW  */
  /*0x1022*/ volatile unsigned short gctrl;      /*  WO  */
  /*0x1024*/ volatile unsigned short dctrl_l;    /*  RW  */
  /*0x1026*/ volatile unsigned short dctrl_h;    /*  RW  */
  /*0x1028*/ volatile unsigned short ddata_l;
  /*0x102a*/ volatile unsigned short ddata_h;
  /*0x102c*/ volatile unsigned short ectrl_l;
  /*0x102e*/ volatile unsigned short ectrl_h;
  /*0x1030*/ volatile unsigned short edata_l;
  /*0x1032*/ volatile unsigned short edata_h;
  /*0x1034*/ volatile unsigned short fctrl_l;
  /*0x1036*/ volatile unsigned short fctrl_h;
  /*0x1038*/ volatile unsigned short fdata_l;
  /*0x103a*/ volatile unsigned short fdata_h;
  /*0x103c*/ volatile unsigned short revision;
  /*0x103e*/ volatile unsigned short pdl_ctrl;
  /*0x1040*/ volatile unsigned short pdl_data;   /*  RW  */
  /*0x1042*/ volatile unsigned short didcode;    /*  RO  */
  /*0x1044*/ volatile unsigned short eidcode;    /*  RO  */
  /*0x1046*/ volatile unsigned short fidcode;    /*  RO  */
  /*0x1048*/ volatile unsigned short count_l;
  /*0x104A*/ volatile unsigned short count_h;

  /*0x104C*/ volatile unsigned short aval159;
  /*0x104E*/ volatile unsigned short aval161;
  /*0x1050*/ volatile unsigned short aval167;
  /*0x1052*/ volatile unsigned short aval94;
  /*0x1054*/ volatile unsigned short abcm_l;
  /*0x1056*/ volatile unsigned short abcm_h;

  /* end of COIN_REFERENCE */ 

  /*0x1058*/ volatile unsigned char data[0x8000 - 0x1058];    /* R/W  skip ahead to 'bridge fpga' address space*/
  /*0x8000*/ volatile unsigned short control;        /* R/W */
  /*0x8002*/ volatile unsigned short status;         /* R */
  /*0x8004*/ volatile unsigned short intLevel;       /* R/W */
  /*0x8006*/ volatile unsigned short intVector;      /* R/W */
  /*0x8008*/ volatile unsigned short geoAddr;        /* R */
  /*0x800A*/ volatile unsigned short moduleReset;    /* W */
  /*0x800C*/ volatile unsigned short firmwareRev;    /* R */
  /*0x800E*/ volatile unsigned short selflashVME;    /* R/W */
  /*0x8010*/ volatile unsigned short flashVME;       /* R/W */
  /*0x8012*/ volatile unsigned short selflashUSER;   /* R/W */
  /*0x8014*/ volatile unsigned short flashUSER;      /* R/W */
  /*0x8016*/ volatile unsigned short configUSER;     /* R/W */
  /*0x8018*/ volatile unsigned short scratch16;      /* R/W */
  /*0x801A*/ volatile unsigned short res1[3];
  /*0x8020*/ volatile unsigned int scratch32;        /* R/W */
  /*0x8024*/ volatile unsigned short res2[110];
  /*0x8100*/ volatile unsigned short configROM[127]; /* R */

} V1495;

#define V1495_BOARD_ID   0x01 /*  */
