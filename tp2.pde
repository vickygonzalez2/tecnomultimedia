PImage imagen;
int num = 12;
int frames = 90;
float var;

void setup () {
  size (800, 400);
  imagen = loadImage ("imagen.jpeg"); 
  image (imagen, 0, 200);
  imagen.resize (200, 200);
}

void draw () {
  background(20);
  noFill();

  for (int i = 0; i < num; i++) {
    float sz = i * 35;
    float sw = map (sin (var + TWO_PI / num * i), -1, 1, 1, 16);
    strokeWeight (sw);

    float r = map (mouseX, 0, width, 0, 255);
    float g = map (mouseY, 0, height, 0, 255);
    float b = map (sin (var + TWO_PI / num * i), -1, 1, 0, 255);
    stroke (r, g, b);

    rectMode(CENTER);
    rect (width / 2, height / 2, sz, sz);
  }

  var += TWO_PI / frames;
  
  // Mostrar la imagen cargada al lado de la animación
   image (imagen, 200 - imagen.height, 0);
}
