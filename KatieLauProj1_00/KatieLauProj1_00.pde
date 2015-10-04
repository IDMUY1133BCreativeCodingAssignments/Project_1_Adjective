//TRIANGLE SLOWLY REVERTS TO ORIGINAL POSITION ONCE MOUSE LEAVES SCREEN
//RECTANGLE CAN ONLY BE STRETCHED VERTICALLY, AND WHEN MOUSE LEAVES SCREEN, IT ACTS LIKE A SPRING AND BOUNCES BACK INTO POSITION
//still do the thing where the farther it is, the lighter the shape is.
//TO DO:
//look up constrain for triangle
//look at spring example for rectangle
//MAYBE have shapes stretch towards direction of mouse at ALL times, and 
//shapes don't stop stretching until it gets to the mouse and "sticks"
//RESTRICT RECTANGLE FROM BEING STRETCHED DOWN (it complicates things)
//consider changing color of rectangle to make "getting lighter" more visible. 
//glitch: sometimes the rectangle starts to go up and down with mouse even when not over white square WHY
//maybe instead of activating shape by mousing over little shape, do it over big shape.
//but keep the little shape on the circle maybe? or maybe get rid of little shapes? 
//mouse into triangle, and don't change anything, but when you mouse out, 
//the vertex follows it
int triX = 150; //the static positions of the two shapes
int triY = 110;
int rectLength = 150;
int rectHeight = 100;

float[] triCoordinatesX = {triX, 100, 200}; //arrays of vertex points so they can be easily adjusted
float[] triCoordinatesY = {triY, 300, 300};
float[] rectCoordinatesX = {300, 450, 450, 300};
float[] rectCoordinatesY = {300, 300, 100, 100};

float rectMidiX; //center of square on top of rectangle  
float rectMidiY; 

int lilRectHeight = 10; //height and width of square on top of rectangle 
int ellHeight = 25; //height and width of circle on top of triangle

boolean lockedTri = false; //used to tell if mouse goes over little button bits 
boolean lockedRec = false; 

float triBright = 255; //used to adjust opacity of shapes so wider the stretch, more transparent (maybe lighter instead?) the shapes go
float rectBright = 255; 

float distance = 0.0;

int colorRecChange = 135;
int colorTriChange;

boolean receding = false;

void setup() {
  background(122, 178, 152);
  noStroke();
  size(600, 300);
 
  frameRate(3000);
}

void draw() {
  background(122, 178, 152);
  rectMode(CORNER); //rectMode(CORNER) has to be explicity stated here because it is changed later on to CENTER
  update(); //updates mouseX and mouseY positions
  coordinateAdjust(lockedTri, lockedRec);
  //background(122, 178, 152); //green 
  drawShapes();
}

void update() {
  /*
  distance = dist(triCoordinatesX[0], triCoordinatesY[0], mouseX, mouseY);
   if(distance < 0){
   
   }
   else if(distance > 0){
   
   }
   */
  if (mouseX > triCoordinatesX[0] - ellHeight/2 && mouseX < triCoordinatesX[0] + ellHeight/2
    && mouseY > triCoordinatesY[0] - ellHeight / 2 && mouseY <triCoordinatesY[0] + ellHeight/2) {
    //float mx = constrain(mouseX, 50, 110);
    lockedTri = true;
  } else if (mouseX <= 10 || mouseY <= 10 || mouseY > height - 10 || mouseX > width - 10 ) { //checks when mouse left the screen
    lockedTri = false;
    receding = true;
    recede(); //call recede method to return triangle back to original position 
  }
  else
  {
    lockedTri = false;
  }
  
  if (mouseX > rectMidiX - lilRectHeight && mouseX < rectMidiX + lilRectHeight && mouseY > rectMidiY - lilRectHeight
    && mouseY < rectMidiY + lilRectHeight) { 
    lockedRec = true;
  } else if (mouseY <= 10){ //so spring motion only happens when mouse leaves screen from above 
    lockedRec = false;
  }
}

