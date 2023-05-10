  PImage miImagen;
  PImage miOtraImagen;
  PImage Otraimagenmas;
  PFont LETRAS;
  int pantalla = 1;
  float visibilidad = 0;
  float movimiento1 = -200;
  float movimiento2 = 600;
  float vision = 0;
  
  void setup(){
    size(640,480);
    textSize(30);
    
    miImagen = loadImage("imagen.jpg");
    miOtraImagen = loadImage("otra imagen.jpg");
    Otraimagenmas = loadImage("una imagen mas.jpg");
    LETRAS = loadFont("Bahnschrift-48.vlw");
    
  }
  
  void draw(){
    background(200);
    
    if (pantalla == 1) {
      image(miImagen, 0, 0, 640, 480);
      textFont(LETRAS,40);
      fill(255);
      text("Una embarcación de vela o velero \nes un barco en el cual la acción \ndel viento sobre su aparejo \nconstituye su forma principal de \npropulsión.", 0, movimiento1);
      movimiento1 = movimiento1 + 0.9;
  } else if (pantalla == 2) {
      image(miOtraImagen, 0, 0, 640, 480);
      textFont(LETRAS,35);
      fill(0);
      text("Cuando un velero recibe viento de \ntravés o en ceñida, el aire recorre \nla curvatura de la vela. \nEl flujo de aire que atraviesa por \nla parte convexa de la vela \n(lado de sotavento) encuentra un \ncanal más estrecho, y, para poder \natravesarlo, sufre una aceleración \nrespecto del aire circundante, que \nproduce al mismo \ntiempo una disminución de la presión.", 0, movimiento2);
      movimiento2 = movimiento2 - 1.2;
  } else if (pantalla == 3) {
      image(Otraimagenmas, 0 ,0, 640, 480);
      textFont(LETRAS,40);
      fill(255,255,255,vision);
      text("La mayoría de los veleros son más \ngrande que un bote y requieren de \nun lastre, según el lastre de diseño \nserá de 20 a 50 por ciento de los \ndesplazamientos.", 0,30);
      vision = vision + 0.4;
  }
      if(frameCount % 900 == 0){
    pantalla = pantalla + 1;
  }
    if(pantalla > 3) {
      pantalla = pantalla - 1;
  } if(frameCount > 3600) {
      fill(255);
      rect(510,410,80,45);
      fill(255,46,46);
      text("R",539,445);
  }  
     
}
  void mouseClicked(){
    if(mouseX > 510 && mouseY > 410 && mouseX < 590 && mouseY < 455 && pantalla == 3){
      pantalla = 1;
      frameCount = 0;
      movimiento1 = -200;
      movimiento2 = 600;
      vision = 0;
    }
  }
