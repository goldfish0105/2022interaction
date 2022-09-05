void setup(){//只執行1次
  size(500,500);//開個500x500窗
  background(#FFFFF2);//先背景
  stroke(255,0,0);//筆觸紅色
}
void draw(){//每秒60次
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  } 
}
void keyPressed(){//如果有按下按鍵
  if( key == '1' )stroke(#F6FF00);
  if( key == '2' )stroke(#00FF39);
  if( key == '3' )stroke(#0700FF);
}
