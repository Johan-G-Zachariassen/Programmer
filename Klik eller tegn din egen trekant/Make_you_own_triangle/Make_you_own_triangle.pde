
import controlP5.*;

int A,a,B,b,C,c;


void setup(){

size(800,600);



}



void draw(){

background(255);
fill(55);
triangle(A,a,B,b,C,c);



}


void mousePressed(){

if(A==0){
A=mouseX;
}
else if(B==0){
B=mouseX;
}
else if(C==0){
C=mouseX;
}

if(a==0){
a=mouseY;
}
else if(b==0){
b=mouseY;
}
else if(c==0){
c=mouseY;
}

}
