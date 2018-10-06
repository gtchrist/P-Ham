EESchema Schematic File Version 4
LIBS:powerhammer_main-cache
EELAYER 26 0
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
L custom:PINS_3 K3
U 1 1 5B5A87F3
P 9800 4750
F 0 "K3" H 9800 4550 60  0000 C CNN
F 1 "TDC_SENSOR" H 9800 4950 60  0000 C CNN
F 2 "MF_Connectors:MF_Connectors-PTH_2.54MM_01X03" H 9800 4850 60  0001 C CNN
F 3 "" H 9800 4850 60  0000 C CNN
	1    9800 4750
	-1   0    0    -1  
$EndComp
$Comp
L custom:PINS_3 K1
U 1 1 5B5A892F
P 9800 3500
F 0 "K1" H 9800 3300 60  0000 C CNN
F 1 "SERVO" H 9800 3700 60  0000 C CNN
F 2 "MF_Connectors:MF_Connectors-PTH_2.54MM_01X03" H 9800 3600 60  0001 C CNN
F 3 "" H 9800 3600 60  0000 C CNN
	1    9800 3500
	-1   0    0    -1  
$EndComp
$Comp
L custom:PINS_3 K2
U 1 1 5B5A8991
P 9800 4150
F 0 "K2" H 9800 3950 60  0000 C CNN
F 1 "FOOT_POT" H 9800 4350 60  0000 C CNN
F 2 "MF_Connectors:MF_Connectors-PTH_2.54MM_01X03" H 9800 4250 60  0001 C CNN
F 3 "" H 9800 4250 60  0000 C CNN
	1    9800 4150
	-1   0    0    -1  
$EndComp
$Comp
L custom:HD44780 DS1
U 1 1 5B5A8EB2
P 4900 1750
F 0 "DS1" H 6350 1200 60  0000 C CNN
F 1 "HD44780" H 5200 1200 60  0000 C CNN
F 2 "DigitalCave:HD44780" H 4900 1750 60  0001 C CNN
F 3 "" H 4900 1750 60  0000 C CNN
	1    4900 1750
	1    0    0    1   
$EndComp
$Comp
L powerhammer_main-rescue:Rotary_Encoder SW3
U 1 1 5B5A9639
P 9750 1600
F 0 "SW3" H 9750 1860 50  0000 C CNN
F 1 "CYLYNDER_ENCODER" H 9750 1340 50  0000 C CNN
F 2 "MF_Connectors:MF_Connectors-PTH_2.54MM_01X03" H 9650 1760 50  0001 C CNN
F 3 "" H 9750 1860 50  0001 C CNN
	1    9750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5B5ADD46
P 6400 1850
F 0 "#PWR019" H 6400 1600 50  0001 C CNN
F 1 "GND" H 6400 1700 50  0000 C CNN
F 2 "" H 6400 1850 50  0000 C CNN
F 3 "" H 6400 1850 50  0000 C CNN
	1    6400 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 1850 6400 1750
$Comp
L power:+5V #PWR018
U 1 1 5B5ADF51
P 6300 2450
F 0 "#PWR018" H 6300 2300 50  0001 C CNN
F 1 "+5V" H 6300 2590 50  0000 C CNN
F 2 "" H 6300 2450 50  0000 C CNN
F 3 "" H 6300 2450 50  0000 C CNN
	1    6300 2450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5B5AF4CC
P 9400 3600
F 0 "#PWR024" H 9400 3350 50  0001 C CNN
F 1 "GND" H 9400 3450 50  0000 C CNN
F 2 "" H 9400 3600 50  0000 C CNN
F 3 "" H 9400 3600 50  0000 C CNN
	1    9400 3600
	0    1    -1   0   
$EndComp
Wire Wire Line
	9500 3600 9400 3600
Wire Wire Line
	9500 3400 9400 3400
Wire Wire Line
	9400 4650 9500 4650
$Comp
L power:+5V #PWR026
U 1 1 5B5B0CA1
P 9400 4050
F 0 "#PWR026" H 9400 3900 50  0001 C CNN
F 1 "+5V" H 9400 4190 50  0000 C CNN
F 2 "" H 9400 4050 50  0000 C CNN
F 3 "" H 9400 4050 50  0000 C CNN
	1    9400 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 4050 9500 4050
$Comp
L power:GND #PWR027
U 1 1 5B5B0D28
P 9400 4250
F 0 "#PWR027" H 9400 4000 50  0001 C CNN
F 1 "GND" H 9400 4100 50  0000 C CNN
F 2 "" H 9400 4250 50  0000 C CNN
F 3 "" H 9400 4250 50  0000 C CNN
	1    9400 4250
	0    1    -1   0   
$EndComp
Wire Wire Line
	9400 4250 9500 4250
