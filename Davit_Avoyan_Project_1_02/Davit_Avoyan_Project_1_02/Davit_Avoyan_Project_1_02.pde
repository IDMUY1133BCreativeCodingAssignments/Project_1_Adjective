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

 
 if (keyPressed == true){
    if(key == CODED){
      if(keyCode == LEFT){
        waves(-10, 300, 40, 80, 40, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 160, 40, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 240, 40, 0, PI, PI, 2*PI);

      }
     
    }
    
    if(key == CODED){
      if(keyCode == RIGHT){
        waves(-10, 300, 40, 20, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 10, 0, 0, PI, PI, 2*PI);

        }
      }
    }
 
 
 
 
 
  /*waves(-10, 300, 40, 80, 150, 0, PI, PI, 2*PI); //calling waves() with x, y coordinates, 
                               //width, height the end-point, the two angles for
                              //the first type of arch and the two angles for
                              //the second type of arch, as parameters*/
  
  
}//draw()

void waves(int x, int y, int w, int h, int e, float a, float b, float c, float d){
             //the function of arcs which loops until a line of wavy arcs is created
  int ornt = 0; //the variable that changes up the angles of the arches
  e = 0;
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
  
  /*if(keyPressed){
    if(key == CODED){
      if(keyCode == 'b' || keyCode == 'B'){
        println("Bye.");
      }//b
    }//if
  }//if keyPressed*/
    
  
}//instructions()