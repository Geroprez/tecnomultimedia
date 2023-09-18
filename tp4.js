const DERECHA = "DERECHA";
const IZQUIERDA = "IZQUIERDA";

let cantImagenes = 3;
let imagenesHarryDer = [];
let imagenesHarryIzq = [];
let spriteActual = 0;
let direccion = DERECHA;

let posX = 20;
let posYInicial = 200;
let posY = posYInicial;
let personajeEstaSaltando = false;
let incrementoPosX = 2;
let alturaSaltoMaxima = 60;
let alturaSaltoActual = 0;
let enDescenso = false;
let escaleraX = 180;
let anchoTronco = 30;
let altoTronco = 40;
let troncoVelocidad = 2;

let pantallaActual = 1;
let numPantallas = 5; // Añadida pantalla de instrucciones (4) y pantalla de créditos (5)
let anchuraPantalla;
let ganoJuego = false;
let juegoDetenido = false;

let escalando = false;
let nivelSubterraneo = 315;
let alturaEscalera = 150;
let enEscalera = false;
let direccionSalto = -1;

let velocidadSalto = 4;

let alturaSuperficie = 350;
let posXHoyo = 105;
let posYHoyo = 240;
let anchoHoyo = 140;
let altoHoyo = 10;

let imagenHarrySaltoDer;
let imagenHarrySaltoIzq;
let imagenHarryEscalando;
let imagenHarryQuietDer;
let imagenHarryQuietIzq;
let fondo1;
let fondo2;
let fondo3;
let imagenTronco;
let troncoX1 = 500;
let troncoX2 = 700;
let troncoY = 220;
let troncoX2Subterraneo = 500;
let troncoY2Subterraneo = 330;

let troncoX3Subterraneo = 600;
let troncoY3Subterraneo = 330;
let generacionTroncosHabilitada = true;

let tiempoRestanteSegundos = 300;
let tiempoRestanteCuadros = tiempoRestanteSegundos * 60;
let cuadrosTranscurridos = 0;
let tiempoInicial;

let instrucciones = "Instrucciones:\n\nMueve a Harry Potter usando las flechas izquierda y derecha. \nSalta con la flecha arriba. \nBaja por las escaleras con la flecha abajo. Evita los troncos y los hoyos. \nAlcanza el final antes de que se agote el tiempo.";

let creditos = "Créditos:\n\nDesarrollado por Geronimo Perez. \nImágenes y recursos gráficos obtenidos de Pinterest y The Sprite Resource.";

function preload() {
  for (let i = 0; i < cantImagenes; i++) {
    imagenesHarryDer[i] = loadImage(`data/harry_der${i}.png`);
    imagenesHarryIzq[i] = loadImage(`data/harry_izq${i}.png`);
  }

  fondo1 = loadImage('data/pantalla1.png');
  fondo2 = loadImage('data/pantalla2.png');
  fondo3 = loadImage('data/pantalla3.png');

  imagenHarrySaltoDer = loadImage('data/harry_salto.png');
  imagenHarrySaltoIzq = loadImage('data/harry_salto_izq.png');
  imagenHarryEscalando = loadImage('data/escalando.png');
  imagenHarryQuietDer = loadImage('data/harry_quieto_der.png');
  imagenHarryQuietIzq = loadImage('data/harry_quieto_izq.png');

  imagenTronco = loadImage('data/tronco.png');
}

function setup() {
  createCanvas(400, 400);
  anchuraPantalla = width;
  tiempoInicial = millis();
}

function dibujarTronco(x, y) {
  image(imagenTronco, x, y, anchoTronco, altoTronco);
}

function calcularSiguienteSprite() {
  spriteActual += 0.1;
  if (spriteActual >= cantImagenes) {
    spriteActual = 0;
  }
}

let jugadorSeMueve = false;

