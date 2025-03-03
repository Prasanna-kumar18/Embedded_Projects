/*
 * File:   main.c
 * Author: Prasanna
 *
 * Created on 6 December, 2024, 6:49 PM
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

void interrupt pot_val()
{
    if(PIR1bits.ADIF == 1)  //Checking if the conversion is done
    {
        adc = (ADRESH << 8);
        
        adc = adc + ADRESL; //0000 00XX XXXX XXXX
        
        PIR1bits.ADIF = 0;
    }
}



void main(void) 
{
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    
    PIE1bits.ADIE = 1;  //A/D INterrupt Enable
    
    TRISB = 0x00;
    TRISC = 0x00;
    
    lcd_initialization();
    
    lcd_cmd(0x80);      //Column 0 Row 0
    lcd_string("POT Value: ",11);   
    
    ADCON0 = 0x41;  //2.5MHz, CH0, ADON
    ADCON1 = 0x8E;  //Right Justify, AN0 (Analog)
    
    while(1)
    {
        ADCON0 = ADCON0 | (0x04);   //Start conversion of ADC
        
        lcd_cmd(0x8C);  //Row 0 Column 13
        
        //ADC = 1023
        
        a = adc/10;     //102
        
        b = adc%10;     //3
        
        c = a%10;       //2
        
        d = a/10;       //10
        
        e = d%10;       //0
        
        f = d/10;       //1
        
        //fecb
        
        lcd_data(f+0x30);
        
        lcd_data(e+0x30);
        
        lcd_data(c+0x30);
        
        lcd_data(b+0x30);
            
    }
    
    
    return;
}
