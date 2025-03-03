/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on November 15, 2024, 7:47 PM
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

#define RS PORTBbits.RB0
#define RW PORTBbits.RB1
#define EN PORTBbits.RB2

void lcd_data(unsigned char data)
{
    PORTB = (data & 0xF0);
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(5);
    EN = 0;
    PORTB = ((data<<4) & 0xF0);
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(5);
    EN = 0;
}

void lcd_cmd(unsigned char cmd)
{
    PORTB = (cmd & 0xF0);
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(5);
    EN = 0;
    PORTB = ((cmd<<4) & 0xF0);
    RS = 0;
    RW = 0;
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
    lcd_cmd(0x28);      //4-Bit 2 Lines 5x7 Matrix
    lcd_cmd(0x06);      //Shift cursor to the right
    lcd_cmd(0x0C);      //Display ON, cursor OFF
    lcd_cmd(0x01);      //Clear LCD screen
}


void main(void) 
{
    
    TRISB = 0x00;
    
    lcd_init();
    while(1)
    {
    lcd_cmd(0x18);  //Shifting text to left
    lcd_cmd(0x8F);
    lcd_string("4-Bit",5);
    lcd_cmd(0xCF);
    lcd_string("LCD DISPLAY",11);
    }
    return;
}
