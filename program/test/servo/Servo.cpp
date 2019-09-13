#include "Servo.h"

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

	//Init the USB serial port for debugging.
	SerialUSB serialUSB;

	//Init the PWM timer, used for servo control
	volatile uint8_t *ports[1];
	uint8_t pins[1];
	ports[0] = &SERVO_PORT;
	pins[0] = SERVO_PIN;
	pwm_init(ports, pins, 1, 10000);

	//Flash a blue light for one second at startup - this shows us clearly if there has been a reset.
	PORTB &= ~_BV(5);
	_delay_ms(1000);
	PORTB |= _BV(5);

	uint16_t value = 1000;
	int8_t direction = 1;

	while(1){
		value += (direction * 10);
		if (value <= 1000 || value >= 2000){
			direction *= -1;
		}

		//Set the servo phase.  A servo expects a PWM signal with a phase of 1000us to 2000us (with a period of
		// 20000us).  This normally maps to a range of +/- 90 degrees, although that can differ based on the servo.
		pwm_set_phase(0, value);

		if (serialUSB.isConnected()){
			char temp[32];
			snprintf(temp, sizeof(temp), "Servo value: %d\n", value);
			serialUSB.write(temp);
		}

		//Flash a red heartbeat every 200ms
		PORTB ^= _BV(4);
		_delay_ms(200);
	}
}
