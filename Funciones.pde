
void rectanguloazul() {
  rectMode(CORNER);
    fill(0,0,255);
    rect(500,100,200,200);
}

void lineasnegrashorizontales() {
  for(float y=10; y<395; y+=5){
    noStroke();
    fill(0);
    ellipse(mouseX,y,300,5);
  }
}

void lineasverticales() {
  for(float x=0; x<width; x+=5){
    noStroke();
    fill(0);
    ellipse(x,mouseY,300,5);
  }
}

void lineasblancas() {
for(float i=-5; i<height; i+=9.7){
    noStroke();
    rect(400,i,400,4.5);
    fill(255);
    image(IMAGEN,0,0,400,400);
 }
}
