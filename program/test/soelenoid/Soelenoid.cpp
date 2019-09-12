#include "Soelenoid.h"

#include <stdio.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialUSB.h>

using namespace digitalcave;

int main() __attribute__ ((noreturn));
int main(){
	// Disable JTAG so we can use PORTF
	MCUCR = _BV(JTD);
	MCUCR = _BV(JTD);

	//Turn on PORT B4 and B5 for output
	DDRB |= _BV(4) | _BV(5);
	PORTB |= _BV(4);

	//Set the pin controlling the soelenoid to output
	SOELENOID_DDR |= _BV(SOELENOID_PIN);

	//Init the USB serial port for debugging.
	SerialUSB serialUSB;

	//Flash a blue light for one second at startup - this shows us clearly if there has been a reset.
	PORTB &= ~_BV(5);
	_delay_ms(1000);
	PORTB |= _BV(5);

	while(1){
		if (serialUSB.isConnected()){
			serialUSB.write("Toggle Soelenoid\n");
		}

		//Flash a red heartbeat and toggle soelenoid every 1000ms
		PORTB ^= _BV(4);
		SOELENOID_PORT ^= _BV(SOELENOID_PIN);

		_delay_ms(1000);
	}
}
