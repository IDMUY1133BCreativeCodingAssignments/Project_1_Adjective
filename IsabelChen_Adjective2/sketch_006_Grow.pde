
color[] berries = new color[4];{
  berries[0] = color(130, 11, 36);
  berries[1] = color(176, 71, 51);
  berries[2] = color(56, 163, 119);
  berries[3] = color(169, 83, 186);
}

int hei = height;

void setup(){
  
 size(600, 800);
  
} //end setup



void draw(){
  
  background(225);
 
  if((hei < height) && (hei > 500)){
    grow(hei);
  }else if(hei < 500){
    grow(500);
  }

  
} //end draw



void grow(int tall){
  
  green();
  line(width/2, height, width/2, tall);
  
  if(mousePressed){ //Can't figure out why this command isnt working
    tall = tall - 5;
  } 
  
  while(tall<500){
    if(mousePressed){
      tall = tall - 5;
    } 
  }

  
  pushMatrix();
  if(tall <= 700){
    branches(tall, mouseX+100, mouseY+150);
  }
  popMatrix();
  
  if(tall <= 650){
    branches(tall+50, mouseX-100, mouseY+10);
  }
  
  if(tall<= 650){
    branches(tall+46, mouseX, mouseY-70);
  }
  
  pushMatrix();
  //for (int i = 0; i < 3; i++) {
    berries(mouseX+250, mouseY+100, 23, berries[3]);
    berries(mouseX+50, mouseY-40, 18, berries[0]);
    berries(mouseX+150, mouseY-120, 20, berries[1]);
  //}
  popMatrix();
  
} //end grow

void branches(int tall, int branchX, int branchY){
  
  line(width/2, tall, branchX+150, branchY-50);
  
}

void berries(int x, int y, int diam, color sk){
  strokeWeight(.5);
  stroke(0);
  fill(sk);
  ellipse(x, y, diam, diam);
}


void green(){
 
  stroke(49, 180, 86);
  strokeWeight(5);
  
} //end green