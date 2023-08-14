 //https://youtu.be/tNrSOotUQrQ
  PImage IMAGEN;
  int pantalla = 1;
  float distancia;
  
 void setup(){
  size(800,400);
  
  IMAGEN = loadImage("IMAGEN.jpg");
 }
  void draw(){
    if (pantalla == 1) {
    pantalla1();
    image(IMAGEN,0,0,400,400);
  } else if(pantalla == 2) {
    pantalla2();
    image(IMAGEN,0,0,400,400);
  } else if(pantalla == 3) {
    pantalla3();
    image(IMAGEN,0,0,400,400);
  } else if(pantalla == 4) {
    pantalla4();
    image(IMAGEN,0,0,400,400);
 }
}
 
 void keyPressed() {
  pantalla = siguientepantalla();
 }   
      
