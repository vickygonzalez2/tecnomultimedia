//variable de texto
PFont fuente;
String t1;
String t2;
String t3;
String t4;
String t5;
String t6;
String reinicio;
PImage foto1;
PImage foto2;
PImage foto3;
int x;
int y;
int x2;
int y2;
int x3;
int x4;
int tam;
int posxb;
int posyb;

void setup () {
  size (640, 480) ;
  frameRate(30);
  //asignacion de variables
  t1 = "Pingüino emperador";
  t2 = "El emperador es el más grande\n   de todos los pingüinos: un\n  ejemplar mendio mide unos\n           115 centímetros.";
  t3 = "Los pingüinos se apiñan unos\n   contra otros para cobijarse\ndel viento y conservar el calor. ";
  t4 = "  Cuando un pingüino se ha\ncalentado un poco, vuelve al\nperímetro del grupo para que\notros puedan protegerse de las\n      condiciones glaciares.";
  t5 = "Los pingüinos emperador pasan\nel largo invierno en pleno hielo,\n  e incluso crían durante esta\n        estación inclemente.";
  t6 = "  Las hembras ponen un único\nhuevo que abandonan enseguida\n    para emprender una larga\n   expedición de caza que se\n prolongará durante dos meses.";
  reinicio ="Presiona el botón para reiniciar la presentación";
  
  foto1=loadImage ("foto1.jpg");
  foto2=loadImage ("foto2.jpg");
  foto3=loadImage ("foto3.jpeg");
  fuente = loadFont("BellMTBold-48.vlw");
  textFont(fuente);

  //variables de movimiento
  x = 0;
  y = 0;
  x2 = 660;
  x3 = -100;
  x4 = -800;

  //variables de tamano
  tam=0;
  //variables de boton de inicio y reinicio 
  posxb= 323;
  posyb=226;
}

void draw () {
  println(frameCount);

  //primer pantalla
  image (foto1, 0, 0);
  fill (81, 10, 250);
  textSize(40);

  text(t1, x, y);
  x++;
  y++;
  if (x>=146 && y >= 134) {
    x = 146;
    y = 134;
  }

  text (t2, x2, 193);
  x2 = x2 - 4;
  if (x2<=50) {
    x2 = 50;
  }

  //segunda pantalla
  if (frameCount>=200) {
    image (foto2, 0, 0);
    text (t3, x3, 70);

    x3 = x3 + 4;

    if (x3>=40) {
      x3 = 40;

      text (t4, x4, 246);

      x4 = x4 + 4;

      if (x4>=40) {
        x4 = 63;
      }
    }

    //tercera pantalla
    if (frameCount>=800) {
      image (foto3, 0, 0);
      push();
      textSize(tam);
      text (t5, 50, 60);
      tam=tam+2;
      if (tam>=40) {
        tam=40;
      }
      pop();

      push();
      textSize(tam);
      text (t6, 40, 246);
      tam=tam+2;
      if (tam>=40) {
        tam=40;
      }
      pop ();
    }
  }
  //reinicio
  if (frameCount>=1000) {
    background(0);
    //boton 
    ellipse(posxb, posyb, 70, 70);
    push();
    textSize(20);
    text(reinicio,120,301);
    pop();
    
  }
}

void mousePressed () {
  println(mouseX, mouseY);
  //condicional de tiempo del boton 
  if(frameCount>=1000){
    //variables que contienen la distancia y el radio para calcular el boton 
   float d1 = dist(mouseX, mouseY, posxb, posyb);
    int r1 = 70 / 2;
    //condicional del boton 
    if (d1 < r1) {
      //reinicio de variables del boton 
      //variables de movimiento
      x = 0;
      y = 0;
      x2 = 660;
      x3 = -100;
      x4 = -800;

      //variables de tamano
      tam=0;
      //variables de boton de inicio y reinicio 
      posxb= 323;
      posyb=226;
      frameCount=0;
    }
  }
}
