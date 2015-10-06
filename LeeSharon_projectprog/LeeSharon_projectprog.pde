int [] distrustmeter=new int [0];//more values in array, less trust //<>//
int x=0;//x width expansion
int y=0;//y heigh expansion
int treat=2; //treat variable
color c1=color(250,164,216);//tongue pink
color c2=color(96,137,90);//tongue green
color c3=color(170,96,141);//outline tongue pink
color c4=color(63,100,67);//outline tongue green
int trust=1;//starts with healthy trust

void setup(){
  size(700,600);
  frameRate(8);
}
void draw(){
  background(210,245,240);
  fill(135,139,183);
  rect(0,325,700,600);//floor
  stroke(0);
  float amt=x/20.0;//percent of pink to green
  color a=lerpColor(c1,c2,amt);//tongue (pink->green depending on how much pup eats)
  color b=lerpColor(c3,c4,amt);//tongue outline "                                "
  if((trust==1)&&(mousePressed==true)&&(mouseX>251)&&(mouseX<400)&&(mouseY<150)&&((treat==-1)||(treat==1))){
    //jumping when pup is overweight and treat is above head
    //if/else statement to shift body without having original location stay put
    pushMatrix();
      stroke(0);
      translate(0,-15);
      tail();
      puppybodystanding(x,y);
      tongue(a,b);
      puppyface();
      eyes();
      popMatrix();
  }
  else{   
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
    if (frameCount%4==0){
      tongue(a,b);//panting anim
    }
    else{
      pushMatrix();
      translate(0,1); 
      tongue(a,b);
      popMatrix();
    }
    puppyface();//animated blinking
    if (frameCount%32==0){
      blink();
    }
    else{
      if (x<5){
        cheery();//happy face 
      }
      else if (x<15){
        eyes();//normal face
      }
      else{
        sick();//sick face
      }
    }
  }
  strokeWeight(1);
  treatbag();//click on treat box
  if ((mousePressed==true)&&(mouseX<180)&&(mouseY>420)){
   if (treat==1){//option to drop treat back in box if user is already holding
     treat=2;
   }
   else treat=1;//otherwise treat is picked up from empty hand
  }
  if ((trust==1)&&(treat==1)&&(mousePressed==true)&&(mouseX>334)&&(mouseX<366)&&(mouseY>228)&&(mouseY<257)&&(x<=20)&&(y<=20)){
    treat=0;//click on puppys tongue, treat "drops", puppy's size variable adjusts
  }
  if (treat==0){
    x=x+2;
    y=y+2;
    treat=2;
  }
  if (treat==1){
   noStroke();//treat appears and follows mouse
   fill(155,137,109);
   ellipse(mouseX,mouseY,15,15);
   if ((x>=20)||(y>=20)){//stop puppy from gaining too much weight
      treat=-1;
      }
   if((trust==1)&&(mousePressed==true)&&(mouseX>251)&&(mouseX<400)&&(mouseY<150)){//raise treat above head to make him jump/exercise
        if ((x==0)||(y==0)){//can't go less than original size
         treat=1;
        }
        else{
          x=x-2;
          y=y-2;
        }
    }
  
  } 
  if (treat==-1){//if puppy is overweight
    noStroke();//treat appears and follows mouse
    fill(155,137,109);
    ellipse(mouseX,mouseY,15,15);
    if((trust==1)&&(mousePressed==true)&&(mouseX>251)&&(mouseX<400)&&(mouseY<150)){//raise treat above head to make him jump/exercise
        if ((x==0)||(y==0)){//can't go less than original size
         treat=1;
        }
        else{
          x=x-2;
          y=y-2;
        }
    }
  }
  thoughtbubble();
  if (x<4){
    elated();
  }
  else if (x<8){
    happyface();
  }
  else if (x<12){
    okayface();
  }
  else if (x<16){
    sadface();
  }
  else{
  sickface();
  }
  if (x==20){
    distrustmeter=append(distrustmeter,0);
    //when pup is fully sick, distrust meter goes up until quickly acted upon
  }
  if (distrustmeter.length>200){
    trust=0;
    //after pup is sick for a certain total amt of time, pup will not cooperate
  }

println(distrustmeter.length, trust);
 ////coordinate aid
 //line(0,mouseY,width,mouseY);
 //line(mouseX,0,mouseX, height);
 //if (mousePressed){
 //println(mouseX,mouseY);
 //}
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
  rect(258-x,225,30,120+y/2); //back leg my left
  rect(338+x,225,30,120+y/2); //back leg my right
  arc(273-x,345+y/2,30,15,0,PI);//rounded back left paw
  arc(353+x,345+y/2,30,15,0,PI);//rounded back right paw 
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
  rect(295-x,225,30,140+y/2); //front leg my left
  rect(375+x,225,30,140+y/2); //front leg my right
  arc(310-x,365+y/2,30,15,0,PI);//rounded front left paw
  arc(390+x,365+y/2,30,15,0,PI);//rounded front right paw
  noStroke();
  rect(298-x,230,105+2*x,80);//front body
  fill(255);
  stroke(0);
  fill(0);
  arc(350,310,50+2*x,30+y/2,PI,2*PI);//black spot on belly
  fill(255);
  arc(260-x,242+y/2,20,56+y,radians(90),radians(270));//booty
  arc(405+x,265+y/2,15,70+y,radians(-90),radians(90));//rounded out puppy's left side of chest
  arc(327,242,166+2*x,100,radians(210),radians(350));//rounded backside
  stroke(255);//cover unwanted lines
  rect(259-x,265,30,25);//line covered near back left leg
  line(296-x,310,324-x,310);//line covered separating body/left front leg
  line(376+x,310,404+x,310);//line covered separating body/right front leg
  rect(290-x,224,14,66+y/2);//rect covered separating front/back body
}
void tongue(color c1, color c2){
  stroke(0);
  fill(255);
  ellipse(350,227,60,45);//chin 
  stroke(c2);//tongue
  fill(c1);
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
  ellipse(315,193,8,8);//left eye
  ellipse(385,193,8,8);//right eye
  fill(255);
  ellipse(map(mouseX,0,700,314,317),map(mouseY,0,600,191,196),4,4);//left pupil
  ellipse(map(mouseX,0,700,384,387),map(mouseY,0,600,191,196),4,4);//right pupil
  //map to follow mouse
}
void blink(){
 noFill();
 stroke(0);
 arc(315,193,9,7,0,PI);
 arc(385,193,9,7,0,PI);
}

