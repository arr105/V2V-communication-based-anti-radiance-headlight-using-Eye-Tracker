#include<pic.h>
#include"delay.c"
#include"adc_driver.c"
#include"lcd_driver.c"

__CONFIG(0x1932);


void main()
	{	
	unsigned int i;
	TRISA = 0xff;		//LDR 
	TRISB = 0xf0;		//INPUT RF  and output
	TRISC = 0x00;		
   	PORTC= 0x00;
	//TMR0Init();
	//T2CON=0x06;
	//CCP2CON=0x0c;
	setup_lcd_port();
	lcd_init();
	adc_init();
	lcd_goto_pos(1);
	lcd_puts("HIWAY LIGHT");
	DelayMs(250);
	DelayMs(250);
	DelayMs(250);
	DelayMs(250);
	lcd_clrscr();

		   	lcd_goto_pos(1);
			lcd_puts("Eye:");
		   	lcd_goto_pos(17);
			lcd_puts("L1:       L2:");
		while(1)
            {
			RC0=1;
			RC1=0;
			adc_channel(0);
			i = adc_res();
			DelayMs(250);
                        DelayMs(250); 
			lcd_goto_pos(1);
			lcd_putn(i);
          		DelayMs(250);
                        DelayMs(250); 
			
			if(RC4==0)  // light sensor
			{
			RB0=1;
			if(i> 150)			// RF send information to another car
			{
			RB0=1;
			}
			if(RB4==0)
			{
			RC0=0;
			RC1=1;
			
			}
			

			}
}
