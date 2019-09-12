#include "Potentiometer.h"

#include <stdio.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialUSB.h>

#include <analog/analog.h>

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
	analog_pins[0] = ANALOG_PIN;
	analog_init(analog_pins, 1, ANALOG_AVCC);

	//Flash a blue light for one second at startup - this shows us clearly if there has been a reset.
	PORTB &= ~_BV(5);
	_delay_ms(1000);
	PORTB |= _BV(5);

	while(1){
		uint16_t value = analog_read_p(0)  & 0X3FC;
		if (serialUSB.isConnected()){
			char temp[32];
			snprintf(temp, sizeof(temp), "ADC: %d\n", value);
			serialUSB.write(temp);
		}

		//Flash a red heartbeat every 200ms
		PORTB ^= _BV(4);
		_delay_ms(200);
	}
}
