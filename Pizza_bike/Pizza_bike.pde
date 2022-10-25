int r = 0;

void setup(){
  size(800,800);
  
}

void draw(){
 background(227); 
 println(frameCount);
  pushMatrix();
  translate(-200+r,600);
  r++;
  if(r>width+680) {
    r=0;

}
  
  rotate(frameCount/4);
 
 
  pizza();
  
  
  popMatrix();
  //****************************************************************
  pushMatrix();
translate(-600+r,600);
  
  
  rotate(frameCount/4);
 
 
  pizza();
  
  popMatrix();
  
 //*************************
 translate(-600+r,600);
 
 strokeWeight(5);
 line(0,0,200,0);
 line(200,0,125,-200);
  line(0,0,125,-200);
  line(125,-200,350,-200);
   line(350,-200,200,0);
   
   line(350,-200,400,0);
   line(125,-200,125,-225);
   
   line(350,-200,400,-265);
   line(400,-265,325,-265);
   
   line(270,-92,400,0);
   
   rect(100,-235,50,15);
 
 // sys();
  
  
}



void sys(){
for(int i = 0; i < width; i = i +10){

line(0,i, width, i);
line (i,0 , i , height);

}


}


void pizza(){
 fill(253,224,128);
  circle(0,0,250);
  
  fill(255,248,119);
  circle(0,0,200);
  line(0,-100,0,100);
  line(-100,0,100,0);
  
  fill(256,0,0);
  circle(10,-50,20);
  circle(15,30,20);
  circle(50,-30,20);
  circle(-25,60,20);
  circle(57,65,20);
  circle(-50,-20,20);
  circle(-50,-60,20);
  circle(-37,35,20);

}
