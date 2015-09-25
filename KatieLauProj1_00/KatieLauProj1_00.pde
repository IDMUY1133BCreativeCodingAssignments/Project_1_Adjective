//STICKY/STRETCHY: have shapes stuck to bottom and when you move mouse up they stretch
//but they're still stuck to bottom and when mouse is off the screen they bounce back
//when shape stretched, maybe also make it more transparent or gradually change color to be lighter?)
//if mouseX and mouseY are in shape's area, gradually "stretch" shape in direction of mouse
//once mouse leaves the shape of the area and leaves screen, bounce back
//make shapes kinda fall onto ground initially and run time too 
//maybe get shapes to hop around too
//RECTANGLE : CAN ONLY STRETCH VERTICALLY, TRIANGLE ANY DIRECTION, CIRCLE ANY DIRECTION 

//TO DO:
/**
 1) make functions for shapes drawn "normally" vs. shapes drawn "weirdly"
 2) make one function that accepts parameters to help shape "bounce back" when mouse leaves screen
 x have an "update" function similar to https://processing.org/examples/rollover.html 
 4) something like this maybe?:
 if (overRect)
 {
 stretchRect();
 normCirc();
 normTri();
 normShap(); 
 }
 else if (overCircle)
 {
 stretchCircle();
 normRect();
 normTri();
 normShap();
 }
 OR maybe you can make a normal shape function that accepts the "weird shape" 
 as a parameter to determine which NOT to draw? 
 maybe an int parameter where 0 = rect, 1 = ellipse, 2 = triangle, etc. etc. 
 
 */
boolean isInShape = false; //prevents two shapes from stretching at the same time
int floorStart = 250;
int rectX = 90; //top left coordinate of rectangle
int rectY = 220;
int rectDia = 50; //height and width of rectangle

int circleX = 220; //center of ellipse
int circleY = 220;
int circleDia = 60;

int triX = 40; //triX and triY refer to top vertice of triangle
int triY = 210;

int rectRadius = 25;

//int rectAncX = rectX + rectDia / 2;
//int rectAncY = rectY + rectDia / 2; //where rectangle stretches from? idk yet

void setup() {
  noStroke();
  size(400, 300);
  smooth(8);
}

void draw() {
  background(255, 231, 195);
  println(mouseX);
  println(mouseY);
  staticShapes(); //occur if mouse position isn't in any of the static shapes
  fill(150);
  noStroke();
  quad(0, 250, width, 250, width, height, 0, height);
}

//when shapes aren't moving/stretched
void staticShapes() {
  update(mouseX, mouseY);
  fill(91, 192, 212);
  triangle(30, 250, triX, triY, 50, 250);
  fill(255, 118, 183);
  ellipse(circleX, circleY, circleDia, circleDia);
  fill(76, 77, 139);
  rect(rectX, rectY, rectDia, rectDia);
  fill(174, 237, 159);
  /*
  beginShape();
  vertex(280, floorStart);
  vertex(350, floorStart);
  vertex(340, 225);
  vertex(330, 220);
  vertex(300, 230);
  endShape();
  */
}

void update(int x, int y) { //continuously checking mouseX and mouseY position
  if (overEllipse(x,y)){
    boolean overShape = true;
  }
  if (overRect(x, y)) {
    boolean overShape = true; 
  }
  if (overTriangle(x, y)) {
    
  }
  // trying to get rectangle to follow mouse - but if mouse is out of rectangle, it won't work   
}

boolean outOfBounds() {
  if (mouseX > width || mouseY > height) {
    return true;
  } else {
    return false;
  }
}

//BELOW CODE TAKEN FROM ROLLOVER EXAMPLES FROM PROCESSING 
boolean overRect(int x, int y) {
  if((mouseX > 90 && mouseX < 140) && (mouseY > 220 && mouseY < 250)) {
      background(0);
    return true;
  } else {
    return false;
  }
}

void stretchRect() {
  rectX = rectX + rectDia / 2;
  rectY = rectY + rectDia / 2;
}

boolean overTriangle(int x, int y) { //checks if mouse is over triangle
  //if overTriangle is true, reassign triX and triY to mouse coordinates until off the screen.
   if ((mouseX < 50  && mouseX > 30) && (mouseY > 210 && mouseY < 250)){
     background(0);
      return true;
   }
   else{
   return false;
   }
 // while (!outOfBounds()) {
   // triX = mouseX;
    //triY = mouseY;
  //}
  //isInShape = true;

}

void stretchTri(){
 triX = mouseX;
 triY = mouseY;
  
}
boolean overEllipse(int ellX, int ellY) { //checks if mouse is over Ellipse
  if((mouseX > 190 && mouseX < 250) && (mouseY > 190 && mouseY < 250))
  {
    background(0);
  }
  isInShape = true;
  return true;
} 

/*
boolean overShape() {

  isInShape = true;
  return true;
}
*/