  PImage IMAGEN;
  int lineaX;
  int lineaY;
  int pantalla = 1;
  
 void setup(){
  size(800,400);
  
  IMAGEN = loadImage("IMAGEN.jpg");
 }
  void draw(){
    if (pantalla == 1) {
    background(0,0,255);
    lineasnegrashorizontales();
    rectanguloazul();
    lineasblancas();
  } else if (pantalla == 2) {
    background(0,0,255);
    lineasverticales();
    rectanguloazul();
    lineasblancas();
    
  }
  }
  void keyPressed (){
    if(key ==RIGHT){
      pantalla = pantalla + 1;
    } else if(key ==LEFT){
      pantalla = pantalla - 1;
    }
  }
 
