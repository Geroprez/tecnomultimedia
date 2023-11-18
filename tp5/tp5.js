let personajeObj;
let ImagenesDer = [];
let ImagenesIzq = [];
let ImagenesUp = [];
let ImagenesDown = [];
let ImagenesEnemigo = [];
let ImagenFondo;
let ImagenRoca;
let ImagenPaja;
let ImagenPan;
let ImagenBomba;
let canImagenes = 3;

function preload() {
  ImagenFondo = loadImage('assets/escenario.png');
  ImagenPersonaje = loadImage('assets/pollo.png');
  ImagenRoca = loadImage('assets/Roca.png');
  ImagenPaja = loadImage('assets/paja.png');
  ImagenBomba = loadImage('assets/bomba.png');
  ImagenPan = loadImage('assets/pan.png');

}

function setup() {
 createCanvas(400,400);




}


function draw() {
  background(ImagenFondo);
  
}
