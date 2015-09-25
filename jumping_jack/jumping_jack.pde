void setup(){
  size(1000,1000);
  background(255);
}


  
  
  void draw(){
    background(255);
    jack();
   trampoline();
   
 
  }
  
  void jack(){
  textSize(128);
  fill(143,29,13);
  text("JACK",pmouseX-150,pmouseY+50);
}
  
  void trampoline(){
   translate(300,675); 
    legone();
    legtwo();
    legthree();
    body();
  }
  void legone(){ //middle leg
   
   strokeWeight(3);
    ellipse(340,261,18,5);
    stroke(0);
     rectMode(CENTER);
    fill(180,206,203);
    rect(340,210,15,130);
    stroke(2);
    fill(56,61,65);
    rect(340,269,18,10);
    ellipse(340,280,24,8);
    ellipse(340,288,24,8);
    rect(340,284,24,4);
  }
    void legtwo(){ //back left leg
   strokeWeight(3);
    ellipse(30,221,18,5);
    stroke(0);
     rectMode(CENTER);
    fill(180,206,203);
    rect(30,170,15,130);
    stroke(2);
    fill(56,61,65);
    rect(30,229,18,10);
    ellipse(30,240,24,8);
    ellipse(30,248,24,8);
    rect(30,244,24,4);
  }
    void legthree(){ //back right leg
    stroke(0);
     rectMode(CENTER);
    fill(180,206,203);
    rect(480,140,15,64);
    stroke(2);
    fill(56,61,65);
     rect(480,163,18,10);
    ellipse(480,174,24,8);
    ellipse(480,182,24,8);
    rect(480,178,24,4);
  }
  
  void body(){
    
   fill(49,112,207);
   ellipse(250,90,500,125);
   fill(115,123,126);
   ellipse(250,80,355,75);
  }
    
/*create trampoiline
have thrampoiline bounce when jack is dragged into it.
*/