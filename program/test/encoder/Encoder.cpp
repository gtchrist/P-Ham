#include "Encoder.h"

#include <stdio.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialUSB.h>

#include "Encoders.h"

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

	Encoders encoders;

	//Flash a blue light for one second at startup - this shows us clearly if there has been a reset.
	PORTB &= ~_BV(5);
	_delay_ms(1000);
	PORTB |= _BV(5);

	while(1){
		int16_t encoder_ui = encoders.get_encoder_ui_movement();
		int16_t encoder_cyl = encoders.get_encoder_cyl_movement();

		if (serialUSB.isConnected()){
			char temp[64];
			snprintf(temp, sizeof(temp), "Encoder offsets: UI: %d, Cylynder: %d\n", encoder_ui, encoder_cyl);
			serialUSB.write(temp);
		}

		//Flash a red heartbeat every 200ms
		PORTB ^= _BV(4);
		_delay_ms(200);
	}
}
