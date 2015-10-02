int x=0;//x width expansion
int y=0;//y heigh expansion
int treat=2; //treat variable

void setup(){
  size(700,600);
  frameRate(8);
}
void draw(){
  background(210,245,240);
  stroke(0);
  if (frameCount%2==0){
    tail();//tail wag animation
  }
  else{
    pushMatrix();
    translate(55,45);
    scale(.8,.8);
    tail();
    popMatrix();
  }
  puppybodystanding(x,y);
  tongue();//panting animation
  if (frameCount%4==0){
    tongue();
  }
  else{
    pushMatrix();
    translate(0,1); 
    tongue();
    popMatrix();
  }
  puppyface();//animated blinking
  if (frameCount%32==0){
    blink();
  }
  else{
    eyes();
  }
  treatbag();//click on treat box
  if ((mousePressed==true)&&(mouseX<180)&&(mouseY>420)){
   treat=1;
  }
  if ((mousePressed==true)&&(mouseX>334)&&(mouseX<366)&&(mouseY>228)&&(mouseY<257)){
    treat=0;//click on puppys tongue, treat "drops", puppy's size variable adjusts
    x=x+2;
    y=y+2;
  }
  if (treat==1){
   noStroke();//treat appears and follows mouse
   fill(155,137,109);
   ellipse(mouseX,mouseY,15,15);
  } 

  ////coordinate aid
  //line(0,mouseY,width,mouseY);
  //line(mouseX,0,mouseX, height);
  //if (mousePressed){
  //println(mouseX,mouseY);
  //} //<>//
}

void tail(){
  fill(255);
  //tail
  beginShape();
  vertex(230,161);
  vertex(226,174);
  vertex(225,189);
  vertex(229,208);
  vertex(235,221);
  vertex(244,229);
  vertex(247,231);
  vertex(254,232);
  vertex(258,230);//end of right curve of tail
  vertex(258,208);//begin left curve
  vertex(248,210);
  vertex(241,204);
  vertex(235,192);
  vertex(232,181);
  vertex(230,174);
  vertex(230,161);
  endShape();  
}
  
void puppybodystanding(int x, int y){//passing variables to adjust size of pup
  fill(255);  
  rect(258-x,225,30,120); //back leg my left
  rect(338+x,225,30,120); //back leg my right
  arc(273-x,345,30,15,0,PI);//rounded back left paw
  arc(353+x,345,30,15,0,PI);//rounded back right paw 
  fill(0);
  if (frameCount%4==0){//stomach breathing animation
    pushMatrix();
    translate(0,1);
    arc(350,303,90+2*x,20+2*y,0,PI);//rounded front stomache
    popMatrix();
  }
  else{
    arc(350,305,90+2*x,20+2*y,0,PI);//rounded front stomache
  }
  fill(255);
  quad(257-x,215,257-x,268,310+x,310,310+x,220); //back body
  arc(300-x/2,280,50+x,35+2*y,PI/2,radians(160));//rounded back stomache
  rect(295-x,225,30,140); //front leg my left
  rect(375+x,225,30,140); //front leg my right
  arc(310-x,365,30,15,0,PI);//rounded front left paw
  arc(390+x,365,30,15,0,PI);//rounded front right paw
  noStroke();
  rect(298-x,230,105+2*x,80);//front body
  fill(255);
  stroke(0);
  fill(0);
  arc(350,310,50+2*x,30+y/2,PI,2*PI);//black spot on belly
  fill(255);
  arc(260-x,242+y/2,20+x,56+y,radians(90),radians(270));//booty
  arc(405+x,265+y/2,15+x,70+y,radians(-90),radians(90));//rounded out puppy's left side of chest
  arc(327,242,166+2*x,100,radians(210),radians(350));//rounded backside
  stroke(255);//cover unwanted lines
  rect(259-x,265,30,25);//line covered near back left leg
  line(296-x,310,324-x,310);//line covered separating body/left front leg
  line(376+x,310,404+x,310);//line covered separating body/right front leg
  rect(290-x,224,14,66+y/2);//rect covered separating front/back body
}
void tongue(){
  stroke(0);
  fill(255);
  ellipse(350,227,60,45);//chin 
  stroke(170,96,141);//tongue
  fill(250,164,216);
  beginShape();
  vertex(335,227);//starting at upper-left point
  vertex(365,227);//connecting in movement clockwise
  vertex(365,250);
  vertex(360,255);
  vertex(350,257);
  vertex(340,255);
  vertex(335,250);
  vertex(335,227);
  endShape();
  line(350,227,350,257);//tongue fold
}

void puppyface(){
  stroke(0);
  fill(255);
  arc(350,175,150,100,radians(225),radians(315));//forehead
  arc(315,200,90,90,radians(40),radians(200));//left cheeck
  arc(385,200,90,90,radians(-20),radians(140));//right cheeck 
  stroke(255);
  beginShape();//fill color of the rest of pup's face
  vertex(297,139);
  vertex(350,174);
  vertex(402,139);
  vertex(428,186);
  vertex(350,228);
  vertex(272,186);
  endShape();  
  stroke(0);
  fill(0);
  //left ear
  beginShape();//starting at top vertext connecting to head
  vertex(300,139);//moving counter-clock
  vertex(287,132);
  vertex(273,132);
  vertex(247,153);
  vertex(243,179);
  vertex(247,200);
  vertex(251,209);
  vertex(261,218);
  endShape(); 
  //right ear
  beginShape();
  vertex(400,140);//starting at top vertex connecting to head
  vertex(413,132);//moving clockwise
  vertex(427,132);
  vertex(451,153);
  vertex(457,179);
  vertex(454,200);
  vertex(450,209);
  vertex(440,218);
  endShape(); 
  //freckles
  ellipse(300,215,2,2);//left cheek's freckles, starting at the left-most freckle
  ellipse(320,215,2,2);//moving clockwise
  ellipse(310,230,2,2);
  ellipse(400,215,2,2);//right cheek's freckles, starting at the right-most freckle
  ellipse(380,215,2,2);//moving counter-clockwise
  ellipse(390,230,2,2);
  ellipse(350,210,15,10);//nose
}
  
void eyes(){
  fill(0);//FILL FROM THIS POINT IS BLACK
  ellipse(315,193,7,7);//left eye
  ellipse(385,193,7,7);//right eye
  fill(255);
  ellipse(315,194,4,4);//left pupil
  ellipse(385,194,4,4);//right pupil  ...eventually to follow the mouse
}
void blink(){
 noFill();
 stroke(2);
 arc(315,193,9,7,0,PI);
 arc(385,193,9,7,0,PI);
}

void treatbag(){
  fill(255);
  rect(0,420,180,180);
  pushMatrix();
    translate(-45,60);
    rect(0,420,180,180);
  popMatrix();
  line(135,480,180,420);

}