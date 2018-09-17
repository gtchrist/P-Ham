#include "PHam.h"

#include <stdio.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialUSB.h>

#include "lib/analog/analog.h"

using namespace digitalcave;

int main() __attribute__ ((noreturn));
int main(){
	// Disable JTAG so we can use PORTF
	MCUCR = _BV(JTD);
	MCUCR = _BV(JTD);
	
	//Turn on PORT B4 and B5 for output
	DDRB |= _BV(4) | _BV(5);
	PORTB |= _BV(4);
	
	//Init the USB serial port for debugging.
	SerialUSB serialUSB;
	
	//Init ADC pins with reference of AVCC (with external cap at AREF).
	uint8_t analog_pins[1];
	analog_pins[0] = 0;		//F0
	analog_init(analog_pins, 1, ANALOG_AVCC);
	
	PORTB &= ~_BV(5);
	_delay_ms(1000);
	PORTB |= _BV(5);
	
	//Enable watchdog timer
	wdt_enable(WDTO_500MS);

	while(1){
		wdt_reset();
		if (serialUSB.isConnected()){
			char temp[32];
			snprintf(temp, sizeof(temp), "ADC: %d\n", analog_read_p(0));
			serialUSB.write(temp);
		}

		PORTB ^= _BV(4);
		_delay_ms(100);
	}
}
