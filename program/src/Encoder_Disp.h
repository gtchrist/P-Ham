#ifndef ENCODER_DISP_H
#define ENCODER_DISP_H

#include <avr/interrupt.h>

extern "C" void PCINT0_vect()		__attribute__ ((signal));

namespace digitalcave {

	class Encoder_Disp {
		private:

		public:
			//Normally these would be instance variables.  However, due to
			// the intersection of ISRs and C++ classes, they have to be
			// class variables.
			//TODO Try to make this private, using 'friend' keyword
			//static volatile uint8_t encoder_movement = 0;

			Encoder_Disp();

			int16_t get_encoder1_movement();

			friend void PCINT0_vect();
	};
}

#endif
