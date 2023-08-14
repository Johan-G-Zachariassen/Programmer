

 import processing.sound.*;
SoundFile firework;

Raket1 r1;
Raket2 r2;

void setup(){
r1 = new Raket1();
r2 = new Raket2();

 firework = new SoundFile(this, "firework.wav");
   

size(800,800);

r2.lokation.x=200;
}


void draw(){
background(225);
  

r1.flyvRaket();


r2.flyvRaket();


}
