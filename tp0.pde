void setup () {

size (500, 500);
background (81, 209, 246);

}
void draw () {
println ("X");
println (mouseX);
println ("Y");
println (mouseY);


stroke (11, 155, 17);
fill (11, 155, 17);
rect (0, 280, 500, 300);


stroke (0);
fill (237, 175, 17);
rect (80, 400, 350, 30);
rect (60, 400, 30, 350);
rect (415, 400, 30, 350);

stroke (237, 255, 0);
fill (237, 255, 0);
ellipse (70, 70, 50, 50);

stroke (250, 0, 0);
fill (250, 0, 0);
ellipse (200, 384, 30, 30);


stroke (200, 0, 0);
ellipse (206, 385, 30, 30);

stroke (0);
line (207, 370, 210, 360);

stroke (190, 255, 72);
fill (190, 255, 72);
ellipse (250, 384, 30, 30);
ellipse (250, 375, 15, 30);

stroke (0);
fill (200);
quad (350, 400, 340, 360, 390, 360, 380, 400);

stroke (77, 158, 255);
fill (77, 158, 255);  
rect (350, 389, 30, 10);

stroke (0);
line (250, 360, 249, 350);


}
