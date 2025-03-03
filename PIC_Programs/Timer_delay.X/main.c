/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 26 November, 2024, 11:01 AM
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

unsigned char Timer_count = 0;

void interrupt timer_0()
{
    if(INTCONbits.TMR0IF == 1)  //Checking if the timer overflow flag is set
    {
        Timer_count++;      //Incrementing every 10ms 
        INTCONbits.TMR0IF = 0;  //Manually resetting the timer overflow flag
    }
}

void main(void) 
{
    
    INTCONbits.GIE = 1;     //Enables Interrupt
    INTCONbits.PEIE = 1;    //Enables peripheral interrupt
    INTCONbits.TMR0IE = 1;  //Timer overflow interrupt bit Enable
    
    OPTION_REG = 0x07;      //00000111 (256 prescalar)
    
    TMR0 = 59;            //10ms 
    
    TRISB = 0x00;
    
    while(1)
    {
        if(Timer_count == 0)
        {
            PORTBbits.RB0 = 1;      //Turning on LED
        }
        if(Timer_count == 100)  //1 Sec
        {
            PORTBbits.RB0 = 0;      //Turning OFF LED
        }
        if(Timer_count == 200)
        {
            Timer_count = 0;
        }
    }
    
    return;
}
