void setup(){
  size(600, 600);
  background(200, 170, 190);
  stroke(255);
  noFill();
  smooth();
  instructions();

} //setup()


void draw(){
 

  
 //assign a value to a variable that keeps track of the presses and control with that?
 int cntrl_side = 0;
 int c = 0;
 int b = 0;
 
 color rect3 = color(180, 120, 180);

 if (keyPressed == true){
    if(key == CODED){
      if(keyCode == UP){         
         mov_rect(15, 15, rect3);
       }
    }
 }
 
 //empty_lines();
 
 int wcircles = 100; //stating values for the initial circle
 int hcircles = 100;
 int xcircles = 50;
 int ycircles = 100;
 
 
 noFill(); 
 //circles(xcircles, ycircles, wcircles, hcircles); //calling the initial circle
 
 
 if (keyPressed == true){  //print the waves, with left and right clicks
    if(key == CODED){
      if(keyCode == LEFT){
        waves(-10, 300, 40, 80, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 160, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 240, 0, 0, PI, PI, 2*PI);
      if(key == SHIFT){
           pushMatrix(); 
           translate(30, 20);
           ellipse(20, 20, 20, 20);
           popMatrix(); 
          
        }
 
      }
     
    }
  
    if(key == CODED){
      if(keyCode == RIGHT){
        waves(-10, 300, 40, 40, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 20, 0, 0, PI, PI, 2*PI);
        waves(-10, 300, 40, 10, 0, 0, PI, PI, 2*PI);

        }
        
      }
    if(key == CODED){  //print the circles with down
     
      
      if(keyCode == DOWN){ //the outer circles
        //c++;
        for(int p = 0; p < 550; p+= 100){
          circles(xcircles+p, ycircles, wcircles, hcircles);
          circles(xcircles+p, ycircles, wcircles-10, hcircles-10);
          circles(xcircles+p, ycircles, wcircles-20, hcircles-20);
          circles(xcircles+p, ycircles, wcircles-30, hcircles-30);
          circles(xcircles+p, ycircles, wcircles-40, hcircles-40);
          circles(xcircles+p, ycircles, wcircles-50, hcircles-50);
          circles(xcircles+p, ycircles, wcircles-60, hcircles-60);
          
        }

      }
      
      }
    
 }
    
      bg_texture();  //running the function with the dots changing color in background
  
 if(keyPressed == true){  //if 'n' is pressed, the program will start over
   if (key == 'n' || key == 'N'){
     over();
     }
  }
  
}//draw()

void bg_texture(){  //the function with the dots changing color in background

  int columns = width;
  int rows = height;
  
  color a = color(100, 80, 60);
  color s = color(0, 150, 200);
  color d = color(40, 200, 80);
  color f = color(30, 50, 220);

  int[][] myArray = new int[columns][rows];
  
  color[] colors = new color[4];
  colors[0] = color(70, 30, 60);
  colors[1] = color(0, 200, 220);
  colors[2] = color(40, 140, 80);
  colors[3] = color(230, 240, 100);
  
  
  color col = colors[(int)random(0,4)];
  stroke(col);  //generating the colors of dots randomly 
  
  
  //Assigning values
  for (int i = 0; i < columns; i++) {
    for (int k = 0; k < rows; k++) {
      myArray[i][k] = int(random(255));
    }
  }
  
  // Draw the points
  for (int i = 0; i < columns; i+=30) {
    for (int k = 0; k < rows; k+=30) {
      point(i, k);
    }
  }
} //bg_texture

void circles(int xCircles, int yCircles, int wCircles, int hCircles){ //custom function for circles
  ellipse(xCircles, yCircles, wCircles, hCircles); 
}


void mov_rect(int w, int h, color rectColor){ //function for the moving rectangles 
                                              //with the mouse
 
  
  fill(rectColor);  
  pushMatrix();
  rotate(atan2((mouseY/3), mouseX/2)); //make an arc with rects
                                        //and mouse movement
  rect(500, 50, w, h);
  
  popMatrix();
 
}
 
void over(){  //function for starting over
  stroke(255);
  fill(255);
  background(200, 170, 190);
}



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

   
}//waves()



void instructions(){
  
  println("Please read the instructions below!");
  println("If you want to see your shapes changing color, keep the following buttons PRESSED.");
  println("Press the left key to draw larger waves.");
  println("Press the right key to draw smaller waves.");
  println("Press the down key to add circles.");
  println("Press the up key and move your mouse, to draw rectangles.");
  println("If you want to start over, press n.");
  println("Please scroll up for more instructions!");
  
  
}//instructions()