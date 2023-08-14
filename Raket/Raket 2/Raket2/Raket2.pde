Raket r;
Raket r2;

 import processing.sound.*;
SoundFile firework;

void setup(){
r = new Raket(5,10.0,#b4282d);
r2 = new Raket(5,10.0,#20afe3);

 firework = new SoundFile(this, "firework.wav");
   

size(800,800);

r2.xpos=200;
}



void draw(){
background(225);
  noStroke();
  


r.visRaket();

r.moveRaket();


r2.visRaket();

r2.moveRaket();


}
