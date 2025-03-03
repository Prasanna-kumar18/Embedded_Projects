/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 21 November, 2024, 7:21 PM
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

void main(void) 
{
    
    TRISB = 0x01;   //RB0 as Input(Push Button) & RB1 as Output (Relay)
    
    if(PORTBbits.RB0 == 1)  //Checking the push button status
    {
        PORTBbits.RB1 = 1;  //Turning ON the relay
    }
    else
    {
        PORTBbits.RB1 = 0;  //Turning OFF the relay
    }
        
        
    return;
}
