#include <avr/io.h>
#include <util/delay.h>

// pins
#define IRED 0
#define OPTO 2

// remote codes
#define REM1 0xE0
#define REM2 0xE0
#define REM3 0x36
#define REM4 0xC9

// stages
#define STRT_LO 0
#define STRT_HI 1
#define DATA_LO 2
#define DATA_HI 3

// vars
uint8_t read = 0;
uint8_t last = (0xFF & (1<<IRED));
uint8_t count = 0;
uint8_t stg = STRT_LO;
uint8_t signal[4] = {0,0,0,0};
uint8_t pos = 0;
uint8_t bit = 0;

// runs code is recieved
void action() {	
	if((signal[0]==REM1)&&(signal[1]==REM2)&&(signal[2]==REM3)&&(signal[3]==REM4)) {
		PORTB &= ~(1<<OPTO); // output lo, opto on
		_delay_ms(125);
		PORTB |= (1<<OPTO); // output hi, opto off
		_delay_ms(625);
	}
}

void main() {
	DDRB = (0x00 | (1<<OPTO)); // all input except opto port
	PORTB = (0x00 | (1<<OPTO)); // all low by default except opto port
	while(1) {
		// delay between pulses
		_delay_us(27);
		// check signal
		read = PINB & (1<<IRED);
		// same signal
		if(read==last) {
			count++;
		// signal changed
		} else {
			// intermediate stgs
			if(((stg==STRT_LO)&&(last==0)&&(count>90)&&(count<110)) ||
			   ((stg==STRT_HI)&&(last!=0)&&(count>90)&&(count<110)) ||
			   ((stg==DATA_LO)&&(last==0)&&(count> 9)&&(count< 18)) ) {
				stg++;
			// data
			} else if((stg==DATA_HI)&&(last!=0)&& ( ((count>9)&&(count<18)) || ((count>33)&&(count<45)) ) ) {
				stg=DATA_LO;
				// append data to signal buffer
				signal[pos] = (signal[pos]<<1);
				if((count>33)&&(count<45)) signal[pos] = signal[pos] | 0x01;
				// advance signal counter
				bit++;
				if(bit==8) {
					bit = 0;
					pos++;
					// sequence finished
					if(pos==4) {
						action();
						stg = 0;
						pos = 0;
					}
				}
			// corrupt data
			} else {
				stg = 0;
				bit = 0;
				pos = 0;
			}
			// change signal type reset counter
			last = read;
			count = 0;
		}
	}
}
