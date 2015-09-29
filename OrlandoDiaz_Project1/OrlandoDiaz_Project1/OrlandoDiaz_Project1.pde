float bx;
float by;
color background = color(255);
color Bill = color(250,249,83);
color BillStroke = color(0);
color BrickStroke = color(238,215,47);
color Eyeball = color(255); //White
color Pupil = color(0); //Black
void setup(){
  size(800,800);
  smooth();
println("Hey kid, wanna make a deal?! Just click on me once and you'll gain all the knowledge in the universe! Pretty sweet deal if I do say so myself!");
println("(Trust him? Click on him. Don't trust him? Press 'X' to try to eliminate him)");
}
void draw(){
  background(background);
  fill(Bill);
  stroke(BillStroke);
  strokeWeight(2);
  triangle(400,200, 285, 400, 515, 400); //Bill Cipher Body
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
  quad(380,355, 380,375, 420,355, 420,375); //Bow Tie  
  quad(370,195, 370,185, 430,185, 430,195); //Hat Bottom  
  quad(390,185, 410,185, 410,95, 390,95); //Hat Top  
  strokeWeight(8);
  line(308, 355, 253, 355); //Left Arm (horizontal)
  LeftArm();
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
void LeftArm(){
   line(253, 355, 253, 422); //Left Arm (vertical)
}
void Eye(){
  float bx = constrain(mouseX, 380, 420); //Mouse Tracking X
  float by = constrain(mouseY, 286, 314); //Mouse Tracking Y
    fill(Eyeball);
    stroke(0);
  ellipse(400,300, 87,76); //Eyeball  
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
void mouseReleased(){
  background = color(0); //turns background Black
    Bill = color(247,83,56);
    BillStroke = color(255);
    BrickStroke = color(232,55,35);
    Eyeball = color(0);
    Pupil = color(255);
   println("AHAHAHAHAHAHAHAHAHA!!!! THANKS FOR FREEING ME FROM THAT PROGRAM KID! NOW I'LL DESTROY THE WORLD!!! AND IT'S ALL YOUR FAULT!");
}
void keyPressed(){
  if(keyPressed){
    if(key == 'x' || key == 'X'){
      println("Nice try wise guy! You can't get rid of me! Now click on me before somebody gets hurt!!");
                                }
                }
}