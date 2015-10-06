//ADJECTIVE: AMBIGUOUS WITH A LITTLE HOPE
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
// raindrop class call
Raindrop h1;
Raindrop [] rain = new Raindrop[50];
//suncolor array
int sun [] = new int[10]; 
color regCloud = color(255,255,255);
color clkCloud = color(47,46,56);
void setup(){
  size(600,600); 
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
    skyBckgrnd(b1,b2);
    grayBall();
    redBall();
    pinkBall();
    greenBall();
    yellowBall();
    purpleBall(); 
    cloud(regCloud);
    colorSun(); 
    for( int i = 0; i <rain.length; i++){
      rain[i] = new Raindrop( random(width), random(height));
      rain[i].dropTwo(); 
    }//for loop
    press();     
}//draw
void press(){
  if(mousePressed == true){
    skyBckgrnd(b3,b4);
    cloud(clkCloud);
    clkSun();  
    umbrella();
    star();
    for( int i = 0; i < rain.length; i++){ //raindrop for happy side (random colors for rain)
      rain[i] = new Raindrop( random(width), random(height));
      h1 = new Raindrop(random(width),random(height));
      rain[i].drop();
    }//for loop
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
void skyBckgrnd(color b, color d){ //passing in parameters to reuse for happy and dark side
    for (int i = u; i < width; i++) {
      float remap = map(i, u, height, 0, 1);
      color c = lerpColor(b, d, remap); // start, stop, amount
      stroke(c);
      line(i, u, i, height);
    }//for loop
  }//skyBckgrnd
void cloud(color c){
  fill(c);
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
  float wi = random(width);
  float he = random(height);
  float x,y ; 
  Raindrop (float wi, float he){ //constructor
   x = wi; 
   y = he; 
  }
  void drop(){ //raindrop function
    fill(16,22,181); 
    ellipse(x,y,15,25);     
    if(y<height){
      x = wi;
      y = he;
    }
  }
    void dropTwo(){ //couldn't pass in parameters because it didn't do what I wanted
    fill(random(255),random(255),random(255)); 
    ellipse(x,y,15,25);     
    if(y<height){
      x = wi;
      y = he;
    }
  }
} //end of Raindrop class
void clkSun(){ //the sun in the dark side 
  fill(33,34,36);
  ellipse(550,20,200,200);
}
void colorSun(){ //sun in happy side. couldn't pass in parameters because it didn't do what I wanted. 
  for(int i=0; i < sun.length; i++){
    fill(random(255), random(255), random(255));
    ellipse(550,20, 200,200); 
  }
}//end of colorSun
void umbrella(){
  rect(99,200,99,200,100,280,100,280);
  fill(255,28,52);
  arc(150,250,280,280, PI, TWO_PI);
}
void star(){
  fill(255,255,0);
  strokeWeight(5);
  beginShape();
  vertex(50,10);
  vertex(60,35);
  vertex(90,35); 
  vertex(67,50); 
  vertex(73,80); 
  vertex(50,60); 
  vertex(27,80); 
  vertex(33,50); 
  vertex(10,35);
  vertex(40,35);
  endShape(CLOSE);
}