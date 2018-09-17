#include "PHam.h"

#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include <SerialAVR.h>

#include "lib/analog/analog.h"

using namespace digitalcave;

//Reset WDT after system reset
void get_mcusr(void) __attribute__((naked))  __attribute__((used))  __attribute__((section(".init3")));
void get_mcusr(void) {
	MCUSR = 0;
	wdt_disable();
}

int main() __attribute__ ((noreturn));
int main(){
	// DISABLE JTAG - take control of F port
	MCUCR = _BV(JTD);
	MCUCR = _BV(JTD);
	
	//Init the serial port for debugging
	SerialAVR serial(38400, 8, 0, 1, 1, 128);
	
	//Turn on PORT B4 and B5 for output
	DDRB |= _BV(4) | _BV(5);
	
	//Init ADC pins with reference of AVCC (with external cap at AREF).
	uint8_t analog_pins[1];
	analog_pins[0] = 0;		//F0
	analog_init(analog_pins, 1, ANALOG_AVCC);
	
	PORTB |= _BV(5);
	_delay_ms(100);
	PORTB &= ~_BV(5);
	
	//Enable watchdog timer
	wdt_enable(WDTO_500MS);

	while(1){
		wdt_reset();
//		serial.write("Foo\n");
		PORTB ^= _BV(4);
		_delay_ms(100);
	}
}
