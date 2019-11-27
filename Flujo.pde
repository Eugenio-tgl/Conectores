class Flujo{
  
  int pantalla = 1;
  int cont = 10, n = 0, cont2 = 0, cambio = 40;
  color c1, c2 = color(0,0,0);
  float t1 = second(),t2 = second(), t3 = 0;
  
  
  void PantallaActual(){
  switch (pantalla){
    case 1:
    Pantalla_Inicio();
    break;
    
    case 2:
    Pantalla_Instrucciones();
    break;
    
    case 3:
    Pantalla_Juego();
    break;
    
    case 4:
    Pantalla_Final();
    break;
  }
  }
  
  void Pantalla_Inicio(){
    
    background(0);
    
    for (Visuales s : Visuales) 
      s.Creacion();
    
    textSize(40);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    
    rectMode(CENTER);
    stroke(0, 150, 150);
    strokeWeight(3);
    fill(0);
    rect(600,200, 700, 70, 5);
    rect(600,400, 420, 45, 5);
    
    fill(0,255,255);
    text("C O N E C T O R E S", 600, 200);
    
    textSize(20);
    
    text("Presione '1' para continuar", 600, 400);
    fill(255);
    
    
    
    if (keyPressed)
    if(key == '1')
      pantalla++;
      
  }
  
  void Pantalla_Instrucciones(){
    
    background(0);
    
    for (Visuales s : Visuales) 
      s.Creacion();
    rectMode(CENTER);
    stroke(0, 150, 150);
    strokeWeight(3);
    fill(0);
    rect(600,400, 860, 500, 5);
    
    textSize(40);
    fill(0, 255, 255);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    text("Instrucciones", 600, 200);
    
    fill(100, 255, 255);
    textSize(30);
    text("Usa el raton para moverte", 600, 350);
    text("Evita las lineas blancas", 600, 400);
    text("No salgas de la pantalla", 600, 440);
    text("Intenta durar el mayor tiempo posible", 600, 480);
    
    textSize(20);
    fill(0, 255, 255);
    text("Presione '2' para continuar.", 600, 590);
    
    if (keyPressed)
    if(key == '2')
    {
      background(255);
      pantalla++;
    }
  }
  
  void Pantalla_Juego(){
    background(0);
    Tiempo();
    fill(0,255,255);
    Creacion();
    
    cont++;
    cont2+= 1;
    for(Lineas a:Lineas)
    a.check();
    
    Indicador();
    text(t3/60, 600, 70);
    
  }
  
  void Pantalla_Final(){
    background(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    text("-Tiempo Realizado-", 600, 100);
    
    textSize(40);
    text(t3/60, 600, 150);
    text("Presione '4' para empezar otra vez.", 600, 590);
    text("Presione '5' para salir.", 600, 630);

    
    if (keyPressed)
    {
    if(key == '4')
      {
        background(0);
        for(Lineas a:Lineas)
        a.eliminar();
        pantalla = 3;
        t3=0;
      }
     if(key == '5')
      {
        exit();
      }
      
    }
  }
  
  void Tiempo(){
   t1 = second();
   if(t1 != t2)
   t3++;

  }
  
  void Creacion(){
    if(cont == cambio)
    {
      Lineas.add(new Lineas(mouseX, mouseY));
      Lineas.add(new Lineas(mouseX, mouseY));
      Lineas.add(new Lineas(mouseX, mouseY));
      Lineas.add(new Lineas(mouseX, mouseY));
    }
    if(cont == cambio*2)
    {
      Lineas.add(new Lineas(mouseX, mouseY));
      Lineas.add(new Lineas(mouseX, mouseY));
      Lineas.add(new Lineas(mouseX, mouseY));
      cont = 0;
    }
    
    if (cont2 == 50)
    cambio -= 1;
  }
  
  void Indicador(){
    c1 = get(mouseX, mouseY);
    if(blue(c1) != blue(c2))
    pantalla++;
  }    
  }
