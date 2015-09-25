// PROJECT ADJECTIVE: GLITCHY (TEMPORARY) --- VERSION 2 --- RYAN CHIN //
// NEW: Added some interactivity. Click within the warping box. Added some print lines too. Just bashing in ideas into this sketch.
// If I can eventually figure it out, I'd like to relate the if(conditions) to audio, instead of mouse presses.

float strobe; // strobe will be used with random() and an if() condition to create the probability of a desired 'strobe' effect happening.
float glitch; // another float to be used in probability
float ror; // made this float for ellipse radius
PFont numbers; // load font for numbers

void setup() {
  size(1280, 720);
  background(255);
  frameRate(60);
  numbers = loadFont("OCRAStd-9.vlw"); // loads OCRA font for sketch
  noCursor(); // hides cursor
}

void draw() {  

  background(0); // the 'regular' background -- black

  // if mouse goes on subject in center, probability of a 'strobe' will drastically increase
  if (mouseX>600 && mouseX<680 && mouseY>320 && mouseY<380) {
    strobe = random(10);
  } else {
    strobe = random(300);
  } // probability for 'strobe' effect -- background turns to fill(color)
  if (strobe < 5) {
    fill(255);
    rect(0, 0, 1280, 720);
  }

  // Glitching ellipse in middle with if condition changing the translation amount. If mouse is clicked within the subject in center, the shaking eases.
  if (mousePressed == false && mouseX>600 && mouseX<680 && mouseY>320 && mouseY<380) {
    translate(random(-400, 400), random(-400, 400));
    println("Ava is rampant ( frame: ", frameCount, ")");
  } else {
    if (mousePressed == true && mouseX>600 && mouseX<680 && mouseY>320 && mouseY<380) {
      translate(0, 0);
      println("You calm Ava ( frame: ", frameCount, ")"); // placeholder name: Ava -- perhaps later I'll print some context haha
    } else {
      translate(random(-10, 10), random(-10, 10));
      println("Ava is disturbed ( frame: ", frameCount, ")");
    }
  } //the random wiggle for EVERYTHING on screen 
  for (int gridX = 600; gridX <= width-600; gridX += 4) {
    for (int gridY = 320; gridY <= height-320; gridY += 4) {
      if (strobe<5) { // during a 'strobe'
        fill(0);
      } else { // regular fill -- no 'strobe'
        fill(255);
      }
      noStroke();
      ellipse(gridX, gridY, 0+random(10), 0+random(10)); // making a grid of ellipses with randomly changing radii

      //now to draw everything else besides the main subject. I can put whatever I want in here!
      glitch = random(1000);
      if (glitch < 0.5) { // extremely low probability for a 'glitch' -- if true then the diagonal lines are generated
        if (strobe<5) {
          stroke(0);
        } else {
          stroke(255);
        }
        noFill();
        xtraLines(); // function for the extra lines! see below...
        if (mousePressed == true) {
          ror = 150;
        } else {
          ror = random(900);
        } //float for random circle in center
        ellipse(640, 360, ror, ror);
      }
      cursor(); // custom function to create lines from each side of the screen to the cursor -- see below
    }
  }
}

void cursor() {
  float target = random(1000); // creating the basis for a probability that the lines comes from each side
  if (target>0 && target<200) {
    for (int z=0; z<mouseY; z ++) {
      point(mouseX, z); // line from top
    }
  }
  if (target>200 && target<400) {
    for (int z=0; z<mouseY; z ++) {
      point(mouseX, height-z); // line from bottom
    }
  }
  if (target>600 && target<800) {
    for (int z=0; z<mouseX; z ++) {
      point(z, mouseY); // line from left
    }
  }
  if (target>800 && target<1000) {
    for (int z=0; z<mouseX; z ++) {
      point(width-z, mouseY); // line from right
    }
  }
  noFill();
  rect(mouseX, mouseY, random(-50, +50), random(-50, +50)); // glitching squares around cursor

  if (target<1) {
    textFont(numbers);
    text(glitch, mouseX+random(-100, +100), mouseY+random(-50, +50));
  }
}

void xtraLines() { // these are the glitchy lines that are moving about on the screen!
  float lineWiggle = random(-40, 40);
  line(100+lineWiggle, 100+lineWiggle, 1180+lineWiggle, 620+lineWiggle); //diagonal from top
  line(1180+lineWiggle, 100+lineWiggle, 100+lineWiggle, 620+lineWiggle); //diagonal from bottom
  if (mousePressed == false) { // when mouse is not pressed, lines from diagonal end points meet at cursor position
    line(100+lineWiggle, 100+lineWiggle, mouseX, mouseY); //line from top left
    line(1180+lineWiggle, 100+lineWiggle, mouseX, mouseY); //line from top right
    line(100+lineWiggle, 620+lineWiggle, mouseX, mouseY); //line from bottom left
    line(1180+lineWiggle, 620+lineWiggle, mouseX, mouseY); //line from bottom right
  }
}