/*-----------------------------------------------------------*/
//TITLE : V2V COMMUNICATION BASED ANTI-RADIANCE HEADLIGHT USING EYE TRACKER

//Connections:
//ADC0: eye blinking
//RB0,1,2,3: RF TX

/*-----------------------------------------------------------*/
#include <pic.h>
#include "delay.c"
#include "lcd_driver.c"
#include "adc_driver.c"

__CONFIG(0x1932);

void main()
{
unsigned char s1;


TRISC=0x00;
PORTC=0x00;


TRISB=0xf0;
PORTB=0x00;


setup_lcd_port();
adc_init();
lcd_init();

lcd_goto_pos(1);
lcd_puts("V2V COMM");
lcd_goto_pos(17);
lcd_puts("ANTIRAD HEADLAMP");
DelayMs(250);
DelayMs(250);
DelayMs(250);
DelayMs(250);


lcd_clrscr();
lcd_goto_pos(1);
lcd_puts("EYE:");
lcd_goto_pos(8);
lcd_puts("LIGHT:");

while(1)
{
RC0=1;
RC1=0;
adc_channel(0);
s1=adc_res_10_bit();
DelayMs(250);
DelayMs(250);
lcd_goto_pos(5);
lcd_putn(s1);
DelayMs(250);
DelayMs(250);

if(RC4==0)
{
lcd_goto_pos(15);
lcd_puts("DET");
DelayMs(250);
DelayMs(250);
}
else
{
lcd_goto_pos(15);
lcd_puts("NDE");
DelayMs(250);
DelayMs(250);
}

if(RC4==0 && s1>150)  // light sensor
{
RB0=1;		// RF send information to another car
}
if(RC4==0 || s1>150)
{
RB0=1;
}
if(RB4==0)			
{
RC0=0;
RC1=1;
DelayMs(250);
DelayMs(250);
lcd_clrscr();
lcd_goto_pos(1);
lcd_puts("YOUR LIGHT HAS");
lcd_goto_pos(17);
lcd_puts("BEEN MADE DIM");
}
}
}



