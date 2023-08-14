


void setup(){
  size(2000,1000);
   frameRate(300);
}

void draw(){
 background(0); 

stars();
 
 
  sol(); 
  
  merkur();
  
  
  venus();
  

jorden();


maane();


mars();

jupiter();

saturn();


uranus();

neptun();

 
//sys();
  
  
}



void sys(){
for(int i = 0; i < width; i = i +10){

line(0,i, width, i);
line (i,0 , i , height);

}


}


void sol(){
pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(255,242,0);
  circle(0,0,200);
  popMatrix();


}

void merkur(){
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
fill(179,179,179);
circle(150,0,35);
//circle(150,0,35);
popMatrix();

}

void venus(){
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
fill(222,133,97);
circle(205,0,35);
//circle(205,0,35);
popMatrix();

}

void jorden(){
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(0,168,243);
circle(260,0,40);

strokeWeight(0);
fill(255);
circle(268,0,8);
circle(250,0,6);
circle(250,-4,6);
circle(250,4,6);
circle(268,2,8);
circle(268,5,8);
circle(260,0,18);

circle(265,0,10);


fill(21,181,66);
circle(250,-14,7);
circle(255,-16,7);
circle(259,-17,7);
circle(260,15,10);

strokeWeight(1);
popMatrix();
}

//måne
void maane(){
 pushMatrix();
 translate(width/2,height/2);
 rotate(frameCount/60);
fill(149);
circle(289,0,8);
//circle(290,0,8);
popMatrix();
}



void mars(){
pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(249,104,109);
circle(330,0,45);
//circle(330,0,45);
popMatrix();
}

void jupiter(){
pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(251,176,149);
circle(430,0,130);
//circle(430,0,130);
popMatrix();
}

void saturn(){
pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(242,224,191);


circle(570,0,130);
circle(570,0,115);
fill(0);
circle(570,0,105);
fill(242,224,191);
circle(570,0,80);


//line(500,60,630,-60);

popMatrix();
}

void uranus(){
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
fill(133,180,198);
circle(680,0,50);
//circle(680,0,50);
popMatrix();
}

void neptun(){
pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount/60);
  fill(107,115,230);
circle(760,0,50);
popMatrix();
}

void stars(){
for(int i = 0; i < width; i = i +30){
  pushMatrix();
translate(30,10);
  fill(255);
circle(0,i,5);
circle(i,0,5);


popMatrix();
}

}
