int x = 250; 
int y = 250; 
//String [] = Dx( "Left", "Right"); \
color a = color(random(255));
color b = color(random(1, 255), random(1, 255), random(1, 255));

void setup () {
  size(500, 500);
}

void draw () { 
  background(a);
  frameRate(90);
  back1(b);
  ship(x, y, a);
  
  rectMode(CENTER);
  noStroke();
  fill(random(25,70),random(50,70),random(25,70));
  rect(100, 250, 90, 100,10);
  rect(400, 250, 90, 100,10);
  

  // Problem Original circle does not disappear
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      pushMatrix(); 
      ship(x-100, y, a); 
      popMatrix();
    }
    fill(0); 
    ship(x, y, a);
  }
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      pushMatrix(); 
      ship(x+100, y, a); 
      popMatrix();
    }
    fill(0); 
    ship(x, y, a);
  }
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      pushMatrix(); 
      ship(x, y-100, a); 
      popMatrix();
    }
    fill(0); 
    ship(x, y, a);
  }
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      pushMatrix(); 
      ship(x, y+100, a); 
      popMatrix();
    } // S
    fill(0); 
    ship(x, y, a);
  } // keyPressed
  frameRate(100);
  strokeWeight(random(1,255));
  noFill();
  ellipse(250, 250, 300, 300);
  fill(random(50,70),random(60,120),random(1,100),70);
  ellipse(250, 250, 450, 450);

  shape1();
}// void Draw


void ship ( int x, int y, color a) {
  //fill(250, 70, 0); 
  fill(random(1, 255), random(1, 255), random(1, 255)); 
  ellipse( x, y, 100, 100);
}

// Custom Background
void back1( color b ) {
  if (mousePressed) { 
    background(random(1, 255));
  }
}

void shape1() { 
  for ( int x = width/2; x <= 500; x+=1) { 
    fill(random(1, 255), random(1, 255), random(1, 255));
    if (mousePressed) {
      rotate(PI/2);
      //rect(mouseX, mouseY, 50, 50, 50);
      rect(90, 90, 100, 120, 100);
    }
  }
}