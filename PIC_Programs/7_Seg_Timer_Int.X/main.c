/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 2 December, 2024, 7:02 PM
 */


#include <xc.h>

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

unsigned int Number = 0;    //Number to display 0-1000
unsigned char digit[4];     //To store individual digits

unsigned char seg[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

unsigned int timer_count = 0;

void __interrupt() sev_seg()
{
    if(INTCONbits.TMR0IF == 1)  //Checking timer overflow interrupt flag
    {
        if(timer_count == 0)
        {
            PORTB = 0x01;   //0000 0001 //D4
            PORTC = seg[digit[0]];
        }
        if(timer_count == 1)
        {
            PORTB = 0x02;   //0000 0010 //D3
            PORTC = seg[digit[1]];
        }
        if(timer_count == 2)
        {
            PORTB = 0x04;   //0000 0100 //D2
            PORTC = seg[digit[2]];
        }
        if(timer_count == 3)
        {
            PORTB = 0x08;   //0000 1000 //D1
            PORTC = seg[digit[3]];
        }
        
        timer_count++;
        
        if(timer_count>3)
        {
            timer_count = 0;
        }
        
        INTCONbits.TMR0IF = 0;
    }
}

void main(void) 
{
    TRISB = 0x00;
    TRISC = 0x00;
    
    //Interrupt config
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.TMR0IE = 1;
    
    //Set the prescalar and timer load value
    
    OPTION_REG = 0x07;  //256 prescalar
    
    TMR0 = 59;  //10ms
    
    while(1)
    {
        //Number = 0
        digit[0] = Number/1000; //1
        digit[1] = (Number/100)%10; //0
        digit[2] = (Number/10)%10; //0
        digit[3] = (Number%10);  //0
                
        Number++;
                
        if(Number == 1000)
        {
            Number=0;   //Resetting the number
        }
        
        __delay_ms(500);
    }
    
    return;
}
