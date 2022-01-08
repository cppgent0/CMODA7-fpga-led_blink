# CMODA7-fpga-led_blink
CMOD A7 FPGA blink an LED based on the system clock

## Prerequisites

* Vivado correctly installed
* device drivers correctly installed
* CMOD-A7 FPGA board

## Assumptions
* This uses Vivado installed on Ubuntu 20.04

## To install
* clone the repo
* Open Vivado
* click Open Project
* navigate to the repo and select the xpr file

## To run
* find "SYNTHESIS" in left hand pane
  * click "Run Synthesis" next to Green arrow
  * see upper right corner for status
  * takes a few minutes
* get dialog box "Synthesis Completed"
  * ensure "Run Implementation" selected
  * click OK
* get dialog box "Launch Runs"
  * set Number of jobs to the number of cores your PC has (e.g. 8)
  * click OK
  * takes a few minutes
* get dialog box "Implementation Completed"
  * select "Generate Bitstream"
  * click OK
* get dialog box "Launch Runs"
  * click OK
  * takes a few minutes
* get dialog box "Bitstream Generation Completed"
  * select "Open Hardware Manager"
  * if No hardware target is open:
     * ensure your FPGA is connected via USB-micro and powered on
     * click "Open Target" either in left hand pane or in green bar at top of window
     * get a drop down menu
     * click "Auto Connect"
     * get dialog box, takes 10 - 15s
     * Hardware pane should have your FPGA in it and indicate "Connected"
* there should be a new item "Program device" in the left hand pane and in the the green bar at top of window
  * click "Program device"
  * get dialog box "Program Device"
  * click "Program"

## To test
* the LD1 should blink at around once per second
     
  
