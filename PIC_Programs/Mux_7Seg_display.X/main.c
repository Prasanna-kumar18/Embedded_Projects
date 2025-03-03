/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 8 November, 2024, 7:05 PM
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


/*
 D1 - PB0
 D2 - PB1
 D3 - PB2
 D4 - PB3
  
 a-h - PC0 to PC7
 
 */


void main(void) 
{
    unsigned char segment[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
    
    unsigned int digits[4];
    
    
    
    
    TRISB = 0;  //Enabling all the bits in port B as output
    TRISC = 0;  //Enabling all the bits in port C as output
    
    while(1)
    {
        unsigned int Numbers = 1000;
        unsigned int i =3;
        
        while(Numbers!=0)
        {
            digits[i] = Numbers%10;  //4
            Numbers = Numbers/10;
            
            i--;
        }
        
        Numbers--;
        
        PORTB = 0x01;   //Enabling D1
        
        PORTC = segment[digits[3]]; //2
        
        __delay_ms(50);
        
        PORTB = 0x02;   //Enabling D2
        
        PORTC = segment[digits[2]]; //0
        
        __delay_ms(50);
        
        PORTB = 0x04;   //Enabling D3
        
        PORTC = segment[digits[1]]; //2
        
        __delay_ms(50);
        
        PORTB = 0x08;   //Enabling D4
        
        PORTC = segment[digits[0]]; //4
        
        __delay_ms(50);
        
    }
    
    
    return;
}
