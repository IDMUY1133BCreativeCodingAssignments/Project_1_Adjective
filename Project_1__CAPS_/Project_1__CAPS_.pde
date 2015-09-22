/*Initial goal is to display the adjective "LARGE" 
and make it so that the user is able to highlight the word
and when they click the caps lock botton it becomes all caps
when the process is repeated it's all lower case
*/

void setup(){
size(800,800);
background (255);

}//end void setup

void draw(){

  littleL();
  littleA();
  
}//end void draw

void littleL(){
  
  noStroke();
  fill(255,0,0);
  rect(150, 300, 50, 150);
  ellipse(175, 300, 50, 50);//top round
  ellipse(175, 450, 50, 50);//bottom round
  
}//void littleL

void littleA(){
  noStroke();
  fill(255,0,0);
  ellipse(275, 412, 110, 125);
  fill(255);
  ellipse(275, 412, 50, 60);
  fill(255,0,0);
  rect(310, 360, 36, 100);
  ellipse(328, 360, 36, 36);
  ellipse(328, 460, 36, 36);
  
  
}//void LittleA