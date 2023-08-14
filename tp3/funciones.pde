void pantalla0() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  fill(255, 200); 
  rect(300,220,200,100);
  textAlign(CENTER);
  textSize(24);
  fill(0);
  text("La gallinita roja", width / 2, 235);
  textSize(16);
  mostrarTexto("Presiona 'A' para iniciar la aventura\nPresiona 'C' para ver los créditos", width / 2, height / 2 + 50);
  
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    if (key == 'a' || key == 'A') {
      momento = 2; 
    } else if (key == 'c' || key == 'C') {
      momento = 1; 
    }
  }
}
void pantalla1() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Texto de créditos\nToca 'C' para volver al inicio.", width / 2, height - 50);
  fill(255, 200);
  rect(300,180,200,100);
  fill(0);
  text("Creador: Byron Barton\nCodigo:Geronimo Perez\nDibujos:StableDifussion",width / 2, 180);
  if (keyPressed && !esperaTeclaSuelta && (key == 'c' || key == 'C')) {
    esperaTeclaSuelta = true;
    momento = 0; // Regresar a la pantalla de inicio
  }
}

void pantalla2() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Habia una vez una gallina roja que vivia en una pequeña granja roja\n junto a un perro, un gato y un monton de animales.",width / 2, 180);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 3;
  }
}

void pantalla3() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("En el establo vivían las vacas y los caballos y \nlos cerdos tenían su propia cochiquera. \nHabía hasta un estanque con patos y un corral con muchas gallinas.",width/2, 180); 
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 4;
  }
}

void pantalla4() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Un día la gallinita roja, escarbando en la tierra de la granja, \nencontró un grano de trigo.",width/2, 180);
  mostrarTexto("Que hara la gallina ahora?",width/2, 320);
  mostrarTexto("A para comersela\nD para pedir ayuda", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    int decision = tomarDecision(key);
    if (decision == 0) {
      momento = 5;
    } else if (decision == 1) {
      momento = 6;
    }
  }
}

void pantalla5() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina se comio la semilla porque tenia algo de hambre \ny dicha semilla se veia deliciosa.\nDespues de eso regreso con sus amigos y paso el dia durmiendo. ",width/2,180);
  mostrarTexto("FINAL 1\nToca 'R' para reiniciar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta && (key == 'r' || key == 'R')) {
    esperaTeclaSuelta = true;
    momento = 0; 
  }
}

void pantalla6() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina recogio la semilla. Se fue a la granja a la granja a plantarla, \nle pidio ayuda a sus amigos, pero ellos se negaron",width/2,180);
  mostrarTexto("Que hara la gallina ahora?",width/2,320);
  mostrarTexto("A para convercer a los animales\nD para plantarla sola", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    int decision = tomarDecision(key);
    if (decision == 0) {
      momento = 7;
    } else if (decision == 1) {
      momento = 14;
    }
  }
}

void pantalla7() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina dijo a sus amigos de que si la ayudan, \nse podrian comer un plato delicioso. \nDespues de eso, el perro, el gato y el cerdo decidieron ayudar a la gallina.",width/2,180);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 8;
  }
}

void pantalla8() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina y sus amigos plantaron la semilla \ny luego de un tiempo esta se transforma en trigo y \nlos animales cortaron dicha planta.",width/2,150);
  mostrarTexto("El perro inmediatamente pregunto a la gallina: \nQue hacemos con el trigo?",width/2,280);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 9;
  }
}

void pantalla9() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina le dijo que hiban a hacer harina y amasarla.\nMas tarde, los animales hicieron las acciones mencionadas,\n despues de eso, el gato pregunto que vamos a hacer con la masa.",width/2,150);
  mostrarTexto("A para pan\n D para fideos", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    int decision = tomarDecision(key);
    if (decision == 0) {
      momento = 10;
    } else if (decision == 1) {
      momento = 12;
    }
  }
}

void pantalla10() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina simplemente le dijo que hiba a preparar algo simple,\n un pan comun y corriente.",width/2,150);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 11;
  }
}

void pantalla11() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Despues de eso la gallina cocino el pan sin problema y \ncompartio el plato con sus amigos porque estos \nayudaron en su preparacion.",width/2,150);
  mostrarTexto("FINAL 2\nToca 'R' para reiniciar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta && (key == 'r' || key == 'R')) {
    esperaTeclaSuelta = true;
    momento = 0; 
  }
}

void pantalla12() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina decidio hacer fideos caseros con la masa que creo, \nle pidio al perro estirar la masa y al cerdo cortarla mientras que ella \ny el gato hirvieron el agua.",width/2,150);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 13;
  }
}

void pantalla13() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Con los fideos hechos, los animales disfrutaron de esos ricos fideos.",width/2,150);
  mostrarTexto("FINAL 3\nToca 'R' para reiniciar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta && (key == 'r' || key == 'R')) {
    esperaTeclaSuelta = true;
    momento = 0; // Reiniciar aventura
  }
}

void pantalla14() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Al ver que los animales rechazaron la peticion, \nLa gallina decidio plantar la semilla sola. \nLuego de un tiempo hizo la misma pregunta para cortar el trigo, \nlos animales se negaron en ayudarla",width/2,150);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 15;
  }
}

void pantalla15() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Y asi paso con llevar el trigo al molino \ny con amasar la harina y hacer pan.",width/2,150);
  mostrarTexto("Toca cualquier tecla para continuar.", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    momento = 16;
  }
}

void pantalla16() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("Luego de eso la gallina hizo una ultima pregunta \nQuien se comera este pan?\nLos amigos de la gallina dijeron: YO!",width/2,150);
  mostrarTexto("Que Creen que hara la gallina?",width/2,280);
  mostrarTexto("A para compartir el pan. D para comerse todo el pan", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta) {
    esperaTeclaSuelta = true;
    int decision = tomarDecision(key);
    if (decision == 0) {
      momento = 17;
    } else if (decision == 1) {
      momento = 18;
    }
  }
}

void pantalla17() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("A pesar de que ellos no hicieron nada, \nla gallina decicio compartir el pan porque queria a sus amigos. \nTodos juntos disfrutaron del pan.",width/2,150);
  mostrarTexto("FINAL 4\nR para volver al inicio", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta && (key == 'r' || key == 'R')) {
    esperaTeclaSuelta = true;
    momento = 0; 
  }
}

void pantalla18() {
  tirarImagen(imagenes[imagenesPorPantalla[momento]]);
  mostrarTexto("La gallina simplemente les dijo que no \ny se comio todo el pan sin dejar ni un pedazo.",width/2,150);
  mostrarTexto("FINAL 5\nR para volver al inicio", width / 2, height - 50);
  if (keyPressed && !esperaTeclaSuelta && (key == 'r' || key == 'R')) {
    esperaTeclaSuelta = true;
    momento = 0; 
  }
}

void mostrarTexto(String mensaje, float x, float y) {
  float cajaAncho = textWidth(mensaje) + 70;
  float cajaAlto = 130;
  
  fill(255, 200); 
  rectMode(CENTER);
  rect(x, y, cajaAncho, cajaAlto);
  
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(mensaje, x, y);
}

void tirarImagen(PImage imagen) {
  image(imagen, 0, 0, width, height);
}

int tomarDecision(char tecla) {
  float decision = map(tecla, 'a', 'd', 0, 1); // Mapear 'a' a 0 y 'd' a 1
  return int(decision);
}
