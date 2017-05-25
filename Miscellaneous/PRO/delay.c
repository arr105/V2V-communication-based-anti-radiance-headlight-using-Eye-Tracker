#include <pic.h>

#ifndef	XTAL_FREQ
#define	XTAL_FREQ	16	/* Crystal frequency in MHz */
#endif

#if	XTAL_FREQ == 16
	#define DelayUs(x) {				\
				unsigned char _dcnt;	\
				_dcnt = x;				\
				while(--_dcnt != 0) {	\
					NOP();				\
				} 						\
			}
#endif


void DelayMs(unsigned char);


//void main(){}


void DelayMs(unsigned char cnt) {
	unsigned char	i;
	do {
		i = 4;
		do {
			DelayUs(250);
		} while(--i);
	} while(--cnt);
}