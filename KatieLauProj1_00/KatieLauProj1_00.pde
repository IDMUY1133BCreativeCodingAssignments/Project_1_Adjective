Triangle triangle; //triangle object

color[] triColor = {color(178, 82, 160), color(178, 0, 160), color(127, 0, 114)};
int colorIndex; 
int brightness = 100;
float colorTriChange = 0; 

float statTriX = 300; //the static  of the triangle
float statTriY = 110;

PVector mouse; 
PVector statTri;

float maxSpeed = 2.4;

boolean activate = false;
boolean retract = false;
boolean stuck = false; 


void setup() {
  size(600, 400);
  background(122, 178, 152);
  noStroke();
  frameRate(125);
  triangle = new Triangle(); //constructs new triangle object
  triangle(statTriX, statTriY, 210, 280, 390, 280); //draws initial triangle
}

void draw() {
  mouse = new PVector(mouseX, mouseY);
  statTri = new PVector(300, 110);
  triangle.mousedOverTri(); //checks to see if the vertex should move towards mouse
  triangle.checkDistance();
  leftScreen();
  triangle.whichTri();
  triangle.update();
  background(122, 178, 152);
  triangle.display();
  border();
}

class Triangle {
  PVector tri1;
  PVector tri2;
  PVector tri3;
  PVector velocity;
  PVector acceleration;
  PVector desired;
  PVector target;
  Triangle() {
    tri1 = new PVector(statTriX, statTriY);
    tri2 = new PVector(210, 280); //
    tri3 = new PVector(390, 280); //
    velocity = new PVector(.001, .001);
    acceleration = new PVector(.005, .005);
  }

  void seek(PVector target) { //REFERRED TO http://natureofcode.com/book/chapter-1-vectors/
    PVector desired = PVector.sub(target, tri1); // vector that points from object to location
    desired.normalize(); //makes it unit vector of 1, so it is just represents direction
    desired.mult(1); //
    acceleration = desired; //acceleration is in direction of target (since it was normalized)
    //then determined by multiplication
  }

  void update() { //REFERRED TO http://natureofcode.com/book/chapter-1-vectors/
    velocity.add(acceleration); //velocity incremented by acceleration 
    velocity.limit(maxSpeed); //prevents velocity from being TOO fast to the point where you don't see the movement
    tri1.add(velocity);
  }

  void display() { // displays final triangle 
    triColor[1] = color(178, colorTriChange, 160); //if the color was changed my map, it reassigns that array value
    fill(triColor[whichColor()]);  //retrieves color index
    triangle(tri1.x, tri1.y, tri2.x, tri2.y, tri3.x, tri3.y); //displays triangle with vectors
  }

  void mousedOverTri() { 
    if ((mouse.x > tri2.x && mouse.x < tri3.x) 
      && (mouse.y > tri1.y && mouse.y < tri3.y)) { //checks if mouse is in triangle
      activate = true; //will make the vertex start to move towards mouse
    }
  }

  void setCoord(PVector newCoord) { //used to update tri1 coordinates if it's the mouse 
    tri1.x = newCoord.x;
    tri1.y = newCoord.y;
  }

  void checkDistance() { //checks distance between coordinate and mouse and coordinate original vertex
    float closeVertex = tri1.dist(mouse); //sees if vertex is close to mouse
    float closeOrig = tri1.dist(statTri); //sees if vertex is close to original position
    if (1 < closeVertex && closeVertex < 2) {
      triangle.setCoord(mouse); //will get the vertex to stop wobbling once it reaches close to mouse
      stuck = true;
      colorTriChange = 82;
  } else if (1 < closeOrig && closeOrig < 2) {
      triangle.setCoord(statTri);
      colorTriChange = 0;
    }
  }

  void whichTri() {
    if (stuck && retract == false) { //if triangle is STUCK to the mouse, then don't retract it
      stuckTriangle();
      colorIndex = 2; //sets it to a more intense color to show it stuck
      triangle.setCoord(mouse); //updates coordinates of triangle so it'll retract correctly
    } else if (retract == false && activate == true && !stuck) {
      mapColor();
      triangle.seek(mouse);
      colorIndex = 1;
    } else if (retract == true && !stuck) {
     // mapColor(); see below explanation in next else if statement
      triangle.seek(statTri); //instead of the mouse as the target, the target is now the vector of the original position
      activate = false; //triangle will not move once mouse reenters screen unless mouse goes over triangle
      colorIndex = 1;
    } else if (retract == false && !stuck) { //checks to see if mouse has reentered screen after leaving it (which sets retract back to false in the leftScreen() method
      //mapColor(); if the triangle wasn't moving, it'd still change colors since map uses distance
      //between tri1 and mouse
      triangle.seek(statTri);
      colorIndex = 1;
    }
  }
  
  int whichColor(){
    return colorIndex;
  }
  
  void mapColor(){
    float distance =  tri1.dist(mouse);
    colorTriChange = brightness;
    colorTriChange = int(map(brightness, 0, distance, 0, 82)); //unsure if correct
    colorTriChange = constrain(colorTriChange, 0, 82); //prevents triangle from turnign green
}
}

void stuckTriangle() {//draws triangle when stuck to mouse
  background(122, 178, 152);
  triangle(mouseX, mouseY, 210, 280, 390, 280);
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

void border() { //draws the border around the screen
  fill(209, 72, 56);
  rect(0, 0, 5, height);
  rect(0, 0, width, 5);
  rect(width-5, 0, 5, height);
  rect(0, height-5, width, 5);
}