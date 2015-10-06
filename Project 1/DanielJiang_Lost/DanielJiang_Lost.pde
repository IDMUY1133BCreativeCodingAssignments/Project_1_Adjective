//Press Space and Backspace!
int a;
int b;
int x;
int y;
float g=100.0;
float z;
float w;
int i;
float speed=5;
int n;
float speed2=5;
float speed3=5;
float spin=0.0;
void setup() {
  size (1200, 650);
  rectMode(CENTER);
  noStroke();
}
void draw() {
  background(0);
  wanderer();
  friend1();
  friend2();
  friend3();
  friend4();
  if (key==32) {//space
    layout2();
  } 
  if (key==8) {//backspace
    background(0);
    wanderer();
    friend1();
    friend2();
    friend3();
    friend4();
  }
}
void wanderer() {
  float delay=.05;
  float desX=mouseX-x;
  x+=desX*delay;
  float desY=mouseY-y;
  y+=desY*delay;
  fill(255);
  strokeWeight(1);
  ellipse(x, y, 10, 10);
}
void friend1(){
  fill(90);
  rectMode(CENTER);
  rect(random(0,width),random(0,height),random(0,50),random(0,50));
}
void friend2() {
  z=z+speed;
  if ((z>width)||(z<0)) {
    speed=speed*-1;
  }
  fill(90);
  for (i=30; i<=height-20; i+=150) {
    ellipse(z, i, 25, 25);
  }
}
void friend3() {
  w=w+speed2;
  if ((w>height)||(w<0)) {
    speed2=speed2 *-1;
  }
  fill(90);
  for (i=30; i<=width-20; i+=125) {
    rect(i, w, 25, 25);
  }
}
void friend4(){
  rectMode(CENTER);
  fill(90);
  pushMatrix();
  rotate(spin);
  translate(x,y);
  rect(0,0,50,50);
  popMatrix();
  x+=.01;
  spin+=.02;
  if(x>width){
    x=0;
  }
  if(y>height){
    y=0;
  }
}
void layout2() {
  background(0);
  fill(255);
  ellipse(width/2,height/2, 900,900);
  fill(0);
  ellipse(width/2-100,150,30,30);
  ellipse(width/2+100,150,30,30);
  noStroke();
  g=g+speed3;
  if (g>340){
    g=100;
  }
  fill(0,0,155);
  triangle(350,g,330,g+50,370,g+50);
  arc(350,g+50,40,50,0,PI,OPEN);
  stroke(0);
  strokeWeight(2);
  line(width/2-50,250,width/2+50,250);
}