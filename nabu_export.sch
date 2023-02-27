EESchema Schematic File Version 4
EELAYER 30 0
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
Text GLabel 1650 4000 2    50   Input ~ 0
DATA_0
Text GLabel 1650 4100 2    50   Input ~ 0
DATA_1
Text GLabel 1650 4200 2    50   Input ~ 0
DATA_2
Text GLabel 1650 4300 2    50   Input ~ 0
DATA_3
Text GLabel 1650 4400 2    50   Input ~ 0
DATA_4
Text GLabel 1650 4600 2    50   Input ~ 0
DATA_6
Text GLabel 1650 4700 2    50   Input ~ 0
DATA_7
Text GLabel 1650 2650 2    50   Input ~ 0
CARD_SELECT
Text GLabel 1650 2750 2    50   Input ~ 0
ADDRESS_0
Text GLabel 1650 2850 2    50   Input ~ 0
ADDRESS_1
Text GLabel 1650 2950 2    50   Input ~ 0
ADDRESS_2
Text GLabel 1650 3050 2    50   Input ~ 0
ADDRESS_3
Text GLabel 1650 3250 2    50   Input ~ 0
WRITE
Text GLabel 1650 3350 2    50   Input ~ 0
READ
Text GLabel 1650 3450 2    50   Input ~ 0
IO_REQUEST
Text GLabel 1650 2250 2    50   Input ~ 0
INTERRUPT_REQUEST
Text GLabel 1650 2350 2    50   Input ~ 0
INTERRUPT_ACKNOWLEDGE
Text GLabel 1650 3800 2    50   Input ~ 0
WAIT_REQUEST
Text GLabel 1650 3900 2    50   Input ~ 0
RESET
Text GLabel 1650 4500 2    50   Input ~ 0
DATA_5
Text GLabel 1650 2550 2    50   Input ~ 0
AUDIO
Text GLabel 1650 2450 2    50   Input ~ 0
3.58MhzClock
Text GLabel 4550 1950 0    50   Input ~ 0
INTERRUPT_REQUEST
Text GLabel 4550 2150 0    50   Input ~ 0
INTERRUPT_ACKNOWLEDGE
Text GLabel 4550 2350 0    50   Input ~ 0
3.58MhzClock
Text GLabel 4550 2550 0    50   Input ~ 0
AUDIO
Text GLabel 4550 2750 0    50   Input ~ 0
CARD_SELECT
Text GLabel 4550 2950 0    50   Input ~ 0
ADDRESS_0
Text GLabel 4550 3150 0    50   Input ~ 0
ADDRESS_1
Text GLabel 4550 3350 0    50   Input ~ 0
ADDRESS_2
Text GLabel 4550 3550 0    50   Input ~ 0
ADDRESS_3
Text GLabel 1650 3150 2    50   Input ~ 0
1.79MhzClock
Text GLabel 4550 3750 0    50   Input ~ 0
1.79MhzClock
Text GLabel 4550 3950 0    50   Input ~ 0
WRITE
Text GLabel 4550 4150 0    50   Input ~ 0
READ
Text GLabel 4550 4350 0    50   Input ~ 0
IO_REQUEST
Text GLabel 4550 2050 0    50   Input ~ 0
WAIT_REQUEST
Text GLabel 4550 2250 0    50   Input ~ 0
RESET
Text GLabel 4550 2450 0    50   Input ~ 0
DATA_0
Text GLabel 4550 2650 0    50   Input ~ 0
DATA_1
Text GLabel 4550 2850 0    50   Input ~ 0
DATA_2
Text GLabel 4550 3050 0    50   Input ~ 0
DATA_3
Text GLabel 4550 3250 0    50   Input ~ 0
DATA_4
Text GLabel 4550 3450 0    50   Input ~ 0
DATA_5
Text GLabel 4550 3650 0    50   Input ~ 0
DATA_6
Text GLabel 4550 3850 0    50   Input ~ 0
DATA_7
Text GLabel 4550 4050 0    50   Input ~ 0
+5V_1
Text GLabel 4550 4250 0    50   Input ~ 0
GROUND_1
Text GLabel 3000 4900 3    50   Input ~ 0
+5V_1
Text GLabel 3000 4400 1    50   Input ~ 0
+5V_1
$Comp
L Device:Fuse F5VF1
U 1 1 63FE34E6
P 3000 4550
F 0 "F5VF1" H 3060 4596 50  0000 L CNN
F 1 "PosFuse" H 3060 4505 50  0000 L CNN
F 2 "Fuse:Fuse_Littelfuse-LVR100" V 2930 4550 50  0001 C CNN
F 3 "~" H 3000 4550 50  0001 C CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x13_Male JOP1
U 1 1 6402F9FE
P 1450 2850
F 0 "JOP1" H 1558 3631 50  0000 C CNN
F 1 "OPTION_PINS_1-13" H 1558 3540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 1450 2850 50  0001 C CNN
F 3 "~" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x13_Male JOP2
U 1 1 64031162
P 1450 4400
F 0 "JOP2" H 1558 5181 50  0000 C CNN
F 1 "OPTION_PINS_14-26" H 1558 5090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 1450 4400 50  0001 C CNN
F 3 "~" H 1450 4400 50  0001 C CNN
	1    1450 4400
	1    0    0    -1  
$EndComp
Text GLabel 1650 5000 2    50   Input ~ 0
GROUND_1
$Comp
L Connector:Conn_01x03_Male JFUSE1
U 1 1 64036E87
P 3200 4800
F 0 "JFUSE1" H 3172 4732 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3172 4823 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3200 4800 50  0001 C CNN
F 3 "~" H 3200 4800 50  0001 C CNN
	1    3200 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB25_Female_MountingHoles JOUT1
U 1 1 64040DFF
P 4850 3150
F 0 "JOUT1" H 5030 3152 50  0000 L CNN
F 1 "DB25_Female_MountingHoles" H 5030 3061 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-25_Female_Vertical_P2.77x2.84mm_MountingHoles" H 4850 3150 50  0001 C CNN
F 3 " ~" H 4850 3150 50  0001 C CNN
	1    4850 3150
	1    0    0    -1  
$EndComp
Text GLabel 1650 4900 2    50   Input ~ 0
+5V_2_UNCONNECTED
Text GLabel 3250 3850 0    50   Input ~ 0
+5V_2_UNCONNECTED
NoConn ~ 3250 3850
Wire Wire Line
	1650 4800 3000 4800
NoConn ~ 4850 4550
Text Notes 7400 7500 0    50   ~ 0
External Nabu Interface Device (ENID-25)
Text Notes 10650 7650 0    50   ~ 0
1.0
Text Notes 8150 7650 0    50   ~ 0
27 February 2023
$EndSCHEMATC
