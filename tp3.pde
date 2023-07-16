String escenaActual; // Escena actual del juego
int numOpciones; // Número de opciones disponibles en la escena actual

// Imágenes
PImage[] imagenes;
int numImagenes = 19;
int imagenActual = 0;

// Posiciones de los botones
int[] botonX;
int[] botonY;
int botonAncho = 200;
int botonAlto = 60;

void setup() {
  size(600, 600);
  escenaActual = "inicio"; // Comenzar en la escena "inicio"
  
  // Cargar las imágenes
  imagenes = new PImage[numImagenes];
  for (int i = 0; i < numImagenes; i++) {
    imagenes[i] = loadImage("dibujo" + i + ".jpg");
  }
  
  // Inicializar los arreglos de posiciones de botones
  botonX = new int[2];
  botonY = new int[2];
  
  // Definir las posiciones de los botones
  botonX[0] = 100;
  botonY[0] = height - 100;
  botonX[1] = width - 300;
  botonY[1] = height - 100;
  
  // Establecer el número de opciones para la escena "inicio"
  numOpciones = 2;
}

void draw() {
  background(255);
  
  // Verificar la escena actual
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

// Dibuja la escena de inicio
void dibujarEscenaInicio() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Bienvenido a la aventura de la gallinita roja!\n\nLa gallinita roja ha encontrado unas semillas y necesita tu ayuda para plantarlas.\n\n¿Quieres ayudarla?", width/2, height/2);
  
  // Opciones para el jugador
  dibujarOpciones();
}

// Dibuja la escena de créditos
void dibujarEscenaCreditos() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("Créditos\n\nDesarrollado por: Tu nombre\nBasado en el cuento 'La gallinita roja'\n\n¡Gracias por jugar!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la escena de las semillas
void dibujarEscenaSemillas() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Genial! La gallinita roja está emocionada.\n\nNecesita que la ayudes a sembrar las semillas.\n\n¿Dónde deberíamos plantarlas?", width/2, height/2);
  
  // Opciones para el jugador
  dibujarOpciones();
}

// Dibuja la escena de la tierra
void dibujarEscenaTierra() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("Perfecto, hemos plantado las semillas en la tierra.\n\nAhora necesitamos regarlas.\n\n¿Deberíamos regarlas ahora?", width/2, height/2);
  
  // Opciones para el jugador
  dibujarOpciones();
}

// Dibuja la escena del agua
void dibujarEscenaAgua() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Muy bien! Hemos regado las semillas.\n\nAhora, solo tenemos que esperar a que crezcan.\n\n¿Quieres esperar con la gallinita roja?", width/2, height/2);
  
  // Opciones para el jugador
  dibujarOpciones();
}

