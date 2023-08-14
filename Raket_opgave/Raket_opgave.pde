Raket r;
Raket r2;


void setup(){
r = new Raket(5,10.0,#b4282d);
r2 = new Raket(5,10.0,#20afe3);
r2.xpos=100;

size(800,800);


}



void draw(){
background(225);
  
  


r.visRaket();
r.moveRaket();

r2.visRaket();
r2.moveRaket();





}
