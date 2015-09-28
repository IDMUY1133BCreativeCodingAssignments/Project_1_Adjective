int size;
float x;
int y;
int z;
int d;

void setup() {
  size(640, 360);
  background(0);

  size = 40;
  frameRate(30);
  rectMode(CENTER);
  ellipseMode(CORNER);
  frameRate(100);
}

void draw() {



  translate(width/2, height/2);
  rotate(x);//speed of rotation 
  drawobjects();  
  size();
  if (mousePressed) {
    x = x+.02;// base speed 
    if (mouseX<640 ) {//if in center goes faster need to find a way to include mouseX
      x = x+ random(.05);
    }
  }
}

void drawobjects() {// draws the objects 
  rect(0, 0, 120, 120); 
  rotate(10);



  fill(random(1, 255), mouseX, mouseY);//change color at random
  translate(mouseY/2, mouseX/2);//movedrawcircles

  //ellipse(random(4)+100, 20, 40, 40);
  // ellipse(20, random(4)+100, 40, 40);
  rect(random(4)+100, 20, size, 40);
  rect(20, random(4)+100, size, 40);


  rect(random(4)-140, -60, size, 40);
  rect(random(4)-60, -140, size, 40);
  // ellipse(random(4)-140, -60, 40, 40);
  // ellipse(random(4)-60, -140, 40, 40);
}

void size() {
  if (key == 32 ) 
  { // spacebar pressed changes size 
    size = size + 1;

    
  }
   else{ 
    size = 40;
}
}