void treatbag(){
  fill(219,255,0);
  rect(-1,480,136,120);//front of box facing user
  quad(135,480,165,430,165,600,135,600);//side of box
  fill(0);
  quad(135,480,165,430,0,430,0,480);//openning of box
  noStroke();
  fill(153,198,0);
  ellipse(35,550,170,70);//circle behind "text"
  noFill();
  stroke(153,0,255);
  line(-10,540,6,540);//part of 'T'
  line(8,540,8,560);//'R'
  arc(8,545,32,10,radians(270),radians(450));
  line(8,550,24,560);
  line(26,540,26,560);//'E'
  line(26,540,42,540);
  line(26,550,42,550);
  line(26,560,42,560);
  line(44,560,52,540);//'A'
  line(52,540,60,560);
  line(48,550,56,550);
  line(62,540,78,540);//'T'
  line(70,540,70,560);
  arc(88,545,16,10,radians(90),radians(360));//'S'
  arc(88,555,16,10,radians(270),radians(540));
}

void cheery(){//happy moon eyes
 noFill();
 stroke(0);
 strokeWeight(2);
 arc(315,193,9,7,PI,2*PI);
 arc(385,193,9,7,PI,2*PI);
}

void sick(){//sad eyes
  stroke(0);
  strokeWeight(2);
  line(310,197,320,189);
  line(380,189,390,197);
}

void thoughtbubble(){
  noStroke();
  fill(255);
  ellipse(381,120,10,10);
  ellipse(395,110,15,15);
  ellipse(422,109,30,30);
  ellipse(442,107,30,30);
  ellipse(458,91,30,30);
  ellipse(446,70,30,30);
  ellipse(422,65,30,30);
  ellipse(408,87,30,30);
  ellipse(432,88,30,30);
}
void happyface(){
  fill(233,255,3);//yellow
  ellipse(433,90,25,25);//face
  fill(0);
  stroke(0);
  ellipse(428,88,2,2);//left eye
  ellipse(438,88,2,2);//right eye
  noFill();
  arc(433,93,6,6,0,PI);//smile
}

void sadface(){
  fill(233,255,3);//yellow
  ellipse(433,90,25,25);//face
  fill(0);
  stroke(0);
  ellipse(428,88,2,2);//left eye
  ellipse(438,88,2,2);//right eye
  noFill();
  arc(433,96,6,6,PI,2*PI);//frown
}

void elated(){
  fill(233,255,3);//yellow
  ellipse(433,90,25,25);//face
  fill(0);
  stroke(0);
  ellipse(428,88,2,2);//left eye
  ellipse(438,88,2,2);//right eye
  arc(433,93,10,8,0,PI);//open mouth smile
}

void sickface(){
  fill(137,227,21);//green
  ellipse(433,90,25,25);//face shape
  fill(0);
  stroke(0);
  ellipse(428,88,2,2);//left eye
  ellipse(438,88,2,2);//right eye
  arc(433,96,6,6,PI,2*PI);//frown
}
void okayface(){
  fill(233,255,3);//yellow
  ellipse(433,90,25,25);//face shape
  fill(0);
  stroke(0);
  ellipse(428,88,2,2);//left eye
  ellipse(438,88,2,2);//right eye
  line(430,93,436,93);//frown
}