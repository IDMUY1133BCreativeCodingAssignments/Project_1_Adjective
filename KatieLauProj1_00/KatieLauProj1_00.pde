//TO DO: 
//INTEGRATE RECTANGLE COMPONENT 
//AND THE COLOR THING TOO (LIGHTER AS FARTHER AWAY)
//also play more around with colors
//set up array of colors -> if mousedOver, use color whatever. or if stretching, do the mapping thing
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
boolean left = false;


void setup() {
  size(600, 300);
  background(122, 178, 152);
  rect(0, 0, 5, 5);
  noStroke();
  frameRate(150);
  triangle = new Triangle();
  triangle(statTriX, statTriY, 100, 300, 200, 300);
}

void draw() {
  mouse = new PVector(mouseX, mouseY);
  statTri = new PVector(150, 100);
  triangle.mousedOverTri(); //checks to see if the vertex should move towards mouse
  triangle.checkDistance();
  leftScreen();
   if (stuck && retract == false) {
    normTriangle();
    triangle.setCoord(mouse); //updates coordinates of triangle so it'll retract correctly
  }  else if (retract == false && activate == true && !stuck) {
    triangle.seek(mouse);
  }
  else if (retract == true && !stuck) {
   // else if(retract == true || left == true){
    triangle.seek(statTri); //instead of the mouse as the target, the target is now the vector of the original position
    activate = false; //triangle will not move once mouse reenters screen unless mouse goes over triangle
  }
  else if(retract == false && !stuck){ //checks to see if mouse has reentered screen after
  //leaving it (which sets retract back to false in the leftScreen() method
    triangle.seek(statTri);
  }
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
    tri2 = new PVector(100, 300); //
    tri3 = new PVector(200, 300); //
    velocity = new PVector(.001, .001);
    acceleration = new PVector(.001, .001);
  }

  void seek(PVector target) { //REFERRED TO NATUREOFCODE.COM
    PVector desired = PVector.sub(target, tri1); // vector that points from object to location
    desired.normalize(); //makes it unit vector of 1, so it is just represents direction
    desired.mult(1); //
    acceleration = desired; //acceleration is in direction of target (since it was normalized)
    //then determined by multiplication
  }

  void update() { //REFERRED TO NATUREOFCODE.COM
    velocity.add(acceleration); //velocity incremented by acceleration 
    velocity.limit(maxSpeed); //prevents velocity from being TOO fast
    tri1.add(velocity);
  }

  void display() { // displays final triangle 
    fill(255, 177, 165); 
    triangle(tri1.x, tri1.y, tri2.x, tri2.y, tri3.x, tri3.y);
  }

  void mousedOverTri() { //tri1: 150, 110 tri2: 100, 300 tri3: 200, 300
    if ((mouse.x > 100 && mouse.x < 200) //FIX THIS, RIGHT NOW POSSIBLE VALUES IS IN SHAPE OF RECTANGLE
      && (mouse.y > 110 && mouse.y < 300)) {
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
  
  void checkDistance(){ //checks distance between coordinate and mouse and coordinate original vertex
    float closeVertex = triangle.getCoord().dist(mouse); //sees if vertex is close to mouse
    float closeOrig = triangle.getCoord().dist(statTri); //sees if vertex is close to original position
  if (1 < closeVertex && closeVertex < 2) {
    triangle.staticTri(); //will get the vertex to stop wobbling once it reaches close to mouse
    stuck = true;
  }  
  else if(1 < closeOrig && closeOrig < 2){
    triangle.setCoord(statTri);
  }
}
}

void normTriangle(){//draws triangle when stuck to mouse
    background(122, 178, 152);
    triangle(mouseX, mouseY, 100, 300, 200, 300);
  }
  
boolean leftScreen() { //checks if mouse leaves the screen at all times
  if (mouseX > width - 5 || mouseX < 5 || mouseY > height - 5 || mouseY < 5) {
    retract = true;
    stuck = false;
  }
  else {
    retract = false;
  }
  return retract;
}

 
void border(){
  fill(255, 50, 20, 200);
  rect(0, 0, 5, height);
  rect(0, 0, width, 5);
  rect(width-5, 0, 5, height);
  rect(0, height-5, width, 5);
}
class Rectangle {
}