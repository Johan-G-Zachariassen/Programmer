class Room {
  //klssens tilstand
  
  boolean light; //er lyset tændt eller slukket
  String name; // rummets navn
  float xPos, yPos; // x og y pos for rummets øverste venstre hjørne
  int height = 100; // konstant højden på rummet
  int width = 100; // konstant bredden på rummet
  

  //konstruktør
  Room(String n, boolean onOff, float x, float y) {
    name = n; 
    light = onOff;
    xPos = x;
    yPos = y;
    
  }

  // settters
  void setLight(boolean l) {
    light = l;
  }

  void setName(String n) {
    name = n;
  }

  // getters
  boolean isLightOn() {
    return light;
  }

  String getRoomName() {
    return name;
  }

  void drawRoom() {
    if (light)
      fill(204);
    else
      fill(100);
    //the upper-left corner, the third sets the width, and the fourth sets the height.
    rect(xPos, yPos, width, height);
    textSize(15);
    fill(250);
    text(name, xPos+10, yPos+30);
    for(int i = 0;i<house.length;i++);
  }

  boolean isRoomClicked(float x, float y) {
    if ((x > xPos) && (x < xPos+width) && (y>yPos) && (y < yPos+height))
      return true;
    else 
    return false;
  }
  
  void drawRoof(){
   fill(50);
  triangle(50, 300, 250, 150, 450, 300);
  fill(204);
  }
 
  void bravoSixGoingDark() {

  for (int i = 0; i < house.length; i++) {
    house[i].setLight(false);
  }
}


void raveParty() {
  for (int i = 0; i < house.length; i++) {
    house[i].setLight(true);
  }
}



  
  
}
