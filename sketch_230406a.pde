void setup(){
  size(800,400);
  background(161,219,245);
  PImage mi_imagen;
  mi_imagen= loadImage("imagen.png");
  image(mi_imagen,0,0);

}

void draw() {
  noStroke();
  fill(96,179,216);
  rect(400,188,400,400);
  
 noStroke();
 fill(230,234,234);
 quad(600,280,700,280,690,260,580,250);
 
 noStroke();
 fill(146,170,137);
 triangle(800,130,800,188,740,188);
 
 noStroke();
 fill(146,170,137);
 quad(710,130,800,170,800,188,600,188);
  
 noStroke();
 fill(229,226,215);
 triangle(640,90,640,240,690,245);
 triangle(635,140,635,245,600,243);
 
 noStroke();
 fill(175,152,124);
 quad(400,10,480,18,560,188,400,188);
}
  
