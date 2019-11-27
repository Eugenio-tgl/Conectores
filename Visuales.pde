class Visuales{
  float x, y, w, h, pos;
  float vel;
  
  Visuales(){
    y = random(height);
    vel = random(-1,1);
    w = random(50, 100);
    x = random(w, width-w/2);
    h = random(5, 15);
    do{
    pos = round(random(-1,1));
    }while(pos == 0);
  }
  
  void Creacion(){
    fill(255, 255, 255);
    noStroke();
    rect(x, y, w, h, 20, 20, 20, 20);
    mover();
  }
  
  void mover()
  {
   x += cos(vel)*pos;
   if(x <= w/2 || x >= (width-w/2))
     pos *= -1;
  }
}
