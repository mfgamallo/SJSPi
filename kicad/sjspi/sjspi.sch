EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SJSPi"
Date "2021-07-03"
Rev "v1.0"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0/"
Comment3 "License CC BY 4.0"
Comment4 "Author: Manuel Gamallo"
$EndDescr
$Comp
L sjspi:74LVC245 U1
U 1 1 60AA8AD6
P 6000 3850
F 0 "U1" H 5750 4400 50  0000 C CNN
F 1 "74LVC245" H 6250 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5900 3900 50  0001 C CNN
F 3 "" H 5900 3900 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60AAB4C9
P 6900 3100
F 0 "R1" V 6800 3100 50  0000 C CNN
F 1 "47" V 6900 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 3100 50  0001 C CNN
F 3 "~" H 6900 3100 50  0001 C CNN
	1    6900 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60AAC4AB
P 6900 3400
F 0 "R2" V 6800 3400 50  0000 C CNN
F 1 "47" V 6900 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 3400 50  0001 C CNN
F 3 "~" H 6900 3400 50  0001 C CNN
	1    6900 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60AACB86
P 6900 3700
F 0 "R3" V 6800 3700 50  0000 C CNN
F 1 "47" V 6900 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 3700 50  0001 C CNN
F 3 "~" H 6900 3700 50  0001 C CNN
	1    6900 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60AAD200
P 6900 4000
F 0 "R4" V 6800 4000 50  0000 C CNN
F 1 "47" V 6900 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 4000 50  0001 C CNN
F 3 "~" H 6900 4000 50  0001 C CNN
	1    6900 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60AAD6F5
P 6900 4300
F 0 "R5" V 6800 4300 50  0000 C CNN
F 1 "47" V 6900 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 4300 50  0001 C CNN
F 3 "~" H 6900 4300 50  0001 C CNN
	1    6900 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60AB0AE2
P 6900 4600
F 0 "R6" V 6800 4600 50  0000 C CNN
F 1 "100" V 6900 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
	1    6900 4600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60AB59DF
P 7500 3100
F 0 "D1" H 7500 3000 50  0000 C CNN
F 1 "RED" H 7500 3200 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 3100 50  0001 C CNN
F 3 "~" H 7500 3100 50  0001 C CNN
	1    7500 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 60AB60A1
P 7500 3400
F 0 "D2" H 7500 3300 50  0000 C CNN
F 1 "RED" H 7500 3500 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 3400 50  0001 C CNN
F 3 "~" H 7500 3400 50  0001 C CNN
	1    7500 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 60AB6693
P 7500 3700
F 0 "D3" H 7500 3600 50  0000 C CNN
F 1 "RED" H 7500 3800 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 3700 50  0001 C CNN
F 3 "~" H 7500 3700 50  0001 C CNN
	1    7500 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 60AB6C56
P 7500 4000
F 0 "D4" H 7500 3900 50  0000 C CNN
F 1 "RED" H 7500 4100 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 4000 50  0001 C CNN
F 3 "~" H 7500 4000 50  0001 C CNN
	1    7500 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 60AB7279
P 7500 4300
F 0 "D5" H 7500 4200 50  0000 C CNN
F 1 "RED" H 7500 4400 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 4300 50  0001 C CNN
F 3 "~" H 7500 4300 50  0001 C CNN
	1    7500 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60AC6741
P 5850 4600
F 0 "#PWR04" H 5850 4350 50  0001 C CNN
F 1 "GND" H 5855 4427 50  0000 C CNN
F 2 "" H 5850 4600 50  0001 C CNN
F 3 "" H 5850 4600 50  0001 C CNN
	1    5850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 60ACB3F8
P 6100 3000
F 0 "#PWR05" H 6100 2850 50  0001 C CNN
F 1 "VCC" H 6115 3173 50  0000 C CNN
F 2 "" H 6100 3000 50  0001 C CNN
F 3 "" H 6100 3000 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 60ACBCFF
P 5900 3000
F 0 "#PWR03" H 5900 2850 50  0001 C CNN
F 1 "VCC" H 5915 3173 50  0000 C CNN
F 2 "" H 5900 3000 50  0001 C CNN
F 3 "" H 5900 3000 50  0001 C CNN
	1    5900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4750 6750 4750
Wire Wire Line
	6750 4750 6750 4600
$Comp
L power:GND #PWR02
U 1 1 60AEBF6B
P 5350 4350
F 0 "#PWR02" H 5350 4100 50  0001 C CNN
F 1 "GND" H 5355 4177 50  0000 C CNN
F 2 "" H 5350 4350 50  0001 C CNN
F 3 "" H 5350 4350 50  0001 C CNN
	1    5350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 6450 3500
Wire Wire Line
	6450 3500 6450 3100
Wire Wire Line
	6450 3100 6750 3100
Wire Wire Line
	6400 3900 6450 3900
Wire Wire Line
	6450 3900 6450 4300
