void setup(){
  size(500,500);
}
int w=20;
void draw(){
  drawCard(100,100);//使用函數
  drawCard(130,130);//使用函數
  drawCard(160,160);//使用函數
}
void drawCard(int x,int y){
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,20);
  fill(#7DCB8F);//#955C1E
  rect(x,y,150,250,20);//弧度
}