$Comp
L power:GND #PWR034
U 1 1 5B5B1BB8
P 9200 2500
F 0 "#PWR034" H 9200 2250 50  0001 C CNN
F 1 "GND" H 9200 2350 50  0000 C CNN
F 2 "" H 9200 2500 50  0000 C CNN
F 3 "" H 9200 2500 50  0000 C CNN
	1    9200 2500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5B5B2458
P 5000 1950
F 0 "#PWR016" H 5000 1800 50  0001 C CNN
F 1 "+5V" H 5000 2090 50  0000 C CNN
F 2 "" H 5000 1950 50  0000 C CNN
F 3 "" H 5000 1950 50  0000 C CNN
	1    5000 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	5000 1750 5000 1950
$Comp
L power:GND #PWR015
U 1 1 5B5B2507
P 4900 1850
F 0 "#PWR015" H 4900 1600 50  0001 C CNN
F 1 "GND" H 4900 1700 50  0000 C CNN
F 2 "" H 4900 1850 50  0000 C CNN
F 3 "" H 4900 1850 50  0000 C CNN
	1    4900 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 1750 4900 1850
$Comp
L power:GND #PWR017
U 1 1 5B5B25C5
P 5300 1850
F 0 "#PWR017" H 5300 1600 50  0001 C CNN
F 1 "GND" H 5300 1700 50  0000 C CNN
F 2 "" H 5300 1850 50  0000 C CNN
F 3 "" H 5300 1850 50  0000 C CNN
	1    5300 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 1850 5300 1750
Wire Wire Line
	5100 1750 5100 2500
$Comp
L power:GND #PWR021
U 1 1 5B5B4140
P 9350 1600
F 0 "#PWR021" H 9350 1350 50  0001 C CNN
F 1 "GND" H 9350 1450 50  0000 C CNN
F 2 "" H 9350 1600 50  0000 C CNN
F 3 "" H 9350 1600 50  0000 C CNN
	1    9350 1600
	0    1    -1   0   
$EndComp
Wire Wire Line
	9450 1600 9350 1600
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5BA2A468
P 3150 4750
F 0 "U1" H 3150 2862 50  0000 C CNN
F 1 "ATmega32U4-AU" H 3150 2769 50  0000 C CNN
F 2 "MF_IC_Digital:MF_IC_Digital-TQFP44" H 3150 4750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 3150 4750 50  0001 C CNN
	1    3150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5BADD3B6
P 2450 4750
F 0 "C4" H 2600 4700 50  0000 R CNN
F 1 "1uF" H 2650 4850 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 2450 4750 50  0001 C CNN
F 3 "~" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	2550 4550 2450 4550
Wire Wire Line
	2450 4550 2450 4650
Wire Wire Line
	2450 4850 2450 4950
$Comp
L power:GND #PWR07
U 1 1 5BAE1D73
P 2450 4950
F 0 "#PWR07" H 2450 4700 50  0001 C CNN
F 1 "GND" H 2455 4775 50  0000 C CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
$Comp
L custom:CRYSTAL_SMD_4PIN X1
U 1 1 5BAE1E7B
P 2100 3550
F 0 "X1" H 2100 3700 30  0000 L CNN
F 1 "CRYSTAL_SMD_4PIN" H 1900 3650 30  0000 L CNN
F 2 "MF_Frequency_Control:MF_Frequency_Control-5MMX3.2MM" H 2100 3550 60  0001 C CNN
F 3 "" H 2100 3550 60  0000 C CNN
	1    2100 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3500 2300 3500
Wire Wire Line
	2300 3500 2300 3550
Wire Wire Line
	2200 3600 2300 3600
$Comp
L power:GND #PWR05
U 1 1 5BAE481B
P 2300 3550
F 0 "#PWR05" H 2300 3300 50  0001 C CNN
F 1 "GND" V 2305 3421 50  0000 R CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 3350 2400 3350
Wire Wire Line
	2400 3350 2400 3450
Wire Wire Line
	2400 3450 2550 3450
Connection ~ 2300 3550
Wire Wire Line
	2300 3550 2300 3600
Wire Wire Line
	2100 3750 2400 3750
Wire Wire Line
	2400 3750 2400 3650
Wire Wire Line
	2400 3650 2550 3650
Wire Wire Line
	2100 3350 2000 3350
Connection ~ 2100 3350
Wire Wire Line
	2100 3750 2000 3750
Connection ~ 2100 3750
$Comp
L Device:C_Small C2
U 1 1 5BAEE30F
P 1900 3750
F 0 "C2" V 2150 3750 50  0000 C CNN
F 1 "8pF" V 2050 3750 50  0000 C CNN
F 2 "MF_Passives:MF_Passives-C0603" H 1900 3750 50  0001 C CNN
F 3 "~" H 1900 3750 50  0001 C CNN
	1    1900 3750
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BAEE372
P 1900 3350
F 0 "C1" V 1668 3350 50  0000 C CNN
F 1 "8pF" V 1761 3350 50  0000 C CNN
F 2 "MF_Passives:MF_Passives-C0603" H 1900 3350 50  0001 C CNN
F 3 "~" H 1900 3350 50  0001 C CNN
	1    1900 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	1800 3350 1700 3350
