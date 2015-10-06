
float x;

void setup() {
  size(640, 360);

  fill(255);
  rectMode(CENTER);
  ellipseMode(CORNER);
  frameRate(100);
}

void draw() {
  background(51);


  translate(width/2, height/2);
  rotate(x);//speed of rotation 
  drawobjects();  

  if (mousePressed) {
    x = x+.02;// base speed 
    if(mouseX<360 ){//if in center goes faster need to find a way to include mouseX
      x = x+ random(.05);
  }
  }
}

void drawobjects() {// draws the objects 
  rect(0, 0, 120, 120); 
  rotate(x);
  ellipse(random(4)+100, 20, 40, 40);
  ellipse(20, random(4)+100, 40, 40);

  ellipse(random(4)-140, -60, 40, 40);
  ellipse(random(4)-60, -140, 40, 40);
}