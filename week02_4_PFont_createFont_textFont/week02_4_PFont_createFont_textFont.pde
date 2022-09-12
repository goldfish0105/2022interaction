void setup(){
  size(500,500);
  PFont font = createFont("標楷體",40);
  textFont(font);
}
int w=20;
void draw(){
  drawPokerCard(100,100,"黑桃2");//使用函數
  drawPokerCard(130,150,"紅心A");//使用函數
  drawPokerCard(160,200,"方塊J");//使用函數
  drawPokerCard(190,250,"梅花3");//使用函數
}//牌面:黑桃Spade 紅心Heart 方塊Diamond 梅花Club
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,20);//弧度
  fill(#FF8181);
  rect(x,y,150,250,20);//弧度
  fill(0);
  textSize(30);
  text(face,x,y+30);
}