Wire Wire Line
	1700 3350 1700 3550
Wire Wire Line
	1700 3750 1800 3750
Wire Wire Line
	1700 3550 1650 3550
Connection ~ 1700 3550
Wire Wire Line
	1700 3550 1700 3750
$Comp
L power:GND #PWR02
U 1 1 5BAF2286
P 1650 3550
F 0 "#PWR02" H 1650 3300 50  0001 C CNN
F 1 "GND" V 1655 3421 50  0000 R CNN
F 2 "" H 1650 3550 50  0001 C CNN
F 3 "" H 1650 3550 50  0001 C CNN
	1    1650 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2900 2450 3250
Wire Wire Line
	2450 3250 2550 3250
$Comp
L power:GND #PWR03
U 1 1 5BAF6E8B
P 1800 2900
F 0 "#PWR03" H 1800 2650 50  0001 C CNN
F 1 "GND" V 1805 2771 50  0000 R CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2900 2450 2800
Connection ~ 2450 2900
$Comp
L custom:RSMALL R3
U 1 1 5BAFB9FB
P 2450 2700
F 0 "R3" H 2499 2739 40  0000 L CNN
F 1 "10k" H 2499 2662 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 2380 2700 30  0001 C CNN
F 3 "" H 2450 2750 30  0000 C CNN
	1    2450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2600 2450 2550
$Comp
L power:+5V #PWR06
U 1 1 5BAFE098
P 2450 2550
F 0 "#PWR06" H 2450 2400 50  0001 C CNN
F 1 "+5V" H 2465 2725 50  0000 C CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5BAFE248
P 3700 2850
F 0 "#PWR010" H 3700 2700 50  0001 C CNN
F 1 "+5V" V 3715 2979 50  0000 L CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2950 3050 2850
Wire Wire Line
	3050 2850 3150 2850
Wire Wire Line
	3150 2950 3150 2850
Connection ~ 3150 2850
Wire Wire Line
	3150 2850 3200 2850
Wire Wire Line
	3250 2950 3250 2850
Connection ~ 3250 2850
Wire Wire Line
	3250 2850 3350 2850
$Comp
L Device:C_Small C9
U 1 1 5BB309B5
P 3650 2550
F 0 "C9" V 3600 2700 50  0000 R CNN
F 1 "0.1uF" V 3600 2500 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 3650 2550 50  0001 C CNN
F 3 "~" H 3650 2550 50  0001 C CNN
	1    3650 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5BB336EE
P 3500 2550
F 0 "C8" V 3450 2700 50  0000 R CNN
F 1 "0.1uF" V 3450 2500 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 3500 2550 50  0001 C CNN
F 3 "~" H 3500 2550 50  0001 C CNN
	1    3500 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5BB33733
P 3350 2550
F 0 "C7" V 3300 2700 50  0000 R CNN
F 1 "0.1uF" V 3300 2500 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 3350 2550 50  0001 C CNN
F 3 "~" H 3350 2550 50  0001 C CNN
	1    3350 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BB33776
P 3200 2550
F 0 "C6" V 3150 2700 50  0000 R CNN
F 1 "0.1uF" V 3150 2500 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 3200 2550 50  0001 C CNN
F 3 "~" H 3200 2550 50  0001 C CNN
	1    3200 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BB337BB
P 3050 2550
F 0 "C5" V 3000 2700 50  0000 R CNN
F 1 "0.1uF" V 3000 2500 50  0000 R CNN
F 2 "MF_Passives:MF_Passives-C0603" H 3050 2550 50  0001 C CNN
F 3 "~" H 3050 2550 50  0001 C CNN
	1    3050 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 2650 3050 2850
Connection ~ 3050 2850
Wire Wire Line
	3200 2650 3200 2850
Connection ~ 3200 2850
Wire Wire Line
	3200 2850 3250 2850
Wire Wire Line
	3350 2650 3350 2850
Connection ~ 3350 2850
Wire Wire Line
	3350 2850 3500 2850
Wire Wire Line
	3500 2650 3500 2850
Connection ~ 3500 2850
Wire Wire Line
	3500 2850 3650 2850
Wire Wire Line
	3650 2650 3650 2850
Connection ~ 3650 2850
Wire Wire Line
	3650 2850 3700 2850
Wire Wire Line
	3050 2450 3050 2350
Wire Wire Line
	3050 2350 3200 2350
Wire Wire Line
	3200 2350 3200 2450
Wire Wire Line
	3200 2350 3350 2350
Wire Wire Line
	3350 2350 3350 2450
Connection ~ 3200 2350
Wire Wire Line
	3350 2350 3500 2350
Wire Wire Line
	3500 2350 3500 2450
