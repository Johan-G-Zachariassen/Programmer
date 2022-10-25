int lengde = -50;

void setup() { 
size(600,600);

}

void draw() {

background(95);
lengde = lengde + 1;
translate(lengde,300);

circle(0,0,100);
circle(0-width,0,100);

circle(0,0,100);
if(lengde >= width+50){
lengde = 0;

}




}
