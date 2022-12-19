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
```java
import processing.sound.*;
SoundFile BGM, biu, win;
//PImage start;
void setup() {
  BGM = new SoundFile(this, "videoplayback.mp3");
  BGM.play();
  //start = loadImage("begin.jpg");
  size(600, 400);
  g = new PVector( 300, 200);
  PFont font = createFont("標楷體", 40);
  textFont(font);
  //frameRate(100);
}
int stage = 1;
PVector g ;
PVector gv = new PVector(0, 0);
float angle1=0, angle2=-PI;
void draw() {
  if (stage == 1) {
    background(#218370);
    fill(#5E932C);
    ellipse(300, 200, 250, 250);
    noStroke();
    fill(#95EA47);
    ellipse(300, 200, 200, 200);
    //background(start);
  }
  if (stage == 2) {
    background(#218370);
    stroke(0);
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
    if (g.x < 165) {
      noLoop();
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#2F6CB4);
      rect(0, 150, 600, 80);
      fill(255);
      text("藍方獲勝!", 185, 205);
    }
    if (g.x > 435) {
      noLoop();
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#DE282B);
      rect(0, 150, 600, 80);
      fill(255);
      text("紅方獲勝!", 185, 205);
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
    biu = new SoundFile(this, "biu.mp3");
    biu.play();
    b = new PVector(100, 200);//bulletX=100;bulletY=200;
    bv= new PVector(cos(angle1)*3, sin(angle1)*3);//bulletVX = cos(angle1);bulletVY = sin(angle1);
    bulletFlying=true;
  } else if (mouseButton==RIGHT) {
    biu = new SoundFile(this, "biu.mp3");
    biu.play();
    b2 = new PVector(500, 200);//bulletX2=500;bulletY2=200;
    bv2= new PVector(cos(angle2)*3, sin(angle2)*3);//bulletVX2 = cos(angle2);bulletVY2 = sin(angle2);
    bulletFlying2=true;
  }
  if (stage == 1)stage = 2;
}
```
## 美化介面 新增按空白鍵開始
```java
import processing.sound.*;
SoundFile BGM, biu, win;
//PImage start;
void setup() {
  BGM = new SoundFile(this, "videoplayback.mp3");
  BGM.play();
  //start = loadImage("begin.jpg");
  size(600, 400);
  g = new PVector( 300, 200);
  PFont font = createFont("標楷體", 40);
  textFont(font);
  //frameRate(100);
}
int stage = 1;
PVector g ;
PVector gv = new PVector(0, 0);
float angle1=0, angle2=-PI;
void draw() {
  if (stage == 1) {
    background(#218370);
    fill(#5E932C);
    ellipse(300, 200, 250, 250);
    noStroke();
    fill(#95EA47);
    ellipse(300, 200, 200, 200);
    fill(#D4FCDB);
    textSize(25);
    text("按下空白鍵開始", 215, 205);
    textSize(20);
    text("(要切換成英文輸入法哦)", 190, 390);
  }
  if (stage == 2) {
    background(#218370);
    fill(255);
    rect(50, 50, 500, 300);
    fill(#EDE0AC);
    rect(207, 60, 90, 280);
    rect(302, 60, 90, 280);

    fill(255, 0, 0);
    rect(60, 60, 160-20, 280);
    stroke(#A70A0A);
    strokeWeight(5);
    ellipse(100, 200, 50, 50);
    line(100, 200, 100+40*cos(angle1), 200+40*sin(angle1));
    noStroke();

    fill(#4D95F0);
    rect(540-(160-20), 60, 160-20, 280);
    stroke(#376EAF);
    ellipse(500, 200, 50, 50);
    line(500, 200, 500+40*cos(angle2), 200+40*sin(angle2));
    noStroke();

    fill(#6BF057);
    stroke(#5E932C);
    ellipse( g.x, g.y, 70, 70);
    noStroke();
    g.add(gv);
    if (g.y < 85 || g.y > 315) {
      gv.y=-gv.y;
    }
    if (mousePressed && mouseButton==LEFT) angle1 +=0;
    else angle1+=0.05;
    if (bulletFlying) {
      fill(255, 80, 80);
      stroke(#931318);
      ellipse(b.x, b.y, 20, 20);
      noStroke();
      b.add(bv);//b.x+=bv.x*3;b.y+=bv.y*3;
      if (b.y < 60 || b.y > 340) {
        if ( b.x > 60 && b.x < 540) {
          bv.y=-bv.y;
        }
      }
      if (dist( b.x, b.y, g.x, g.y)<50) {
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
      stroke(#376EAF);
      ellipse(b2.x, b2.y, 20, 20);
      noStroke();
      b2.add(bv2);//b2.x+=bv2.x*3;b2.y+=bv2.y*3;
      if (b2.y < 60 || b2.y > 340) {
        if ( b2.x > 60 && b2.x < 540) {
          bv2.y=-bv2.y;
        }
      }
      if (dist( b2.x, b2.y, g.x, g.y)<50) {
        PVector c = new PVector(g.x, g.y);
        PVector n = PVector.sub(b2, c).normalize();
        float green = PVector.dot(bv2, n);
        PVector v = PVector.mult(n, green * 2);
        bv2.sub(v);
        PVector v2 = PVector.mult(n, green*0.1);
        gv.add(v2);
      }
    }
    if (g.x < 165) {
      noLoop();
      //stage = 3;
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#2F6CB4);
      rect(0, 150, 600, 80);
      fill(255);
      text("藍方獲勝!", 185, 205);
    }
    if (g.x > 435) {
      noLoop();
      //stage = 3;
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#DE282B);
      rect(0, 150, 600, 80);
      fill(255);
      text("紅方獲勝!", 185, 205);
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
  if (stage==2) {
    if (mouseButton==LEFT) {
      biu = new SoundFile(this, "biu.mp3");
      biu.play();
      b = new PVector(100, 200);//bulletX=100;bulletY=200;
      bv= new PVector(cos(angle1)*3, sin(angle1)*3);//bulletVX = cos(angle1);bulletVY = sin(angle1);
      bulletFlying=true;
    } else if (mouseButton==RIGHT) {
      biu = new SoundFile(this, "biu.mp3");
      biu.play();
      b2 = new PVector(500, 200);//bulletX2=500;bulletY2=200;
      bv2= new PVector(cos(angle2)*3, sin(angle2)*3);//bulletVX2 = cos(angle2);bulletVY2 = sin(angle2);
      bulletFlying2=true;
    }
  }
}
void keyPressed() {
  if (key==' ') {
    if (stage == 1)stage = 2;
  }
  if (key=='Q') {
    if (stage == 3)stage = 1;
  }
}
```
```java
import processing.sound.*;
SoundFile BGM, biu, win;
//PImage start;
void setup() {
  BGM = new SoundFile(this, "videoplayback.mp3");
  //start = loadImage("begin.jpg");
  size(600, 400);
  g = new PVector( 300, 200);
  PFont font = createFont("標楷體", 40);
  textFont(font);
  //frameRate(100);
}
void reset(){
  stage = 2;
  g = new PVector( 300, 200);
  gv = new PVector(0, 0);
  angle1=0;
  angle2=-PI;
  BGM.stop();
  BGM.loop();
  bulletFlying2=false;
  bulletFlying=false;
}
int stage = 1;
PVector g ;
PVector gv = new PVector(0, 0);
float angle1=0, angle2=-PI;
void draw() {
  if (stage == 1) {
    background(#218370);
    fill(#5E932C);
    ellipse(300, 200, 250, 250);
    noStroke();
    fill(#95EA47);
    ellipse(300, 200, 200, 200);
    fill(#D4FCDB);
    textSize(25);
    text("按下空白鍵開始", 215, 205);
    textSize(20);
    text("(要切換成英文輸入法哦)", 190, 390);
  }
  if (stage == 2) {
    background(#218370);
    fill(255);
    rect(50, 50, 500, 300);
    fill(#EDE0AC);
    rect(207, 60, 90, 280);
    rect(302, 60, 90, 280);

    fill(255, 0, 0);
    rect(60, 60, 160-20, 280);
    stroke(#A70A0A);
    strokeWeight(5);
    ellipse(100, 200, 50, 50);
    line(100, 200, 100+40*cos(angle1), 200+40*sin(angle1));
    noStroke();

    fill(#4D95F0);
    rect(540-(160-20), 60, 160-20, 280);
    stroke(#376EAF);
    ellipse(500, 200, 50, 50);
    line(500, 200, 500+40*cos(angle2), 200+40*sin(angle2));
    noStroke();

    fill(#6BF057);
    stroke(#5E932C);
    ellipse( g.x, g.y, 70, 70);
    noStroke();
    g.add(gv);
    if (g.y < 88 || g.y > 313) {
      gv.y=-gv.y;
    }
    if (mousePressed && mouseButton==LEFT) angle1 +=0;
    else angle1+=0.05;
    if (bulletFlying) {
      fill(255, 80, 80);
      stroke(#931318);
      ellipse(b.x, b.y, 20, 20);
      noStroke();
      b.add(bv);//b.x+=bv.x*3;b.y+=bv.y*3;
      if (b.y < 60 || b.y > 340) {
        if ( b.x > 60 && b.x < 540) {
          bv.y=-bv.y;
        }
      }
      if (dist( b.x, b.y, g.x, g.y)<50) {
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
      stroke(#376EAF);
      ellipse(b2.x, b2.y, 20, 20);
      noStroke();
      b2.add(bv2);//b2.x+=bv2.x*3;b2.y+=bv2.y*3;
      if (b2.y < 60 || b2.y > 340) {
        if ( b2.x > 60 && b2.x < 540) {
          bv2.y=-bv2.y;
        }
      }
      if (dist( b2.x, b2.y, g.x, g.y)<50) {
        PVector c = new PVector(g.x, g.y);
        PVector n = PVector.sub(b2, c).normalize();
        float green = PVector.dot(bv2, n);
        PVector v = PVector.mult(n, green * 2);
        bv2.sub(v);
        PVector v2 = PVector.mult(n, green*0.1);
        gv.add(v2);
      }
    }
    //text("按下R重新開始", 450,30);
    if (g.x < 161.5) {
      //noLoop();
      //stage = 3;
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#2F6CB4);
      rect(0, 150, 600, 80);
      fill(255);
      text("藍方獲勝!", 185, 205);
      save("bluewin.png");
      imgNow = loadImage("bluewin.png");
      stage=3;
    }
    if (g.x > 438.5) {
      //noLoop();
      //stage = 3;
      win = new SoundFile(this, "win.mp3");
      BGM.stop();
      win.play();
      textSize(50);
      fill(#DE282B);
      rect(0, 150, 600, 80);
      fill(255);
      text("紅方獲勝!", 185, 205);
      save("redwin.png");
      imgNow = loadImage("redwin.png");
      stage=3;
    }
  }
  if(stage==3){
    image(imgNow, 0,0);
  }
}
PImage imgNow;
PVector b;//float bulletX, bulletY, bulletVX, bulletVY;
PVector bv;
boolean bulletFlying=false;
PVector b2;//float bulletX2, bulletY2, bulletVX2, bulletVY2;
PVector bv2;
boolean bulletFlying2=false;
void mousePressed() {
  if (stage==2) {
    if (mouseButton==LEFT) {
      biu = new SoundFile(this, "biu.mp3");
      biu.play();
      b = new PVector(100, 200);//bulletX=100;bulletY=200;
      bv= new PVector(cos(angle1)*3, sin(angle1)*3);//bulletVX = cos(angle1);bulletVY = sin(angle1);
      bulletFlying=true;
    } else if (mouseButton==RIGHT) {
      biu = new SoundFile(this, "biu.mp3");
      biu.play();
      b2 = new PVector(500, 200);//bulletX2=500;bulletY2=200;
      bv2= new PVector(cos(angle2)*3, sin(angle2)*3);//bulletVX2 = cos(angle2);bulletVY2 = sin(angle2);
      bulletFlying2=true;
    }
  }
}
void keyPressed() {
  if (key==' ') {
    if (stage == 1)stage = 2;
    BGM.loop();
  }
  if (key=='r') {
    reset();
  }
}
```
