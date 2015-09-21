int click = 1;
void setup() {
  size(600, 600);
  noFill();
  smooth();
}
void draw() {
  if (click == 1) {
    // step 1:bomb
    background(255);
    bomb();
  }
  if (click == 2) {
    bomb();
    matchstick();
  }

  if (click == 3) {
    //step 2: explosion
    background(21, 13, 79);
    stroke(255, 241, 41);
    strokeWeight(1);
    for (int x=10; x<= width-10; x+= 30) {
      for (int y=10; y<= height-10; y+=30) {
        line(x, y, width/3, height/3);
      }//end of y
    }// end of x
  }// end of if
  if (click == 4) {
    background(21, 13, 79);
    stroke(255, 174, 26);
    for ( int x= 25; x<= width-25; x+=60) {
      for (int y = 15; y<= height-15; y+=40) {
        line( x, y, width/10, height/8);
      }//end of y
    }//end of x
  }// end of if
}// end of draw


void keyPressed() {
  click++;
  if (click>4) click=1;
}
void bomb() {
  noStroke();
  fill(0);
  ellipse(200, 200, 75, 75);
  noFill();
  stroke(0);
  strokeWeight(10);
  curve(200, 200, 200, 162, 220, 140, 240, 135);
}
void matchstick() {
  stroke(255, 227, 188);
  strokeWeight(8);
  line(227, 142, 245, 80);
  noStroke();
  fill(255, 72, 34);
  ellipse(227, 142, 15, 27);
}