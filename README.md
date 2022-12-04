# 2022interaction
2022互動技術 上課程式
```java
//PVector v ;
//PVector p ;
PVector g ;
void setup(){
  size(600, 400);
  //v = new PVector(  2, 2.3);
  //p = new PVector( bulletX, bulletY);
  g = new PVector( 300, 200);
  //frameRate(50);
}
float angle1=0, angle2=-PI;
void draw(){
  background(#218370);
  fill(255);
  rect(50, 50, 500, 300);
  fill(255, 0, 0);
  rect(60, 60, 160-20, 280);
  ellipse(100, 200, 50, 50);
  line(100, 200, 100+40*cos(angle1), 200+40*sin(angle1));
  
  fill(#4D95F0);
  rect(540-(160-20), 60, 160-20, 280);
  ellipse(500, 200, 50, 50);
  line(500, 200, 500+40*cos(angle2), 200+40*sin(angle2));
  
  fill(#6BF057);
  ellipse( g.x, g.y, 70, 70);
  
  if(mousePressed && mouseButton==LEFT) angle1 +=0;
  else angle1+=0.05;
  if(bulletFlying){
    fill(255,80,80);
    ellipse(bulletX,bulletY, 20,20);
    bulletX+=bulletVX*3;
    bulletY+=bulletVY*3;
    if(bulletY < 60 || bulletY > 340){
      if( bulletX > 60 && bulletX < 540){
        bulletVY=-bulletVY;
      }
    }
  }
  if(mousePressed && mouseButton==RIGHT) angle2 +=0;
  else angle2+=0.05;
  if(bulletFlying2){
    fill(#72ABF0);
    ellipse(bulletX2,bulletY2, 20,20);
    bulletX2+=bulletVX2*3;
    bulletY2+=bulletVY2*3;
    if(bulletY2 < 60 || bulletY2 > 340){
      if( bulletX2 > 60 && bulletX2 < 540){
        bulletVY2=-bulletVY2;
      }
    }
  }
  //ellipse( p.x, p.y, 50, 50);
  //p.add(v);
  //ellipse(mouseX,mouseY,100,100);
  /*if(dist( p.x, p.y, g.x, g.y)<45){
    PVector c = new PVector(g.x,g.y);
    PVector n = PVector.sub(p,c).normalize();
    float green = PVector.dot(v,n);
    PVector v2 = PVector.mult(n, -green * 2);
    v.add(v2);
    line(c.x, c.y, p.x, p.y);
  }*/
}
float bulletX, bulletY, bulletVX, bulletVY;
boolean bulletFlying=false;
float bulletX2, bulletY2, bulletVX2, bulletVY2;
boolean bulletFlying2=false;
void mousePressed(){
  if(mouseButton==LEFT){
    bulletX=100;
    bulletY=200;
    bulletVX = cos(angle1);
    bulletVY = sin(angle1);
    bulletFlying=true;
  }else if(mouseButton==RIGHT){
    bulletX2=500;
    bulletY2=200;
    bulletVX2 = cos(angle2);
    bulletVY2 = sin(angle2);
    bulletFlying2=true;
  }
}
```
```java
//PVector v ;
//PVector p ;
PVector g ;
void setup() {
  size(600, 400);
  //v = new PVector(  2, 2.3);
  //p = new PVector( bulletX, bulletY);
  g = new PVector( 300, 200);
  //frameRate(50);
}
PVector gv = new PVector(0,0);
float angle1=0, angle2=-PI;
void draw() {
  background(#218370);
  fill(255);
  rect(50, 50, 500, 300);
  fill(255, 0, 0);
  rect(60, 60, 160-20, 280);
  ellipse(100, 200, 50, 50);
  line(100, 200, 100+40*cos(angle1), 200+40*sin(angle1));

  fill(#4D95F0);
  rect(540-(160-20), 60, 160-20, 280);
  ellipse(500, 200, 50, 50);
  line(500, 200, 500+40*cos(angle2), 200+40*sin(angle2));

  fill(#6BF057);
  ellipse( g.x, g.y, 70, 70);
  g.add(gv);

  if (mousePressed && mouseButton==LEFT) angle1 +=0;
  else angle1+=0.05;
  if (bulletFlying) {
    fill(255, 80, 80);
    ellipse(b.x, b.y, 20, 20);
    b.add(bv);//b.x+=bv.x*3;b.y+=bv.y*3;
    if (b.y < 60 || b.y > 340) {
      if ( b.x > 60 && b.x < 540) {
        bv.y=-bv.y;
      }
    }
    if (dist( b.x, b.y, g.x, g.y)<45) {
    PVector c = new PVector(g.x, g.y);
    PVector n = PVector.sub(b, c).normalize();
    float green = PVector.dot(bv, n);
    PVector v = PVector.mult(n, green * 2);
    bv.sub(v);
    line(c.x, c.y, b.x, b.y);
    PVector v2 = PVector.mult(n, green*0.1);
    gv.add(v2);
  }
  }
  if (mousePressed && mouseButton==RIGHT) angle2 +=0;
  else angle2+=0.05;
  if (bulletFlying2) {
    fill(#72ABF0);
    ellipse(b2.x, b2.y, 20, 20);
    b2.add(bv2);//b2.x+=bv2.x*3;b2.y+=bv2.y*3;
    if (b2.y < 60 || b2.y > 340) {
      if ( b2.x > 60 && b2.x < 540) {
        bv2.y=-bv2.y;
      }
    }
  }
  //ellipse( p.x, p.y, 50, 50);
  //p.add(v);
  //ellipse(mouseX,mouseY,100,100);
  
}
PVector b;//float bulletX, bulletY, bulletVX, bulletVY;
PVector bv;
boolean bulletFlying=false;
PVector b2;//float bulletX2, bulletY2, bulletVX2, bulletVY2;
PVector bv2;
boolean bulletFlying2=false;
void mousePressed() {
  if (mouseButton==LEFT) {
    b = new PVector(100, 200);//bulletX=100;bulletY=200;
    bv= new PVector(cos(angle1)*3, sin(angle1)*3);//bulletVX = cos(angle1);bulletVY = sin(angle1);
    bulletFlying=true;
  } else if (mouseButton==RIGHT) {
    b2 = new PVector(500, 200);//bulletX2=500;bulletY2=200;
    bv2= new PVector(cos(angle2)*3, sin(angle2)*3);//bulletVX2 = cos(angle2);bulletVY2 = sin(angle2);
    bulletFlying2=true;
  }
}
```
```java
void setup() {
  size(600, 400);
  g = new PVector( 300, 200);
  PFont font = createFont("標楷體", 40);
  textFont(font);
  //frameRate(100);
}
PVector g ;
PVector gv = new PVector(0, 0);
float angle1=0, angle2=-PI;
void draw() {
  background(#218370);
  fill(255);
  rect(50, 50, 500, 300);
  fill(#EDE0AC);
  rect(207, 60, 90, 280);
  rect(302, 60, 90, 280);

  fill(255, 0, 0);
  rect(60, 60, 160-20, 280);
  ellipse(100, 200, 50, 50);
  line(100, 200, 100+40*cos(angle1), 200+40*sin(angle1));

  fill(#4D95F0);
  rect(540-(160-20), 60, 160-20, 280);
  ellipse(500, 200, 50, 50);
  line(500, 200, 500+40*cos(angle2), 200+40*sin(angle2));

  fill(#6BF057);
  ellipse( g.x, g.y, 70, 70);
  g.add(gv);
  if (g.y < 85 || g.y > 315) {
    gv.y=-gv.y;
  }
  if (g.x < 165) {
    noLoop();
    textSize(50);
    fill(#2F6CB4);
    rect(0,150,600,80);
    fill(255);
    text("藍方獲勝!", 185, 205);
  }
  if (g.x > 435) {
    noLoop();
    textSize(50);
    fill(#DE282B);
    rect(0,150,600,80);
    fill(255);
    text("紅方獲勝!", 185, 205);
  }
  if (mousePressed && mouseButton==LEFT) angle1 +=0;
  else angle1+=0.05;
  if (bulletFlying) {
    fill(255, 80, 80);
    ellipse(b.x, b.y, 20, 20);
    b.add(bv);//b.x+=bv.x*3;b.y+=bv.y*3;
    if (b.y < 60 || b.y > 340) {
      if ( b.x > 60 && b.x < 540) {
        bv.y=-bv.y;
      }
    }
    if (dist( b.x, b.y, g.x, g.y)<45) {
      PVector c = new PVector(g.x, g.y);
      PVector n = PVector.sub(b, c).normalize();
      float green = PVector.dot(bv, n);
      PVector v = PVector.mult(n, green * 2);
      bv.sub(v);
      PVector v2 = PVector.mult(n, green*0.1);
      gv.add(v2);
    }
  }
  if (mousePressed && mouseButton==RIGHT) angle2 +=0;
  else angle2+=0.05;
  if (bulletFlying2) {
    fill(#72ABF0);
    ellipse(b2.x, b2.y, 20, 20);
    b2.add(bv2);//b2.x+=bv2.x*3;b2.y+=bv2.y*3;
    if (b2.y < 60 || b2.y > 340) {
      if ( b2.x > 60 && b2.x < 540) {
        bv2.y=-bv2.y;
      }
    }
    if (dist( b2.x, b2.y, g.x, g.y)<45) {
      PVector c = new PVector(g.x, g.y);
      PVector n = PVector.sub(b2, c).normalize();
      float green = PVector.dot(bv2, n);
      PVector v = PVector.mult(n, green * 2);
      bv2.sub(v);
      PVector v2 = PVector.mult(n, green*0.1);
      gv.add(v2);
    }
  }
}
PVector b;//float bulletX, bulletY, bulletVX, bulletVY;
PVector bv;
boolean bulletFlying=false;
PVector b2;//float bulletX2, bulletY2, bulletVX2, bulletVY2;
PVector bv2;
boolean bulletFlying2=false;
void mousePressed() {
  if (mouseButton==LEFT) {
    b = new PVector(100, 200);//bulletX=100;bulletY=200;
    bv= new PVector(cos(angle1)*3, sin(angle1)*3);//bulletVX = cos(angle1);bulletVY = sin(angle1);
    bulletFlying=true;
  } else if (mouseButton==RIGHT) {
    b2 = new PVector(500, 200);//bulletX2=500;bulletY2=200;
    bv2= new PVector(cos(angle2)*3, sin(angle2)*3);//bulletVX2 = cos(angle2);bulletVY2 = sin(angle2);
    bulletFlying2=true;
  }
}
```
