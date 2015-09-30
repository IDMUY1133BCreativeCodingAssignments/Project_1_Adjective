//ADJECTIVE: ELATED/HAPPY
//background gradient
int u = 0;
int h = 200; 
color b1,b2; 
color b3,b4;
//vectors for balloons
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
// raindrops
Raindrop h1;
Raindrop [] rain = new Raindrop[30];
//suncolor array
int sun [] = new int[10]; 
color sunco = color(random(255), random(255), random(255));
//color cloudCo = color(47,46,56); 
//color 

void setup(){
  size(600,600); 
  //background(0); 
  b1 = color(51,204,255); 
  b2 = color(92,133,255); 
  b3 = color(116,123,143);
  b4 = color(56,60,69);
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
    colorSun(); 
    press();     
}//draw
  
void press(){
  if(mousePressed == true){
    clkBckgrnd();
    clkCloud();
    for( int i = 0; i < rain.length; i++){
      rain[i] = new Raindrop();
      h1 = new Raindrop();
      rain[i].drop();
    }
  } //mousepressed
}
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
void clkBckgrnd(){
  for (int i = u; i < width; i++)  {
    float remap = map(i,u,height,0,1);
    color d = lerpColor(b3, b4, remap);
    stroke(d); 
    line(i,u,i,height);
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
  ellipse(540,560,160,160);
}
void clkCloud(){
  //fill white
  fill(47,46,56);
  noStroke(); 
  //overlapping diferent sized circles to create cloud shape
  ellipse(60,545,170,150); 
  ellipse(160,570,130,120);
  ellipse(265,550,180,150); 
  ellipse(360,550,140,130);
  ellipse(450,570,130,100);
  ellipse(540,560,160,160);
}
class Raindrop{
  //int x = width;
  //int y = height;
  float x = random(width); 
  float y = random(height); 
  
  void drop(){
    fill(26,242,225); 
    ellipse(x,y, 10,20); 
    
    if(y<height){
      x = random(width);
      y = random(height);
    }
  }
} //end of Raindrop class

void colorSun(){
  
  for(int i=0; i < sun.length; i++){
    fill(random(255), random(255), random(255));
    ellipse(550,20, 200,200); 
  }
}//end of colorSun