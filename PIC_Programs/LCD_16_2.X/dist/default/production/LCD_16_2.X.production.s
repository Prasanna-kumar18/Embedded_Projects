subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "J:/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_string
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,___awdiv
	FNCALL	_vfpfcnvrt,___awmod
	FNCALL	_vfpfcnvrt,_abs
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_lcd_string,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNROOT	_main
	global	_width
	global	_prec
	global	_flags
	global	_dbuf
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_1:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "ON"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/default/production\LCD_16_2.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_width:
       ds      2

_prec:
       ds      2

_flags:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_dbuf:
       ds      32

	file	"dist/default/production\LCD_16_2.X.production.s"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_putch:	; 1 bytes @ 0x0
?_lcd_data:	; 1 bytes @ 0x0
?_lcd_cmd:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_fputc:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	fputc@c
fputc@c:	; 2 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
??_lcd_data:	; 1 bytes @ 0x0
??_lcd_cmd:	; 1 bytes @ 0x0
	ds	2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x2
	ds	1
?_lcd_string:	; 1 bytes @ 0x3
	global	lcd_string@str
lcd_string@str:	; 1 bytes @ 0x3
??_lcd_init:	; 1 bytes @ 0x3
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	lcd_string@Num
lcd_string@Num:	; 2 bytes @ 0x4
??_fputc:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	?_abs
?_abs:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	global	abs@a
abs@a:	; 2 bytes @ 0x6
??_lcd_string:	; 1 bytes @ 0x6
	ds	1
	global	lcd_string@i
lcd_string@i:	; 2 bytes @ 0x7
	ds	1
??_abs:	; 1 bytes @ 0x8
	ds	5
	global	vfprintf@cfmt
vfprintf@cfmt:	; 1 bytes @ 0xD
??_vfprintf:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_vfpfcnvrt:	; 1 bytes @ 0x0
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x0
	ds	2
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x2
	ds	1
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x3
	ds	1
??_vfpfcnvrt:	; 1 bytes @ 0x4
	ds	2
	global	vfpfcnvrt@done
vfpfcnvrt@done:	; 1 bytes @ 0x6
	ds	1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 1 bytes @ 0x7
	ds	1
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x8
	ds	4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0xC
	ds	1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0xD
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0xD
	ds	2
	global	vfprintf@fmt
vfprintf@fmt:	; 1 bytes @ 0xF
	ds	1
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x10
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x11
	global	sprintf@s
sprintf@s:	; 1 bytes @ 0x11
	ds	1
	global	sprintf@fmt
sprintf@fmt:	; 1 bytes @ 0x12
	ds	3
??_sprintf:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@f
sprintf@f:	; 11 bytes @ 0x17
	ds	11
??_main:	; 1 bytes @ 0x22
	ds	3
	global	main@P_Var
main@P_Var:	; 10 bytes @ 0x25
	ds	10
	global	main@i
main@i:	; 2 bytes @ 0x2F
	ds	2
