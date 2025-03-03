/*
 * File:   led.c
 * Author: intel
 *
 * Created on 24 March, 2020, 10:42 AM
 */

#include <xc.h>
#define _XTAL_FREQ 20000000
// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

unsigned char y=0;
void interrupt RECEIVE()
{
if(PIR1bits.RCIF == 1)
{
	y = RCREG;
 PIR1bits. RCIF = 0;
}
}




void main()
{
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	PIE1bits.RCIE = 1;
	    
	    TXSTA=0X24;
        RCSTA=0X90;

	     SPBRG = 129; 

	TRISC = 0x80;
	TRISB = 0x00;
	while(1)
	{
		if(y == 'a')
		{
			PORTBbits.RB0 = 1;
		}
		if(y == 'b')
		{
			PORTBbits.RB0 = 0;
		}
	}
}