function moverPersonaje() {
  if (!juegoDetenido) {
    jugadorSeMueve = false;

    if (keyIsPressed) {
      if (keyIsDown(LEFT_ARROW)) {
        direccion = IZQUIERDA;
        posX -= incrementoPosX;
        jugadorSeMueve = true;
      } else if (keyIsDown(RIGHT_ARROW)) {
        direccion = DERECHA;
        posX += incrementoPosX;
        jugadorSeMueve = true;
      }

      if (keyIsDown(UP_ARROW) && !personajeEstaSaltando) {
        if (enEscalera) {
          if (posY > alturaEscalera) {
            posY -= incrementoPosX;
          } else {
            escalando = false;
          }
        } else {
          iniciarSalto();
        }
      } else if (keyIsDown(DOWN_ARROW) && enEscalera) {
        if (posY + incrementoPosX < nivelSubterraneo) {
          posY += incrementoPosX;
        }
      }
    }

    if (enEscalera) {
      if (posY <= alturaEscalera) {
        escalando = false;
      }
      if (posY >= nivelSubterraneo) {
        enEscalera = false;
        escalando = false;
      }
    } else {
      if (posY > nivelSubterraneo) {
        posY = nivelSubterraneo;
        personajeEstaSaltando = false;
        enDescenso = false;
        alturaSaltoActual = 0;
        direccionSalto = -1;
      }
    }

    if (pantallaActual === 2) {
      if ((dist(posX + 20, posY + 40, troncoX1 + anchoTronco / 2, troncoY + altoTronco / 2) < anchoTronco / 2) ||
        (dist(posX + 20, posY + 40, troncoX2 + anchoTronco / 2, troncoY + altoTronco / 2) < anchoTronco / 2) ||
        (dist(posX + 20, posY + 40, troncoX2Subterraneo + anchoTronco / 2, troncoY2Subterraneo + altoTronco / 2) < anchoTronco / 2)) {
        juegoDetenido = true;
      }
    }

    if (pantallaActual === 3) {
      if ((dist(posX + 20, posY + 40, troncoX3Subterraneo + anchoTronco / 2, troncoY3Subterraneo + altoTronco / 2) < anchoTronco / 2)) {
        juegoDetenido = true;
      }
    }

    if (pantallaActual === 3) {
      if (posX + 20 >= posXHoyo && posX <= posXHoyo + anchoHoyo && posY + 40 >= posYHoyo && posY <= posYHoyo + altoHoyo) {
        juegoDetenido = true;
      }
    }
  }
}

function iniciarSalto() {
  if (!juegoDetenido && !escalando && !personajeEstaSaltando) {
    personajeEstaSaltando = true;
    direccionSalto = -1;
    enDescenso = false;
  }
}

function modificarSalto() {
  if (personajeEstaSaltando) {
    incrementoPosX = 2;

    if (!enDescenso) {
      posY += direccionSalto;
      alturaSaltoActual += abs(direccionSalto);

      if (alturaSaltoActual >= alturaSaltoMaxima) {
        enDescenso = true;
        direccionSalto = 1;
      }
    } else {
      posY += direccionSalto;

      if (posY === posYInicial) {
        personajeEstaSaltando = false;
        enDescenso = false;
        alturaSaltoActual = 0;
        direccionSalto = -1;
      }
    }
  }
}

function keyPressed() {
  if (key === 'r') {
    reiniciarJuego();
  }

 
  if (key === 'i') {
    pantallaActual = 4;
  }

 
  if (key === 'c') {
    pantallaActual = 5;
  }
}

function reiniciarJuego() {
  ganoJuego = false;
  pantallaActual = 1;
  posX = 20;
  posY = 200;
  juegoDetenido = false;
  tiempoInicial = millis();

  troncoX1 = 500;
  troncoX2 = 700;
  troncoX2Subterraneo = 500;
  troncoY2Subterraneo = 330;

  troncoX3Subterraneo = 600;
  troncoY3Subterraneo = 330;

  generacionTroncosHabilitada = true;
}

