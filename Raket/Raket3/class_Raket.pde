class Raket{
  PVector lokation = new PVector(10,height);
  PVector velocity;
  
  
  //Attributter / Tilstand
  int bang =int(random(100, 250));
  float lunte = ;
  color farver;
  int r= int(random(256));
  int g= int(random(256));
  int b= int(random(256));
  int alfa = 255;
  float angle = int(random(1,7));
  int radius=10;
  
  
  
  //konstruktør
  
  Raket(){
 velocity = new PVector (angle, -3);
  
  }
  
  void visRaket(){
   fill(farver);
     circle(lokation.x,lokation.y,radius);
    
  
  }
  
  
  
  
  void moveRaket(){
  
 lokation.add(velocity);
    if (lokation.y < bang) { 
      velocity.x=0.8;
      velocity.y=-0.1;
      
    }
 
 }

  
  
  boolean done(){
if(lokation.y < bang){
return true;
}
return true;
}
  
  
  void flyvRaket(){
  
    moveRaket();
    if(done()){
    eksploderRaket();
    }
    else{
    visRaket();
    }
  }
    
    void reset() {


    // farver RGB og opauqe værdi alfa
    r=int(random(256));
    g=int(random(256));
    b=int(random(256));
    alfa=255;

    bang = int(random(100, 400));
    lunte= int(random(1, 10));
    angle=int(random(1, 7));
    
   
    lokation = new PVector(0, height);
    velocity = new PVector(angle, -3);
    radius=5;
    }
    
    
  void eksploderRaket(){
  
  }
  
  }
  


/**************************/
class Raket1 extends Raket {

   void eksploderRaket(){
  noStroke();
  if( radius < 500){
  fill(farver);
  radius++;
  circle(lokation.x, lokation.y, radius);
  alfa--;
  }
  stroke(2);
  }

}



/***************************/

class Raket2 extends Raket {

  void eksploderRaket() {

    pushMatrix();
    translate(lokation.x, lokation.y);
    stroke(r, b, g, alfa);

    for (int i=0; i<TWO_PI; i++) {
      fill(r, g, b, alfa);
      rect(0, 0, 0, 1*i);
      rotate(1);
    }
    popMatrix();
    
    alfa--;
  }
}
