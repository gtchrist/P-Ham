#include "PHam.h"

#include <stdio.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialUSB.h>

#include "lib/analog/analog.h"
#include "lib/pwm/pwm.h"

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

	//Init the PWM timer
	volatile uint8_t *ports[1];
	uint8_t pins[1];
	ports[0] = &SERVO_PORT;
	pins[0] = SERVO_PIN;
	pwm_init(ports, pins, 1, 10000);

	//Flash a blue light for one second at startup - this shows us clearly if there has been a reset due to WDT or something.
	PORTB &= ~_BV(5); // turns off bit 5
	_delay_ms(1000);
	PORTB |= _BV(5); // turns on bit 5 (light is inverse of expected)

	//Enable watchdog timer
	wdt_enable(WDTO_500MS);
	uint16_t value = analog_read_p(0);

	while(1){
		wdt_reset();
		value = analog_read_p(0)  & 0X3FC;
		if (serialUSB.isConnected()){
			char temp[32];
			snprintf(temp, sizeof(temp), "ADC: %d\n", value);
			serialUSB.write(temp);
		}

		//The ADC value is a 10 bit value; a servo PWM signal has a phase from 1000us to 2000us (with a period of 20000us).
		// A 10 bit value is slightly over spec, but a) most servos accept overdriven values anyway, and b) this is just a test.
		pwm_set_phase(0, 1000 + value);

		//Flash a heartbeat every 200ms
		PORTB ^= _BV(4);
		_delay_ms(400);
	}
}
