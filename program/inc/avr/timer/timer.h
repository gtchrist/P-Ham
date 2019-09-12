#ifndef TIMER_H
#define TIMER_H

#include <avr/io.h>
#include <avr/interrupt.h>

#if defined (__cplusplus)
extern "C" {
#endif

#ifndef TIMER_BITS
#define TIMER_BITS 64
#endif

/*
 * Initializes the timer, and resets the timer count to 0.  Sets up the ISRs
 * linked with timerX.
 */
void timer_init();

/*
 * Returns the number of milliseconds which have elapsed since the
 * last time timer_init() was called.  Overflows after about 49 days (64 bits).
 */
#if TIMER_BITS == 64
uint64_t timer_millis();
#elif TIMER_BITS == 32
uint32_t timer_millis();
#endif

/*
 * Returns the number of microseconds which have elapsed since the
 * last time timer_init() was called.  Overflows after about 71 minutes (64 bits).
 */
#if TIMER_BITS == 64
uint64_t timer_micros();
#elif TIMER_BITS == 32
uint32_t timer_micros();
#endif

#if defined (__cplusplus)
}
#endif

#endif
