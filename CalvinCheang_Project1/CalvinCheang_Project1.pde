/*The adjective that I have in mind for this project is probably
hypnotic, or some word along those lines.*/

int a,b,c,d,e,f,g,h,i,x,y;
boolean space;

void setup(){
  size(500,500);
  frameRate(60);
  //a=350;
  //b=310;
  //c=270;
  //d=230;
  //e=190;
  //f=150;
  //g=110;
  //h=70;
  //i=30;
  a=200;
  b=180;
  c=160;
  d=140;
  e=120;
  f=100;
  g=80;
  h=60;
  i=40;
  //x=width/2;
  //y=height/2;
}

void draw(){
  //background(255);
  for(int x=50;x<width; x+=200){
    for(int y=50; y<height; y+=200){
      target(x,y);
    }
  }
}

void keyPressed(){
  background(random(0,255),random(0,255),random(0,255));    //warning: eplilepsy
  move();
}

void target(int x, int y){
  noStroke();
  fill(255,0,255);    //purple circle
  ellipse(x, y, a,a);
  fill(0,0,255);      //blue circle
  ellipse(x, y, b,b);
  fill(0,255,255);    //cyan circle
  ellipse(x, y, c,c);
  fill(50,205,50);    //green circle
  ellipse(x, y, d,d);
  fill(0,255,0);      //lime circle
  ellipse(x, y, e,e);
  fill(255,255,0);    //yellow circle
  ellipse(x, y, f,f);
  fill(255,127,0);    //orange circle
  ellipse(x, y, g,g);
  fill(255,0,0);      //red circle
  ellipse(x, y, h,h);
  fill(0,0,0);    //black circle
  ellipse(x, y, i,i);
}
//this allows the circle to go back and forth within
//a set diameter. Does not work as planned currently.
//will improvise on it.
void move(){
    if(key == 32){
    space = true;
  }
  if(space = true){
    a=a-5;
    b=b-5;
    c=c-5;
    d=d-5;
    e=e-5;
    f=f-5;
    g=g-5;
    h=h-5;
    i=i-5;
  }
  //if(a<= -350 && b<= -310 && c<= -270 && d<= -230 && e<= -190
  //&& f<= -150 && g<= -110 && h<= -70 && i<= -30){
  //a=350;
  //b=310;
  //c=270;
  //d=230;
  //e=190;
  //f=150;
  //g=110;
  //h=70;
  //i=30;
  //}
  if(a<=-200){
    a=200;
  }
  if(b<=-180){
    b=180;
  }
  if(c<=-160){
    c=160;
  }
  if(d<=-140){
    d=140;
  }
  if(e<=-120){
    e=120;
  }
  if(f<=-100){
    f=100;
  }
  if(g<=-80){
    g=80;
  }
  if(h<=-60){
    h=60;
  }
  if(i<=-40){
    i=40;
  }
}