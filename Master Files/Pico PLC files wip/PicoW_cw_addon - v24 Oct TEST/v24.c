//////////////////////////////// sketch section ////////////////////////////////
//    v24                                    //
//    SERIAL COM's                           //

//https://forums.pimoroni.com/t/program-the-pico-explorer-with-arduino-ide/17983//

//https://github.com/cygig/TimerEvent/blob/master/examples/ThreeTimers/ThreeTimers.ino//

// Pico-explorer cw Oled - Remapped OpenPLC I/O  Maybe// 

// Currently works with Arduino terminal  //           

#include <TimerEvent.h>



const unsigned int timerOnePeriod = 997;
//const unsigned int timerOnePeriod = 667;


String tempy;

// Create a TimerEvent instance

TimerEvent timerOne;



// This function will be called every timerOnePeriod

void timerOneFunc(){

  //Serial1.print("<< Timer One >> Random Number: ");

  //Serial1.print(random(100));

  //Serial1.print(" (Update in ");

  //Serial1.print(timerOnePeriod);

  //Serial1.println("ms)\n");
  

  tempy = "A0 = "+String(Val1)+","+"A1 = "+String(Val2)+","+"C0 = "+String(Val3)+","+"C1 = "+String(Val4)+","+"PWM = "+String(Val5)+",";
  Serial1.print(tempy);
  //Serial1.print(" =A0 C1= "); 
  //Serial1.print(Val3);
  Serial1.println(" ..(raw)"); 
}




void sketch_setup() {

  Serial1.begin(115200);  

  randomSeed( (unsigned long)( micros()%millis() ) );



  // Set the interval timing as well as pass the function name

  timerOne.set(timerOnePeriod, timerOneFunc);
}




void sketch_loop() {

 // Remember to run the update() function in loop()!

  timerOne.update();
}





