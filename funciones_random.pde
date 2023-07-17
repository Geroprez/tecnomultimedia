void dibujarEscenaInicio() {
  background(220);
  image(imagenes[imagenesPorEscena[0]], 0, 0, width, height);
  textSize(20);
  textAlign(CENTER);
  text(textoPorEscena[0], width/2, height/2);
  
  
  dibujarOpciones();
}


void dibujarEscenaIntroduccion() {
  background(220);
  image(imagenes[imagenesPorEscena[1]], 0, 0, width, height);
  textSize(20);
  textAlign(CENTER);
  text(textoPorEscena[1], width/2, height/2);
  
  
  dibujarOpciones();
}


void dibujarEscena(int escena) {
  background(220);
  image(imagenes[imagenesPorEscena[escena]], 0, 0, width, height);
  textSize(20);
  textAlign(CENTER);
  text(textoPorEscena[escena], width/2, height/2);
  
  
  dibujarOpciones();
}


void dibujarOpciones() {
  textSize(20);
  fill(0, 150);
  
  for (int i = 0; i < numOpciones; i++) {
    
    float centroX = botonX[i] + botonAncho/2;
    float centroY = botonY[i] + botonAlto/2;
    
    
    if (dist(centroX, centroY, mouseX, mouseY) < botonAncho/2) {
      fill(0, 200);
    } else {
      fill(0, 150);
    }
    
    
    rect(botonX[i], botonY[i], botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    
   
    if (escenaActual.equals("escena0")) {
      if (i == 0) {
        text("Comenzar aventura", botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
      } else if (i == 1) {
        text("Créditos", botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
      }
    } else if (escenaActual.equals("escena1")) {
      if (i == 0) {
        text("Continuar", botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
      }
    } else if (escenaActual.equals("escena2")) {
      if (i == 0) {
        text("Opción 1", botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
      } else if (i == 1) {
        text("Opción 2", botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
      }
    } else if (escenaActual.equals("escena3")) {
      
    } else if (escenaActual.equals("escena4")) {
      
    } else if (escenaActual.equals("escena5")) {
      
    } else if (escenaActual.equals("escena6")) {
      
    } else if (escenaActual.equals("escena7")) {
      
    } else if (escenaActual.equals("escena8")) {
      
    } else if (escenaActual.equals("escena9")) {
      
    } else if (escenaActual.equals("escena10")) {
      
    } else if (escenaActual.equals("escena11")) {
      
    } else if (escenaActual.equals("escena12")) {
      
    } else if (escenaActual.equals("escena13")) {
      
    } else if (escenaActual.equals("escena14")) {
      
    } else if (escenaActual.equals("escena15")) {
      
    } else if (escenaActual.equals("escena16")) {
      
    } else if (escenaActual.equals("escena17")) {
      
    } else if (escenaActual.equals("escena18")) {
      
    } else {
   
      text("Opción " + (i+1), botonX[i] + botonAncho/2, botonY[i] + botonAlto/2);
    }
  }
}


void asignarImagenes() {
  imagenesPorEscena = new int[] {
    0,  // Escena "escena0"
    1,  // Escena "escena1"
    2,  // Escena "escena2"
    3,  // Escena "escena3"
    4,  // Escena "escena4"
    5,  // Escena "escena5"
    6,  // Escena "escena6"
    7,  // Escena "escena7"
    8,  // Escena "escena8"
    9,  // Escena "escena9"
    10, // Escena "escena10"
    11, // Escena "escena11"
    12, // Escena "escena12"
    13, // Escena "escena13"
    14, // Escena "escena14"
    15, // Escena "escena15"
    16, // Escena "escena16"
    17, // Escena "escena17"
    18  // Escena "escena18"
  };
}


void asignarTexto() {
  textoPorEscena[0] = "La gallinita Roja\n\nHabía una vez una gallina roja que vivía en una pequeña granja roja junto a un perro, un gato y un montón de animales.\n\nEn el establo vivían las vacas y los caballos y los cerdos tenían su propia cochiquera.\nHabía hasta un estanque con patos y un corral con muchas gallinas.\nHabía en la granja también una familia de granjeros que cuidaba de todos los animales.\n\n\nUn día la gallinita roja, escarbando en la tierra de la granja, encontró un grano de trigo.\n\n¿Qué hará la gallina ahora?\n\n1 para recogerla y sembrarla\n2 para comérsela.";
  textoPorEscena[1] = "La gallina decidió recoger la semilla y sembrarla en la tierra fértil de la granja. Pidió ayuda a sus amigos el perro, el gato y el cerdo.\n\n¿Qué hará la gallina ahora?\n\n1 para convencer a sus amigos de ayudarla.\n2 para sembrarla sola.";
  textoPorEscena[2] = "La gallina decidió convencer a sus amigos de ayudarla. Les dijo que si la ayudaban, podrían disfrutar de un delicioso pan hecho con el trigo que crecería.\n\n¿Qué hará la gallina ahora?\n\n1 para preguntar qué hacer con el trigo.\n2 para convertir el trigo en harina.";
  textoPorEscena[3] = "La gallina decidió sembrar la semilla sola. Cuidó de la planta y pronto el trigo creció fuerte y saludable.\n\n¿Qué hará la gallina ahora?\n\n1 para preguntar qué hacer con el trigo.\n2 para convertir el trigo en harina.";
  textoPorEscena[4] = "Los amigos de la gallina estaban emocionados de ayudar. Trabajaron juntos para cortar el trigo y llevarlo al molino.\n\n¿Qué hará la gallina ahora?\n\n1 para convertir el trigo en harina.\n2 para guardar el trigo para más tarde.";
  textoPorEscena[5] = "La gallina preguntó qué hacer con el trigo y sus amigos respondieron que debían convertirlo en harina para hacer pan.\n\n¿Qué hará la gallina ahora?\n\n1 para hacer pan con la harina.\n2 para guardar la harina para más tarde.";
  textoPorEscena[6] = "La gallina decidió hacer pan con la harina. Amasaron la masa, la cocinaron en el horno y pronto el delicioso aroma del pan recién horneado llenó la granja.\n\n¡Felicitaciones! La gallina y sus amigos disfrutaron de un delicioso pan juntos.";
  textoPorEscena[7] = "A pesar de tener hambre, la gallina decidió compartir el pan con sus amigos. Todos juntos disfrutaron de una deliciosa comida y se sintieron muy felices.\n\n¡Fin! La gallinita roja aprendió que es mejor compartir y trabajar en equipo.";
  textoPorEscena[8] = "La gallina decidió no compartir el pan y se lo comió ella sola. Aunque estaba delicioso, la gallina se sintió un poco triste y sola.\n\n¡Fin! La gallinita roja aprendió que compartir es importante y nos hace sentir mejor.";
  textoPorEscena[9] = "Texto de la escena 9";
  textoPorEscena[10] = "Texto de la escena 10";
  textoPorEscena[11] = "Texto de la escena 11";
  textoPorEscena[12] = "Texto de la escena 12";
  textoPorEscena[13] = "Texto de la escena 13";
  textoPorEscena[14] = "Texto de la escena 14";
  textoPorEscena[15] = "Texto de la escena 15";
  textoPorEscena[16] = "Texto de la escena 16";
  textoPorEscena[17] = "Texto de la escena 17";
  textoPorEscena[18] = "Texto de la escena 18";
}
