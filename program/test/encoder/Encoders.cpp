#include "Encoders.h"

using namespace digitalcave;

ButtonAVR button1(&PORTC, PORTC6, 30, 25, 800, 500);
static volatile int8_t encoder_ui_movement = 0;
static volatile int8_t encoder_cyl_movement = 0;

Encoders::Encoders(){
	PCICR |= _BV(PCIE0);												//Enable pin change interrupts for encoders
	PCMSK0 |= 0x0F;														//Enable bits 0..3 for pin change interrupts
	PORTB |= _BV(PORTB0) | _BV(PORTB1) | _BV(PORTB2) | _BV(PORTB3);		//Pullups on 0..3
}

int8_t Encoders::get_encoder_ui_movement(){
	double result = encoder_ui_movement;
	encoder_ui_movement = 0;
	return result;
}

int8_t Encoders::get_encoder_cyl_movement(){
	double result = encoder_cyl_movement;
	encoder_cyl_movement = 0;
	return result;
}

ISR(PCINT0_vect){
	static uint8_t encoder_ui = 0x00;
	static uint8_t encoder_cyl = 0x00;

	encoder_ui = ((encoder_ui << 2) | (PINB & 0x03)) & 0x0F;
	encoder_cyl = ((encoder_cyl << 2) | ((PINB >> 2) & 0x03)) & 0x0F;

	switch(encoder_ui){
		case 0x01:
		case 0x07:
		case 0x08:
		case 0x0E:
			encoder_ui_movement--;	//Counter Clockwise
			break;
		case 0x02:
		case 0x04:
		case 0x0B:
		case 0x0D:
			encoder_ui_movement++;	//Clockwise
			break;
	}

	switch(encoder_cyl){
		case 0x01:
		case 0x07:
		case 0x08:
		case 0x0E:
			encoder_cyl_movement--;	//Counter Clockwise
			break;
		case 0x02:
		case 0x04:
		case 0x0B:
		case 0x0D:
			encoder_cyl_movement++;	//Clockwise
			break;
	}
}
