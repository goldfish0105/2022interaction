void setup(){
  size(500,500);
}
int w=20;
void draw(){
  drawPokerCard(100,100,"S4");//使用函數
  drawPokerCard(130,150,"H3");//使用函數
  drawPokerCard(160,200,"D5");//使用函數
  drawPokerCard(190,250,"CJ");//使用函數
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
