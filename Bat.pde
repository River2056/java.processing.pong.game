class Bat{
  float width;
  float height;
  float x;
  float y;
  
  Bat(float x){
    width = 15;
    height = 70;
    this.x = x;
    y = 600 / 2;
  }
  
  void display(){
    rect(x, y, width, height);
    fill(255);
  }
  
  void update(){
    y = mouseY;
  }
  
  
}
