float rad =0;

void setup(){
size(800,800,P3D);
}

void draw() {

  background (227);
  pushMatrix();
  rotate(frameCount);
  translate(200,200);
  box(150);

rad++;

popMatrix();
circle(300,200,100);

}
