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
$Comp
L Device:Crystal Y1
U 1 1 60223D1B
P 4400 2950
F 0 "Y1" V 4354 3081 50  0000 L CNN
F 1 "Crystal" V 4445 3081 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4400 2950 50  0001 C CNN
F 3 "~" H 4400 2950 50  0001 C CNN
	1    4400 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2750 4200 2750
Wire Wire Line
	4200 2750 4200 3100
Wire Wire Line
	4200 3100 4400 3100
Wire Wire Line
	4400 2650 3200 2650
Wire Wire Line
	4400 2800 4400 2650
$Comp
L Device:C C1
U 1 1 60228C6B
P 4750 2800
F 0 "C1" H 4865 2846 50  0000 L CNN
F 1 "C" H 4865 2755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4788 2650 50  0001 C CNN
F 3 "~" H 4750 2800 50  0001 C CNN
	1    4750 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 6022C16D
P 4750 3150
F 0 "C2" H 4865 3196 50  0000 L CNN
F 1 "C" H 4865 3105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4788 3000 50  0001 C CNN
F 3 "~" H 4750 3150 50  0001 C CNN
	1    4750 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2800 4600 2800
Connection ~ 4400 2800
Wire Wire Line
	4600 3150 4400 3150
Wire Wire Line
	4400 3150 4400 3100
Connection ~ 4400 3100
Wire Wire Line
	4900 2800 4900 3150
Wire Wire Line
	2600 4750 2850 4750
Wire Wire Line
	4900 4750 4900 3150
Connection ~ 4900 3150
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 6023B19D
P 2600 3250
F 0 "U1" H 1956 3296 50  0000 R CNN
F 1 "ATmega328P-PU" H 1956 3205 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 2600 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2600 3250 50  0001 C CNN
	1    2600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1750 2700 1750
$Comp
L Device:R R1
U 1 1 60258C40
P 3750 3150
F 0 "R1" H 3820 3196 50  0000 L CNN
F 1 "10k" H 3820 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 3680 3150 50  0001 C CNN
F 3 "~" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3550 3750 3550
Wire Wire Line
	3750 3000 3750 1750
Wire Wire Line
	3750 1750 3550 1750
Connection ~ 2700 1750
$Comp
L Driver_LED:MAX7219 U2
U 1 1 6025C974
P 6200 3550
F 0 "U2" H 6200 4731 50  0000 C CNN
F 1 "MAX7219" H 6200 4640 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm" H 6150 3600 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 6250 3400 50  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2550 6200 2350
Connection ~ 3750 1750
Wire Wire Line
	4900 4750 6200 4750
Wire Wire Line
	6200 4750 6200 4550
Connection ~ 4900 4750
$Comp
L Device:R R2
U 1 1 6026211D
P 5500 2500
F 0 "R2" H 5570 2546 50  0000 L CNN
F 1 "33k" H 5570 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 2500 50  0001 C CNN
F 3 "~" H 5500 2500 50  0001 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2750 5500 2750
Wire Wire Line
	5500 2750 5500 2650
Wire Wire Line
	5500 2350 6200 2350
Connection ~ 6200 2350
Wire Wire Line
	6200 2350 6200 1750
Wire Wire Line
	3200 2550 5200 2550
Wire Wire Line
	5200 2550 5200 4350
Wire Wire Line
	5200 4350 5800 4350
Wire Wire Line
	5300 4250 5300 2450
Wire Wire Line
	5300 2450 3200 2450
Wire Wire Line
	3200 2350 5400 2350
Wire Wire Line
	5300 4250 5600 4250
Wire Wire Line
	5600 4250 5600 4150
Wire Wire Line
	5600 4150 5800 4150
Wire Wire Line
	5400 4300 5800 4300
Wire Wire Line
	5800 4300 5800 4250
Wire Wire Line
	5400 2350 5400 4300
Wire Wire Line
	6700 2850 6600 2850
Wire Wire Line
	6600 2950 6850 2950
Wire Wire Line
	6950 3050 6600 3050
Wire Wire Line
	6600 3150 7050 3150
Wire Wire Line
	7100 3250 6600 3250
Wire Wire Line
	6600 3350 7350 3350
$Comp
L power:+5V #PWR0101
U 1 1 6027832B
P 850 1950
F 0 "#PWR0101" H 850 1800 50  0001 C CNN
F 1 "+5V" H 865 2123 50  0000 C CNN
F 2 "" H 850 1950 50  0001 C CNN
F 3 "" H 850 1950 50  0001 C CNN
	1    850  1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1750 1250 1950
Wire Wire Line
	1250 1950 1000 1950
Connection ~ 2600 1750
Wire Wire Line
	2600 1750 1250 1750
