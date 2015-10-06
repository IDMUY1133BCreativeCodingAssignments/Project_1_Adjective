//Press the "i/I" key for a spooky surprise! Try holding down the mouse and moving the cursor too! Maybe both at the same time!
int toptriangle=200;
int bottomtriangle=400;
float bx;
float by;
color background = color(255);
color Bill = color(250,249,83);
color BillStroke = color(0);
color BrickStroke = color(238,215,47);
color Eyeball = color(255); //White
color Pupil = color(0); //Black
color Hat = color(0); //for hat flashing
color Bowtie = color(0);
void setup(){
  size(800,800);
  smooth();
}
void draw(){
  background(background);
  fill(Bill);
  stroke(BillStroke);
  strokeWeight(2);
  BillCipher();
  mousecursor();
}
void Eye(){
  float bx = constrain(mouseX, 380, 420); //Mouse Tracking X
  float by = constrain(mouseY, 286, 314); //Mouse Tracking Y
    Eyeball();
  fill(Pupil);
  ellipse(bx, by, 15, 40); //Pupil  
  line(384,264, 381,256); //1st Eyelash from Right on Top
  line(393,249, 395,262); //2nd Eyelash from Right on Top
  line(405,262, 406,247); //3rd Eyelash from Right on Top
  line(416,263, 418,253); //4th Eyelash from Right on Top  
  line(377,344, 380,335); //1st Eyelash from Right on Bottom
  line(392,338, 391,349); //2nd Eyelash from Right on Bottom
  line(406,338, 407,349); //3rd Eyelash from Right on Bottom
  line(419,336, 422,345); //4th Eyelash from Right on Bottom
}
void Eyeball(){
  fill(Eyeball);
    stroke(0);
  ellipse(400,300, 87,76); //Eyeball  
}
void BillCipher(){
    triangle(400,toptriangle, 285, bottomtriangle, 515, bottomtriangle); //Bill Cipher Body
  Eye();  
  stroke(BrickStroke);
  noFill();
  quad(313,355, 340,355, 340,370, 305,370); //Top Row 1st Brick from Right
  quad(340,355, 340,370, 390,370, 390,355); //Top Row 2nd Brick from Right
  quad(390,370, 390,355, 440,355, 440,370); //Top Row 3rd Brick from Right
  quad(440,355, 440,370, 495,370, 487,355); //Top Row 4th Brick from Right  
  quad(305,370, 296,385, 362,385, 362,370); //Middle Row 1st Brick from Right
  quad(362,385, 362,370, 427,370, 427,385); //Middle Row 2nd Brick from Right
  quad(427,370, 427,385, 504,385, 496,370); //Middle Row 3rd Brick from Right  
  quad(296,385, 288,398, 380,398, 380,385); //Bottom Row 1st Brick from Right
  quad(380,398, 380,385, 445,385, 445,398); //Bottom Row 2nd Brick from Right
  quad(445,385, 445,398, 513,398, 504,385); //Bottom Row 3rd Brick from Right  
  stroke(Pupil);
  fill(Pupil);
  Bow(); 
  fill(Hat);
  quad(370,195, 370,185, 430,185, 430,195); //Hat Bottom  
  quad(390,185, 410,185, 410,95, 390,95); //Hat Top  
  fill(Pupil);
  strokeWeight(8);
  line(308, 355, 253, 355); //Left Arm (horizontal)
  line(253, 355, 253, 422); //Left Arm (vertical)
  ellipse(253, 422, 15, 25); //Left Hand
  line(493, 355, 548, 355); //Right Arm (horizontal)
  line(548, 355, 548, 289); //Right Arm (vertical)
  ellipse(548, 289, 15, 25); //Right Hand
  line(370, 450, 370, 403); //Left Leg (Thigh)
  line(370, 449, 387, 420); //Left Leg (The part between your knee and foot (anatomy fail :P))
  line(387, 420, 387, 455); //Left Foot
  line(430, 450, 430, 403); //Right Leg (Thigh)
  line(430, 449, 413, 420); //Right Leg (btwn Knee and Foot)
  line(413, 420, 413, 455); //Right Foot
}
void Bow(){
  fill(Bowtie);
  quad(380,355, 380,375, 420,355, 420,375); //Bow Tie 
}
void mouseReleased(){
  background = color(0); //turns background Black
    Bill = color(247,83,56);
    BillStroke = color(255);
    BrickStroke = color(232,55,35);
    Eyeball = color(0);
    Pupil = color(255);
    Hat = color(255);
    Bowtie = color(255);
}
void keyPressed(){
  if(keyPressed){
    if(key == 'I' || key == 'i'){
      pushMatrix(); //Big Bill Flash
      translate(-200,-270);
      scale(2);
      fill(18,36,211);
      BillCipher();
      popMatrix();
        pushMatrix(); //Tiny Bill Flash
        translate(-140,-50);
        scale(0.6);
        fill(45,114,48);
        BillCipher();
        popMatrix();
          pushMatrix(); //Medium Bill Flash
          translate(-170,335);
          scale(0.8);
          fill(99,22,178);
          BillCipher();
          popMatrix();
                                }
                }
}
void mouseDragged(){
  translate(random(500), random(500));
  translate(random(-500), random(-500));
  Bow();
  Eyeball=color(random(0,255),random(0,255),random(0,255));
  Hat = color(random(0,255),random(0,255),random(0,255));
  Bowtie = color(random(0,255),random(0,255),random(0,255));
}
void mousecursor(){
 fill(Eyeball);
  strokeWeight(1.5);
  triangle(mouseX,mouseY,mouseX-20,mouseY+20,mouseX,mouseY+30);
  line(mouseX-10,mouseY+25,mouseX-18,mouseY+40);
  line(mouseX-10,mouseY-5,mouseX-12,mouseY-15);
  line(mouseX+3,mouseY-5,mouseX+5,mouseY-15);
  line(mouseX+12,mouseY,mouseX+20,mouseY-7);
}