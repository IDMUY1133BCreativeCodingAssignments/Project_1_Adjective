void setup() {
  size(600, 600);
  frameRate(30);
}
void draw() {
  background(224, 252, 255);
  collar();
  head();
  bell();

  if ((mouseX<450) && (mouseX>150) && (mouseY>220) && (mouseY<330)) { //pet head to blush!
    fill(0);
    ellipse(mouseX, mouseY, 20, 20); //pointer to visualize the area of my if statement
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
    /*sidenote: i'm going to leave this for now, but ideally, 
     i want the blush (red sheer concentric circles getting smaller) 
     to progress over time or distance of the mouse traveled within the area i've set.*/

    if (mousePressed) { //make its eyes happy
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
      ellipse(180, 460, 100, 65); //blush layer L
      ellipse(420, 460, 100, 65); //blush layer R
    }
  }
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
  fill(255);
  ellipse(300, 480, 130, 100); //muzzle
  ellipse(240, 350, 25, 25); //eyebrow left
  ellipse(360, 350, 25, 25); //eyebrow right
  fill(0);
  ellipse(210, 420, 45, 45); //left eye
  ellipse(390, 420, 45, 45); //right eye
  ellipse(300, 460, 50, 30); //nose
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

void bell(){
  noStroke();
  fill(255,235,52);
  ellipse(width/2,580,45,45);
}