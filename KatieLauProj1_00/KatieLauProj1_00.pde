//STICKY/STRETCHY: have shapes stuck to bottom and when you move mouse up they stretch
//but they're still stuck to bottom and when mouse is off the screen they bounce back
//when shape stretched, maybe also make it more transparent or gradually change color to be lighter?)
//if mouseX and mouseY are in shape's area, gradually "stretch" shape in direction of mouse
//once mouse leaves the shape of the area and leaves screen, bounce back
//make shapes kinda fall onto ground initially and run time too 

boolean isInShape; //prevents two shapes from stretching at the same time
int floorStart = 250;
void setup() {
  noStroke();
  background(255, 231, 195);
  size(400, 300);
  smooth(8);
}

void draw() {
  staticShapes();
  fill(150);
  noStroke();
  quad(0, 250, width, 250, width, height, 0, height);
}

//when shapes aren't moving/stretched
void staticShapes() {
  fill(91, 192, 212);
  triangle(20, 250, 40, 250, 30, 210);
  fill(255, 118, 183);
  ellipse(220, 220, 60, 60);
  fill(76, 77, 139);
  rect(100, 220, 30, 50);
  fill(174, 237, 159);
  beginShape();
  vertex(280, floorStart);
  vertex(350, floorStart);
  vertex(340, 225);
  vertex(330, 220);
  vertex(300, 230);
  endShape();
}