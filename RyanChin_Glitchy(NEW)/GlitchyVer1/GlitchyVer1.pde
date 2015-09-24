// PROJECT ADJECTIVE: GLITCHY (TEMPORARY) --- VERSION 1 --- RYAN CHIN //

float strobe;

void setup() {
  size(1280, 720);
  background(255);
  frameRate(60);
}

void draw() {

  background(0);

  // Background black-to-white strobe
  if (mouseX>600 && mouseX<680 && mouseY>320 && mouseY<380) {
    strobe = random(10);
  } else {
    strobe = random(300);
  } //condition for strobe
  if (strobe < 5) {
    fill(255);
    rect(0, 0, 1280, 720);
  }

  // Glitching ellipse in middle
  translate(random(-10, 10), random(-10, 10)); //the random wiggle
  for (int gridX = 600; gridX <= width-600; gridX += 4) {
    for (int gridY = 320; gridY <= height-320; gridY += 4) {
      if (strobe<5) {
        fill(0);
      } else {
        fill(255);
      } //if background is white, then draw as black
      noStroke();
      ellipse(gridX, gridY, 0+random(10), 0+random(10));
      float glitch = random(1000);
      /*   if (strobe<5) {
       stroke(0);
       } else {
       stroke(255);
       } //change color of lines with strobe */
      if (glitch < 0.5) {
        if (strobe<5) {
          stroke(0);
        } else {
          stroke(255);
        }
        line(100+random(-40, 40), 100+random(-40, 40), 1180+random(-40, 40), 620+random(-40, 40)); //diagonal from top
        line(1180+random(-40, 40), 100+random(-40, 40), 100+random(-40, 40), 620+random(-40, 40)); //diagonal from bottom
      }
      cursor();
    }
  }
}

void cursor() {
  float target = random(1000);
  if (target>0 && target<200) {
    for (int z=0; z<mouseY; z ++) {
      point(mouseX, z);
    }
  }
  if (target>200 && target<400) {
    for (int z=0; z<mouseY; z ++) {
      point(mouseX, height-z);
    }
  }
  if (target>600 && target<800) {
    for (int z=0; z<mouseX; z ++) {
      point(z, mouseY);
    }
  }
  if (target>800 && target<1000) {
    for (int z=0; z<mouseX; z ++) {
      point(width-z, mouseY);
    }
  }
}