//this is the last push of the week. perhaps one more push on the deadline (6 oct)

// ryan chin for creative coding midterm project
// project: adjective = glitchy (idea of randomness)

// changes with time (different stages due to a rising frame count) = see custom function subj()
// passing parameters to function = see calling of custom function subj()
// incorporation of sound = use of minim library [ wave synthesis (SINE & TRIANGLE) + panning(L/R) + gain control(UP/DOWN) ]

// move mouse inside the "subject" in the center for more glitchiness (visual and audio glitches)
// click while inside the "subject" to hold the "subject" still
// hold spacebar down for colors

//---LIBRARIES---//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//---END LIBRARIES---//



//---VARIABLES---//
Minim minim;
AudioPlayer player;
AudioInput input;
AudioOutput output;
Oscil wave;
Oscil bass;
Oscil sub;

float strobe; // strobe will be used with random() and an if() condition to create the probability of a desired 'strobe' effect happening.
float glitch; // another float to be used in probability
float ror; // made this float for specific ellipse radius
PFont numbers; // load font for numbers
PImage fade; // preparing a 'fade' effect with image (I referenced this code from here - https://vimeo.com/7596987)
color screen; // for color of strobe if spacebar pressed
int gridX;
int gridY;
//---END VARIABLES---//



//---SETUP---//
void setup() {
  size(1280, 720);
  minim = new Minim(this);
  output = minim.getLineOut(Minim.STEREO, 512);
  // create a sine wave
  wave = new Oscil( 14000, 0.05f, Waves.SINE );
  bass = new Oscil( 120, 0.1f, Waves.SINE );
  sub = new Oscil( 66, 0.1f, Waves.SINE );
  // patch the Oscil to the output
  wave.patch(output);
  bass.patch(output);
  sub.patch(output);
  player = minim.loadFile("Collider.mp3");


  background(255);
  fade = get(0, 0, width, height);
  frameRate(60);
  numbers = loadFont("OCRAStd-9.vlw"); // loads OCRA font for sketch
  noCursor(); // hides cursor
}
//---END SETUP---//




//---DRAW---//
void draw() {  

  //sounds//
  output.setPan(map(mouseX, 0, width, -1, 1));
  output.setGain(map(mouseY, height, 6, -10, 0));
  wave.setFrequency(random(100, 16000));
  bass.setFrequency(random(20, 140));
  if (frameCount>900 && frameCount<1300) {
    bass.setWaveform( Waves.TRIANGLE );
  } else
  {
    bass.setWaveform( Waves.SINE );
  }
  //end sounds//



  background(0); // the 'regular' background -- black
  tint(255, 255, 255, 200);
  image(fade, 0, 0);
  noTint();
  if (keyPressed) { // if spacebar pressed then switch to colors
    if (key == 32) {
      screen = color(random(255), random(255), random(255));
    }
  } else {
    screen = color(255);
  }

  // if mouse goes on subject in center, probability of a 'strobe' will drastically increase
  if (mouseX>600 && mouseX<680 && mouseY>320 && mouseY<380) {
    strobe = random(10);
    wave.setAmplitude(0.05f);
  } else {
    strobe = random(300);
    wave.setAmplitude(0);
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
  } 

  //the random wiggle for EVERYTHING on screen 
  for (gridX = 600; gridX <= width-600; gridX += 4) {
    for (gridY = 320; gridY <= height-320; gridY += 4) {
      if (strobe<5) { // during a 'strobe'
        fill(0);
      } else { // regular fill -- no 'strobe'
        fill(screen);
      }
      noStroke();
      float myfloat = map(mouseY, 0, height, 1, 5);
      subj(mouseX, myfloat); //***project checklist: passing parameters to function***

      //now to draw everything else besides the main subject. I can put whatever I want in here!
      glitch = random(1000);
      if (glitch < 0.5) { // probability for a 'glitch' -- if true then the diagonal lines are generated
        if (strobe<5) {
          stroke(0);
        } else {
          stroke(screen);
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
  fade = get(0, 0, width, height);
}
//---END DRAW---//



//---CUSTOM: SUBJ---//
void subj(int mx, float my) {

  if (frameCount>1300) {
    fill(random(255), 0, random(255), 200);
    ellipse(gridX, gridY, 1, 0+random(my));
    // player.play(); play jon hopkins tune if uncommented
  } else
  {
    if (frameCount>1200) {
      fill(0, random(255), random(255), 60);
      ellipse(gridX, gridY, 0+random(2000), 0+random(1));
    } else {
      if (frameCount>900) {
        fill(random(255), 0, 0, 60);
        ellipse(gridX, gridY, 0+random(20), 0+random(20));
      } else {
        if (frameCount>600) {
          rect(gridX, gridY, 1, 1);
        } else {
          if (frameCount>300) {
            ellipse(gridX, gridY, 1, 0+random(my));
          } else {
            ellipse(gridX, gridY, 0+random(10), 0+random(10)); // making a grid of ellipses with randomly changing radii
          }
        }
      }
    }
  }
}
//---END CUSTOM: SUBJ---//



//---CUSTOM: CURSOR---//
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
//---END CUSTOM: CURSOR---//



//---CUSTOM: XTRALINES---//
void xtraLines() { // these are the glitchy lines that are moving about on the screen!
  if (frameCount>1300) {
    stroke(random(255), 0, random(255));
  }
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
//---END CUSTOM: XTRALINES---//