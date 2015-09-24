void setup(){
  size(700,600);
}

void draw(){
  background(210,245,240);
  //noFill();
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
  
  //probably just a mockup for now--> rounding out
  rect(258,225,30,120); //back leg my left
  rect(338,225,30,120); //back leg my right
  quad(258,208,258,268,310,310,310,220); //back body
  arc(270,215,22,15,PI,2*PI);//rounded backside
  arc(325,290,100,45,PI/2,PI);//rounded back stomache
  fill(0);
  arc(350,310,70,15,0,PI);//rounded front stomache
  fill(255);
  rect(295,225,30,140); //front leg my left
  rect(375,225,30,140); //front leg my right
  rect(295,225,110,85);//front body
  fill(0);
  arc(350,310,50,75,PI,2*PI);//back spot on belly
  fill(255);
  arc(259,242,10,64,radians(90),radians(270));//booty
  arc(405,265,15,70,radians(-90),radians(90));//rounded out puppy's left side of chest
  arc(310,365,30,15,0,PI);//rounded front left paw
  arc(390,365,30,15,0,PI);//round front right paw
  arc(273,345,30,15,0,PI);//rounded back left paw
  arc(353,345,30,15,0,PI);//rounded back right paw
  ellipse(350,227,60,45);//chin  
  stroke(255);//cover unwanted lines
  rect(259,265,30,25);//line covered near back left leg
  line(296,310,324,310);//line covered separating body/left front leg
  line(376,310,404,310);//line covered separating body/right front leg
  line(295,241,295,290);//line covered separating front/back body
  
  
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
  fill(0);//FILL FROM THIS POINT IS BLACK
  ellipse(315,193,7,7);//left eye
  ellipse(385,193,7,7);//right eye
  ellipse(350,210,15,10);//nose
  fill(255);
  ellipse(315,194,4,4);//left pupil
  ellipse(385,194,4,4);//right pupil  ...eventually to follow the mouse
  
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


  //coordinate aid
  line(0,mouseY,width,mouseY);
  line(mouseX,0,mouseX, height);
  if (mousePressed){
    println(mouseX,mouseY);
  }
}

void puppy(){ 
  //to eventually separate puppy's features into individual functions
  //...to then create whole body of puppy into one function
}