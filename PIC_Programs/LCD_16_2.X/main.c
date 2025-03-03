/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 15 November, 2024, 6:45 PM
 */


#include <xc.h>
#include <stdio.h>

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

#define RS PORTBbits.RB0
#define RW PORTBbits.RB1
#define EN PORTBbits.RB2

void lcd_data(unsigned char data) 
{
    PORTC = data;
    RS = 1;     //Data
    RW = 0;     //Write
    EN = 1;
    __delay_ms(5);
    EN = 0;
    
}

void lcd_cmd(unsigned char cmd)
{
    PORTC = cmd;
    RS = 0;     //Command
    RW = 0;     //Write
    EN = 1;
    __delay_ms(5);
    EN = 0;
}

void lcd_string(unsigned char *str, unsigned int Num)
{
    unsigned int i;
    
    for(i=0;i<Num;i++)
    {
        lcd_data(str[i]);
    }
}

void lcd_init()
{
    lcd_cmd(0x38);      //Defining my lcd is 8-bit 16 characters 2 lines and 5x7 matrix
    lcd_cmd(0x06);      //Shift cursor to the right
    lcd_cmd(0x0C);      //Display ON, cursor OFF
    lcd_cmd(0x01);      //Clear LCD screen
}

void main(void) 
{
    TRISB = 0x00;   //Making all bits in portb as output
    TRISC = 0x00;   //Making all bits in portc as output
    
    lcd_init();
    unsigned char P_Var[10];
    while(1)
    {
        for(int i=0;i<100;i++)
        {
        lcd_cmd(0x80);      //printing Row 0, Column 7
        sprintf(P_Var,"Count: %d",i);
        
        lcd_string(P_Var,10);
        __delay_ms(500);   
        }
    }
    
    return;
}