;!
;!Data Sizes:
;!    Strings     10
;!    Constant    0
;!    Data        0
;!    BSS         37
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     49      54
;!    BANK1            80      0      32
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    f$.$buffer	PTR unsigned char  size(2) Largest target is 10
;!		 -> main@P_Var(BANK0[10]), 
;!
;!    f$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(2) Largest target is 10
;!		 -> main@P_Var(BANK0[10]), 
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    lcd_string@str	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@P_Var(BANK0[10]), 
;!
;!    S528$buffer	PTR unsigned char  size(2) Largest target is 10
;!		 -> main@P_Var(BANK0[10]), 
;!
;!    S528$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@fmt	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    sprintf@s	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@P_Var(BANK0[10]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(COMMON[1]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->_vfprintf
;!    _vfpfcnvrt->_fputc
;!    _abs->___awmod
;!    _lcd_string->_lcd_data
;!    _lcd_init->_lcd_cmd
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                15    15      0    2060
;!                                             34 BANK0     15    15      0
;!                            _lcd_cmd
;!                           _lcd_init
;!                         _lcd_string
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             19    15      4    1764
;!                                             17 BANK0     17    13      4
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             5     1      4    1559
;!                                             13 COMMON     1     1      0
;!                                             13 BANK0      4     0      4
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           13     9      4    1434
;!                                              0 BANK0     13     9      4
;!                            ___awdiv
;!                            ___awmod
;!                                _abs
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                               13     9      4     230
;!                                              0 COMMON    13     9      4
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (4) _abs                                                  4     2      2      67
;!                                              6 COMMON     4     2      2
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              6     2      4     298
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     302
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _lcd_string                                           6     3      3     121
;!                                              3 COMMON     6     3      3
;!                           _lcd_data
;! ---------------------------------------------------------------------------------
;! (2) _lcd_data                                             3     3      0      29
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             0     0      0      29
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              3     3      0      29
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _lcd_cmd
;!   _lcd_init
;!     _lcd_cmd
;!   _lcd_string
;!     _lcd_data
;!   _sprintf
;!     _vfprintf
;!       _vfpfcnvrt
;!         ___awdiv
;!         ___awmod
;!         _abs
;!           ___awmod (ARG)
;!         _fputc
;!           _putch
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BANK0               80     49      54     67.5%
;!BANK1               80      0      32     40.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     100      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   47[BANK0 ] int 
;;  P_Var          10   37[BANK0 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_lcd_cmd
;;		_lcd_init
;;		_lcd_string
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	66
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	66
	
_main:	
;incstack = 0
	callstack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l1104:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
	clrf	(135)^080h	;volatile
	line	71
	
l1106:	
	fcall	_lcd_init
	line	75
	
l1108:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	77
	
l1114:	
	movlw	low(080h)
	fcall	_lcd_cmd
	line	78
	
l1116:	
	movlw	(low(main@P_Var|((0x0)<<8)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@s)
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@fmt)
	movf	(main@i+1),w
	movwf	1+(?_sprintf)+02h
	movf	(main@i),w
	movwf	0+(?_sprintf)+02h
	fcall	_sprintf
	line	80
	
l1118:	
	movlw	(low(main@P_Var|((0x0)<<8)))&0ffh
	movwf	(lcd_string@str)
	movlw	0Ah
	movwf	(lcd_string@Num)
	movlw	0
	movwf	((lcd_string@Num))+1
	fcall	_lcd_string
	line	81
	
l1120:	
	asmopt push
asmopt off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	175
movwf	((??_main+0)+0+1)
	movlw	181
movwf	((??_main+0)+0)
	u777:
decfsz	((??_main+0)+0),f
	goto	u777
	decfsz	((??_main+0)+0+1),f
	goto	u777
	decfsz	((??_main+0)+0+2),f
	goto	u777
	nop2
asmopt pop

	line	82
	
l1122:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	0
	addwf	(main@i+1),f
	
l1124:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u765
	movlw	064h
	subwf	(main@i),w
u765:

	skipc
	goto	u761
	goto	u760
u761:
	goto	l1114
u760:
	goto	l1108
	global	start
	ljmp	start
	callstack 0
	line	86
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 9 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_sprintf.c"
;; Parameters:    Size  Location     Type
;;  s               1   17[BANK0 ] PTR unsigned char 
;;		 -> main@P_Var(10), 
;;  fmt             1   18[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  f              11   23[BANK0 ] struct _IO_FILE
;;  ret             2    0        int 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   17[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=3
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_sprintf.c"
	line	9
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_sprintf.c"
	line	9
	
_sprintf:	
;incstack = 0
	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l1090:	
	movlw	(low(?_sprintf|((0x0)<<8)+02h))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@ap)
	line	16
	
l1092:	
		movf	(sprintf@s),w
	movwf	(sprintf@f)
	movlw	0x0
	movwf	(sprintf@f+1)

	line	17
	
l1094:	
	clrf	0+(sprintf@f)+02h
	clrf	1+(sprintf@f)+02h
	line	18
	
l1096:	
	clrf	0+(sprintf@f)+09h
	clrf	1+(sprintf@f)+09h
	line	19
	
l1098:	
	movlw	low(sprintf@f)
	movwf	(vfprintf@fp)
	movlw	high(sprintf@f)
	movwf	((vfprintf@fp))+1
	movf	(sprintf@fmt),w
	movwf	(vfprintf@fmt)
	movlw	(low(sprintf@ap|((0x0)<<8)))&0ffh
	movwf	(vfprintf@ap)
	fcall	_vfprintf
	line	20
	
l1100:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(sprintf@f)+02h,w
	addwf	(sprintf@s),w
	movwf	(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	23
	
l586:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   13[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   15[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(10), 
;;  ap              1   16[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            1   13[COMMON] PTR unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext2
__ptext2:	;psect for function _vfprintf
psect	text2
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:	
;incstack = 0
	callstack 3
; Regs used in _vfprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1822
	
l1070:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1817: int vfprintf(FILE *fp, const char *fmt, va_list ap);J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1818: {;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1820:     char *cfmt;;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1822:     cfmt = (char *)fmt;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(vfprintf@fmt),w
	movwf	(vfprintf@cfmt)
	line	1826
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	goto	l1074
	line	1830
	
l1072:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1830:    vfpfcnvrt(fp, &cfmt, ap);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(vfprintf@fp),w
	movwf	(vfpfcnvrt@fp)
movf	(vfprintf@fp+1),w
	movwf	(vfpfcnvrt@fp+1)

	movlw	(low(vfprintf@cfmt|((0x00)<<8)))&0ffh
	movwf	(vfpfcnvrt@fmt)
	movf	(vfprintf@ap),w
	movwf	(vfpfcnvrt@ap)
	fcall	_vfpfcnvrt
	line	1826
	
l1074:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	movf	(vfprintf@cfmt),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1072
u740:
	line	1835
	
l1076:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1835:  return 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_vfprintf)
	clrf	(?_vfprintf+1)
	line	1840
	
l630:	
	return
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2    0[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1    2[BANK0 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(1), 
;;  ap              1    3[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4    8[BANK0 ] struct .
;;  c               1   12[BANK0 ] unsigned char 
;;  cp              1    7[BANK0 ] PTR unsigned char 
;;		 -> STR_1(10), 
;;  done            1    6[BANK0 ] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_abs
;;		_fputc
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	line	1177
global __ptext3
__ptext3:	;psect for function _vfpfcnvrt
psect	text3
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:	
;incstack = 0
	callstack 3
; Regs used in _vfpfcnvrt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1201
	
l998:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1177: vfpfcnvrt(FILE *fp, char *fmt[], va_list ap);J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1178: {;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1179:     char c, *cp;;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1180:     _Bool done;;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1188:  } convarg;;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1201:     if ((*fmt)[0] == '%') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u641
	goto	u640
u641:
	goto	l1044
u640:
	line	1202
	
l1000:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1202:         ++*fmt;
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	line	1204
	
l1002:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1204:         flags = width = 0;
	clrf	(_width)
	clrf	(_width+1)
	movlw	(low(0))&0ffh
	movwf	(_flags)
	line	1205
	
l1004:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1205:         prec = -1;
	movlw	0FFh
	movwf	(_prec)
	movlw	0FFh
	movwf	((_prec))+1
	line	1291
	
l1006:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1291:   cp = *fmt;
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@cp)
	line	1361
	
l1008:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1361:   if (*cp == 'd' || *cp == 'i') {
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	064h
	skipnz
	goto	u651
	goto	u650
u651:
	goto	l1012
u650:
	
l1010:	
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	069h
	skipz
	goto	u661
	goto	u660
u661:
	goto	l1040
u660:
	line	1404
	
l1012:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1404:    convarg.sint = (vfpf_sint_t)(int)(*(int *)__va_arg(*(int **)ap, (int)0));
	movf	(vfpfcnvrt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(btemp+1)
	movlw	02h
	addwf	indf,f
	movf	(btemp+1),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@convarg)
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+1)
	line	1406
	
l1014:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1406:    *fmt = cp+1;
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	(vfpfcnvrt@cp),w
	addlw	01h
	movwf	indf
	line	1408
	
l1016:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1408:    c = sizeof(dbuf);
	movlw	020h
	movwf	(vfpfcnvrt@c)
	line	1409
	
l1018:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1409:    done = convarg.sint < 0;
	btfsc	(vfpfcnvrt@convarg+1),7
	goto	u671
	goto	u670
u671:
	movlw	1
	goto	u680
u670:
	movlw	0
u680:
	movwf	(vfpfcnvrt@done)
	line	1411
	
l1020:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1411:     dbuf[--c] = abs(convarg.sint % 10) + '0';
	movlw	01h
	subwf	(vfpfcnvrt@c),f
	movf	((vfpfcnvrt@c)),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___awmod@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(abs@a+1)
	movf	(0+(?___awmod)),w
	movwf	(abs@a)
	fcall	_abs
	movf	(0+(?_abs)),w
	addlw	030h
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	1412
	
l1022:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1412:     convarg.sint /= 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___awdiv@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(vfpfcnvrt@convarg+1)
	movf	(0+(?___awdiv)),w
	movwf	(vfpfcnvrt@convarg)
	line	1416
	
l1024:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1416:    } while (convarg.sint != 0 && c != 0);
	movf	((vfpfcnvrt@convarg)),w
iorwf	((vfpfcnvrt@convarg+1)),w
	btfsc	status,2
	goto	u691
	goto	u690
u691:
	goto	l1028
u690:
	
l1026:	
	movf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l1020
u700:
	line	1417
	
l1028:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1417:    if (c != 0 && done) {
	movf	((vfpfcnvrt@c)),w
	btfsc	status,2
	goto	u711
	goto	u710
u711:
	goto	l1038
u710:
	
l1030:	
	movf	((vfpfcnvrt@done)),w
	btfsc	status,2
	goto	u721
	goto	u720
u721:
	goto	l1038
u720:
	line	1418
	
l1032:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1418:     dbuf[--c] = '-';
	movlw	01h
	subwf	(vfpfcnvrt@c),f
	movf	((vfpfcnvrt@c)),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	02Dh
	bcf	status, 7	;select IRP bank1
	movwf	indf
	goto	l1038
	line	1424
	
l1034:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1424:     fputc(dbuf[c++], fp);
	movf	(vfpfcnvrt@c),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_vfpfcnvrt+0)+0
	clrf	(??_vfpfcnvrt+0)+0+1
	movf	0+(??_vfpfcnvrt+0)+0,w
	movwf	(fputc@c)
	movf	1+(??_vfpfcnvrt+0)+0,w
	movwf	(fputc@c+1)
		movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	
l1036:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(vfpfcnvrt@c),f
	line	1423
	
l1038:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1423:    while (c != sizeof(dbuf)) {
		movlw	32
	xorwf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u731
	goto	u730
u731:
	goto	l1034
u730:
	goto	l624
	line	1806
	
l1040:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1806:         ++*fmt;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	goto	l624
	line	1811
	
l1044:	
;J:\Microchip\xc8\v2.50\pic\sources\c99\common\doprnt.c: 1811:     fputc((int)(*fmt)[0], fp);
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_vfpfcnvrt+0)+0
	clrf	(??_vfpfcnvrt+0)+0+1
	movf	0+(??_vfpfcnvrt+0)+0,w
	movwf	(fputc@c)
	movf	1+(??_vfpfcnvrt+0)+0,w
	movwf	(fputc@c+1)
		movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	goto	l1040
	line	1814
	
l624:	
	return
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[COMMON] int 
;;  fp              2    2[COMMON] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          9       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=3
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext4
__ptext4:	;psect for function _fputc
psect	text4
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:	
;incstack = 0
	callstack 3
; Regs used in _fputc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l976:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l980
u580:
	
l978:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l982
u590:
	line	13
	
l980:	
	movf	(fputc@c),w
	fcall	_putch
	line	14
	goto	l649
	line	15
	
l982:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+0+1
	movf	((??_fputc+2)+0),w
iorwf	((??_fputc+2)+1),w
	btfsc	status,2
	goto	u601
	goto	u600
u601:
	goto	l986
u600:
	
l984:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+0+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+4)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+4)+0
	movf	0+(??_fputc+4)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+4)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+6)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+6)+0+1
	movf	1+(??_fputc+6)+0,w
	xorlw	80h
	movwf	(??_fputc+8)+0
	movf	1+(??_fputc+2)+0,w
	xorlw	80h
	subwf	(??_fputc+8)+0,w
	skipz
	goto	u615
	movf	0+(??_fputc+2)+0,w
	subwf	0+(??_fputc+6)+0,w
u615:

	skipnc
	goto	u611
	goto	u610
u611:
	goto	l649
u610:
	line	18
	
l986:	
	movf	(fputc@fp),w
	movwf	fsr0
	bsf	status,7
	btfss	(fputc@fp+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+0)+0+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+2)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+2)+0
	movf	0+(??_fputc+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+2)+0,0
	bcf	status,7
	movf	indf,w
	addwf	0+(??_fputc+0)+0,w
	movwf	(??_fputc+5)+0
	movf	1+(??_fputc+0)+0,w
	movwf	(??_fputc+4)+0
	skipnc
	incf	(??_fputc+4)+0,f
	btfss	indf,7
	goto	u620
	decf	(??_fputc+4)+0,f
u620:
	movf	(??_fputc+4)+0,w
	movwf	0+((??_fputc+5)+0)+1
	movf	0+(??_fputc+5)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+5)+0,0
	bcf	status,7
	movf	(fputc@c),w
	movwf	indf
	line	20
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+0)+0
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+0)+0
	movf	0+(??_fputc+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_fputc+0)+0,0
	bcf	status,7
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	24
	
