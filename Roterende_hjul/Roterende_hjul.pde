int r = 0;

void setup(){
  size(800,800);
  
}

void draw(){
 background(227); 
 println(frameCount);
  pushMatrix();
  translate(-200 + r,600);
  r++;
  if(r>width+330) {
    r=0;

}
  
  rotate(frameCount/4);
 
 
  fill(253,224,128);
  circle(0,0,250);
  
  fill(255,248,119);
  circle(0,0,200);
  line(0,-100,0,100);
  line(-100,0,100,0);
  
  fill(256,0,0);
  circle(10,-50,20);
  circle(15,30,20);
  circle(10,-50,20);
  

  
  
  popMatrix();
  
 
 // sys();
  
  
}



void sys(){
for(int i = 0; i < width; i = i +10){

line(0,i, width, i);
line (i,0 , i , height);

}


}