function dibujarPersonaje() {
  if (!juegoDetenido && pantallaActual !== 4 && pantallaActual !== 5) {
    if (personajeEstaSaltando) {
      if (direccion === DERECHA) {
        image(imagenHarrySaltoDer, posX, posY, 20, 40);
      } else if (direccion === IZQUIERDA) {
        image(imagenHarrySaltoIzq, posX, posY, 20, 40);
      }
    } else if (escalando) {
      image(imagenHarryEscalando, posX, posY, 20, 40);
    } else {
      let spriteArray;
      if (direccion === DERECHA) {
        spriteArray = imagenesHarryDer;
      } else {
        spriteArray = imagenesHarryIzq;
      }

      if (jugadorSeMueve) {
        calcularSiguienteSprite();
        let spriteIndex = int(spriteActual);
        image(spriteArray[spriteIndex], posX, posY, 20, 40);
      } else {
        if (direccion === DERECHA) {
          image(imagenHarryQuietDer, posX, posY, 20, 40);
        } else {
          image(imagenHarryQuietIzq, posX, posY, 20, 40);
        }
      }
    }
  }
}

function draw() {
  if (!juegoDetenido) {
    let pantallaAnterior = pantallaActual;
    if (!ganoJuego && posX >= anchuraPantalla) {
      if (pantallaActual < numPantallas) {
        pantallaActual++;
        posX = 0;
      } else {
        ganoJuego = true;
        juegoDetenido = true;
      }
    }

    if (!ganoJuego) {
      if (pantallaActual === 1) {
        background(fondo1);
        let escaleraY = alturaEscalera;
        enEscalera = posX >= escaleraX && posX <= escaleraX + 30 && posY >= escaleraY;
        if (enEscalera) {
          escalando = true;
        } else {
          escalando = false;
        }
      } else if (pantallaActual === 2) {
        background(fondo2);

        if (generacionTroncosHabilitada) {
          dibujarTronco(troncoX1, troncoY);
          dibujarTronco(troncoX2, troncoY);
          dibujarTronco(troncoX2Subterraneo, troncoY2Subterraneo);
          troncoX1 -= troncoVelocidad;
          troncoX2 -= troncoVelocidad;
          troncoX2Subterraneo -= troncoVelocidad;

          if (troncoX2 <= -200) {
            generacionTroncosHabilitada = false;
          }
        }
      } else if (pantallaActual === 3) {
        background(fondo3);

        dibujarTronco(troncoX3Subterraneo, troncoY3Subterraneo);
        troncoX3Subterraneo -= troncoVelocidad;
      }
    }
  }

  if (pantallaActual !== 4 && pantallaActual !== 5) {
    moverPersonaje();
    modificarSalto();
    dibujarPersonaje();
  }

  if (!juegoDetenido && pantallaActual !== 4 && pantallaActual !== 5) {
    let tiempoTranscurrido = millis() - tiempoInicial;
    let tiempoRestante = tiempoRestanteSegundos * 1000 - tiempoTranscurrido;
    if (tiempoRestante < 0) {
      tiempoRestante = 0;
      juegoDetenido = true;
    }
    let minutos = int(tiempoRestante / 60000);
    let segundos = int((tiempoRestante % 60000) / 1000);

    let minutosStr = minutos < 10 ? '0' + minutos : minutos;
    let segundosStr = segundos < 10 ? '0' + segundos : segundos;

    fill(255);
    textSize(20);
    text(`${minutosStr}:${segundosStr}`, 10, 30);
  }

  
  if (pantallaActual === 4) {
    background(192); 
    fill(0);
    textSize(16);
    text(instrucciones, 50, 50, width - 100, height - 100);
  }

  
  if (pantallaActual === 5) {
    background(192); 
    fill(0);
    textSize(16);
    text(creditos, 50, 50, width - 100, height - 100);
  }
}
