/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 25 November, 2024, 10:53 AM
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


void __interrupt() Ext_PB() //ISR - Interrupt Sub Routine
{
    if(INTCONbits.INTF == 1)    //Checking if External Interrput occured
    {
        PORTCbits.RC0 = ~PORTCbits.RC0;     //Toggling RB0
        INTCONbits.INTF = 0;    //Resetting Interuppt flag
    }
}


void main(void) 
{
    INTCONbits.GIE = 1;     //Enabling Interrupts
    INTCONbits.PEIE = 1;    //Enables Peripheral Interrupts
    INTCONbits.INTE = 1;    //Enables the RB0/INT external interrupt
    
    OPTION_REGbits.INTEDG = 1;  //Interrupt on Raising Edge
    
    TRISC = 0x00;   //Entire port c as Output
    
    while(1)
    {
        
    }
    
    return;
}
