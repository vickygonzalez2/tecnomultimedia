PImage foto1, foto2, foto3, foto4, foto5 ;
PFont fuente, fuente2;
float aumentar, subir;
boolean botonR;
void setup(){
  size(700,525);
  foto1 = loadImage("foto1.jpg");
  foto2 = loadImage("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  foto4 = loadImage("foto4.jpg");
  foto5 = loadImage("foto5.jpg");
  background(foto1);
  fuente = loadFont("fuente.vlw");
  fuente2 = loadFont("fuente2.vlw");
  textAlign(CENTER,CENTER);
  subir = 550;
  aumentar = 10;
}
void draw(){ 
textFont(fuente);
  background(foto1);
if (frameCount<300){
  fill(random(255));
  textSize(aumentar);
  aumentar = aumentar + 0.25;
  subir = subir - 1.5;
  text("UP", width/4,subir);
}
 fill(0);
 textFont(fuente2,30);
if(frameCount>300){
  background(foto2); 
}
  if(frameCount>600){
  background(foto3);
  textSize (20);
  text("directed by",width/4 , 100);
  text("co-directed by", width /4, height/2);
  textSize (40);
  text("PETE DOCTER", width /4, height/4 + 15); 
  text("BOB PETERSON", width /4, 310); 
  }
  if(frameCount>900){
  background(foto4);
  textSize (20);
  text("produced by", width - width/4 , height/4);
  text("music by",width - width/4 , height/2);
  textSize (40);
  text("JONAS RIVERA", width - width/4, height/4 + 45); 
  text("MICHAEL GIACCHINO", width - 200, 310);
  }
  if(frameCount>1200){
  background(foto5);
  textSize (20);
  textAlign (LEFT,LEFT);
  text("personajes principales", 75, 100);
  text("personajes secundarios", 75, 300);
  text ("reset", 650, 500) ;
  textSize (40);
  text("CARL F.", 25, 150);
  text("RUSSELL", 25, 200);
  text("DUG", 25, 250);
  text("ELLIE", 25, 350);
  text("KEVIN", 25, 400);
  text("CHARLES MUNTZ", 25, 450);
  }
}
void mousePressed(){
  if(frameCount>1200){
  if ((mouseX > 650) && (mouseX < 650+40) && (mouseY > 500) && (mouseY < 500+20)|| (keyPressed)) {
 botonR = true;
 }else{
   botonR = false;
  background(foto1);
  frameCount = 0; 
  subir = 550;
  aumentar = 10;
 }
}
}
