import processing.sound.*;

Flujo p;
ArrayList <Lineas> Lineas;
ArrayList<Visuales> Visuales;
PFont fuente;
SoundFile cancion;

void setup(){
  size(1200, 800);
  background(0);
  cursor(CROSS);
  
  p = new Flujo();
  Lineas = new ArrayList<Lineas>();
  Visuales = new ArrayList<Visuales>();
  
  for(int i = 0; i < 70; i++)
        Visuales.add(new Visuales());
  
  fuente = loadFont("Fuente.vlw");
  cancion = new SoundFile(this, "Megalovania.mp3");
  cancion.play();
  
}

void draw(){
  p.PantallaActual();
  
}
