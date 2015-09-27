void setup() {
  size(600, 600);
}

void draw() {
  background(224, 252, 255);
  noStroke();
  fill(229, 190, 127);
  ellipse(width/2, 380, 420, 360); //general head shape
  fill(255);
  ellipse(300, 480, 130, 80); //muzzle
  ellipse(240, 330, 25, 25); //eyebrow left
  ellipse(360, 330, 25, 25); //eyebrow right
  fill(0);
  ellipse(220, 420, 40, 40); //left eye
  ellipse(380, 420, 40, 40); //right eye
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
  triangle(150, 150, 120, 300, 230, 230); // left ear fill
  triangle(450, 150, 480, 300, 370, 230); //right ear fill
  
//pet its head to blush!
  if ((mouseX<450) && (mouseX>150) && (mouseY>220) && (mouseY<330)) {
    fill(0);
    ellipse(mouseX, mouseY, 20, 20); //pointer to visualize the area of my if statement
    noStroke();
    fill(250, 136, 140, 20);
    ellipse(180, 460, 80, 50); //blush
    ellipse(180,460,60,30);
    ellipse(420, 460, 80, 50);
    ellipse(420,460,60,30);
    /*sidenote: i'm going to leave this for now, but ideally, 
    i want the blush (red sheer concentric circles getting smaller) 
    to progress over time or distance of the mouse traveled within the area i've set.*/
    
    if (mousePressed){ //make its eyes happy
    
    }
  }
}