PongBall b = new PongBall();
Bat bt = new Bat(20);
Bat bt1 = new Bat(765);
  void hit(){
    if(b.x < bt.x+15 || b.x > bt1.x){
      if(b.y > mouseY && b.y < mouseY + 70){
        b.xSpeed = b.xSpeed * -1;
      }
    }
}

void setup(){
  size(800, 600);
}

void draw(){
  background(0);
  b.display();
  b.update();
  b.checkEdge();
  bt.display();
  bt.update();
  bt1.display();
  bt1.update();
  hit();
  
  
  
}
