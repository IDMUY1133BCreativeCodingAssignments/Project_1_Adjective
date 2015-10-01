//TRIANGLE SLOWLY REVERTS TO ORIGINAL POSITION ONCE MOUSE LEAVES SCREEN
//RECTANGLE CAN ONLY BE STRETCHED VERTICALLY, AND WHEN MOUSE LEAVES SCREEN, IT ACTS LIKE A SPRING AND BOUNCES BACK INTO POSITION
//still do the thing where the farther it is, the more transparent the shape is.
//TO DO:
//look up constrain for triangle
//look at spring example for rectangle

int triX = 150; //the static positions of the two shapes
int triY = 110;
int rectLength = 150;
int rectHeight = 100;

float[] triCoordinatesX = {triX, 100, 200}; //arrays of vertex points so they can be easily adjusted
float[] triCoordinatesY = {triY, 200, 200};
float[] rectCoordinatesX = {300, 450, 450, 300};
float[] rectCoordinatesY = {200, 200, 100, 100};

float rectMidiX; //center of square on top of rectangle  
float rectMidiY; 

int lilRectHeight = 10; //height and width of square on top of rectangle 
int ellHeight = 10; //height and width of square on top of triangle

boolean lockedTri = false; //used to tell if mouse goes over little button bits 
boolean lockedRec = false; 

int triOpac = 255; //used to adjust opacity of shapes so wider the stretch, more transparent (maybe lighter instead?) the shapes go
int rectOpac = 255; 

void setup() {
  background(122, 178, 152);
  noStroke();
  size(600, 300);
  frameRate(1000);
}

void draw() {
  background(122, 178, 152);
  rectMode(CORNER); //rectMode(CORNER) has to be explicity stated here because it is changed later on to CENTER
  update(); //updates mouseX and mouseY positions
  if (lockedTri){ //if mouse is over the little circle, adjust coordinates accordingly
    triCoordinatesX[0] = mouseX;
    triCoordinatesY[0] = mouseY;
    triOpac = mouseX; 
  } else {
    triCoordinatesX[0] = triX;
    triCoordinatesY[0] = triY;
    triOpac = 255;
    /* trying to get the triangle to slowly return to position 
    rather than just "teleport" to static position
  else{
   constrain(triCoordinatesX[0], 0, triX);
   constrain(triCoordinatesY[0], 0, triY);
   triCoordinatesX[0] = triCoordinatesX[0] + 1;
   triCoordinatesY[0] = triCoordinatesY[0] + 1;
   }
   */
  }
    background(122, 178, 152); //green 
  if(lockedRec) {
    rectCoordinatesY[2] = mouseY;
    rectCoordinatesY[3] = mouseY;
    rectOpac = mouseY;
  }else
  {
    rectCoordinatesY[2] = rectHeight;
    rectCoordinatesY[3] = rectHeight;
  }
  
  drawShapes();
}


void drawShapes() {
  fill(255, 177, 165, triOpac); //pink
  beginShape();
  vertex(triCoordinatesX[0], triCoordinatesY[0]); //150, 110
  vertex(triCoordinatesX[1], triCoordinatesY[1]); //100, 200
  vertex(triCoordinatesX[2], triCoordinatesY[2]); //200, 200
  endShape(CLOSE);
  
  //allows little circle on top of triangle for bigger range that allows the user to "stick" to the triangle 
  fill(255);
  ellipse(triCoordinatesX[0], triCoordinatesY[0], ellHeight, ellHeight);
  
  fill(225, 191, 255); //purple 
  beginShape();
    //for loop populates array and then draws shapes at the same time. 
  //http://forum.processing.org/one/topic/drawing-a-vertex-from-an-array.html
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
}

void update() {
  if (mouseX > triCoordinatesX[0] - ellHeight/2 && mouseX < triCoordinatesX[0] + ellHeight/2
    && mouseY > triCoordinatesY[0] - ellHeight / 2 && mouseY <triCoordinatesY[0] + ellHeight/2) {
    //float mx = constrain(mouseX, 50, 110);
    lockedTri = true;
  } else if (mouseX <= 10 || mouseY <= 10 || mouseY > height - 10 || mouseX > width - 10 ){
    lockedTri = false;
    //retract();
  }
  if(mouseX > rectMidiX - lilRectHeight && mouseX < rectMidiX + lilRectHeight && mouseY > rectMidiY - lilRectHeight
  && mouseY < rectMidiY + lilRectHeight){ 
    lockedRec = true;
  }
  else if (mouseX <= 10 || mouseY <= 10 || mouseY > height - 10 || mouseX > width - 10 ){
    lockedRec = false;
  }
}

/*
void retract(){
 constrain(triCoordinatesX[0], 0, triX);
 constrain(triCoordinatesY[0], 0, triY);
 triCoordinatesX[0] = triCoordinatesX[0] + 1;
 triCoordinatesY[0] = triCoordinatesY[0] + 1;
 }
 */

/*
for(int i = 0; i < triCoordinatesX.length-1; i++){
 for(int j = 0; j < triCoordinatesY.length - 1; j++){
 vertex(triCoordinatesX[i], triCoordinatesY[i]);
 vertex(triCoordinatesX[i + 1], triCoordinatesY[i + 1]);
 }
 }
 endShape(CLOSE);
 */