$Comp
L power:GND #PWR0102
U 1 1 6027D6AE
P 600 5150
F 0 "#PWR0102" H 600 4900 50  0001 C CNN
F 1 "GND" H 605 4977 50  0000 C CNN
F 2 "" H 600 5150 50  0001 C CNN
F 3 "" H 600 5150 50  0001 C CNN
	1    600  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  5150 600  5000
Wire Wire Line
	600  5000 950  5000
Wire Wire Line
	2850 5000 2850 4750
Connection ~ 2850 4750
Wire Wire Line
	2850 4750 3800 4750
$Comp
L Device:CP C3
U 1 1 60283DC4
P 950 3250
F 0 "C3" H 1068 3296 50  0000 L CNN
F 1 "10 uF" H 1068 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 988 3100 50  0001 C CNN
F 3 "~" H 950 3250 50  0001 C CNN
	1    950  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3100 950  3100
Connection ~ 1000 1950
Wire Wire Line
	1000 1950 850  1950
Wire Wire Line
	950  3400 950  3700
Connection ~ 950  5000
Wire Wire Line
	950  5000 2850 5000
Wire Wire Line
	3800 5200 3800 4750
Connection ~ 3800 4750
Wire Wire Line
	3800 4750 3950 4750
Wire Wire Line
	1250 5200 1250 1950
Connection ~ 1250 1950
Wire Wire Line
	3200 5000 3500 5000
Wire Wire Line
	3500 5000 3500 4850
Wire Wire Line
	3500 3950 3200 3950
$Comp
L Device:R R3
U 1 1 602C3B27
P 3050 5000
F 0 "R3" H 3120 5046 50  0000 L CNN
F 1 "10k" H 3120 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2980 5000 50  0001 C CNN
F 3 "~" H 3050 5000 50  0001 C CNN
	1    3050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5150 3050 5200
Wire Wire Line
	3050 5200 1250 5200
Wire Wire Line
	3050 4850 3500 4850
Connection ~ 3500 4850
Wire Wire Line
	3500 4850 3500 3950
$Comp
L Display_Character:LTS-6980HR AFF3
U 1 1 60287817
P 10300 2100
F 0 "AFF3" H 10300 2767 50  0000 C CNN
F 1 "LTS-6980HR" H 10300 2676 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 10300 1500 50  0001 C CNN
F 3 "http://datasheet.octopart.com/LTS-6960HR-Lite-On-datasheet-11803242.pdf" H 10300 2100 50  0001 C CNN
	1    10300 2100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:LTS-6980HR AFF1
U 1 1 602D6BD7
P 7900 2100
F 0 "AFF1" H 7900 2767 50  0000 C CNN
F 1 "LTS-6980HR" H 7900 2676 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 7900 1500 50  0001 C CNN
F 3 "http://datasheet.octopart.com/LTS-6960HR-Lite-On-datasheet-11803242.pdf" H 7900 2100 50  0001 C CNN
	1    7900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1700 8450 1800
Wire Wire Line
	8450 1800 8400 1800
$Comp
L Display_Character:LTS-6980HR AFF2
U 1 1 602D95C2
P 9100 2100
F 0 "AFF2" H 9100 2767 50  0000 C CNN
F 1 "LTS-6980HR" H 9100 2676 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 9100 1500 50  0001 C CNN
F 3 "http://datasheet.octopart.com/LTS-6960HR-Lite-On-datasheet-11803242.pdf" H 9100 2100 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1700 9600 1750
Wire Wire Line
	6600 1700 7350 1700
Wire Wire Line
	6600 1700 6600 2750
Wire Wire Line
	8450 1700 8400 1700
Wire Wire Line
	7350 1700 7350 1350
Wire Wire Line
	7350 1350 8600 1350
Wire Wire Line
	8600 1350 8600 1700
Connection ~ 7350 1700
Wire Wire Line
	7350 1700 7400 1700
Wire Wire Line
	8600 1350 9800 1350
Wire Wire Line
	9800 1350 9800 1700
Connection ~ 8600 1350
Wire Wire Line
	6700 1800 6700 2850
Wire Wire Line
	8200 1800 8200 1450
Wire Wire Line
	8200 1450 8550 1450
Wire Wire Line
	8550 1450 8550 1800
Wire Wire Line
	8550 1800 8600 1800
Wire Wire Line
	6700 1800 7400 1800
Connection ~ 7400 1800
Wire Wire Line
	7400 1800 8200 1800
Wire Wire Line
	8550 1450 9750 1450
Wire Wire Line
	9750 1450 9750 1800
Wire Wire Line
	9750 1800 9800 1800
Connection ~ 8550 1450
Wire Wire Line
	6850 1900 7400 1900
Wire Wire Line
	6850 1900 6850 2950
Wire Wire Line
	7400 1900 8600 1900
Connection ~ 7400 1900
Wire Wire Line
	8600 1900 9800 1900
Connection ~ 8600 1900
Wire Wire Line
	6950 2000 7400 2000
Wire Wire Line
	6950 2000 6950 3050