Connection ~ 3350 2350
Wire Wire Line
	3500 2350 3650 2350
Wire Wire Line
	3650 2350 3650 2450
Connection ~ 3500 2350
$Comp
L power:GND #PWR09
U 1 1 5BB4FC75
P 3700 2350
F 0 "#PWR09" H 3700 2100 50  0001 C CNN
F 1 "GND" V 3705 2221 50  0000 R CNN
F 2 "" H 3700 2350 50  0001 C CNN
F 3 "" H 3700 2350 50  0001 C CNN
	1    3700 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2350 3650 2350
Connection ~ 3650 2350
Wire Wire Line
	3050 6550 3050 6850
Wire Wire Line
	3050 6850 3150 6850
Wire Wire Line
	3150 6850 3150 6550
Wire Wire Line
	3150 6850 3150 6900
Connection ~ 3150 6850
$Comp
L power:GND #PWR08
U 1 1 5BB5BA07
P 3150 6900
F 0 "#PWR08" H 3150 6650 50  0001 C CNN
F 1 "GND" H 3155 6725 50  0000 C CNN
F 2 "" H 3150 6900 50  0001 C CNN
F 3 "" H 3150 6900 50  0001 C CNN
	1    3150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BB5C3A1
P 2350 3850
F 0 "C3" V 2250 3750 50  0000 C CNN
F 1 "1uF" V 2250 3950 50  0000 C CNN
F 2 "MF_Passives:MF_Passives-C0603" H 2350 3850 50  0001 C CNN
F 3 "~" H 2350 3850 50  0001 C CNN
	1    2350 3850
	0    1    -1   0   
$EndComp
Wire Wire Line
	2450 3850 2550 3850
Wire Wire Line
	2250 3850 2150 3850
$Comp
L power:GND #PWR04
U 1 1 5BB64964
P 2150 3900
F 0 "#PWR04" H 2150 3650 50  0001 C CNN
F 1 "GND" H 2050 3900 50  0000 C CNN
F 2 "" H 2150 3900 50  0001 C CNN
F 3 "" H 2150 3900 50  0001 C CNN
	1    2150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3900 2150 3850
$Comp
L custom:POTENTIOMETER RV1
U 1 1 5BBE116F
P 4550 1550
F 0 "RV1" V 4750 1500 40  0000 L CNN
F 1 "POTENTIOMETER" V 4650 1300 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-TC33" V 4480 1550 30  0001 C CNN
F 3 "" H 4550 1550 30  0000 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L custom:RSMALL R6
U 1 1 5BBE1285
P 4550 1950
F 0 "R6" H 4502 1911 40  0000 R CNN
F 1 "1k" H 4502 1988 40  0000 R CNN
F 2 "MF_Passives:MF_Passives-R0603" V 4480 1950 30  0001 C CNN
F 3 "" H 4550 2000 30  0000 C CNN
	1    4550 1950
	1    0    0    1   
$EndComp
$Comp
L custom:RSMALL R5
U 1 1 5BBE6196
P 4550 1150
F 0 "R5" H 4501 1111 40  0000 R CNN
F 1 "100k" H 4501 1188 40  0000 R CNN
F 2 "MF_Passives:MF_Passives-R0603" V 4480 1150 30  0001 C CNN
F 3 "" H 4550 1200 30  0000 C CNN
	1    4550 1150
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5BBFA60D
P 4550 1000
F 0 "#PWR012" H 4550 850 50  0001 C CNN
F 1 "+5V" H 4550 1140 50  0000 C CNN
F 2 "" H 4550 1000 50  0000 C CNN
F 3 "" H 4550 1000 50  0000 C CNN
	1    4550 1000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 1050 4550 1000
Wire Wire Line
	4550 1300 4550 1250
Wire Wire Line
	4550 1800 4550 1850
$Comp
L power:GND #PWR013
U 1 1 5BC2C8C3
P 4550 2100
F 0 "#PWR013" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4550 1950 50  0000 C CNN
F 2 "" H 4550 2100 50  0000 C CNN
F 3 "" H 4550 2100 50  0000 C CNN
	1    4550 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 2050 4550 2100
Wire Wire Line
	4250 1550 4250 2500
Wire Wire Line
	4250 2500 5100 2500
$Comp
L custom:RSMALL R7
U 1 1 5BC40A8F
P 6300 2150
F 0 "R7" H 6252 2111 40  0000 R CNN
F 1 "1k" H 6252 2188 40  0000 R CNN
F 2 "MF_Passives:MF_Passives-R0603" V 6230 2150 30  0001 C CNN
F 3 "" H 6300 2200 30  0000 C CNN
	1    6300 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2250 6300 2450
Wire Wire Line
	6300 1750 6300 2050
Wire Wire Line
	7200 1500 7200 3250
Wire Wire Line
	7200 3250 3750 3250
Wire Wire Line
	7200 1500 9450 1500
