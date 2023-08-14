class Raket {

  //Attributter / Tilstand
  int bang =0;
  float lunte =6.0;
  color farver;
  float xpos, ypos;
  int radius=10;


  //konstruktør

  Raket(int b, float l, color f) {
    bang = b;
    lunte = l;
    farver = f;
    setPos(0, 800);
  }

  void visRaket() {
    fill(farver);
    circle(xpos, ypos, radius);
  
}


void setPos(float x, float y) {

  xpos=x;
  ypos=y;
}

void moveRaket() {



  if (xpos>= width/2 && ypos <= height/2) {
    radius++;
    farver=farver+10;
  } else {
    xpos++;
    ypos--;
  }
}
}
