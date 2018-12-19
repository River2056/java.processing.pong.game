class PongBall{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int w;
  int h;
  
  PongBall(){ //default
    x = int(random(80, width - 60));
    y = int(random(80, height - 60));
    xSpeed = 5;
    ySpeed = 3.2;
    w = 16;
    h = 16;
  }
  
  PongBall(float xSpeed, float ySpeed){ //only change speed
    this();
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }
  
  PongBall(int w, int h){ //only change size
    this();
    this.w = w;
    this.h = h;
  }
  
  PongBall(float x, float y, float xSpeed, float ySpeed, int w, int h){
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.w = w;
    this.h = h;
  }

  void display(){
    ellipse(x, y, w, h);
    fill(255);
  }
  void update(){
    x += xSpeed;
    y += ySpeed;
  }

  void checkEdge(){
   if (y > height - (w / 2) || y < 0 + (h / 2)) {
      ySpeed *= -1;
    }
   if (x > width - (w / 2) || x < 0 + (h / 2)) {
      xSpeed *= -1;
    }
  
  }
  
}
