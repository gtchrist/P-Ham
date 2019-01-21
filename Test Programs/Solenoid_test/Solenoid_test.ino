/*
  Solenoid Test

  Turns the solenoid pin on for .25 of a second, then off for five seconds, repeatedly. 
  Also turns the built in LED on and off in sync with the solenoid.

  modified 19 Jan 2019
  by Tyler Christensen

*/

int SolenoidPin = 4;

void setup() {
  // initialize digital pin LED_BUILTIN and F4 as outputs.
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(SolenoidPin, OUTPUT);
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(SolenoidPin, HIGH);            // turn on the solenoid port
  delay(250);                        // wait for 0.25s
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(SolenoidPin, LOW);             // turn the solenoid port off
  delay(5000);                       // wait for a second
}
