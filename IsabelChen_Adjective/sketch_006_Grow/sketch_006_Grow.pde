/* using Processing example "tickle" as reference
  https://processing.org/examples/tickle.html */

String message = "grow";
float x, y; // X and Y coordinates of text
float hr, vr; // horizontal and vertical coordinates of text
char g, r, o, w;
//float q = 0.0;

void setup(){
  
 size(550, 400);
  
} //end setup



void draw(){
  
  background(225);
  
  pushMatrix();
    grow();
  popMatrix();
  
} //end draw


void grow(){
  
  green();
  text("g", width/2, 355);
  text("r", width/2, 370);
  text("o", width/2, 383);
  text("w", width/2, 395);
  
} //end grow


void green(){
 
  fill(49, 180, 86);
  
} //end green