PImage pajarito;

void setup (){
size (800, 400);
pajarito = loadImage ("pajarito.jpeg");
background (180, 220, 80);

}

void draw (){

image (pajarito, 0, 0);

strokeWeight (65); //grosor de la rama
stroke (90, 95, 60); //color rama
line (500, 420, 750, 300);
line (680, 330, 830, 80);

//cuerpo pajaro
noStroke ();

fill (250, 174, 6);
ellipse (570, 200, 180, 140);

fill (147, 125, 68);
quad (530, 150, 570, 88, 623, 90, 630, 200);
triangle (408, 250, 495, 154, 550, 151);
circle (540, 200, 130);
ellipse (550, 200, 170, 150);

fill (108, 94, 58);
triangle (460, 260, 523, 130, 625, 115);

fill (250, 174, 6);
rect (562, 125, 80, 35);
quad (568, 125, 575, 102, 624, 102, 628, 125); 
circle (624, 137, 40);
circle (573, 140, 43);

fill (0);
ellipse (575, 109, 8, 17);
ellipse (622, 107, 5, 14);
triangle (604, 121, 614, 130, 615, 120);
circle (610, 121, 10);

fill (255);
circle (612, 119, 4);

strokeWeight (14);
stroke (180, 220, 80);
line (449, 193, 550, 90);

strokeWeight (5);
stroke (152, 115, 116);
line (550, 270, 585, 340);
line (585, 340, 600, 333);

stroke (185, 133, 135);
line (587, 269, 645, 312);
line (645, 312, 655, 305);

}