// Dibuja la escena final 1
void dibujarEscenaFinal1() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Felicidades! Las semillas han crecido y ahora hay hermosas flores.\n\nGracias por ayudar a la gallinita roja.\n\n¡Final 1!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la escena final 2
void dibujarEscenaFinal2() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Felicidades! Las semillas han crecido y ahora hay hermosas flores.\n\nGracias por ayudar a la gallinita roja.\n\n¡Final 2!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la escena final 3
void dibujarEscenaFinal3() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Felicidades! Las semillas han crecido y ahora hay hermosas flores.\n\nGracias por ayudar a la gallinita roja.\n\n¡Final 3!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la escena final 4
void dibujarEscenaFinal4() {
  background(220);
  image(imagenes[imagenActual], 0, 0, width, height);
  textSize(30);
  textAlign(CENTER);
  text("¡Felicidades! Las semillas han crecido y ahora hay hermosas flores.\n\nGracias por ayudar a la gallinita roja.\n\n¡Final 4!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la pantalla extra 1
void dibujarPantallaExtra1() {
  background(220);
  textSize(30);
  textAlign(CENTER);
  text("La gallinita roja y tú han plantado las semillas con mucho esfuerzo.\n\nLas flores han crecido y embellecen el jardín.\n\n¡Gracias por tu ayuda!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja la pantalla extra 2
void dibujarPantallaExtra2() {
  background(220);
  textSize(30);
  textAlign(CENTER);
  text("Después de plantar las semillas, la gallinita roja y tú observan cómo las flores florecen en diferentes colores.\n\nEs un espectáculo hermoso.\n\n¡Gracias por compartir esta aventura!", width/2, height/2);
  
  // Opción para el jugador
  dibujarOpciones();
}

// Dibuja las opciones para el jugador
void dibujarOpciones() {
  textSize(20);
  fill(0, 150);
  
  for (int i = 0; i < numOpciones; i++) {
    // Calcular la posición del botón
    float centroX = botonX[i] + botonAncho/2;
    float centroY = botonY[i] + botonAlto/2;
    
    // Verificar si el ratón está sobre el botón
    if (dist(centroX, centroY, mouseX, mouseY) < botonAncho/2) {
      fill(0, 200);
      
      // Verificar si se ha presionado el botón
      if (mousePressed) {
        botonPresionado(i);
      }
    } else {
      fill(0, 150);
    }
    
    // Dibujar el botón
    rect(botonX[i], botonY[i], botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Opción " + (i+1), botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
  }
}

// Función para manejar los botones presionados
void botonPresionado(int opcion) {
  // Verificar la escena actual y la opción seleccionada por el jugador
  if (escenaActual.equals("inicio")) {
    if (opcion == 0) {
      escenaActual = "semillas";
      imagenActual = 1; // Cambiar a la siguiente imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "semillas"
    } else if (opcion == 1) {
      escenaActual = "creditos";
      imagenActual = 2; // Cambiar a la siguiente imagen
      numOpciones = 1; // Establecer el número de opciones para la escena "creditos"
    }
  } else if (escenaActual.equals("creditos")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("semillas")) {
    if (opcion == 0) {
      escenaActual = "tierra";
      imagenActual = 3; // Cambiar a la siguiente imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "tierra"
    } else if (opcion == 1) {
      escenaActual = "agua";
      imagenActual = 4; // Cambiar a la siguiente imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "agua"
    }
  } else if (escenaActual.equals("tierra")) {
    if (opcion == 0) {
      escenaActual = "agua";
      imagenActual = 5; // Cambiar a la siguiente imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "agua"
    } else if (opcion == 1) {
      escenaActual = "pantallaExtra1";
      imagenActual = -1; // No se muestra ninguna imagen
      numOpciones = 1; // Establecer el número de opciones para la pantalla extra 1
      imprimirMensaje("¡Has tomado una decisión importante!");
    }
  } else if (escenaActual.equals("agua")) {
    if (opcion == 0) {
      escenaActual = "pantallaExtra2";
      imagenActual = -1; // No se muestra ninguna imagen
      numOpciones = 1; // Establecer el número de opciones para la pantalla extra 2
      imprimirMensaje("¡Has tomado una decisión importante!");
    } else if (opcion == 1) {
      escenaActual = "final3";
      imagenActual = 8; // Cambiar a la siguiente imagen
      numOpciones = 1; // Establecer el número de opciones para la escena "final3"
    }
  } else if (escenaActual.equals("final1")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("final2")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("final3")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("final4")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("pantallaExtra1")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  } else if (escenaActual.equals("pantallaExtra2")) {
    if (opcion == 0) {
      escenaActual = "inicio";
      imagenActual = 0; // Cambiar a la primera imagen
      numOpciones = 2; // Establecer el número de opciones para la escena "inicio"
    }
  }
}

// Función que retorna un valor relacionado con las decisiones tomadas
int obtenerResultado() {
  if (escenaActual.equals("final1")) {
    return 1;
  } else if (escenaActual.equals("final2")) {
    return 2;
  } else if (escenaActual.equals("final3")) {
    return 3;
  } else if (escenaActual.equals("final4")) {
    return 4;
  } else {
    return -1; // Valor por defecto si no hay resultado definido
  }
}

// Función que no retorna un valor pero muestra un mensaje relacionado con la escena actual
void imprimirMensaje(String mensaje) {
  println("Escena actual: " + escenaActual);
  println(mensaje);
}
