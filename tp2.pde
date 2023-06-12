  PImage IMAGEN;
  
  
 void setup(){
  size(800,400);
  
  
  IMAGEN = loadImage("IMAGEN.jpg");
 }
  
  void draw(){
    background(0,0,255);
    fill(0,0,255);
    rect(500,100,200,200);
    for(float i=-5; i<height; i+=9.7){
    noStroke();
    rect(400,i,400,4.5);
    fill(255);
    image(IMAGEN,0,0,400,400);
    
    
    
    }
  
  }
