/**************************************************************************
*
*  v1495Lib.h  - Header for v1495 Library
*
*
*  Author: Shiuan-Hal , Shiu 
*          
*          August  2010
*
* Shift v1495_data{} up to 0x1000 and above. REM - 2013-03-14
*/


/* Define Structure for access to Local Memory map*/
/* $$ means don't using now! */

struct v1495_data {
  volatile unsigned short a_sta_l;  /* now is internal memory addr readout (0x1000)*/
  volatile unsigned short a_sta_h;         /* now ??? undefine(0x1002) */
  volatile unsigned short b_sta_l;        /* B port status (low)(0x1004) */
  volatile unsigned short b_sta_h;        /* B port status (high)(0x1006) */
  volatile unsigned short c_sta_l;        /* C port status (low)(0x1008) */
  volatile unsigned short c_sta_h;        /* C port status (high)(0x100A) */
  volatile unsigned short a_mask_l;       /* $$a mask register (low)(0x100C) */
  volatile unsigned short a_mask_h;       /* $$a mask register (high)(0x100E) */
  volatile unsigned short b_mask_l;       /* $$b mask register (low)(0x1010) */
  volatile unsigned short b_mask_h;       /* $$b mask register (high)(0x1012) */
  volatile unsigned short c_mask_l;       /* $$c mask register (low)(0x1014) */
  volatile unsigned short c_mask_h;       /* $$c mask register (high)(0x1016) */
  volatile unsigned short gatewidth;    /* $$gate width(0x1018) */
  volatile unsigned short c_ctrl_l;  /* now is internal memory addr ctrl (0x101A) */
  volatile unsigned short c_ctrl_h;     /* now is internal memory ctrl (0x101C) */
  volatile unsigned short mode;         /* $$mode(0x101E) */
  volatile unsigned short scratch;      /* scratch(0x1020) */
  volatile unsigned short g_ctrl;       /* $$g ctrl only bit 0 work(0x101E) */
  volatile unsigned short d_ctrl_l;       /* $$d ctrl (low)(0x1024) */
  volatile unsigned short d_ctrl_h;       /* $$d ctrl (high)(0x1026) */
  volatile unsigned short d_data_l;       /* $$d data (low)(0x1028) */
  volatile unsigned short d_data_h;       /* $$d data (high)(0x102A) */
  volatile unsigned short e_ctrl_l;       /* $$e ctrl (low)(0x102C) */
  volatile unsigned short e_ctrl_h;       /* $$e ctrl (high)(0x102E) */
  volatile unsigned short e_data_l;       /* $$e data (low)(0x1030) */
  volatile unsigned short e_data_h;       /* $$e data (high)(0x1032) */
  volatile unsigned short f_ctrl_l;       /* $$f ctrl (low)(0x1034) */
  volatile unsigned short f_ctrl_h;       /* $$f ctrl (high)(0x1036) */
  volatile unsigned short f_data_l;       /* $$f data(0x1038) */
  volatile unsigned short f_data_h;       /* $$f data(0x103A) */
  volatile unsigned short revision;     /* revision(0x103C) */
  volatile unsigned short pdl_ctrl;     /* $$pdl control(0x103E) */
  volatile unsigned short pdl_data;     /* $$pdl data(0x1040) */
  volatile unsigned short d_id;     /* d id code(0x1042) */
  volatile unsigned short e_id;     /* e id code(0x1044) */
  volatile unsigned short f_id;     /* f id code(0x1046) */

};

struct v1495_vmestruct {
  volatile unsigned short ctrlr;     /* $$ control register (0x8000)*/
  volatile unsigned short statusr;   /* $$ status register (0x8002)*/
  volatile unsigned short int_lv;    /* $$ interrupt Level (0x8004)*/
  volatile unsigned short int_ID;    /* $$ interrupt Lv ID (0x8006)*/
  volatile unsigned short geo_add;   /* $$ geo address register (0x8008)*/
  volatile unsigned short mreset;    /* module reset (0x800A)*/
  volatile unsigned short firmware;  /* $$ firmware revision (0x800C)*/
  volatile unsigned short svmefpga;  /* $$ select vme fpga (0x800E)*/
  volatile unsigned short vmefpga;   /* $$ vme fpga flash (0x8010)*/
  volatile unsigned short suserfpga; /* $$ select user fpga (0x8012)*/
  volatile unsigned short userfpga;  /* $$ user fpga flash (0x8014)*/
  volatile unsigned short fpgaconf;  /* user fpga configuration (0x8016)*/
  volatile unsigned short scratch16; /* scratch16 (0x8018)*/
  volatile unsigned int scratch32;       /* dcratch32 (0x8020)*/
};

struct v1495_memreadout {
  volatile unsigned short mem[128];     /* $$ memorr readout?(0x0100~0x01FF)*/
};

struct v1495_tdcreadout {
  volatile unsigned short tdc[256];     /* $$ tdc readout?(0x0200~0x03FF)*/
};

#define v1495_MAX_BOARDS 5

