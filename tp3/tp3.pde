//https://youtu.be/11P02buEaXU
int momento = 0;
PImage[] imagenes;
int[] imagenesPorPantalla = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}; // Índice de imagen por cada pantalla
boolean esperaTeclaSuelta = false;

void setup() {
  size(600, 600);
  
  imagenes = new PImage[19]; 
  for (int i = 0; i < 19; i++) {
    imagenes[i] = loadImage("dibujo" + i + ".jpg");
  }
}

void draw() {
  background(220);
  
  if (momento == 0) {
    pantalla0();
  } else if (momento == 1) {
    pantalla1();
  } else if (momento == 2) {
    pantalla2();
  } else if (momento == 3) {
    pantalla3();
  } else if (momento == 4) {
    pantalla4();
  } else if (momento == 5) {
    pantalla5();
  } else if (momento == 6) {
    pantalla6();
  } else if (momento == 7) {
    pantalla7();
  } else if (momento == 8) {
    pantalla8();
  } else if (momento == 9) {
    pantalla9();
  } else if (momento == 10) {
    pantalla10();
  } else if (momento == 11) {
    pantalla11();
  } else if (momento == 12) {
    pantalla12();
  } else if (momento == 13) {
    pantalla13();
  } else if (momento == 14) {
    pantalla14();
  } else if (momento == 15) {
    pantalla15();
  } else if (momento == 16) {
    pantalla16();
  } else if (momento == 17) {
    pantalla17();
  } else if (momento == 18) {
    pantalla18();
  }
}





void keyReleased() {
  esperaTeclaSuelta = false;
}