l649:	
	return
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=3
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\putch.c"
	line	7
global __ptext5
__ptext5:	;psect for function _putch
psect	text5
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\putch.c"
	line	7
	
_putch:	
;incstack = 0
	callstack 3
; Regs used in _putch: [wreg]
	line	9
	
l660:	
	return
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 1 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=3
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\abs.c"
	line	1
global __ptext6
__ptext6:	;psect for function _abs
psect	text6
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\abs.c"
	line	1
	
_abs:	
;incstack = 0
	callstack 4
; Regs used in _abs: [wreg+status,2+status,0]
	line	3
	
l990:	
	btfsc	(abs@a+1),7
	goto	u631
	goto	u630
u631:
	goto	l994
u630:
	
l992:	
	goto	l637
	
l994:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	line	4
	
l637:	
	return
	callstack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\awmod.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l938:	
	clrf	(___awmod@sign)
	line	13
	
l940:	
	btfss	(___awmod@dividend+1),7
	goto	u491
	goto	u490
u491:
	goto	l946
u490:
	line	14
	
l942:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l944:	
	movlw	01h
	movwf	(___awmod@sign)
	line	17
	
l946:	
	btfss	(___awmod@divisor+1),7
	goto	u501
	goto	u500
u501:
	goto	l950
u500:
	line	18
	
