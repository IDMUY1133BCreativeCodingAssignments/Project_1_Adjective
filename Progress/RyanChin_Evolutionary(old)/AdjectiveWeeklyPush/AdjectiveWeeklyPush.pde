//----// ADJECTIVE IS EVOLUTIONARY.. FIRST PUSH HERE.. FOUNDATION //----//

//GLOBAL VARIABLES
int r;

//SETUP
void setup() {
  size(1024, 768);
  background(#000000);
  frameRate(30);
}


//MY FUNCTIONS
void subjectSprite() {

  noStroke();
  fill(255, 255, 255, 150);
  ellipse(0, 0, 3, 3);
}

void countdown() {
  if (frameCount == 30) {
    println("3...");
  }
  if (frameCount == 60) {
    println("2...");
  }
  if (frameCount == 90) {
    println("1...");
  }
  if (frameCount == 120) {
    println("Let's draw!");
  }
}



void web1() {

  noFill();
  stroke(116, 255, 229, 60);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}

void web2() {

  noFill();
  stroke(232, 106, 105, 180);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}

void web3() {

  noFill();
  stroke(159, 255, 128, 60);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}

void web4() {

  noFill();
  stroke(179, 102, 232, 140);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}

void web5() {

  noFill();
  stroke(204, 145, 9, 100);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}

void web6() {

  noFill();
  stroke(67, 204, 9, 180);
  ellipse(0, 0, 10+frameCount/100, 10+frameCount/100);
  ellipse(0, 0, 10+frameCount/10, 10+frameCount/10);
  ellipse(0, 0, 10+frameCount, 10+frameCount);
}



//DRAW
void draw() {
  countdown();
  translate(mouseX, mouseY);
  if (frameCount>240 && frameCount<840) {
    web1();
    if (mousePressed == true) {
      web2();
    }
  }

  if (frameCount>840 && frameCount<1440) {
    web3();
    if (mousePressed == true) {
      web4();
    }
  }

   if (frameCount>1440 && frameCount<2040) {
    web5();
    if (mousePressed == true) {
      web6();
    }
  } 
  
  
}