//ADJETIVE: FAST
/*My goal is to create a simulation where as you move the mouse higher up the
page, you increase the speed at which you move down the highway, and vice versa.
I also want to increase the feeling of turbulance by making the screen shake
as you move faster. There will be more objects, moving away from a vanishing 
point, instead of down the y axis*/



int y = 460;
int x = 400;
int i = 30;
//int z = 
//int u = 

void setup() {
  size(800, 800);

  background(0, 0, 225);
  fill(232, 120, 31);
  quad(0, 400, 800, 400, 800, 800, 0, 800);
  fill(0);
  quad(300, 400, 500, 400, 600, 800, 200, 800);
  
}

void draw(){
  
  frameRate(i + mouseX);
  
  
  fill(255, 245, 57);
  quad(380, x, 420, x, 420, y, 380, y);
  y =  y + 1;
  x = x + 1; 
  
  
 
    if (int x = 800) { 
     /*here, i'm trying to get the process to repeat once the top part of the 
  bar reaches the bottom of the page. I thought it would be as simple as 
  repeating the code*/
    fill(255, 245, 57);
  quad(380, x, 420, x, 420, y, 380, y);
  y =  y + 1;
  x = x + 1;

  }
  
}

  
  

  
  