Wire Wire Line
	7300 1700 7300 3350
Wire Wire Line
	7300 3350 3750 3350
Wire Wire Line
	7300 1700 9450 1700
Wire Wire Line
	7400 3450 3750 3450
Wire Wire Line
	7500 3550 3750 3550
Wire Wire Line
	3750 4150 7600 4150
$Comp
L power:+5V #PWR023
U 1 1 5BCBBBFE
P 9400 3400
F 0 "#PWR023" H 9400 3250 50  0001 C CNN
F 1 "+5V" H 9400 3540 50  0000 C CNN
F 2 "" H 9400 3400 50  0000 C CNN
F 3 "" H 9400 3400 50  0000 C CNN
	1    9400 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 4250 7700 4250
Wire Wire Line
	9500 3500 7700 3500
Wire Wire Line
	3750 5750 6450 5750
Wire Wire Line
	3750 5650 6350 5650
$Comp
L custom:PINS_2 K4
U 1 1 5BD700A0
P 9800 5350
F 0 "K4" H 9800 5200 60  0000 C CNN
F 1 "SOELENOID" H 9800 5500 60  0000 C CNN
F 2 "MF_Connectors:MF_Connectors-PTH_2.54MM_01X02" H 9800 5400 60  0001 C CNN
F 3 "" H 9800 5400 60  0000 C CNN
	1    9800 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 5400 9500 5400
$Comp
L power:GND #PWR020
U 1 1 5BDA7072
P 9400 6200
F 0 "#PWR020" H 9400 5950 50  0001 C CNN
F 1 "GND" H 9400 6050 50  0000 C CNN
F 2 "" H 9400 6200 50  0000 C CNN
F 3 "" H 9400 6200 50  0000 C CNN
	1    9400 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 3500 7700 4250
Wire Wire Line
	3750 6050 5200 6050
Wire Wire Line
	5200 1750 5200 6050
Wire Wire Line
	3750 6150 5400 6150
Wire Wire Line
	5400 1750 5400 6150
Wire Wire Line
	3750 5350 3900 5350
$Comp
L custom:RSMALL R4
U 1 1 5BE07DB9
P 4050 5500
F 0 "R4" V 4000 5450 40  0000 L CNN
F 1 "10k" V 4100 5450 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 3980 5500 30  0001 C CNN
F 3 "" H 4050 5550 30  0000 C CNN
	1    4050 5500
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 5500 4200 5500
$Comp
L power:+5V #PWR011
U 1 1 5BE07DC0
P 4200 5500
F 0 "#PWR011" H 4200 5350 50  0001 C CNN
F 1 "+5V" H 4215 5675 50  0000 C CNN
F 2 "" H 4200 5500 50  0001 C CNN
F 3 "" H 4200 5500 50  0001 C CNN
	1    4200 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5500 3900 5500
Wire Wire Line
	3900 5500 3900 5350
$Comp
L custom:RSMALL R1
U 1 1 5BE33440
P 2100 4350
F 0 "R1" V 2050 4350 40  0000 C CNN
F 1 "22" V 2000 4350 40  0000 C CNN
F 2 "MF_Passives:MF_Passives-R0603" V 2030 4350 30  0001 C CNN
F 3 "" H 2100 4400 30  0000 C CNN
	1    2100 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4350 2000 4350
$Comp
L custom:RSMALL R2
U 1 1 5BE395C9
P 2100 4450
F 0 "R2" V 2150 4450 40  0000 C CNN
F 1 "22" V 2200 4450 40  0000 C CNN
F 2 "MF_Passives:MF_Passives-R0603" V 2030 4450 30  0001 C CNN
F 3 "" H 2100 4500 30  0000 C CNN
	1    2100 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4450 2000 4450
$Comp
L power:GND #PWR01
U 1 1 5BE5B52B
P 1600 5000
F 0 "#PWR01" H 1600 4750 50  0001 C CNN
F 1 "GND" H 1605 4825 50  0000 C CNN
F 2 "" H 1600 5000 50  0001 C CNN
F 3 "" H 1600 5000 50  0001 C CNN
	1    1600 5000
	1    0    0    -1  
$EndComp
NoConn ~ 1900 4550
NoConn ~ 3750 5450
Wire Wire Line
	4350 1550 4250 1550
$Comp
L power:GND #PWR0101
U 1 1 5BA89E50
P 2000 4650
F 0 "#PWR0101" H 2000 4400 50  0001 C CNN
F 1 "GND" H 2005 4475 50  0000 C CNN
F 2 "" H 2000 4650 50  0001 C CNN
F 3 "" H 2000 4650 50  0001 C CNN
	1    2000 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 4650 1900 4650
Wire Wire Line
	1600 4950 1600 5000
