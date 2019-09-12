#ifndef ENCODERS_H
#define ENCODERS_H

#include <avr/interrupt.h>

#include <Button/ButtonAVR.h>

extern "C" void PCINT0_vect()		__attribute__ ((signal));

namespace digitalcave {

	class Encoders {
		private:

		public:
			//Normally these would be instance variables.  However, due to
			// the intersection of ISRs and C++ classes, they have to be
			// class variables.
			//TODO Try to make this private, using 'friend' keyword
			//static volatile uint8_t encoder_movement = 0;

			Encoders();

			int8_t get_encoder_ui_movement();
			int8_t get_encoder_cyl_movement();

			friend void PCINT0_vect();
	};
}

#endif
