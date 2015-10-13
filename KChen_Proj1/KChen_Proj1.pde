//Pat his head and press to make him happy!
void setup() {
  size(600, 600);
}

void draw() {
  scene1();
  body();
  collar();
  head();
  bell();
  noStroke();
  fill(160, 227, 210);
  ellipse(mouseX-10, mouseY-5, 20, 20);
  ellipse(mouseX+10, mouseY-5, 20, 20);
  stroke(160, 227, 210);
  line(mouseX-11.5, mouseY, mouseX, mouseY+10);
  line(mouseX+11, mouseY, mouseX, mouseY+10); 
  ellipse(mouseX, mouseY, 10, 10);

  if ((mouseX<450) && (mouseX>150) && (mouseY>220) && (mouseY<330)) { //pet head to make him happy!
    scene2();
    body();
    collar();
    head();
    bell();
    blush();

    noStroke();
    fill(251, 203, 255);
    ellipse(mouseX-10, mouseY-5, 20, 20);
    ellipse(mouseX+10, mouseY-5, 20, 20);
    stroke(251, 203, 255);
    line(mouseX-11.5, mouseY, mouseX, mouseY+10);
    line(mouseX+11, mouseY, mouseX, mouseY+10); 
    ellipse(mouseX, mouseY, 10, 10);

    if (mousePressed) { //make its eyes happy
      scene3();
      body();
      collar();
      head();
      bell();
      blush();
      noStroke();
      fill(229, 190, 127);
      ellipse(210, 420, 47, 47); 
      ellipse(390, 420, 47, 47);
      stroke(0);
      strokeWeight(8);
      curve(20, 500, 180, 410, 240, 430, 330, 550);      
      curve(580, 500, 420, 410, 360, 430, 270, 500);

      stroke(229, 190, 127);
      line(244, 431, 222, 400); 
      line(356, 431, 382, 400);

      fill(250, 136, 140, 20);
      noStroke();
      ellipse(180, 460, 100, 65); //blush layer L
      ellipse(420, 460, 100, 65); //blush layer R

      noStroke();
      fill(255, 157, 185);
      ellipse(mouseX-10, mouseY-5, 20, 20);
      ellipse(mouseX+10, mouseY-5, 20, 20);
      stroke(255, 157, 185);
      line(mouseX-11.5, mouseY, mouseX, mouseY+10);
      line(mouseX+11, mouseY, mouseX, mouseY+10); 
      ellipse(mouseX, mouseY, 10, 10);
    }
  }
}
void scene1() {
  background(224, 252, 255); //sky
  noStroke();
  fill(255, 160, 44, 40); //sheer orange
  ellipse(90, 100, 160, 160); //sun rays
  ellipse(90, 100, 170, 170);
  ellipse(90, 100, 180, 180);
  ellipse(90, 100, 190, 190);
  ellipse(90, 100, 200, 200);
  fill(255, 240, 180); //light yellow
  ellipse(90, 100, 140, 140); //sun center
  noStroke();
  fill(95);
  ellipse(50, 110, 12, 12); //sun eye L
  ellipse(125, 90, 12, 12); //sun eye R
  fill(95);
  ellipse(90, 110, 40, 40); //sun smile
  fill(255, 240, 180);
  ellipse(87, 106, 47, 40);
}
void scene2() {
  background(255, 232, 241); //sky
  noStroke();
  fill(255, 160, 44, 40); //sheer orange
  ellipse(90, 100, 160, 160); //sun rays
  ellipse(90, 100, 170, 170);
  ellipse(90, 100, 180, 180);
  ellipse(90, 100, 190, 190);
  ellipse(90, 100, 200, 200);
  fill(255, 240, 180); //light yellow
  ellipse(90, 100, 140, 140); //sun center
  noStroke();
  fill(95);
  ellipse(50, 110, 12, 12); //sun eye L
  ellipse(125, 90, 12, 12); //sun eye R
  fill(95);
  ellipse(90, 110, 40, 40); //sun smile
  fill(255, 240, 180);
  stroke(255, 240, 180);
  line(71, 117, 110, 105);
  ellipse(85, 90, 45, 40);
  noStroke();
  fill(255, 200, 200);
  ellipse(45, 125, 15, 15); //sun blush
  ellipse(137, 100, 15, 15);
}
void scene3() {
  background(255, 214, 193); //sky
  noStroke();
  fill(255, 160, 44, 40); //sheer orange
  ellipse(90, 100, 160, 160); //sun rays
  ellipse(90, 100, 170, 170);
  ellipse(90, 100, 180, 180);
  ellipse(90, 100, 190, 190);
  ellipse(90, 100, 200, 200);
  fill(255, 240, 180); //light yellow
  ellipse(90, 100, 140, 140); //sun center
  noStroke();
  fill(255, 200, 200);
  ellipse(45, 125, 15, 15);
  ellipse(140, 95, 15, 15);
  stroke(95);
  strokeWeight(6);
  line(42, 110, 57, 111); //sun eyes
  line(57, 111, 47, 120);
  line(135, 91, 122, 90);
  line(122, 90, 133, 80);
  fill(95);
  stroke(255, 240, 180);
  ellipse(90, 110, 40, 40); //sun smile
  fill(255, 240, 180);
  stroke(255, 240, 180);
  line(71, 117, 110, 105);
  ellipse(82, 90, 55, 42);
}
void body() {  
  noStroke();
  fill(229, 190, 127);
  curve(300, 700, 185, 500, 100, 690, 300, 700);
  curve(300, 700, 425, 500, 490, 690, 300, 700);
  ellipse(width/2, 620, 360, 200); //body fill
  ellipse(180, 550, 50, 50); //body fill
  ellipse(423, 550, 50, 50); //body fill
}
void collar() {
  fill(222, 67, 67);
  noStroke();
  ellipse(width/2, 480, 300, 220);
}

