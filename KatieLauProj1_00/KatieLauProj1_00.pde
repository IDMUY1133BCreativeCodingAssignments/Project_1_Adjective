//TO DO: 
//ADD STICK FUNCTION
//FIGURE OUT ARRIVE FUNCTION
//INTEGRATE RECTANGLE COMPONENT MAYBE UGHHHHHHH
//AND THE COLOR THING TOO (LIGHTER AS FARTHER AWAY)
//if the mouse is outside the screen and the triangle is retracting
//it will keep on retracting

//otherwise, if you put the mouse in screen while triangle is retracting
//the triangle will stop
//so figure out that logic sigh 
Triangle triangle; 

float statTriX = 150; //the static positions of the triangle
float statTriY = 110;

PVector mouse; 
PVector statTri;
boolean inShape = false; 

float maxSpeed = 2.4;
float maxAcc = .01;

boolean activate = false;
boolean retract = false;
boolean stuck = false; 
int start = 0;

void setup() {
  size(600, 300);
  background(122, 178, 152);
  noStroke();
  frameRate(60);
  triangle = new Triangle();
  triangle(statTriX, statTriY, 100, 300, 200, 300);
}

void draw() {
  //add sticking function in here somewhere
  mouse = new PVector(mouseX, mouseY);
  statTri = new PVector(150, 100);
  triangle.mousedOverTri(); //checks to see if the vertex should move towards mouse
  float d = triangle.getCoord().dist(mouse); //sees if vertex is close to mouse
  if (1 < d && d < 2) {
    triangle.staticTri(); //will get the vertex to stop wobbling once it reaches close to mouse
    stuck = true;
  } else if (stuck & !leftScreen()) {
    background(122, 178, 152);
    triangle(mouseX, mouseY, 100, 300, 200, 300);
    triangle.setCoord(mouse); //updates coordinates of triangle so it'll retract correctly
  } else if (leftScreen() && !stuck) {
    triangle.seek(statTri); //instead of the mouse as the target, the target is now the vector of the original position
    triangle.update();
    background(122, 178, 152);
    triangle.display();
    activate = false; //triangle will not move once mouse reenters screen unless mouse goes over triangle
  } else if (!leftScreen() && activate == true && !stuck) {
    triangle.seek(mouse);
    triangle.update();
    background(122, 178, 152);//prevents triangle from continuously showing
    triangle.display();
  }
}

class Triangle {
  PVector tri1;
  PVector tri2;
  PVector tri3;
  PVector velocity;
  PVector acceleration;
  PVector desired;
  PVector target;
  PVector steer; 

  Triangle() {
    tri1 = new PVector(statTriX, statTriY);
    tri2 = new PVector(100, 300); //
    tri3 = new PVector(200, 300); //
    velocity = new PVector(.01, .01);
    acceleration = new PVector(.01, .01);
  }

  void seek(PVector target) {
    PVector desired = PVector.sub(target, tri1); // vector that points from object to location
    desired.normalize(); //makes it unit vector of 1, so it is just represents direction
    desired.mult(1); //
    acceleration = desired; //acceleration is in direction of target (since it was normalized)
    //then determined by multiplication
  }

  void update() {
    velocity.add(acceleration); //velocity incremented by acceleration 
    velocity.limit(maxSpeed); //prevents velocity from being TOO fast
    tri1.add(velocity);
  }

  void display() { // displays final triangle 
    fill(255, 177, 165); 
    triangle(tri1.x, tri1.y, tri2.x, tri2.y, tri3.x, tri3.y);
  }

  void mousedOverTri() {
    if (mouse.x > tri2.x && mouse.x < tri3.x
      && mouse.y > tri1.y && mouse.y < tri3.y) {
      activate = true; //will make the vertex start to move towards mouse
    }
  }

  void staticTri() {
    tri1.x = mouse.x;
    tri1.y = mouse.y;
  }

  void setCoord(PVector newCoord) { //used to change tri1 coordinates in draw function
    tri1.x = newCoord.x;
    tri1.y = newCoord.y;
  }
  
    PVector getCoord() { //used to access tri1 in draw function
    return tri1;
  }
}

boolean leftScreen() { //checks if mouse leaves the screen at all times
  if (mouseX > width - 5 || mouseX < 5 || mouseY > height - 5 || mouseY < 5) {
    retract = true;
    stuck = false;
  } else {
    retract = false;
  }
  return retract;
}

class Rectangle {
}