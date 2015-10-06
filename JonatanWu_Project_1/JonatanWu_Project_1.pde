float angle;
float speed;
int start = 0;
int end = 1000;
color a1, a2, a3, a4, a5, a6;
void setup() {
  size(700, 700);
  ellipseMode(CENTER);
  a1= color(50,0,0);
  a2= color(0, 168, 250, 15);
  frameRate(90);
}
void draw() { 
  bng();
  for ( int i = start; i < start+end; i++) {
    float remap = map(i, start, start + end, 0, 1);
    color x = lerpColor(a1, a2, remap);
    stroke(x);
    line(i, start, i, start + end);
  } 
  speed = .07;
  angle = angle - speed;
  float c = (PI+angle);
  //translate(350,350);
  rotate(c);
  shed();
  if (mouseX < width/2) {
    if (mousePressed) {
      background(0);
      anarchy();
    }
  }
  if ( mouseX > width/2 ) {
    if (mousePressed) { 
      flashbng();
    }
  }
}
void bng() {
  noStroke();
  background(255);
  rectMode(CORNER);
  fill(200, 5, 20);
  rect(0, 0, 700, 50);
  rect(0, 100, 700, 50);
  rect(0, 200, 700, 50);
  rect(0, 300, 700, 50);
  rect(0, 400, 700, 50);
  rect(0, 500, 700, 50);
  rect(0, 600, 700, 50);
  rect(0, 700, 700, 50);
}
void shed() {
  ellipseMode(CENTER); 
  strokeWeight(1);
  stroke(0);
  fill(255, 5, 5); // Red
  ellipse(width/2, height/2, 400, 400);
  fill(195, 195, 195); //White 
  ellipse(width/2, height/2, 320, 320);
  fill(255, 5, 5); // Red
  ellipse(width/2, height/2, 240, 240);
  fill(5, 120, 255); // Blue
  ellipse(width/2, height/2, 160, 160);
  noStroke(); // Triangle and Star
  fill(195, 195, 195);
  triangle(width/2, 375, height/2 -80, 325, height/2+80, 325); // Main
  triangle(width/2, 270, height/2 -20, 325, height/2+20, 325); // Top Star
  triangle(width/2, 375, height/2 -45, 410, height/2-20, 330);
  triangle(width/2, 375, height/2 +45, 410, height/2+20, 330);
}
void anarchy() {
  a3= color(0);
  a4= color(255, 5, 5);
  for ( int i = start; i < start+end; i++) {
    float remap = map(i, start, start + end, 0, 1);
    color x = lerpColor(a3, a4, remap);
    stroke(x);
    line(i, start, i, start + end);
  } 
  ellipseMode(CENTER);
  stroke(255, 5, 5);
  strokeWeight(45);
  fill(0, 0, 0, 0);
  ellipse(width/2, height/2, 400, 400);
  strokeWeight(45);
  line(width/2 + 30, 90, width/2 + 100, 600);
  strokeWeight(50);
  line(width/2 + 30, 90, width/2 - 200, 620);
  strokeWeight(45);
  line(50, 350, 650, 300);
}
void flashbng() { 
  background(255);
  ellipseMode(CENTER);
  stroke(0);
  strokeWeight(20);
  fill(255);
  ellipse(width/2, height/2, 400, 400);
  fill(255, 255, 255, 15);
  strokeWeight(5);
  ellipse(width/2, height/2, 350, 350); 
  line(width/2, 550, width/2, 110);
  line(width/2, 350, 170, 500);
  line(width/2, 350, 530, 500);
}