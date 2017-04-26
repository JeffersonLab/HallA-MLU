  -----------------------------------------------------------------------------

                   --- CAEN SpA - Front End R&D Division --- 

  -----------------------------------------------------------------------------
  -----------------------------------------------------------------------------

    June 2010

  -----------------------------------------------------------------------------
  
  
   Content 
   -------
  
   V1495_USER_DEMO_README.txt         :  This file.
   
   V1495_USER_DEMO_ReleaseNotes.txt   :  Release Notes for the User FPGA Demo Firmware.
                          
   SRC\                               :  Directory for VHDL source files.  
      v1495usr_demo                   :  Demo VHDL source files +
                                         Hardware Abstraction Layer Verilog netlist. 
  
   FIT\                               :  QuartusII project directory:
      v1495usr_demo.qpf               :  QuartusII project file.
      v1495usr_demo.qsf               :  QuartusII settings file.
      v1495usr_demo.rbf               :  Raw Binary File (to be used for 
                                         user FPGA firmware upgrade).
      v1495usr_demo.pin               :  Pinout report from latest fitting.
      

   
   System Requirements
   -------------------
   
   - Altera QuartusII 8.0 or later (Web/Full edition)
          
   V1495 FPGA ARCHITECTURE:
   -----------------------

   The board hosts two Altera Cyclone FPGA:

   1) The VME FPGA is a EP1C6 device. It handles:
	* VME interface
	* USER FPGA interface 

   2) The USER FPGA is a EP1C4 device. It handles:
	* VME FPGA Interface
	* Delay lines interface
	* I/O interface

   Each FPGA can be upgraded via VME using the cvUpgrade utility ditributed by CAEN.