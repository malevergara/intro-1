PFont fuente;
PImage img1, img2, img3, img4, img5, img6;

int escena = 0;
int contador = 0;
boolean reiniciando = false;

int opacidad = 0;  // Declarar con tipo
float tamFont = 10;
float posY = 480;
int esfumado = 0;
int posX = 0;

void setup() {
  size(640, 480);
  background(0);
  textSize(30);
  fuente = loadFont("Cambria-BoldItalic-48.vlw");

  img1 = loadImage("imagen1.jpg");
  img2 = loadImage("imagen 2.jpg");
  img3 = loadImage("imagen 3.jpg");
  img4 = loadImage("imagen 4.jpg");
  img5 = loadImage("imagen 5.jpg");
  img6 = loadImage("imagen 6.jpg");
}

void draw() {
  background(0);
  textFont(fuente);
  fill(#CB2525);


//IMAGEN 1
  if (escena == 0) {
    image(img1, 0, 0, width, height);
    textSize(tamFont);
    text("CAPERUCITA ROJA.", 0, 480);
    tamFont += 0.1;
    
    
    //IMAGEN 2
  } else if (escena == 1) {
    image(img2, 0, 0, width, height);
    textSize(30);
    text("CAPERUCITA ROJA ERA UNA NIÑA MUY QUERIDA\nPOR SU ABUELA, UN DIA ELLA SE ENFERMA Y LA MAMA\n LE PIDE QUE LLEVE A SU ABUELA UNA CANASTA\n CON COMIDA", posX, 320, 540, 160);
    posX += 1;
    
    
    //IMAGEN 3
  } else if (escena == 2) {
    image(img3, 0, 0, width, height);
    fill(#CB2525, esfumado);
    textSize(22);
    text("LA MADRE DE CAPERUCITA LE HABIA COMENTADO\nSOBRE LOS PELIGROS DEL BOSQUE Y QUE STE ATENTA\n,CAPERUCITA SE TOPA CON EL LOBO\nEL LE PREGUNTA A DONDE IBA CON ESA CESTA DE COMIDA\n CAPERUCITA LE DICE QUE A LO DE SU ABUELA", 50, 300, 540, 160);
    if (esfumado < 255) esfumado += 1;
    fill(#CB2525);
    
    
    //IMAGEN 4
  } else if (escena == 3) {
    image(img4, 0, 0, width, height);
    textSize(30);
    text("EL LOBO CON MUCHA HAMBRE SE DIRIGE A LA CASA DE LA ABUELA\nY ESPERA A QUE CAPERUCITA LLEGUE", 50, posY, 540, 160);
    if (posY > 300) posY -= 1;
    
    //IMAGEN 5
  } else if (escena == 4) {
    image(img5, 0, 0, width, height);
    textSize(tamFont);
    fill(#CB2525);
    textAlign(LEFT, TOP);
    text("CAPERUCITA AL LLEGAR DE SU ABUELA\nNOTA ALGO RARO EN ELLA Y\n LE PREGUNTA QUE BOCA\nMAS GRANDE TIENES\nEL LOBO SALTA HACIA CAPERUCITA\nYLE DICE SON PARA COMERTE MEJOR", 0, 140);
    tamFont += 0.1;
    
    //IMAGEN 6
  } else if (escena == 5) {
    image(img6, 0, 0, width, height);
    textSize(30);
    fill(#CB2525);
    text("POR SUERTE DE CAPERUCITA Y SU ABUELA\n SE ENCOTRABA CERCA UN CAZADOR QUE ESCUCHO SUS GRITOS \nY CORRIO A AYUDARLAS MATANDO AL LOBO\nY SALVANDO A CAPERUCITA Y SU ABUELA", posX, 320, 540, 200);
    posX += 1;

   //BOTON DE REINICIO
    fill(0);
    stroke(255);
    strokeWeight(2);
    rect(500, 420, 100, 40);
    fill(255);
    textSize(16);
    text("Reiniciar", 515, 445);
  }

  if (escena < 5) {
    contador++;
    if (contador > 300) {
      escena++;
      tamFont = 10;
      posY = 480;
      opacidad = 0;
      posX = 0;
      esfumado = 0;
      contador = 0;
    }
  }
}

void mouseClicked() {
  if (escena == 5) {
    if (mouseX > 500 && mouseX < 600 && mouseY > 420 && mouseY < 460) {
      escena = 0;
      tamFont = 10;
      posY = 480;
      opacidad = 0;
      posX = 0;
      esfumado = 0;
      contador = 0;
    }
  }
}
//FIN