void coordinateAdjust(boolean tri, boolean rect) { 
  if (tri) { //if mouse is over the little circle, adjust coordinates accordingly
    triCoordinatesX[0] = mouseX;
    triCoordinatesY[0] = mouseY;
  }
  else if (!tri && triCoordinatesX[0] != mouseX && triCoordinatesY[0] != mouseY) { //vertex stretching towards mouse b/c circle not in mouse
    triCoordinatesX[0] = triCoordinatesX[0] + .01;
    triCoordinatesY[0] = triCoordinatesX[0] + .01;
    //triCoordinatesX[0] = triX;
    //triCoordinatesY[0] = triY;
    /* trying to get the triangle to slowly return to position 
     rather than just "teleport" to static position
     */
  }
  else if (!tri && receding){ //vertex returning to original because circle not in mouse and mouse left screen
     //make triangle travel to original position  
     triCoordinatesX[0] = triX;
     triCoordinatesY[0] = triY;
    }
    
  background(122, 178, 152); //green background
  if (rect) {
    rectCoordinatesY[2] = mouseY;
    rectCoordinatesY[3] = mouseY;
    adjustRecCol(); //makes color lighter
  } else
  {
    rectCoordinatesY[2] = rectHeight;
    rectCoordinatesY[3] = rectHeight;
    colorRecChange = 135;
  }
}

void adjustRecCol() {
  float fromRectOrig = dist(375, 150, mouseX, mouseY);
  colorRecChange = int(map(rectBright, mouseX, mouseY, 135, 207)); //FIX THIS LINE (the second and third, the last two numbers are good)
  //basically, the farther it is from the original position, the lighter it is, WHAT AM I MISSING OH MY GOSH 
  //colorRecChange = int(map(rectBright, fromRectOrig, rectHeight, 110, 181));
}

void adjustTriCol(){ //adjust triangle color 
  float fromTriOrig = dist(triX, triY, mouseX, mouseY);
}

void recede(){ //used to make the triangle return to original position 
  
}
void drawShapes() {
  fill(255, 177, 165); //pink
  beginShape();
  for (int i = 0; i < triCoordinatesX.length-1; i++) {
    for (int j = 0; j < triCoordinatesY.length - 1; j++) {
      vertex(triCoordinatesX[i], triCoordinatesY[i]);
      vertex(triCoordinatesX[i + 1], triCoordinatesY[i + 1]);
    }
  }
  endShape(CLOSE);

  //allows little circle on top of triangle for bigger range that allows the user to "stick" to the triangle 
  fill(255);
  ellipse(triCoordinatesX[0], triCoordinatesY[0], ellHeight, ellHeight);

  fill(225, colorRecChange, 255); //purple
  beginShape();
  //for loop populates array and then draws shapes at the same time. http://forum.processing.org/one/topic/drawing-a-vertex-from-an-array.html
  for (int i = 0; i < rectCoordinatesX.length - 1; i++) {
    for (int j = 0; j < rectCoordinatesY.length - 1; j++) {
      vertex(rectCoordinatesX[i], rectCoordinatesY[i]);
      vertex(rectCoordinatesX[i+1], rectCoordinatesY[i+1]);
    }
  }
  endShape(CLOSE);
  rectMode(CENTER); //changes rectMode so the square on top of the rectangle can be drawn using midpoint
  fill(255);
  
  //draws the little rectangle on top of the big rectangle accordingly
  rectMidiX = (rectCoordinatesX[0] + rectCoordinatesX[1]) / 2;
  rectMidiY = rectCoordinatesY[3];
  rect(rectMidiX, rectMidiY, 10, 10);
  fill(0, 0, 0, 150);
  println(mouseX);
  println(mouseY);
 // rectMode(CORNER); //is the floor (keep or get rid of?)
  //rect(0, 200, width, height);
}

//PVector velocity = new PVector(0,0);
//PVector location = new PVector(random(width), random(height));
/*
void triMovement(){
 PVector mouse = new PVector(mouseX, mouseY);
 PVector dir = PVector.sub(mouse, location);
 dir.normalize();
 dir.mult(0.5);
 velocity.add(dir);
 location.add(velocity);
 }
 */