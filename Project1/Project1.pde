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
  if (click == 4){
    background(random(5),random(0),random(25));
    explosion(0,0);
    for(int i = 0; i < 30; i++) {
      int x = (int)random(600);
      int y = (int)random(600);
      explosion(x,y);
    }//end of for
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
 void explosion(int x, int y){
   fill(random(255),random(209),random(51));
   noStroke();
   beginShape();
   vertex(192+x,165+y);
   vertex(220+x,209+y);
   vertex(234+x,152+y);
   vertex(235+x,210+y);
   vertex(278+x,181+y);
   vertex(248+x,220+y);
   vertex(292+x,225+y);
   vertex(245+x,236+y);
   vertex(277+x,258+y);
   vertex(234+x,242+y);
   vertex(255+x,298+y);
   vertex(227+x,255+y);
   vertex(213+x,311+y);
   vertex(212+x,259+y);
   vertex(171+x,277+y);
   vertex(206+x,246+y);
   vertex(136+x,235+y);
   vertex(192+x,230+y);
   vertex(165+x,181+y);
   vertex(202+x,220+y);
   vertex(192+x,165+y);
   endShape();
 }