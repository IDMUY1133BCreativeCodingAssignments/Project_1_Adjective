//code for the adjective CALM

void setup(){
  size(600, 600);
  background(200, 170, 190);
  stroke(255);
  noFill();
  smooth();
  instructions();
  waves(-10, 300, 40, 40, 0, 0, PI, PI, 2*PI);
  
 
  

} //setup()


void draw(){
 //assign a value to a variable that keeps track of the presses and control with that?
 int cntrl_side = 0;
 int c = 0;
 int b = 0;
 
 mov_rect(10, 10);
 //empty_lines();
 
 int wcircles = 100; //stating values for the initial circle
 int hcircles = 100;
 int xcircles = 50;
 int ycircles = 100;
 circles(xcircles, ycircles, wcircles, hcircles); //calling the initial circle
 
 
 if (keyPressed == true){
    if(key == CODED){
      if(keyCode == LEFT){
        waves(-10, 300, 40, 80, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 160, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 240, 0, 0, PI, PI, 2*PI);
 
      }
     
    }
    
    if(key == CODED){
      if(keyCode == RIGHT){
        waves(-10, 300, 40, 20, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 10, 0, 0, PI, PI, 2*PI);

        }
        
      }
    if(key == CODED){  
     
      
      if(keyCode == DOWN){
        c++;
        for(int p = 0; p < 550; p+= 100){
          circles(xcircles+p, ycircles, wcircles, hcircles);
          
        }

      }
      
 
      }
    
 }
      if(c > 0){
        for(int q = 0; q < 550; q+= 100){
           circles(xcircles+q, ycircles, wcircles-10, hcircles-10);
           circles(xcircles+q, ycircles, wcircles-20, hcircles-20);
           circles(xcircles+q, ycircles, wcircles-30, hcircles-30);
           circles(xcircles+q, ycircles, wcircles-40, hcircles-40);
           circles(xcircles+q, ycircles, wcircles-50, hcircles-50);
           circles(xcircles+q, ycircles, wcircles-60, hcircles-60);
            
        }
    }
    
 
 
 
 
  /*waves(-10, 300, 40, 80, 150, 0, PI, PI, 2*PI); //calling waves() with x, y coordinates, 
                               //width, height the end-point, the two angles for
                              //the first type of arch and the two angles for
                              //the second type of arch, as parameters*/
  
  
}//draw()

void circles(int xCircles, int yCircles, int wCircles, int hCircles){
  ellipse(xCircles, yCircles, wCircles, hCircles); 
}


void mov_rect(int w, int h){
  
  /*float xpos;
  xpos= mouseX;
  float ypos;
  ypos= mouseY;
  rect(xpos, ypos, 20, 20);*/
  
  
  pushMatrix();
  if(mousePressed){ //not working for some reason, trying to 
                    //move away the rectangles if mouse is pressed
    translate(800, 800);
  }
  rotate(atan2((mouseY/3), mouseX/2)); //make an arc with rects
                                        //and mouse movement
  rect(500, 50, w, h);
  
  popMatrix();
 
}
 


/*void empty_lines(int z, int c){
  stroke(255);
  for(int z = 0; z < width; z=+5){
    for(int c = 0; c < height; c=+5){
      rect(z, c, 100, 100);
    }
    
  }
}*/

void waves(int x, int y, int w, int h, int e, float a, float b, float c, float d){
             //the function of arcs which loops until a line of wavy arcs is created
  int ornt = 0; //the variable that changes up the angles of the arches

  while (x < (width - e)){
    if(ornt==0){  //first type of arch
      arc(x, y, w, h, a, b);
      x=x+w;  //makes sure the next arc starts where the previous one ended
              //basically keeps track of the total width
      ornt++; //inverts the arch
    }//if
      
    else{  //second type of arch
      arc(x, y, w, h, c, d);
      x=x+w;  //makes sure the next arc starts where the previous one ended
              //basically keeps track of the total width
      ornt = 0; //straightens the arch back up
    }//else
  }//while
   
  /*if (keyPressed == true){
    if(key == CODED){
      if(keyCode == LEFT){
        for(e = 0; e < 600; e+= 40){  //increases bounds with every left key to
                                            //decrease the number of arcs
          waves(-10, 300, 40, 20, e, 0, PI, PI, 2*PI);
          break; //break so that the action is done once for every press
              }//for
         }//if
         
      else if(keyCode == RIGHT){
        for(e = 0; e < 600; e-= 40){  //decreases bounds with every right key to
                                            //increase the number of arcs
          waves(-10, 300, 40, 20, e, 0, PI, PI, 2*PI);
          break; //break so that the action is done once for every press
              }//for
         }//if
     
    
      else if(keyCode == UP){
        for(h = 20; h < 100; h+= 2){  //increases height with every up key                                
          waves(-10, 300, 40, h, e, 0, PI, PI, 2*PI); 
          break; //break so that the action is done once for every press
              }//for
        }//if
        
      else if(keyCode == DOWN){
        for(h = 20; h < 100; h-= 2){  //decreases height with every down key                               
          waves(-10, 300, 40, h, e, 0, PI, PI, 2*PI); 
          break; //break so that the action is done once for every press
              }//for
        }//if
      }//if
    }//if

*/

   
}//waves()



void instructions(){
  /*println("Please read the instructions below!");
  println("Press the left key to deconstruct the wave.");
  println("Press the right key to reconstruct the wave.");
  println("Press the up key to increase the height of the wave.");
  println("Press the down key to decrease the height of the wave.");*/
  
  println("Please read the instructions below!");
  println("Press the left key to add arcs above the one that exists.");
  println("Press the right key to add arcs below the one that exists.");
  println("Press the down key to add circles within the initial one and more.");
  
  /*if(keyPressed){
    if(key == CODED){
      if(keyCode == 'b' || keyCode == 'B'){
        println("Bye.");
      }//b
    }//if
  }//if keyPressed*/
    
  
}//instructions()