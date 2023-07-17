// Elige tu propia aventura: La gallinita roja
// Código en Processing

String escenaActual; // Escena actual del juego
int numOpciones; // Número de opciones disponibles en la escena actual

// Imágenes
PImage[] imagenes;
int numImagenes = 18;
int[] imagenesPorEscena;

// Texto
String[] textoPorEscena;

int[] botonX;
int[] botonY;
int botonAncho = 200;
int botonAlto = 60;

void setup() {
  size(600, 600);
  escenaActual = "escena0"; 
  
  
  imagenes = new PImage[numImagenes];
  for (int i = 0; i < numImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".jpg");
  }
  
  
  asignarImagenes();
  
  
  textoPorEscena = new String[19];
  asignarTexto();
  
  
  botonX = new int[2];
  botonY = new int[2];
  
  
  botonX[0] = 100;
  botonY[0] = height - 100;
  botonX[1] = width - 300;
  botonY[1] = height - 100;
  
  
  numOpciones = 2;
}

void draw() {
  background(255);
  
  if (escenaActual.equals("escena0")) {
    dibujarEscenaInicio();
  } else if (escenaActual.equals("escena1")) {
    dibujarEscenaIntroduccion();
  } else if (escenaActual.equals("escena2")) {
    dibujarEscena(1);
  } else if (escenaActual.equals("escena3")) {
    dibujarEscena(2);
  } else if (escenaActual.equals("escena4")) {
    dibujarEscena(3);
  } else if (escenaActual.equals("escena5")) {
    dibujarEscena(4);
  } else if (escenaActual.equals("escena6")) {
    dibujarEscena(5);
  } else if (escenaActual.equals("escena7")) {
    dibujarEscena(6);
  } else if (escenaActual.equals("escena8")) {
    dibujarEscena(7);
  } else if (escenaActual.equals("escena9")) {
    dibujarEscena(8);
  } else if (escenaActual.equals("escena10")) {
    dibujarEscena(9);
  } else if (escenaActual.equals("escena11")) {
    dibujarEscena(10);
  } else if (escenaActual.equals("escena12")) {
    dibujarEscena(11);
  } else if (escenaActual.equals("escena13")) {
    dibujarEscena(12);
  } else if (escenaActual.equals("escena14")) {
    dibujarEscena(13);
  } else if (escenaActual.equals("escena15")) {
    dibujarEscena(14);
  } else if (escenaActual.equals("escena16")) {
    dibujarEscena(15);
  } else if (escenaActual.equals("escena17")) {
    dibujarEscena(16);
  } else if (escenaActual.equals("escena18")) {
    dibujarEscena(17);
  }
}




void mouseClicked() {
  if (escenaActual.equals("escena0")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena1";
      numOpciones = 1; // Establecer el número de opciones para la escena "escena1"
    } else if (mouseX > botonX[1] && mouseX < botonX[1] + botonAncho && mouseY > botonY[1] && mouseY < botonY[1] + botonAlto) {
      escenaActual = "escena2";
      numOpciones = 1; // Establecer el número de opciones para la escena "escena2"
    }
  } else if (escenaActual.equals("escena1")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena3";
      numOpciones = 2; // Establecer el número de opciones para la escena "escena3"
    } else if (mouseX > botonX[1] && mouseX < botonX[1] + botonAncho && mouseY > botonY[1] && mouseY < botonY[1] + botonAlto) {
      escenaActual = "escena7";
      numOpciones = 1; // Establecer el número de opciones para el final A
    }
  } else if (escenaActual.equals("escena3")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena4";
      numOpciones = 2; // Establecer el número de opciones para la escena "escena4"
    } else if (mouseX > botonX[1] && mouseX < botonX[1] + botonAncho && mouseY > botonY[1] && mouseY < botonY[1] + botonAlto) {
      escenaActual = "escena7";
      numOpciones = 1; // Establecer el número de opciones para el final A
    }
  } else if (escenaActual.equals("escena4")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena5";
      numOpciones = 2; // Establecer el número de opciones para la escena "escena5"
    } else if (mouseX > botonX[1] && mouseX < botonX[1] + botonAncho && mouseY > botonY[1] && mouseY < botonY[1] + botonAlto) {
      escenaActual = "escena8";
      numOpciones = 1; // Establecer el número de opciones para el final B
    }
  } else if (escenaActual.equals("escena5")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena6";
      numOpciones = 2; // Establecer el número de opciones para la escena "escena6"
    } else if (mouseX > botonX[1] && mouseX < botonX[1] + botonAncho && mouseY > botonY[1] && mouseY < botonY[1] + botonAlto) {
      escenaActual = "escena8";
      numOpciones = 1; // Establecer el número de opciones para el final B
    }
  } else if (escenaActual.equals("escena6")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena9";
      numOpciones = 1; // Establecer el número de opciones para la escena "escena9"
    }
  } else if (escenaActual.equals("escena7")) {
    if (mouseX > botonX[0] && mouseX < botonX[0] + botonAncho && mouseY > botonY[0] && mouseY < botonY[0] + botonAlto) {
      escenaActual = "escena10";
      numOpciones = 1; // Establecer el número de opciones para la escena "escena10"
    }
  } else {
    // Si no se ha implementado una acción para la escena actual, reiniciar el juego
    escenaActual = "escena0";
    numOpciones = 2;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    // Reiniciar el juego
    escenaActual = "escena0";
    numOpciones = 2;
  }
}
