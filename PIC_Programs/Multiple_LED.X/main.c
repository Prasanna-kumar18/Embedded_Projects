/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 5 November, 2024, 7:55 PM
 */

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = ON          // Flash Program Memory Code Protection bit (All program memory code-protected)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 20000000 //Frequency as 20MHz

#include <xc.h>

void main(void) 
{
    
    TRISB = 0;     //Setting entire port B as output
 
    while(1)
    {
        
    PORTB = 0xAA;  //Turn on my entire port B
    
    __delay_ms(1000);
    
    PORTB = 0x55;  //Turn off my entire port B
    
    __delay_ms(1000);
    
    }
    
   
}