$Comp
L MF_Connectors:USB_MINI_RIGHT J1
U 1 1 5BA992FA
P 1600 4450
F 0 "J1" H 1371 4443 45  0000 R CNN
F 1 "USB_MINI_RIGHT" H 1371 4357 45  0000 R CNN
F 2 "MF_Connectors:MF_Connectors-MINIUSB-RIGHT" V 1368 4281 20  0001 C CNN
F 3 "" H 1575 4454 60  0000 C CNN
	1    1600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4350 2550 4350
Wire Wire Line
	2200 4450 2400 4450
Wire Wire Line
	2400 4450 2400 4250
Wire Wire Line
	2400 4250 2550 4250
Wire Wire Line
	1600 4050 1600 3950
Wire Wire Line
	1750 3950 1750 4100
Wire Wire Line
	1750 4100 2350 4100
Wire Wire Line
	2350 4100 2350 4050
Wire Wire Line
	2350 4050 2550 4050
Wire Wire Line
	1600 3950 1750 3950
$Comp
L power:+5V #PWR0102
U 1 1 5BB40E96
P 1500 3950
F 0 "#PWR0102" H 1500 3800 50  0001 C CNN
F 1 "+5V" H 1500 4090 50  0000 C CNN
F 2 "" H 1500 3950 50  0000 C CNN
F 3 "" H 1500 3950 50  0000 C CNN
	1    1500 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	1500 3950 1600 3950
Connection ~ 1600 3950
$Comp
L MF_Switches:TACT_4.2MM SW1
U 1 1 5BB52A1C
P 2100 2800
F 0 "SW1" V 1850 2750 45  0000 L CNN
F 1 "RESET" V 1950 2600 45  0000 L CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 1990 2950 20  0001 L CNN
F 3 "" H 2100 2800 60  0001 C CNN
	1    2100 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2900 1900 2900
Wire Wire Line
	2200 2900 2300 2900
Wire Wire Line
	2000 2700 1900 2700
Wire Wire Line
	1900 2700 1900 2900
Connection ~ 1900 2900
Wire Wire Line
	1900 2900 2000 2900
Wire Wire Line
	2200 2700 2300 2700
Wire Wire Line
	2300 2700 2300 2900
Connection ~ 2300 2900
Wire Wire Line
	2300 2900 2450 2900
$Comp
L MF_Switches:TACT_4.2MM SW2
U 1 1 5BB71482
P 4700 5450
F 0 "SW2" V 4800 5400 45  0000 L CNN
F 1 "PROG" V 4550 5350 45  0000 L CNN
F 2 "MF_Switches:MF_Switches-TACT4.2MM" H 4590 5600 20  0001 L CNN
F 3 "" H 4700 5450 60  0001 C CNN
	1    4700 5450
	0    1    -1   0   
$EndComp
Wire Wire Line
	4800 5350 4900 5350
Wire Wire Line
	4900 5550 4900 5350
Wire Wire Line
	4500 5550 4500 5350
Connection ~ 4500 5350
Wire Wire Line
	4500 5350 4600 5350
$Comp
L custom:RSMALL R?
U 1 1 5BB6F1B4
P 8900 5850
F 0 "R?" H 8949 5889 40  0000 L CNN
F 1 "1k" H 8949 5812 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 8830 5850 30  0001 C CNN
F 3 "" H 8900 5900 30  0000 C CNN
	1    8900 5850
	0    1    1    0   
$EndComp
$Comp
L custom:RSMALL R?
U 1 1 5BB8922A
P 8900 6100
F 0 "R?" H 8949 6139 40  0000 L CNN
F 1 "1k" H 8949 6062 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 8830 6100 30  0001 C CNN
F 3 "" H 8900 6150 30  0000 C CNN
	1    8900 6100
	0    1    1    0   
$EndComp
$Comp
L custom:RSMALL R?
U 1 1 5BBB8D30
P 9200 4850
F 0 "R?" H 9249 4889 40  0000 L CNN
F 1 "1k" H 9249 4812 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 9130 4850 30  0001 C CNN
F 3 "" H 9200 4900 30  0000 C CNN
	1    9200 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BBB8DA0
P 9400 4950
F 0 "#PWR?" H 9400 4700 50  0001 C CNN
F 1 "GND" H 9400 4800 50  0000 C CNN
F 2 "" H 9400 4950 50  0000 C CNN
F 3 "" H 9400 4950 50  0000 C CNN
	1    9400 4950
	-1   0    0    -1  
$EndComp
$Comp
L MF_Connectors:CON_01X06_PTH_2.54MM J?
U 1 1 5BBC8102
P 9400 2500
F 0 "J?" H 10077 2481 45  0000 L CNN
F 1 "UI_ENCODER" H 10077 2397 45  0000 L CNN
F 2 "MF_Connectors_PTH_2.54MM_01X06" H 9725 1915 20  0001 C CNN
F 3 "" H 9400 2500 60  0000 C CNN
F 4 "GND" H 10077 2324 32  0000 L CNN "LABEL01"
F 5 "BUTTON_1" H 10077 2261 32  0000 L CNN "LABEL02"
F 6 "BUTTON_2" H 10077 2198 32  0000 L CNN "LABEL03"
F 7 "OUTPUT_B" H 10077 2135 32  0000 L CNN "LABEL04"
F 8 "OUTPUT_A" H 10077 2072 32  0000 L CNN "LABEL05"
F 9 "+5V" H 10077 2009 32  0000 L CNN "LABEL06"
	1    9400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2500 9250 2500
