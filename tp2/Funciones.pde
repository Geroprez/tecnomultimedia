void pantalla1() {
  background(0, 0, 255);
  for (int y = 0; y < 400; y += 5) {
    float distancia = dist(mouseX, mouseY, mouseX, y);
    float transparencia = map(distancia, 10, height, 255, 0);
    fill(0, transparencia);
    noStroke();
    rect(0, y, width, 5);

    rectMode(CORNER);
    fill(0, 0, 255);
    rect(500, 100, 200, 200);

    for (float i = -5; i < height; i += 9) {
      noStroke();
      rect(400, i, 400, 4);
      fill(255);
    }
  }
}


void pantalla2() {
  background(0, 0, 255);
  for (int x = 400; x < 800; x += 10) {
    float distancia = dist(mouseX, mouseY, x, mouseY);
    float transparencia = map(distancia, 0, width, 255, 0);
    fill(0, transparencia);
    noStroke();
    rect(x - mouseX + width / 2, 0, 5, height);

    rectMode(CORNER);
    fill(0, 0, 255);
    rect(500, 100, 200, 200);

    for (float i = -5; i < height; i += 9) {
      noStroke();
      rect(400, i, 400, 4);
      fill(255);
    }
  }
}

  

void pantalla3() {
  background(0, 0, 255);
  for (int y = 0; y < 400; y += 10) {
    stroke(0);
    strokeWeight(2);
    line(400, y, 1000, mouseY);

    rectMode(CORNER);
    noStroke();
    fill(0, 0, 255);
    rect(500, 100, 200, 200);

    for (float i = -5; i < height; i += 9) {
      noStroke();
      rect(400, i, 400, 4);
      fill(255);
    }
  }

}

void pantalla4() {
  background(0, 255, 0);

  int tamaño = 50;

  for (int y = 0; y < height; y += 50) {
    for (int x = 0; x < width; x += 50) {
      float distancia = dist(mouseX, 200, x + 25, y + 25);
      float transparencia = map(distancia, 0, sqrt(sq(width) + sq(height)), 255, 0);
      fill(255, transparencia);
      noStroke();
      ellipse(x + 25, y + 25, tamaño, tamaño);
    }
  }

  noStroke();
  fill(0, 255, 0);
  circle(600, 200, 200);

  fill(0);
  for (float i = -5; i < height; i += 9) {
    noStroke();
    rect(400, i, 400, 5);
  }
}

int siguientepantalla () {
  
  if (key == '2') {
    return 2;
  } else if (key == '3') {
    return 3;
  } else if (key == '4') {
    return 4;
  } else if (key == '1') {
    return 1;
  }
  
  return 1;
}
    







    
    
  
