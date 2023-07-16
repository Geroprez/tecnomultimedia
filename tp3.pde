String escenaActual; 
int numOpciones; 

// Imágenes
PImage[] imagenes;
int numImagenes = 19;
int imagenActual = 0;

//botones
int[] botonX;
int[] botonY;
int botonAncho = 200;
int botonAlto = 60;

void setup() {
  size(600, 600);
  escenaActual = "inicio"; // dice la escena actual
  
  // imágenes
  imagenes = new PImage[numImagenes];
  for (int i = 0; i < numImagenes; i++) {
    imagenes[i] = loadImage("dibujo" + i + ".jpg");
  }
  
  // los arreglos de posiciones de botones
  botonX = new int[2];
  botonY = new int[2];
  
  // definicion de las posiciones de los botones
  botonX[0] = 100;
  botonY[0] = height - 100;
  botonX[1] = width - 300;
  botonY[1] = height - 100;
  
  // dice el número de opciones para la primer escena
  numOpciones = 2;
}

void draw() {
  background(255);
  
  // checkea la escena actual
  if (escenaActual.equals("inicio")) {
    dibujarEscenaInicio();
  } else if (escenaActual.equals("creditos")) {
    dibujarEscenaCreditos();
  } else if (escenaActual.equals("semillas")) {
    dibujarEscenaSemillas();
  } else if (escenaActual.equals("tierra")) {
    dibujarEscenaTierra();
  } else if (escenaActual.equals("agua")) {
    dibujarEscenaAgua();
  } else if (escenaActual.equals("final1")) {
    dibujarEscenaFinal1();
  } else if (escenaActual.equals("final2")) {
    dibujarEscenaFinal2();
  } else if (escenaActual.equals("final3")) {
    dibujarEscenaFinal3();
  } else if (escenaActual.equals("final4")) {
    dibujarEscenaFinal4();
  } else if (escenaActual.equals("pantallaExtra1")) {
    dibujarPantallaExtra1();
  } else if (escenaActual.equals("pantallaExtra2")) {
    dibujarPantallaExtra2();
  }
}
