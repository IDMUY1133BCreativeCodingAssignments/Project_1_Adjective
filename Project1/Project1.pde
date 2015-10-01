int click = 1;
void setup() {
  size(1200, 700);
  noFill();
  smooth();
}
void draw() {
if (click == 1) {
    bomb();
    maze();
    matchstick();}
 if (click == 2) {
    //step 2: explosion
    background(21, 13, 79);
    stroke(255, 174, 26);
    strokeWeight(2);
    for ( int x= 25; x<= width-25; x+=60) {
      for (int y = 15; y<= height-15; y+=40) {
        line( x, y, width/10, height/8);
      }//end of y
    }// end of x
  }// end of if
  if (click == 3) {
    background(21, 13, 79);
    stroke(255, 241, 41);
    strokeWeight(1);
    for (int x=10; x<= width-10; x+= 30) {
      for (int y=10; y<= height-10; y+=30) {
        line(x, y, width/3, height/3);
   
      }//end of y
    }//end of x
  }// end of if
}// end of draw
void mousePressed() {
  click++;
  if (click>4) click=1;
}
void bomb() {
  background(255);
  noStroke();
  fill(0);
  ellipse(190, 100, 75, 75);
  noFill();
  stroke(0);
  strokeWeight(10);
  curve(190, 100, 190, 62, 220, 50, 230, 35);
}
void matchstick() {
  stroke(255, 227, 188);
  strokeWeight(8);
  line(mouseX, mouseY, 30 +mouseX, 40 + mouseY);
  noStroke();
  fill(255, 72, 34);
  ellipse(mouseX, mouseY, 15, 27);
}
  void maze() {
  stroke(246, 139, 0);
  strokeWeight(15);
  line(140, 30, 1050, 30);

  line(140, 640, 1170, 640);
  line(1170, 30, 1170, 640);
  line(1050, 30, 1050, 550);
  line(950, 150, 940, 640);
  line(850, 30, 840, 550);
  line(750, 150, 740, 640);
  line(650, 30, 650, 550);
  line(550, 150, 550, 640);
  line(450, 30, 450, 550);
  line(350, 150, 350, 640);
  line(140, 30, 140, 640);
  line(250, 30, 250, 550);
}