Wire Wire Line
	6450 4300 6750 4300
Wire Wire Line
	6400 3800 6550 3800
Wire Wire Line
	6550 3800 6550 4000
Wire Wire Line
	6550 4000 6750 4000
Wire Wire Line
	6400 3600 6550 3600
Wire Wire Line
	6550 3600 6550 3400
Wire Wire Line
	6550 3400 6750 3400
Wire Wire Line
	6400 3700 6750 3700
Wire Wire Line
	7050 3100 7350 3100
Wire Wire Line
	7050 3400 7350 3400
Wire Wire Line
	7050 3700 7350 3700
Wire Wire Line
	7050 4000 7350 4000
Wire Wire Line
	7050 4300 7350 4300
Wire Wire Line
	5950 3250 5950 3100
Wire Wire Line
	5950 3100 5900 3100
Wire Wire Line
	5900 3100 5900 3000
Wire Wire Line
	6050 3250 6050 3100
Wire Wire Line
	6050 3100 6100 3100
Wire Wire Line
	6100 3100 6100 3000
$Comp
L Connector:DB9_Female J2
U 1 1 60AD804B
P 9350 3900
F 0 "J2" H 9530 3946 50  0000 L CNN
F 1 "DB9_Female" H 9530 3855 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 9350 3900 50  0001 C CNN
F 3 " ~" H 9350 3900 50  0001 C CNN
	1    9350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3100 8600 3100
Wire Wire Line
	8600 3100 8600 3600
Wire Wire Line
	8600 3600 9050 3600
Wire Wire Line
	7650 3400 8500 3400
Wire Wire Line
	8500 3400 8500 3800
Wire Wire Line
	8500 3800 9050 3800
Wire Wire Line
	8400 3700 8400 4100
Wire Wire Line
	8400 4100 9050 4100
Wire Wire Line
	7650 3700 8400 3700
Wire Wire Line
	7650 4000 8300 4000
Wire Wire Line
	8300 4000 8300 4200
Wire Wire Line
	8300 4200 9050 4200
Wire Wire Line
	7650 4300 9050 4300
Wire Wire Line
	7050 4600 8900 4600
Wire Wire Line
	8900 4600 8900 4000
Wire Wire Line
	8900 3700 9050 3700
Wire Wire Line
	9050 4000 8900 4000
Connection ~ 8900 4000
Wire Wire Line
	8900 4000 8900 3700
$Comp
L power:GND #PWR0101
U 1 1 60C6BC09
P 6150 4600
F 0 "#PWR0101" H 6150 4350 50  0001 C CNN
F 1 "GND" H 6155 4427 50  0000 C CNN
F 2 "" H 6150 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4450 5950 4500
Wire Wire Line
	5950 4500 5850 4500
Wire Wire Line
	5850 4500 5850 4600
Wire Wire Line
	6050 4450 6050 4500
Wire Wire Line
	6050 4500 6150 4500
Wire Wire Line
	6150 4500 6150 4600
$Comp
L power:VCC #PWR01
U 1 1 60AC779E
P 5300 4700
F 0 "#PWR01" H 5300 4550 50  0001 C CNN
F 1 "VCC" V 5315 4873 50  0000 C CNN
F 2 "" H 5300 4700 50  0001 C CNN
F 3 "" H 5300 4700 50  0001 C CNN
	1    5300 4700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 60ACA7A1
P 6550 4750
F 0 "#PWR06" H 6550 4600 50  0001 C CNN
F 1 "VCC" V 6565 4877 50  0000 L CNN
F 2 "" H 6550 4750 50  0001 C CNN
F 3 "" H 6550 4750 50  0001 C CNN
	1    6550 4750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 60AB9839
P 4850 3800
F 0 "J1" H 4900 4917 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 4900 4826 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4850 3800 50  0001 C CNN
F 3 "~" H 4850 3800 50  0001 C CNN
	1    4850 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 4700 5300 4700
Wire Wire Line
	5050 2900 5500 2900
Wire Wire Line
	5500 2900 5500 3500
Wire Wire Line
	5500 3500 5600 3500
Wire Wire Line
	5050 3200 5450 3200
Wire Wire Line
	5450 3200 5450 3600
Wire Wire Line
	5450 3600 5600 3600
Wire Wire Line
	5050 3300 5400 3300
Wire Wire Line
	5400 3300 5400 3700
Wire Wire Line
	5400 3700 5600 3700
Wire Wire Line
	5050 4000 5450 4000
Wire Wire Line
	5450 4000 5450 3800
Wire Wire Line
	5450 3800 5600 3800
Wire Wire Line
	5050 4100 5500 4100
Wire Wire Line
	5500 4100 5500 3900
Wire Wire Line
	5500 3900 5600 3900
Wire Wire Line
	5050 4300 5350 4300
Wire Wire Line
	5350 4300 5350 4350
$EndSCHEMATC
