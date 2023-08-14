//lav et rum //<>// //<>// //<>//

Room[] house = new Room[6];

void setup() {
  size(800, 800);
  background(205);
  house[0]= new Room("Room", false, 150, 300);
  house[1]= new Room("Kitchen", false, 250, 300);
  house[2]= new Room("Livingroom", false, 150, 400);
  house[3]= new Room("Bedroom", false, 250, 400);
  house[4]= new Room("Toilet", false, 150, 500);
  house[5]= new Room("Bathroom", false, 250, 500);
}

void draw() {
  for (int i = 0; i<house.length; i++) {
    house[i].drawRoof();
    // tegn rum
    house[i].drawRoom();
  }
}

void mouseClicked() {
  // lav baggrund
  background(204);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  for (int i = 0; i<house.length; i++) {
    // find ud af om vi tænder eller slukker lyset
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].bravoSixGoingDark();
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].raveParty();
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}


void checkHouse() {
  boolean found=false;
  for (int i=0; i< house.length; i++) {
    if (house[i].isLightOn() == true) {
      println ("WOW turn off the light in the "+house[i].getRoomName());
      found = true;
    }
  }
  if (!found) {
    println("All right! You’r ready to go!");
    
  } else {
    println("you forgot something");
  }
}
