PROJECT=pot_test
MMCU=atmega32u4
F_CPU=16000000
PROGRAMMER=dfu

#LDFLAGS=-Wl,-u,vfprintf -lprintf_flt -lm
CDEFS=-DPWM_PORTA_UNUSED -DADC_HARDWARE=1 -DADC_PRESCALER_MASK=0x7

include ../../build/avr.mk
