/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 5 December, 2024, 6:48 PM
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

#define RS PORTBbits.RB0
#define RW PORTBbits.RB1
#define EN PORTBbits.RB2

unsigned int adc, temp;

float temperature, adc1;

unsigned int a,b,c,d,e,f;


void lcd_data(unsigned char data)
{
    PORTC = data;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(10);
    EN = 0;
}

void lcd_cmd(unsigned char cmd)
{
    PORTC = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(10);
    EN = 0;
}

void lcd_string(unsigned char *str, unsigned int n)
{
    for(int i=0;i<n;i++)
    {
        lcd_data(str[i]);
    }
}

void lcd_initialization()
{
    lcd_cmd(0x38);
    lcd_cmd(0x06);
    lcd_cmd(0x0C);
    lcd_cmd(0x01);
}

void __interrupt() temp_sen()
{
    if(PIR1bits.ADIF == 1)  //A/D conversion is completed
    {
        adc = (ADRESH<<8);   //adc = xxxx xxxx 0000 0000
        adc = adc + ADRESL; //adc = xxxx xxxx xxxx xxxx
        
        PIR1bits.ADIF = 0;  //Resetting interrupt flag
    }
}

void main(void) 
{
    INTCONbits.GIE = 1; //Global interrupt enable
    INTCONbits.PEIE = 1;    //Enable peripheral interrupt
    
    PIE1bits.ADIE = 1;  //Enabling A/D interrupt
    
    TRISB = 0x00;   //LCD Control bits as output
    
    TRISC = 0x00;   //LCD Data bits as output
    
    lcd_initialization();
    
    lcd_cmd(0x80);  //Column 0 & Row 0
    
    lcd_string("Temp: ",6);
    
    ADCON0 = 0x41;  //2.5MHz, CH0 (AN0), ADON
    ADCON1 = 0x8E;  //Right justify, AN0 as Analog
    
    while(1)
    {
        ADCON0 = ADCON0 | (0x04);     //0000 0100 Start the A/D conversion
        
        adc1 = adc / 2.046; //Get the accurate temperature value
        
        temperature = adc1 *100;    //Getting decimal values    //2548
        
        lcd_cmd(0x89);  //Column 9 Row 0
        
        a = (int)temperature/10;     //254
        
        b = (int)temperature%10;     //8
        
        c = a%10;               //4
        
        d = a/10;               //25
        
        e = d%10;               //5
        
        f = d/10;               //2
        
        //fe.cb
        
        lcd_data(f+0x30);   //Converting into string
        lcd_data(e+0x30);
        lcd_data('.');
        lcd_data(c+0x30);
        lcd_data(b+0x30);
        
        
    }
    
    
    
    return;
}
