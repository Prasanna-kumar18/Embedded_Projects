/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 27 November, 2024, 7:21 PM
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


void interrupt timer_led()
{
    if(INTCONbits.TMR0IF == 1)      //Checking the interrupt is occurred
    {
        Timer_count++;
        
        INTCONbits.TMR0IF = 0;      //Resetting timer overflow flag
    }
}



void main(void) 
{
    INTCONbits.GIE = 1;     //Enabling all interrupts
    INTCONbits.PEIE = 1;    //Pheripheral Interrupt enable
    INTCONbits.TMR0IE = 1;  //Enable Timer 0 interrupt
    
    OPTION_REG = 0x07;  //00000111  Prescalar as 256
    
    TMR0 = 59;  //10ms
    
    TRISB = 0x00;   //LED as output
    
    while(1)
    {
        if(Timer_count == 0)
        {
            PORTBbits.RB0 = 1;      //Initially LED is on
        }
        if(Timer_count == 100)  //1 Second delay
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
