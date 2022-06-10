int rectt, recttt;

void setup(){
size(800,600);
  rectt=1200;
  recttt=1300;
}

void draw(){
for (int u=40;u<rectt;rectt-=30){
strokeWeight (8);
rectMode(CENTER);
rect(width/2,450,rectt,rectt);  

 }
 
 
}
