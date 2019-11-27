class Lineas{
  
  float x1, y1;
  int ran1, ran2, cont1, cont2, xP, yP;
  float m;
  boolean tasa = true, condicion = true;
  
  
   Lineas(int xP_, int yP_){
    this.xP = xP_;
    this.yP = yP_;
    ran1 = round(random(1));
    ran2 = round(random(1));
    
    if (ran1 == 1)
    {
      x1 = random (width);
      if (ran2 == 1)
      y1 = 0;
      if (ran2 == 0)
      y1 = height;
    }
    
    if (ran1 == 0)
    {
      if (ran2 == 1)
      x1 = 0;
      if (ran2 == 0)
      x1 = width;
      
      y1 = random (height);
    }
    m = (y1-yP)/(x1-xP);
    if(x1 > xP)
      tasa = false;
  }
  
  void check(){
   if (condicion)
   display();
   cambio();
  }
  
  void eliminar(){
  condicion = false;
  }
  
  void cambio(){
    if(tasa)
    {
      if((m > 8 && m < 9) || (m < -8 && m > -9))
      cont1+= .5;
      else if((m > 9 && m < 10) || (m < -9 && m > -10))
      cont1+= .2;
      else if((m > 10) || (m < -10))
      cont1+= .1;
      else cont1+= 4;
    }
    if(!tasa)
    {
      if((m > 8 && m < 9) || (m < -8 && m > -9))
      cont1-= .5;
      else if((m > 9 && m < 10) || (m < -9 && m > -10))
      cont1-= .2;
      else if((m > 10) || (m < -10))
      cont1-= .1;
      else cont1-= 4;
    }
    
    if(x1+cont1 > width || x1+cont1 < 0)
    condicion = false;
    
    if((m*(x1+cont1)-m*x1+y1) < 0 || (m*(x1+cont1)-m*x1+y1) > height)
    condicion = false;
  }
  
  void display(){
    stroke(255);
    strokeWeight(2);
    
    line(x1, y1, x1+cont1, m*(x1+cont1)-m*x1+y1);
  }
  
  
  
  
  
  
  
  
  
  
}
