import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer sou; // new varible 


int gain;
int sizee;
float x;
int y;
int b;
int d;
float rand;
int u;
float z;

void setup() {
  minim = new Minim(this);
  sou = minim.loadFile("12 Minute Mix By GodsConnect_206429900_soundcloud.mp3");
  sou.loop();
  size(640, 360, P3D);
  background(0);
  u = 120;

  sizee = 40;
  frameRate(60);
  rectMode(CENTER);
  ellipseMode(CORNER);
  frameRate(100);
}

void draw() {
 
 
  if (key == 32) {
    u = u+2; 
    rand = 400;
    ellipse(random(u)+100, 20, 100, 40);
    ellipse(20, random(u)+100, 100, 40);

    ellipse(random(u)-140, -60, 100, 40);
    ellipse(random(u)-60, -140, 100, 40);
  }

  translate(width/2, height/2);
  rotate(x);//speed of rotation 
  drawobjects();  
  sizee();


  if (key == 32 ) {
    z = random(1, 300);
  }
  rand();
  if (mousePressed) { // rotates everything
    x = x+.02;// base speed 
  
      x = x+ .15;
    }
  }


void drawobjects() {// draws the objects 
  rect(0, 0, u, u); 
  rotate(30);
  if ( frameCount > 10) {
    pushMatrix();


    rotateX(radians(mouseY));
    rotateY(radians(mouseX));
    sphereDetail(40);
    sphere(mouseX/3);

    popMatrix();
  }


  fill(random(1, 255), mouseX, mouseY);//change color at random
  translate(mouseY/2, mouseX/2);//movedrawcircles


  rect(random(4)+100, 20, sizee, 40);
  rect(20, random(4)+100, sizee, 40);
  rect(random(4)-140, -60, sizee, 40);
  rect(random(4)-60, -140, sizee, 40);

  rect(random(rand)+100, 20, sizee, 40);
  rect(20, random(rand)+100, sizee, 40);
  rect(random(rand)-140, -60, sizee, 40);
  rect(random(rand)-60, -140, sizee, 40);
  // if (rand>1 ) {
  // }
}

void sizee() {
  if (key == 32 ) { // spacebar pressed creates circle madness 
    sizee = sizee + 1;
  } else { 
    sizee = 40;
  }
}

void rand() {
  if (frameCount == 500) //randomise placement of squares for 500 frames 
    rand=200;
  if (frameCount == 1000)
    rand=0;
}