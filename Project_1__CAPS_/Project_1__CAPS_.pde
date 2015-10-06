/*Initial goal is to display the adjective "LARGE" 
and make it so that the user is able to highlight the word
and when they click the caps lock botton it becomes all caps
when the process is repeated it's all lower case
*/

boolean overL = false;
boolean highlightL = false;
boolean move = false;
boolean overA = false;
boolean highlightA = false;

void setup(){
size(800,800);
background (255);

}//end void setup

void draw(){
  
  pushMatrix();
  translate(-50,0);
  littleLarge();
  popMatrix();

   
   if (mouseX > 104 && mouseX < 125 && mouseY >= 280 && mouseY <= 480){
         overL=true;
         //println("k");
         
         
       }
       
   if (overL && mousePressed==true){
     highlightL=true;
     //println("uh");
   }
   
   if(mouseX==mouseX+25){
     move=true;
     println("wo");
   }
  
  if(highlightL && move){
     hiLiteL();
   }
   
   
  
     
      /*
   
   if (mouseX > 166 && mouseX < 183 && mouseY >= 280 && mouseY <= 480){
         overA=true;
         println("yay");
   }
   
   if (overA && mousePressed==true && mouseX==mouseX+25){
     highlightA=true;
     
   }
    else {
     highlightA=false;
     //println("boo");
   }
*/
  
}//end void draw
 
 

/*
void mouseDragged(){
         if (highlightL=true){
           hiLiteL();
           
           }
           
           if (highlightA=true){
           hiLiteA();
           
         }
      

}

      */


 void littleLarge(){
  littleL();
  littleA();
  littleR();
  littleG();
  littleE();
  
 }//littleLarge
  
void littleL(){
  
  noStroke();
  fill(255,0,0);
  rect(165, 304, 40, 150);
  ellipse(185, 304, 40, 40);//top round
  ellipse(185, 454, 40, 40);//bottom round
  
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

void littleR(){
    
  fill(255,0,0);
  ellipse(414, 412, 110, 125);//circle outside
  fill(255);
  ellipse(414, 412, 50, 60);//cricle inside
  fill(255);
  triangle(480,360,374,420,450,470);//block cirlcle
  rect(360,405, 120, 75);//block circle
  fill(255,0,0);
  rect(356, 360, 36, 100);//stick
  ellipse(374, 360, 36, 36);//top of stick round
  ellipse(374, 460, 36, 36);//bottom of stick round
  ellipse(441, 376, 34, 34);//circle to complete arch
   
}//littleR

void littleG(){
  fill(255,0,0);
  ellipse(523, 490, 129, 125);//bottom cirlce outside
  fill(255);
  ellipse(523, 490, 53, 55);//bottom circle inside
  fill(255,0,0);
  rect(551, 366, 36, 140);//stick
  fill(255);
  rect(450,440, 99,56);//blocker
  fill(255,0,0);
  ellipse(516, 412, 110, 125);//circle outside
  fill(255);
  ellipse(516, 412, 50, 60);//circle inside
  fill(255,0,0);
  ellipse(569, 360, 36, 36);//round on stick
  ellipse(478, 498,38,36);//loop round
  
}//littleG

void littleE(){
   fill(255,0,0);
  ellipse(660, 412, 116, 130);//main circle outside
  fill(255);
  ellipse(660, 412, 56, 66);//main inside
  fill(255,0,0);
  rect(620, 400, 68, 26);//bar
  fill(255);
  rect(660, 426, 60,15);//blocker
  fill(255,0,0);
  ellipse(692,442, 38,18 );//round
  noFill();
  strokeWeight(8);
  stroke(255);
  arc(698, 404, 50, 50, 0, HALF_PI);//curve of top
  
  
}//littleE

void hiLiteL(){
  noStroke();
  fill(50,0,230,50);
  rect(104,280, 62, 200);
}//hiLiteL

void hiLiteA(){
  noStroke();
  fill(50,0,230,50);
  rect(166,280,135,200);
  
}//hiLiteA