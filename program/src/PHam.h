#ifndef PHAM_H
#define PHAM_H

#include <util/delay.h>
#include <avr/io.h>

#define DEBUG

//The port / pin to be used for the servo
#define SERVO_PORT			PORTC
#define SERVO_PIN			6

//The ADC pin to be used for the pedal.  ADC 0 is pin F0
#define ANALOG_PIN			0

#endif