Wire Wire Line
	9250 2500 9250 2600
Wire Wire Line
	9250 2600 9300 2600
Connection ~ 9250 2500
Wire Wire Line
	9250 2500 9200 2500
$Comp
L power:+5V #PWR?
U 1 1 5BBD73D7
P 9200 3000
F 0 "#PWR?" H 9200 2850 50  0001 C CNN
F 1 "+5V" H 9200 3140 50  0000 C CNN
F 2 "" H 9200 3000 50  0000 C CNN
F 3 "" H 9200 3000 50  0000 C CNN
	1    9200 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3000 9300 3000
Wire Wire Line
	9300 2900 7500 2900
Wire Wire Line
	7500 2900 7500 3550
Wire Wire Line
	9300 2800 7400 2800
Wire Wire Line
	7400 2800 7400 3450
Wire Wire Line
	9300 2700 7600 2700
Wire Wire Line
	7600 2700 7600 4150
Wire Wire Line
	6450 4750 6450 5750
Wire Wire Line
	9500 4150 7800 4150
Wire Wire Line
	7800 4150 7800 4350
Wire Wire Line
	7800 4350 6350 4350
Wire Wire Line
	6350 4350 6350 5650
Wire Wire Line
	6450 4750 9000 4750
Wire Wire Line
	9300 4850 9400 4850
Wire Wire Line
	9400 4850 9400 4950
Connection ~ 9400 4850
Wire Wire Line
	9400 4850 9500 4850
Wire Wire Line
	9000 4850 9100 4850
Wire Wire Line
	9000 4850 9000 4750
Connection ~ 9000 4750
Wire Wire Line
	9000 4750 9500 4750
$Comp
L custom:MOSFET-SOT-23-3 Q?
U 1 1 5BCB1CAB
P 9300 5800
F 0 "Q?" H 9300 5651 40  0000 R CNN
F 1 "MOSFET-SOT-23-3" V 9500 6100 40  0000 R CNN
F 2 "MF_Discrete_Semiconductor:MF_Discrete_Semiconductor-SOT-23-3" V 9200 5950 29  0001 C CNN
F 3 "" H 9300 5800 60  0000 C CNN
	1    9300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5850 9100 5850
Wire Wire Line
	8700 5850 8700 6100
Wire Wire Line
	8700 6100 8800 6100
Connection ~ 8700 5850
Wire Wire Line
	8700 5850 8800 5850
Wire Wire Line
	9000 6100 9400 6100
Wire Wire Line
	9400 6100 9400 6000
Wire Wire Line
	9400 6100 9400 6200
Connection ~ 9400 6100
Wire Wire Line
	3750 5850 8700 5850
Wire Wire Line
	9400 5400 9400 5500
$Comp
L power:+24V #PWR?
U 1 1 5BCF7B07
P 8000 4950
F 0 "#PWR?" H 8000 4800 50  0001 C CNN
F 1 "+24V" V 8015 5078 50  0000 L CNN
F 2 "" H 8000 4950 50  0001 C CNN
F 3 "" H 8000 4950 50  0001 C CNN
	1    8000 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:+24V #PWR?
U 1 1 5BCF7C6F
P 9400 4650
F 0 "#PWR?" H 9400 4500 50  0001 C CNN
F 1 "+24V" V 9415 4778 50  0000 L CNN
F 2 "" H 9400 4650 50  0001 C CNN
F 3 "" H 9400 4650 50  0001 C CNN
	1    9400 4650
	0    -1   -1   0   
$EndComp
$Comp
L custom:RSMALL R?
U 1 1 5BD00212
P 8150 5150
F 0 "R?" H 8199 5189 40  0000 L CNN
F 1 "1k" H 8199 5112 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 8080 5150 30  0001 C CNN
F 3 "" H 8150 5200 30  0000 C CNN
	1    8150 5150
	-1   0    0    1   
$EndComp
$Comp
L custom:RSMALL R?
U 1 1 5BD07897
P 8350 5350
F 0 "R?" H 8399 5389 40  0000 L CNN
F 1 "200" H 8399 5312 40  0000 L CNN
F 2 "MF_Passives:MF_Passives-R0603" V 8280 5350 30  0001 C CNN
F 3 "" H 8350 5400 30  0000 C CNN
	1    8350 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 4950 8150 4950
Wire Wire Line
	8150 5250 8150 5350
