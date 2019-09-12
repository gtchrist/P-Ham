#ifndef SOELENOID_H
#define SOELENOID_H

#include <util/delay.h>
#include <avr/io.h>

#define DEBUG

//The pin used to toggle the soelenoid
#define SOELENOID_PORT			PORTF
#define SOELENOID_DDR			DDRF
#define SOELENOID_PIN			PORTF4

#endif
