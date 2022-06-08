void setup(){
  size(800,800);
}
void draw(){
  translate(width/2,height/2);
  int n=int(map(mouseX,0,width,0,50));
  float r=map(mouseY,0,height,0,height/2);
  background(255);
  noFill();
  beginShape();
  for(float i=0;i<n;i++){
    float x=r*cos(i/n*TWO_PI-PI/2);
    float y=r*sin(i/n*TWO_PI-PI/2);
    vertex(x,y);
  }
  endShape(CLOSE);
}