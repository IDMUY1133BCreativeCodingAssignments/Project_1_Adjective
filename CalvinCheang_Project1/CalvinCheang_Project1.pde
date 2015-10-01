/*The adjective that I have in mind for this project is probably
hypnotic, or some word along those lines.*/

int a,b,c,d,e,f,g,h,i,p,q,x,y;
int value = 255;
color rojo = color(255,0,0);
color shiro = color(255,255,255);

void setup(){
  size(500,500);
  frameRate(60);
  a=200;
  b=180;
  c=160;
  d=140;
  e=120;
  f=100;
  g=80;
  h=60;
  i=40;
  p=150;
  q=150;
  //x=width/2;
  //y=height/2;
}

void draw(){
  background(0);
      for(int p=-50;p<1000;p+=200){      //accidentally made a net LOL
        for(int q=-50;q<1000;q+=200){
          lines(p,q);
        }
    }
  for(int x=50;x<1000; x+=200){        //repeats the targets 9 times
   for(int y=50; y<1000; y+=200){
     target(x,y);
   }
  }
  move();
  mickey();
  lineMove();
  
}

void keyPressed(){
 background(random(0,255),random(0,255),random(0,255));    //warning: eplilepsy
}

void mousePressed(){      //toggles color of mickey from white to red
  if(value == 255){
    value=rojo;
  }
  else if(value == rojo){
    value=255;
  }
}

void lines(int p, int q){    //creates strobe lights
  strokeWeight(10);
  stroke(random(0,255),random(0,255),random(0,255));
  line(0,p,width,q); 
}

void lineMove(){    //this will be implemented later. supposed to move strobe light back and forth
  p-=3;
  q+=3;
  if(p<=100){
    p=150;
  }
  if(p>=200){
    p=150;
  }
  if(q>=200){
    q=150;
  }
  if(q<=100){
    q=150;
  }
}

void mickey(){      //creates a mickey mouse shaped icon following mouse
  fill(value);      //will have more use later
  ellipse(mouseX, mouseY, 30,30);
  ellipse(mouseX-15, mouseY-15, 15,15);
  ellipse(mouseX+15, mouseY-15, 15,15);
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
//this allows the circle to go back and forth within a set diameter.
void move(){
    a=a-5;    //these lines decrease the size
    b=b-5;
    c=c-5;
    d=d-5;
    e=e-5;
    f=f-5;
    g=g-5;
    h=h-5;
    i=i-5;
  if(a<=-200){    //these lines set the limit
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