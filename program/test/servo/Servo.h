#ifndef SERVO_H
#define SERVO_H

#include <util/delay.h>
#include <avr/io.h>
#include <pwm.h>

#define DEBUG

//The pin used to toggle the soelenoid
#define SERVO_PORT			PORTC
#define SERVO_PIN			PORTC7

#endif
