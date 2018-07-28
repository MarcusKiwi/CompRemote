EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:CompRemote-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-20PU U2
U 1 1 5B5A7A74
P 4300 1650
F 0 "U2" H 3150 2050 50  0000 C CNN
F 1 "ATTINY85-20PU" H 5300 1250 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5300 1650 50  0001 C CIN
F 3 "" H 4300 1650 50  0001 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 5B5A7B12
P 1300 1400
F 0 "J2" H 1300 1600 50  0000 C CNN
F 1 "Conn_01x04" H 1300 1100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1300 1400 50  0001 C CNN
F 3 "" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 5B5A7B6B
P 1300 2050
F 0 "J3" H 1300 2150 50  0000 C CNN
F 1 "Conn_01x02" H 1300 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1300 2050 50  0001 C CNN
F 3 "" H 1300 2050 50  0001 C CNN
	1    1300 2050
	1    0    0    -1  
$EndComp
$Comp
L 4N25 U1
U 1 1 5B5A7C1C
P 3300 900
F 0 "U1" H 3100 1100 50  0000 L CNN
F 1 "4N25" H 3300 1100 50  0000 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 3100 700 50  0001 L CIN
F 3 "" H 3300 900 50  0001 L CNN
	1    3300 900 
	1    0    0    -1  
$EndComp
NoConn ~ 3600 800 
NoConn ~ 1100 1400
NoConn ~ 1100 1500
Text GLabel 3600 900  2    39   Input ~ 0
SIG-IN
Text GLabel 3600 1000 2    39   Input ~ 0
SIG-OUT
NoConn ~ 2950 1500
$Comp
L R R2
U 1 1 5B5A81BE
P 2850 1000
F 0 "R2" V 2930 1000 50  0000 C CNN
F 1 "1K" V 2850 1000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2780 1000 50  0001 C CNN
F 3 "" H 2850 1000 50  0001 C CNN
	1    2850 1000
	0    1    1    0   
$EndComp
Text GLabel 2950 1700 0    39   Input ~ 0
OPTO
$Comp
L R R1
U 1 1 5B5A829B
P 2750 1900
F 0 "R1" V 2830 1900 50  0000 C CNN
F 1 "10K" V 2750 1900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2680 1900 50  0001 C CNN
F 3 "" H 2750 1900 50  0001 C CNN
	1    2750 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1900 2550 1900
Wire Wire Line
	2950 1900 2900 1900
Text GLabel 2700 1000 0    39   Input ~ 0
OPTO
Text GLabel 2950 1800 0    39   Input ~ 0
IRED
$Comp
L Conn_01x03 J1
U 1 1 5B5A8435
P 1300 800
F 0 "J1" H 1300 1000 50  0000 C CNN
F 1 "Conn_01x03" H 1300 600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1300 800 50  0001 C CNN
F 3 "" H 1300 800 50  0001 C CNN
	1    1300 800 
	1    0    0    -1  
$EndComp
Text GLabel 1100 700  0    39   Input ~ 0
IRED
$Comp
L GND #PWR01
U 1 1 5B5A84C9
P 1100 800
F 0 "#PWR01" H 1100 550 50  0001 C CNN
F 1 "GND" H 1100 650 31  0000 C CNN
F 2 "" H 1100 800 50  0001 C CNN
F 3 "" H 1100 800 50  0001 C CNN
	1    1100 800 
	0    1    1    0   
$EndComp
Text GLabel 1100 900  0    39   Input ~ 0
VCC
Text GLabel 5650 1400 2    39   Input ~ 0
VCC
$Comp
L GND #PWR02
U 1 1 5B5A86B7
P 5650 1900
F 0 "#PWR02" H 5650 1650 50  0001 C CNN
F 1 "GND" H 5650 1750 31  0000 C CNN
F 2 "" H 5650 1900 50  0001 C CNN
F 3 "" H 5650 1900 50  0001 C CNN
	1    5650 1900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B5A87CE
P 1100 1600
F 0 "#PWR03" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1100 1450 31  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	0    1    1    0   
$EndComp
Text GLabel 1100 1300 0    39   Input ~ 0
VCC
Text GLabel 1100 2050 0    39   Input ~ 0
SIG-IN
Text GLabel 1100 2150 0    39   Input ~ 0
SIG-OUT
$Comp
L Conn_01x02 J4
U 1 1 5B5A8928
P 1300 2450
F 0 "J4" H 1300 2550 50  0000 C CNN
F 1 "Conn_01x02" H 1300 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1300 2450 50  0001 C CNN
F 3 "" H 1300 2450 50  0001 C CNN
	1    1300 2450
	1    0    0    -1  
$EndComp
Text GLabel 1100 2450 0    39   Input ~ 0
SIG-IN
Text GLabel 1100 2550 0    39   Input ~ 0
SIG-OUT
Text Notes 1450 900  0    79   ~ 0
VS1838C\nIR Reciever
Text Notes 1450 1400 0    79   ~ 0
USB Power
Text Notes 1450 2100 0    79   ~ 0
I/O Headers
Text GLabel 2550 1900 0    39   Input ~ 0
VCC
NoConn ~ 2950 1600
NoConn ~ 2950 1400
Text GLabel 3000 800  0    39   Input ~ 0
VCC
$EndSCHEMATC