l948:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l950:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u511
	goto	u510
u511:
	goto	l968
u510:
	line	20
	
l952:	
	movlw	01h
	movwf	(___awmod@counter)
	line	21
	goto	l958
	line	22
	
l954:	
	movlw	01h
	
u525:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u525
	line	23
	
l956:	
	movlw	low(01h)
	addwf	(___awmod@counter),f
	line	21
	
l958:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u531
	goto	u530
u531:
	goto	l954
u530:
	line	26
	
l960:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u545
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u545:
	skipc
	goto	u541
	goto	u540
u541:
	goto	l964
u540:
	line	27
	
l962:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l964:	
	movlw	01h
	
u555:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u555
	line	29
	
l966:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u561
	goto	u560
u561:
	goto	l960
u560:
	line	31
	
l968:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u571
	goto	u570
u571:
	goto	l972
u570:
	line	32
	
l970:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l972:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l289:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "J:\Microchip\xc8\v2.50\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\awdiv.c"
	line	5
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"J:\Microchip\xc8\v2.50\pic\sources\c99\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l894:	
	clrf	(___awdiv@sign)
	line	14
	
l896:	
	btfss	(___awdiv@divisor+1),7
	goto	u391
	goto	u390
u391:
	goto	l902
u390:
	line	15
	