Wire Wire Line
	8150 5050 8150 4950
Connection ~ 8150 4950
$Comp
L power:GND #PWR?
U 1 1 5BD353BE
P 8550 5350
F 0 "#PWR?" H 8550 5100 50  0001 C CNN
F 1 "GND" H 8550 5200 50  0000 C CNN
F 2 "" H 8550 5350 50  0000 C CNN
F 3 "" H 8550 5350 50  0000 C CNN
	1    8550 5350
	0    -1   1    0   
$EndComp
Wire Wire Line
	8550 5350 8450 5350
Wire Wire Line
	8250 5350 8150 5350
Wire Wire Line
	3750 5950 8150 5950
Wire Wire Line
	8150 5950 8150 5350
Connection ~ 8150 5350
Wire Wire Line
	3750 4450 5500 4450
Wire Wire Line
	5500 4450 5500 1750
Wire Wire Line
	3750 4550 5600 4550
Wire Wire Line
	5600 4550 5600 1750
Wire Wire Line
	3750 4650 5700 4650
Wire Wire Line
	5700 4650 5700 1750
Wire Wire Line
	3750 4750 5800 4750
Wire Wire Line
	5800 4750 5800 1750
Wire Wire Line
	3750 4850 5900 4850
Wire Wire Line
	5900 4850 5900 1750
Wire Wire Line
	3750 4950 6000 4950
Wire Wire Line
	6000 4950 6000 1750
Wire Wire Line
	3750 5050 6100 5050
Wire Wire Line
	6100 5050 6100 1750
Wire Wire Line
	6200 5150 6200 1750
Wire Wire Line
	4500 5550 4600 5550
Text Label 3850 5950 0    50   ~ 0
24V_SENSE
Text Label 3850 6050 0    50   ~ 0
DISP_RS
Text Label 3850 6150 0    50   ~ 0
DISP_EN
Text Label 3850 5850 0    50   ~ 0
SOLENOID_EN
Text Label 3850 5750 0    50   ~ 0
TDC_SENSOR
Wire Wire Line
	4800 5550 4900 5550
Wire Wire Line
	3900 5350 4500 5350
Connection ~ 3900 5350
Wire Wire Line
	4900 5350 4950 5350
Connection ~ 4900 5350
$Comp
L power:GND #PWR?
U 1 1 5BDD8816
P 4950 5350
F 0 "#PWR?" H 4950 5100 50  0001 C CNN
F 1 "GND" H 4950 5200 50  0000 C CNN
F 2 "" H 4950 5350 50  0000 C CNN
F 3 "" H 4950 5350 50  0000 C CNN
	1    4950 5350
	0    -1   1    0   
$EndComp
Text Label 3850 5350 0    50   ~ 0
PROG
Text Label 3850 4450 0    50   ~ 0
DISP_D0
Text Label 3850 4550 0    50   ~ 0
DISP_D1
Text Label 3850 4650 0    50   ~ 0
DISP_D2
Text Label 3850 4750 0    50   ~ 0
DISP_D3
Text Label 3850 4850 0    50   ~ 0
DISP_D4
Text Label 3850 4950 0    50   ~ 0
DISP_D5
Text Label 3850 5050 0    50   ~ 0
DISP_D6
Text Label 3850 5150 0    50   ~ 0
DISP_D7
Wire Wire Line
	3750 5150 6200 5150
Text Label 3850 4250 0    50   ~ 0
SERVO_OUT
Text Label 3850 4150 0    50   ~ 0
UI_ENCODER_BUTTON
Text Label 3850 3550 0    50   ~ 0
UI_ENCODER_A
Text Label 3850 3450 0    50   ~ 0
UI_ENCODER_B
Text Label 3850 3250 0    50   ~ 0
CYL_ENCODER_A
Text Label 3850 3350 0    50   ~ 0
CYL_ENCODER_B
$Comp
L MF_Discrete_Semiconductor:DIODES_SOD-123 D?
U 1 1 5BB9DB13
P 9100 5350
F 0 "D?" V 9142 5262 45  0000 R CNN
F 1 "DIODES_SOD-123" V 9058 5262 45  0000 R CNN
F 2 "MF_Discrete_Semiconductor_SOD-123" H 9288 5429 20  0001 C CNN
F 3 "" H 9100 5350 60  0001 C CNN
	1    9100 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 4950 9100 5200
Wire Wire Line
	9100 5200 9400 5200
Wire Wire Line
	9400 5200 9400 5300
Wire Wire Line
	9400 5300 9500 5300
Wire Wire Line
	8150 4950 9100 4950
Wire Wire Line
	9100 5500 9400 5500
Connection ~ 9400 5500
Wire Wire Line
	9400 5500 9400 5600
Wire Wire Line
	9100 5500 9100 5450
Wire Wire Line
	9100 5250 9100 5200
Connection ~ 9100 5200
$EndSCHEMATC