/*#define S3610_MAX_BOARDS     2
#define S3610_BOARD_ID       0x36100000
#define S3610_BOARD_ID_MASK  0xffff0000
#define S3610_VERSION_MASK   0x0000f000 */

/* Define default interrupt vector/level 
#define S3610_INT_VEC      0xe0
#define S3610_VME_INT_LEVEL   5 */

/* Control/Status Register bits */
#define S3610_STATUS_USER_LED            0x1
#define S3610_STATUS_INT_MODE            0x2
#define S3610_STATUS_STROBE_BIT0         0x4
#define S3610_STATUS_STROBE_BIT1         0x8

#define S3610_STATUS_USER_OUT1          0x10
#define S3610_STATUS_USER_OUT2          0x20
#define S3610_STATUS_USER_OUT3          0x40
#define S3610_STATUS_USER_OUT4          0x80
#define S3610_STATUS_FF_ENABLE1      0x10000
#define S3610_STATUS_FF_ENABLE2      0x20000
#define S3610_STATUS_FF_ENABLE3      0x40000
#define S3610_STATUS_FF_ENABLE4      0x80000
#define S3610_STATUS_INT_VME_IRQ   0x4000000
#define S3610_STATUS_VME_IRQ       0x8000000

#define S3610_CNTL_SET_USER_LED              0x1
#define S3610_CNTL_SET_ROAK                  0x2
#define S3610_CNTL_SET_LS0                   0x4
#define S3610_CNTL_SET_LS1                   0x8
#define S3610_CNTL_SET_USER_OUT1            0x10
#define S3610_CNTL_SET_USER_OUT2            0x20
#define S3610_CNTL_SET_USER_OUT3            0x40
#define S3610_CNTL_SET_USER_OUT4            0x80

#define S3610_CNTL_CLR_USER_LED            0x100
#define S3610_CNTL_SET_RORA                0x200
#define S3610_CNTL_CLR_LS0                 0x400
#define S3610_CNTL_CLR_LS1                 0x800
#define S3610_CNTL_CLR_USER_OUT1          0x1000
#define S3610_CNTL_CLR_USER_OUT2          0x2000
#define S3610_CNTL_CLR_USER_OUT3          0x4000
#define S3610_CNTL_CLR_USER_OUT4          0x8000

#define S3610_CNTL_ENABLE_FF1            0x10000
#define S3610_CNTL_ENABLE_FF2            0x20000
#define S3610_CNTL_ENABLE_FF3            0x40000
#define S3610_CNTL_ENABLE_FF4            0x80000
#define S3610_CNTL_ENABLE_IRQ0          0x100000
#define S3610_CNTL_ENABLE_IRQ1          0x200000
#define S3610_CNTL_ENABLE_IRQ2          0x400000
#define S3610_CNTL_ENABLE_IRQ3          0x800000

#define S3610_CNTL_DISABLE_FF1         0x1000000
#define S3610_CNTL_DISABLE_FF2         0x2000000
#define S3610_CNTL_DISABLE_FF3         0x4000000
#define S3610_CNTL_DISABLE_FF4         0x8000000
#define S3610_CNTL_DISABLE_IRQ0       0x10000000
#define S3610_CNTL_DISABLE_IRQ1       0x20000000
#define S3610_CNTL_DISABLE_IRQ2       0x40000000
#define S3610_CNTL_DISABLE_IRQ3       0x80000000

#define S3610_INT_ENABLE              0x00000800

/* Define Bit Masks */

#define v1495_CHANNEL_L               0x0003
#define v1495_CHANNEL_H               0x3e00
#define v1495_SAMPLE                  0x01fc
#define v1495_READOUT                 0x00f0

#define S3610_INT_VEC_MASK            0x000000ff
#define S3610_INT_LEVEL_MASK          0x00000700
#define S3610_INT_SOURCE_ENABLE_MASK  0x00f00000
#define S3610_INT_SOURCE_VALID_MASK   0xf0000000
#define S3610_FF_ENABLE_MASK          0x000f0000
#define S3610_USER_OUTPUT_MASK        0x000000f0
#define S3610_LATCH_STROBE_MASK       0x0000000c


/* Define some macros */
#define S3610_IRQ_ENABLE(intID)    s3610p[intID]->id |= S3610_INT_ENABLE
#define S3610_IRQ_DISABLE(intID)   s3610p[intID]->id &= ~S3610_INT_ENABLE
#define S3610_SET_OUTPUT(id, val)  {s3610p[id]->d_out = val;}
#define S3610_SET_JK(id,val)       {s3610p[id]->jk_out = (val&0xffff);}
#define S3610_CLR_JK(id,val)       {s3610p[id]->jk_out = ((val&0xffff)<<16);}
#define S3610_SET_BIT(id, bit)     {s3610p[id]->jk_out = (1<<bit);}

/* Define macros for v1495 */
/*#define S3610_SET_BIT(id)     {v1495p[id]->a_sta_l = (val&0xf0);}*/
