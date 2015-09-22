void setup(){
  size(800,800);
  background(255);
}

void draw(){
  fill(250,249,83);
  stroke(0);
  strokeWeight(2);
  triangle(400,200, 285, 400, 515, 400); //Bill Cipher Body
  
  fill(255);
  ellipse(400,300, 87,76); //Eyeball
  
  fill(0);
  ellipse(400,305, 15, 40); //Pupil
  
  line(384,264, 381,256); //1st Eyelash from Right on Top
  line(393,249, 395,262); //2nd Eyelash from Right on Top
  line(405,262, 406,247); //3rd Eyelash from Right on Top
  line(416,263, 418,253); //4th Eyelash from Right on Top
  
  line(377,344, 380,335); //1st Eyelash from Right on Bottom
  line(392,338, 391,349); //2nd Eyelash from Right on Bottom
  line(406,338, 407,349); //3rd Eyelash from Right on Bottom
  line(419,336, 422,345); //4th Eyelash from Right on Bottom
  
  stroke(238,215,47);
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
  
  stroke(0);
  fill(0);
  quad(380,355, 380,375, 420,355, 420,375); //Bow Tie
  
  quad(370,195, 370,185, 430,185, 430,195); //Hat Bottom
  
  quad(390,185, 410,185, 410,95, 390,95); //Hat Top
  
  
  
}