l898:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l900:	
	movlw	01h
	movwf	(___awdiv@sign)
	line	18
	
l902:	
	btfss	(___awdiv@dividend+1),7
	goto	u401
	goto	u400
u401:
	goto	l908
u400:
	line	19
	
l904:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l906:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	22
	
l908:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l910:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u411
	goto	u410
u411:
	goto	l930
u410:
	line	24
	
l912:	
	movlw	01h
	movwf	(___awdiv@counter)
	line	25
	goto	l918
	line	26
	
l914:	
	movlw	01h
	
u425:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u425
	line	27
	
l916:	
	movlw	low(01h)
	addwf	(___awdiv@counter),f
	line	25
	
l918:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u431
	goto	u430
u431:
	goto	l914
u430:
	line	30
	
l920:	
	movlw	01h
	
u445:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u445
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u455
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u455:
	skipc
	goto	u451
	goto	u450
u451:
	goto	l926
u450:
	line	32
	
l922:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l924:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l926:	
	movlw	01h
	
u465:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u465
	line	36
	
l928:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u471
	goto	u470
u471:
	goto	l920
u470:
	line	38
	
l930:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u481
	goto	u480
u481:
	goto	l934
u480:
	line	39
	
l932:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l934:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l276:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_lcd_string

;; *************** function _lcd_string *****************
;; Defined at:
;;		line 48 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str             1    3[COMMON] PTR unsigned char 
;;		 -> main@P_Var(10), 
;;  Num             2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	48
global __ptext9
__ptext9:	;psect for function _lcd_string
psect	text9
	file	"main.c"
	line	48
	
_lcd_string:	
;incstack = 0
	callstack 6
; Regs used in _lcd_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	52
	
l1080:	
;main.c: 48:     lcd_init();;main.c: 49:     unsigned char P_Var[10];;main.c: 50:     while(1);main.c: 52:         for(int i=0;i<100;i++)
	clrf	(lcd_string@i)
	clrf	(lcd_string@i+1)
	goto	l1086
	line	54
	
