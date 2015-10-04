int w = 120; //jack width
int h = 30; //jack height
float xpos, ypos; // starting point

float xspeed = 10.8;  // Speed of the shape
float yspeed = 10.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


void setup(){
  size(1000,1000);
  background(255);
  frameRate(30);
  xpos= width/2;
  ypos= height/2;
}


  
  
  void draw(){
    background(255);
    trampoline(pmouseX-250, 675);
    jack();
    loser();
    restart();
   
 
  }
  
  
  
                                                       // prints the loser page
  void loser(){
    if(ypos > height){
      background(0);
      fill(143,29,13);
      text("YOU LOSE", width/2, height/2);
      textSize(48);
      text("Press mouse to restart", width/2, height/2+45);
    }
  }
  
  
  
                                                      //restarts the game
  void restart(){
    if(mousePressed){
      setup();
    }
  }
  
  
                                                   //prints and moves jack
  void jack(){
    //change possision 
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
    //keeps it in horizontally 
      if (xpos > width-w || xpos < w) {
    xdirection *= -1;
  }
  //keeps it from flying out upwards
  if ( ypos < h) {
    ydirection *= -1;
  }
    
    
  if(pmouseX-250 <xpos  && xpos< pmouseX+250 && ypos > 730 && ypos < 750){
   
        ydirection *= -1;
      
  }
    
    
  textSize(128);
  fill(143,29,13);
  textAlign(CENTER);
  text("Jack",xpos,ypos);
}

  
                                                //draws the trampoline
  void trampoline(int x, int y){
    pushMatrix();
   translate(x,y); 
    legone();
    legtwo();
    legthree();
    body();
    popMatrix();
  }
  
  void legone(){                                   //middle leg
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
    void legtwo(){                                  //back left leg
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
    void legthree(){                                     //back right leg
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
  
  void body(){                                         //body of the trampoline
    
   fill(49,112,207);
   ellipse(250,90,500,125);
   fill(115,123,126);
   ellipse(250,80,355,75);
  }
    
/*create trampoiline
have thrampoiline bounce when jack is dragged into it.
*/