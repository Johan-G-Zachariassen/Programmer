PImage photo;
PImage diva_angy;
PImage diva_hapy;
boolean mor = false;
boolean far = false;
boolean diva = false;

boolean blomst = false;
boolean ryd_op = false;
boolean beier = false;
boolean slaa_graes = false;
boolean penge = false;
boolean toej = false;

void setup(){
size(800,600);
photo = loadImage("smiley.png");
diva_angy = loadImage("diva_angy.png");
diva_hapy = loadImage("hapy_diva.png");

}




void draw(){
background(255);
 Plade();
mor();


far();


diva();




}




void mouseClicked(){
  float x = mouseX;
  float y = mouseY;


//Mor betingelser før hun er glad

if((x>200 && x<400)&&(y>0 && y<200)){
blomst=true;
}

if((x>400 && x<600)&&(y>0 && y<200)){
ryd_op=true;
}
mor();

//Far betingelser før han er glad

if((x>200 && x<400)&&(y>200 && y<400)){
beier=true;
}

if((x>400 && x<600)&&(y>200 && y<400)){
slaa_graes=true;
}
far();

//Diva betingelser før hun er glad

if((x>200 && x<400)&&(y>400 && y<600)){
penge=true;

}

if((x>400 && x<600)&&(y>400 && y<600)){
toej=true;
}
diva();


}



// Funktioner

void Plade(){
for(int i = 0; i < width; i = i +200){

line(0,i, width, i);
line (i,0 , i , height);
}
textSize(20);
fill(0);
text("Mor", 90, 100);
text("Far", 90, 300);
text("Diva", 90, 500);

text("Bier", 280, 300);
text("Slaa graes", 470, 300);


text("Blomster", 270, 100);
text("Ryd op", 470, 100);

text("Penge", 280, 500);

text("Toej", 490, 500);

}


void mor(){
if(blomst && ryd_op && far && diva){
mor = true;
image(photo,600,0);
}
}



void far(){
if(beier && slaa_graes && diva){
far = true;
image(photo,600,200);
}
}



void diva(){
if(penge && toej){
diva = true;
image(diva_hapy,600,400);

}
}