Wire Wire Line
	7400 2000 8600 2000
Connection ~ 7400 2000
Wire Wire Line
	8600 2000 9800 2000
Connection ~ 8600 2000
Wire Wire Line
	7050 2100 7400 2100
Wire Wire Line
	7050 2100 7050 3150
Wire Wire Line
	7400 2100 8600 2100
Connection ~ 7400 2100
Wire Wire Line
	8600 2100 9800 2100
Connection ~ 8600 2100
Wire Wire Line
	7100 2200 7400 2200
Wire Wire Line
	7100 2200 7100 3250
Wire Wire Line
	7400 2200 8600 2200
Connection ~ 7400 2200
Wire Wire Line
	8600 2200 9800 2200
Connection ~ 8600 2200
Wire Wire Line
	7350 2300 7400 2300
Wire Wire Line
	7350 2300 7350 3350
Wire Wire Line
	7400 2300 8600 2300
Connection ~ 7400 2300
Wire Wire Line
	8600 2300 9800 2300
Connection ~ 8600 2300
Wire Wire Line
	8400 2400 8500 2400
Wire Wire Line
	9600 2400 10800 2400
Connection ~ 9600 2400
Wire Wire Line
	8500 3450 8500 2400
Wire Wire Line
	6600 3450 8500 3450
Connection ~ 8500 2400
Wire Wire Line
	8500 2400 9600 2400
Wire Wire Line
	8450 1800 8450 3550
Wire Wire Line
	6600 3550 8450 3550
Connection ~ 8450 1800
Wire Wire Line
	9600 1750 9700 1750
Wire Wire Line
	9700 1750 9700 3650
Wire Wire Line
	6600 3650 9700 3650
Connection ~ 9600 1750
Wire Wire Line
	9600 1750 9600 1800
Wire Wire Line
	11150 3750 11150 1750
Wire Wire Line
	11150 1750 10800 1750
Wire Wire Line
	6600 3750 11150 3750
Wire Wire Line
	10800 1700 10800 1750
Connection ~ 10800 1750
Wire Wire Line
	10800 1750 10800 1800
Wire Wire Line
	1000 3100 1000 2250
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 6038A8AF
P 650 2350
F 0 "J2" H 568 2025 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 568 2116 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 650 2350 50  0001 C CNN
F 3 "~" H 650 2350 50  0001 C CNN
	1    650  2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  2250 1000 2250
Connection ~ 1000 2250
Wire Wire Line
	1000 2250 1000 1950
Wire Wire Line
	850  2350 850  3700
Wire Wire Line
	850  3700 950  3700
Connection ~ 950  3700
Wire Wire Line
	950  3700 950  5000
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 6039FE83
P 4100 3750
F 0 "J3" H 4072 3682 50  0000 R CNN
F 1 "Conn_01x03_Male" H 4072 3773 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 3750 50  0001 C CNN
F 3 "~" H 4100 3750 50  0001 C CNN
	1    4100 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 3650 3900 3650
Wire Wire Line
	3750 3300 3750 3550
Connection ~ 3750 3550
Wire Wire Line
	3750 3550 3750 3650
Wire Wire Line
	3950 3750 3900 3750
Wire Wire Line
	3950 3850 3900 3850
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 603B294F
P 4150 4100
F 0 "J4" H 4122 3982 50  0000 R CNN
F 1 "Conn_01x02_Male" H 4122 4073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4150 4100 50  0001 C CNN
F 3 "~" H 4150 4100 50  0001 C CNN
	1    4150 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 1750 3750 1750
Wire Wire Line
	3950 4000 3550 4000
Wire Wire Line
	3550 4000 3550 1750
Connection ~ 3550 1750
Wire Wire Line
	3550 1750 2700 1750
Wire Wire Line
	3950 4100 3950 4750
Connection ~ 3950 4750
Wire Wire Line
	3950 4750 4900 4750
Connection ~ 3900 3650
Wire Wire Line
	3900 3650 3750 3650
Connection ~ 3900 3750
Wire Wire Line
	3900 3750 3200 3750
Connection ~ 3900 3850
Wire Wire Line
	3900 3850 3200 3850
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 602941B2
P 3200 5550
F 0 "J1" V 3072 5730 50  0000 L CNN
F 1 "Screw_Terminal_01x03" V 3163 5730 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 3200 5550 50  0001 C CNN
F 3 "~" H 3200 5550 50  0001 C CNN
	1    3200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5000 3200 5100
Wire Wire Line
	3200 5100 3300 5100
Wire Wire Line
	3300 5100 3300 5350
Wire Wire Line
	3050 5200 3050 5250
Wire Wire Line
	3050 5250 3200 5250
Wire Wire Line
	3200 5250 3200 5350
Connection ~ 3050 5200
Wire Wire Line
	3100 5200 3100 5350
Wire Wire Line
	3100 5200 3800 5200
$EndSCHEMATC
