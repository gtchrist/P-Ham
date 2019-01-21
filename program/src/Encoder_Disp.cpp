#include "Encoder_Disp.h"

using namespace digitalcave;

static volatile int16_t encoder1_movement = 0;

Encoder_Disp::Encoder_Disp(){
	PCICR |= _BV(PCIE0);												//Enable pin change interrupts for encoders
	PCMSK0 |= 0x03;														//Enable bits 0..3 for pin change interrupts
	PORTB |= _BV(PORTB0) | _BV(PORTB1);		//Pullups on 0..3
}

int16_t Encoder_Disp::get_encoder1_movement(){
	double result = encoder1_movement;
	encoder1_movement = 0;
	return result;
}




ISR(PCINT0_vect){
	static uint8_t encoder1 = 0x00;

	encoder1 = ((encoder1 << 2) | (PINB & 0x03)) & 0x0F;

	switch(encoder1){
		case 0x01:
		case 0x07:
		case 0x08:
		case 0x0E:
			encoder1_movement--;	//Counter Clockwise
			break;
		case 0x02:
		case 0x04:
		case 0x0B:
		case 0x0D:
			encoder1_movement++;	//Clockwise
			break;
	}

}
