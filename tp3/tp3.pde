PImage[] imagenes;
int momento = 0;
int pantallas = 18;

void setup() {
  size(600, 600);
  ponerimagenes();  // Llama a la función para cargar las imágenes (si es necesario).
}

void draw() {
  background(200);
  tirarpantalla(momento);
}

void ponerimagenes() {
  
   imagenes = new PImage[pantallas];
   for (int i = 0; i < pantallas; i++) {
     imagenes[i] = loadImage("dibujo" + i + ".jpg");
   }
}

void tirarpantalla(int escena) {
  if (escena == 0) {
    tirartexto("la gallinita roja\nToca cualquier tecla para empezar.");
    if (keyPressed) {
      momento = 2;
    }
  } else if (escena == 1) {
    tirartexto("texto sample");
    if (keyPressed && (key == 'c' || key == 'C')) {
      momento = 0;
    }
  } else if (escena >= 2 && escena <= 4) {
    tirartexto("texto sample");
    if (keyPressed) {
      momento = escena + 1;
    }
  } else if (escena == 5) {
    tirartexto("FINAL 1");
    if (keyPressed && (key == 'r' || key == 'R')) {
      momento = 0;
    }
  } else if (escena == 6 || escena == 14) {
    tirartexto("texto");
    if (keyPressed) {
      int decision = tomarDecision(key);
      if (decision == 0) {
        momento = escena + 1;
      } else if (decision == 1) {
        momento = escena == 6 ? 14 : 18;
      }
    }
  } else if (escena >= 7 && escena <= 9) {
    tirartexto("texto");
    if (keyPressed) {
      momento = escena + 1;
    }
  } else if (escena == 10) {
    tirartexto("texto");
    if (keyPressed) {
      int decision = tomarDecision(key);
      if (decision == 0) {
        momento = 11;
      } else if (decision == 1) {
        momento = 12;
      }
    }
  } else if (escena == 11) {
    tirartexto("FINAL 2");
    if (keyPressed && (key == 'r' || key == 'R')) {
      momento = 0;
    }
  } else if (escena == 12) {
    tirartexto("texto");
    if (keyPressed) {
      momento = 13;
    }
  } else if (escena == 13) {
    tirartexto("FINAL 3");
    if (keyPressed && (key == 'r' || key == 'R')) {
      momento = 0;
    }
  } else if (escena >= 15 && escena <= 16) {
    tirartexto("texto");
    if (keyPressed) {
      int decision = tomarDecision(key);
      if (decision == 0) {
        momento = escena + 1;
      } else if (decision == 1) {
        momento = escena + 2;
      }
    }
  } else if (escena == 17 || escena == 18) {
    tirartexto("última pantalla");
  }
}

void tirartexto(String mensaje) {
  background(200);
  textSize(20);
  textAlign(CENTER);
  text(mensaje, width / 2, height / 2);
  textSize(16);
  text("toca cualquier tecla para continuar.", width / 2, height - 50);
}

int tomarDecision(char tecla) {
  float decision = map(tecla, 'a', 'd', 0, 1);
  return int(decision);
}