void head() {
  noStroke();
  fill(229, 190, 127);
  ellipse(width/2, 380, 420, 360); //general head shape
  stroke(224, 252, 255);

  noStroke();
  fill(255, 245, 237);
  ellipse(300, 480, 130, 100); //muzzle
  ellipse(240, 350, 25, 25); //eyebrow left
  ellipse(360, 350, 25, 25); //eyebrow right
  fill(0);
  ellipse(210, 420, 45, 45); //left eye
  ellipse(390, 420, 45, 45); //right eye
  ellipse(300, 460, 50, 30); //nose
  fill(255, 255, 255, 80);
  ellipse(300, 460, 40, 20);
  fill(0);
  ellipse(300, 464, 42, 22); //nose highlight
  stroke(0);
  strokeWeight(10);
  curve(300, 450, 300, 470, 270, 490, 300, 450); //mouthleft
  curve(300, 450, 300, 470, 330, 490, 300, 450); //mouthright
  //line(300,470,270,490); //mouth
  //line(300,470,330,490); //mouth pt 2
  fill(229, 190, 127); //beige
  stroke(0);
  strokeWeight(8);
  noStroke();
  curve(300, 300, 150, 150, 120, 300, 300, 300); //left ear pt1
  curve(100, 300, 150, 150, 230, 230, 100, 300); //left ear pt 2
  curve(300, 300, 450, 150, 480, 300, 300, 300); //right ear pt1
  curve(500, 300, 450, 150, 370, 230, 500, 300); //right ear pt2
  stroke(229, 190, 127);
  strokeWeight(2);
  triangle(150, 150, 120, 290, 230, 225); // left ear fill
  triangle(450, 150, 480, 290, 370, 225); //right ear fill
  fill(252, 227, 227);
  stroke(252, 227, 227);
  strokeWeight(3);
  curve(300, 300, 160, 170, 140, 280, 300, 300 ); //left inner ear pt1
  curve(100, 300, 157, 171, 210, 230, 100, 300); //left inner ear pt2
  curve(300, 300, 440, 170, 460, 280, 300, 300); //right inner ear pt1
  curve(500, 300, 443, 171, 385, 230, 500, 300); //right inner ear pt2
  stroke(252, 227, 227);
  strokeWeight(5);
  triangle(160, 173, 140, 280, 210, 230); //left inner ear fill 
  triangle(440, 173, 460, 275, 385, 230); //right inner ear fill
  stroke(229, 190, 127);
  strokeWeight(10);
  fill(229, 190, 127);
  curve(300, 300, 140, 287, 220, 233, 300, 300); //left ear fix
  curve(300, 300, 460, 287, 385, 233, 300, 300); //right eat fix
}

void bell() {
  noStroke();
  fill(255, 235, 52);
  ellipse(width/2, 580, 45, 45); //bell
  stroke(100);
  strokeWeight(5);
  line(290, 582, 310, 593); //bell X
  line(310, 582, 290, 593);
  stroke(255, 255, 255, 220); //highlight
  strokeWeight(10);
  point(290, 570);
}
void blush() {
  noStroke();
  fill(250, 136, 140, 20);
  ellipse(180, 460, 80, 50); //blush layer 1 L
  ellipse(420, 460, 80, 50); //blush layer 1 R
  ellipse(180, 460, 60, 30); //blush layer 2 L
  ellipse(420, 460, 60, 30); //blush layer 2 R
  ellipse(180, 460, 40, 15);
  ellipse(420, 460, 40, 15);
  ellipse(180, 460, 20, 10);
  ellipse(420, 460, 20, 10);
  ellipse(180, 460, 10, 5);
  ellipse(420, 460, 10, 5);
  fill(255, 255, 255, 80);
  ellipse(165, 455, 10, 10); //cheek highlight
  ellipse(175, 460, 6, 6);
  ellipse(435, 455, 10, 10);
  ellipse(425, 460, 6, 6);
}