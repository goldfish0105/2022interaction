PVector v ;
PVector p ;
void setup(){
  size(500,500);
  v = new PVector(  2, 2.3);
  p = new PVector( 50, 60);
  frameRate(50);
}
void draw(){
  background(#FFFFF2);
  ellipse( p.x, p.y, 50, 50);
  p.add(v);
  ellipse(mouseX,mouseY,100,100);
  if(dist( p.x, p.y, mouseX, mouseY)<75){
    PVector c = new PVector(mouseX,mouseY);
    PVector n = PVector.sub(p,c).normalize();
    float green = PVector.dot(v,n);
    PVector v2 = PVector.mult(n, -green * 2);
    v.add(v2);
    line(c.x, c.y, p.x, p.y);
  }
}
