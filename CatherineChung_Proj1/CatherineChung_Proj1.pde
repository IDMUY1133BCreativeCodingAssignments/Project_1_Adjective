//adjective: elated
int y = 0;
int h = 200; 
color b1,b2; 


void setup(){
  size(600,600); 
  //background(0); 
  b1 = color(51,204,255); 
  b2 = color(92,133,255); 

}

void draw(){
    skyBckgrnd();
    balloons(); 
    cloud();
}

void skyBckgrnd(){
    for (int i = y; i < width; i++) {
      float remap = map(i, y, height, 0, 1);
      color c = lerpColor(b1, b2, remap); // start, stop, amount
      stroke(c);
    line(i, y, i, height);
    }
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

void cloud(){
  fill(255,255,255);
  noStroke(); 
  ellipse(60,545,170,150); 
  ellipse(160,570,130,120);
  ellipse(265,550,180,150); 
  ellipse(360,550,140,130);
  ellipse(450,570,130,100);
  ellipse(540,560,140,140);
  //arc(90,540,170,150,-PI,0); 
}
/*void keyPressed(){
  if(key >= 'S'){
  ellipse(mouseX,mouseY,100,100); 
  }
  else {
  ellipse(234,454,100,100);
  }
}*/