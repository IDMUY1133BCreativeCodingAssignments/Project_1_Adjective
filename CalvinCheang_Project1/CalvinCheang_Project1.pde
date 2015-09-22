/*The adjective that I have in mind for this project is probably
hypnotic, or some word along those lines.*/

int a,b,c,d,e,f,g,h,i;

void setup(){
  size(500,500);
  background(255);
  frameRate(60);
  
  a=350;
  b=310;
  c=270;
  d=230;
  e=190;
  f=150;
  g=110;
  h=70;
  i=30;
}

void draw(){
  //these rainbow circles are commented out because i have yet
  //to implement them into the code
  noStroke();
  fill(255,0,255);
  ellipse(width/2, height/2, a,a);
  fill(0,0,255);
  ellipse(width/2, height/2, b,b);
  fill(0,255,255);
  ellipse(width/2, height/2, c,c);
  fill(50,205,50);
  ellipse(width/2, height/2, d,d);
  fill(0,255,0);
  ellipse(width/2, height/2, e,e);
  fill(255,255,0);
  ellipse(width/2, height/2, f,f);
  fill(255,127,0);
  ellipse(width/2, height/2, g,g);
  fill(255,0,0);
  ellipse(width/2, height/2, h,h);
  fill(0,0,0,0.5);
  ellipse(width/2, height/2, i,i);
  //stroke(128);
  //ellipse(width/2, height/2, r,r);
}
//this allows the circle to go back and forth within
//a set diameter. Does not work as planned currently.
//will improvise on it.
void keyPressed(){
  a=a-2;
  b=b-2;
  c=c-2;
  d=d-2;
  e=e-2;
  f=f-2;
  g=g-2;
  h=h-2;
  i=i-2;
  if(a<= -350 && b<= -310 && c<= -270 && d<= -230 && e<= -190
  && f<= -150 && g<= -110 && h<= -70 && i<= -30){
  a=350;
  b=310;
  c=270;
  d=230;
  e=190;
  f=150;
  g=110;
  h=70;
  i=30;
  }
}