l1082:	
;main.c: 53:         {;main.c: 54:         lcd_cmd(0x80);
	movf	(lcd_string@i),w
	addwf	(lcd_string@str),w
	movwf	(??_lcd_string+0)+0
	movf	0+(??_lcd_string+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_data
	line	55
	
l1084:	
;main.c: 55:         sprintf(P_Var,"Count: %d",i);
	movlw	01h
	addwf	(lcd_string@i),f
	skipnc
	incf	(lcd_string@i+1),f
	movlw	0
	addwf	(lcd_string@i+1),f
	
l1086:	
	movf	(lcd_string@Num+1),w
	subwf	(lcd_string@i+1),w
	skipz
	goto	u755
	movf	(lcd_string@Num),w
	subwf	(lcd_string@i),w
u755:
	skipc
	goto	u751
	goto	u750
u751:
	goto	l1082
u750:
	line	56
	
l24:	
	return
	callstack 0
GLOBAL	__end_of_lcd_string
	__end_of_lcd_string:
	signat	_lcd_string,8313
	global	_lcd_data

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 27 in file "main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_string
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	27
global __ptext10
__ptext10:	;psect for function _lcd_data
psect	text10
	file	"main.c"
	line	27
	
_lcd_data:	
;incstack = 0
	callstack 6
; Regs used in _lcd_data: [wreg]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	29
	
l1050:	
;main.c: 27:     unsigned int i;;main.c: 28: ;main.c: 29:     for(i=0;i<Num;i++)
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	30
	
l1052:	
;main.c: 30:     {
	bsf	(6),0	;volatile
	line	31
	
l1054:	
;main.c: 31:         lcd_data(str[i]);
	bcf	(6),1	;volatile
	line	32
	
l1056:	
;main.c: 32:     }
	bsf	(6),2	;volatile
	line	33
;main.c: 33: }
	asmopt push
asmopt off
movlw	33
movwf	((??_lcd_data+0)+0+1)
	movlw	118
movwf	((??_lcd_data+0)+0)
	u787:
decfsz	((??_lcd_data+0)+0),f
	goto	u787
	decfsz	((??_lcd_data+0)+0+1),f
	goto	u787
	nop
asmopt pop

	line	34
	
l1058:	
;main.c: 34: 
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	36
	
l15:	
	return
	callstack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
	signat	_lcd_data,4217
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 58 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	58
global __ptext11
__ptext11:	;psect for function _lcd_init
psect	text11
	file	"main.c"
	line	58
	
_lcd_init:	
;incstack = 0
	callstack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l1088:	
;main.c: 60:     }
	movlw	low(038h)
	fcall	_lcd_cmd
	line	61
;main.c: 61: 
	movlw	low(06h)
	fcall	_lcd_cmd
	line	62
;main.c: 62:     return;
	movlw	low(0Ch)
	fcall	_lcd_cmd
	line	63
;main.c: 63: }
	movlw	low(01h)
	fcall	_lcd_cmd
	line	64
	
l27:	
	return
	callstack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,89
	global	_lcd_cmd

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 38 in file "main.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext12
__ptext12:	;psect for function _lcd_cmd
psect	text12
	file	"main.c"
	line	38
	
_lcd_cmd:	
;incstack = 0
	callstack 6
; Regs used in _lcd_cmd: [wreg]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	40
	
l1060:	
;main.c: 38:     lcd_cmd(0x06);;main.c: 39:     lcd_cmd(0x0C);;main.c: 40:     lcd_cmd(0x01);
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	41
	
l1062:	
;main.c: 41: }
	bcf	(6),0	;volatile
	line	42
	
l1064:	
;main.c: 42: 
	bcf	(6),1	;volatile
	line	43
	
l1066:	
;main.c: 43: void main(void)
	bsf	(6),2	;volatile
	line	44
;main.c: 44: {
	asmopt push
asmopt off
movlw	33
movwf	((??_lcd_cmd+0)+0+1)
	movlw	118
movwf	((??_lcd_cmd+0)+0)
	u797:
decfsz	((??_lcd_cmd+0)+0),f
	goto	u797
	decfsz	((??_lcd_cmd+0)+0+1),f
	goto	u797
	nop
asmopt pop

	line	45
	
l1068:	
;main.c: 45:     TRISB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	46
	
l18:	
	return
	callstack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
	signat	_lcd_cmd,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
