//adjective: elated
int u = 0;
int h = 200; 
color b1,b2; 
/*
float x = 100; 
float y = 100; 
float xspeed =3; 
float yspeed = 3; 
*/

PVector grayLo;
PVector grayVe;
PVector redLo;
PVector redVe;
PVector pinkLo;
PVector pinkVe;
PVector greenLo;
PVector greenVe;
PVector yellowLo;
PVector yellowVe; 
PVector purpleLo;
PVector purpleVe;

void setup(){
  size(600,600); 
  //background(0); 
  b1 = color(51,204,255); 
  b2 = color(92,133,255); 
  grayLo = new PVector(100,100);
  grayVe = new PVector(1,3);
  redLo = new PVector(200,200);
  redVe = new PVector(-5,-5);
  pinkLo = new PVector(500,500);
  pinkVe = new PVector(4,7);
  greenLo = new PVector(250,250);
  greenVe = new PVector(3,9); 
  yellowLo = new PVector(550,550);
  yellowVe = new PVector(10,2); 
  purpleLo = new PVector(150,150);
  purpleVe = new PVector(5,3); 
}

void draw(){
    
    grayLo.add(grayVe);
    redLo.add(redVe);
    pinkLo.add(pinkVe);
    greenLo.add(greenVe);
    yellowLo.add(yellowVe); 
    purpleLo.add(purpleVe);

    skyBckgrnd();
    grayBall();
    redBall();
    pinkBall();
    greenBall();
    yellowBall();
    purpleBall(); 

    cloud();
    
}//draw
/*
void keyPressed(){
    if (value == 0){
      grayBall();
      redBall();
      pinkBall();
      greenBall();
      yellowBall();
      purpleBall(); 
}
*/
   
void grayBall(){
    if((grayLo.x >width) || (grayLo.x <0)) {
      grayVe.x = grayVe.x *-1;
    }
    if((grayLo.y > height) || (grayLo.y <0)) {
      grayVe.y = grayVe.y * -1;
    }
    fill(102, 102, 153);
    ellipse(grayLo.x,grayLo.y,200,200); 
}

void redBall(){
    if((redLo.x >width) || (redLo.x <0)) {
      redVe.x = redVe.x *-1;
    }
    if((redLo.y > height) || (redLo.y <0)) {
      redVe.y = redVe.y * -1;
    }
    fill(255,77,77);
    ellipse(redLo.x,redLo.y,100,100);
}
void pinkBall(){
    if((pinkLo.x >width) || (pinkLo.x <0)) {
      pinkVe.x = pinkVe.x *-1;
    }
    if((pinkLo.y > height) || (pinkLo.y <0)) {
      pinkVe.y = pinkVe.y * -1;
    }
    fill(255,92,214);
    ellipse(pinkLo.x,pinkLo.y,50,50); 

}
void greenBall(){
    if((greenLo.x >width) || (greenLo.x <0)) {
      greenVe.x = greenVe.x *-1;
    }
    if((greenLo.y > height) || (greenLo.y <0)) {
      greenVe.y = greenVe.y * -1;
    }
    fill(0,230,138);
    ellipse(greenLo.x,greenLo.y,100,100); 
}
void yellowBall(){
    if((yellowLo.x >width) || (yellowLo.x <0)) {
      yellowVe.x = yellowVe.x *-1;
    }
    if((yellowLo.y > height) || (yellowLo.y <0)) {
      yellowVe.y = yellowVe.y * -1;
    }
    fill(255,255,25);
    ellipse(yellowLo.x,yellowLo.y,70,70); 
}
void purpleBall(){
    if((purpleLo.x >width) || (purpleLo.x <0)) {
      purpleVe.x = purpleVe.x *-1;
    }
    if((purpleLo.y > height) || (purpleLo.y <0)) {
      purpleVe.y = purpleVe.y * -1;
    }
    fill(204,0,255);
    ellipse(purpleLo.x,purpleLo.y,120,120); 
}
void skyBckgrnd(){
    for (int i = u; i < width; i++) {
      float remap = map(i, u, height, 0, 1);
      color c = lerpColor(b1, b2, remap); // start, stop, amount
      stroke(c);
    line(i, u, i, height);
    }
}
void cloud(){
  //fill white
  fill(255,255,255);
  noStroke(); 
  //overlapping diferent sized circles to create cloud shape
  ellipse(60,545,170,150); 
  ellipse(160,570,130,120);
  ellipse(265,550,180,150); 
  ellipse(360,550,140,130);
  ellipse(450,570,130,100);
  ellipse(540,560,140,140);
  //arc(90,540,170,150,-PI,0); 
}
void balloons(){
  //stroke(1);
  //gray balloon
  fill(102, 102, 153);
  ellipse(120,200,200,200); 
  //red balloon
  fill(255,77,77);
  ellipse(200,400,100,100); 
  //pinkish balloon
  fill(255,92,214);
  ellipse(240,300,50,50); 
  //green balloon
  fill(0,230,138);
  ellipse(400,300,100,100); 
  //yellow balloon
  fill(255,255,25);
  ellipse(450,200,70,70); 
  //purple balloon
  fill(204,0,255);
  ellipse(480,350,120,120); 
}
/*
rect(0,0, width, height); 
    
   x= x+ xspeed; 
   y= y+ yspeed;
   
   if ((x >width) || (x < 0)) {
     xspeed = xspeed * -1;
   
   }
   if((y >height) || (y <0)) {
     yspeed= yspeed *-1;
   }
*/
/*void keyPressed(){
  if(key >= 'S'){
  ellipse(mouseX,mouseY,100,100); 
  }
  else {
  ellipse(234,454,100,100);
  }
}*/
/*
if (keyPressed){
      if (key == 'e' || key == 'E'){
      grayBall();
      redBall();
      pinkBall();
      greenBall();
      yellowBall();
      purpleBall();  
      } //which key  
    } //keypressed
    else {
      balloons(); 
    } //else
*/
/*
class PVector {
  float x; 
  float y; 
  
  PVector(float x_,float y_){
    x=x_;
    y=y_;
  }
  
  void add(PVector v) {
    y = y+v.y;
    x = x+v.x;
  }
}
*/