/*Initial goal is to display the adjective "LARGE" 
and make it so that the user is able to highlight the word
and when they click the caps lock botton it becomes all caps
when the process is repeated it's all lower case
*/

boolean overL = false;
boolean highlightL = false;
boolean bigL= false;
boolean stopL=false;

boolean overA = false;
boolean highlightA = false;
boolean bigA= false;
boolean stopA=false;

boolean overR = false;
boolean highlightR = false;
boolean bigR= false;
boolean stopR=false;

boolean overG = false;
boolean highlightG = false;
boolean bigG= false;
boolean stopG=false;

boolean overE = false;
boolean highlightE = false;
boolean bigE= false;
boolean stopE=false;

void setup(){
size(800,800);
background (255);
   
pushMatrix();
  translate(-50,0);
  littleLarge();
  popMatrix();
  

}//end void setup

void draw(){
  
  

   
   if (mouseX > 104 && mouseX < 125 && mouseY >= 280 && mouseY <= 560){
         overL=true;
         println("yay");
       }
       
   if (overL && mousePressed==true){
     highlightL=true;
     
   }
   
   if (mouseX > 166 && mouseX < 183 && mouseY >= 280 && mouseY <= 560){
         overA=true;
        
   }
   
   if (overA && mousePressed==true){
     highlightA=true;
    
   }
   
   if (mouseX > 301 && mouseX < 421 && mouseY >= 280 && mouseY <= 560){
         overR=true;
         
   }
   
   if (overR && mousePressed==true){
     highlightR=true;
    
   }

   
    if (mouseX > 410 && mouseX < 430 && mouseY >= 280 && mouseY <= 560){
         overG=true;
        
   }
   
   if (overG && mousePressed==true){
     highlightG=true;
    
   }
   
   if (mouseX > 546 && mouseX < 566 && mouseY >= 280 && mouseY <= 560){
         overE=true;
        
   }
   
   if (overE && mousePressed==true){
     highlightE=true;
    
   }
   
   //don't rehighlight little letters
   if(stopL){
     highlightL=false;
   }
   
   if(stopA){
     highlightA=false;
   }
   
   if(stopR){
     highlightR=false;
   }
   
   if(stopG){
     highlightG=false;
   }
   
   if(stopE){
     highlightE=false;
   }

}//end void draw
 void mouseDragged(){
 if(highlightL){
   hiLiteL();
   bigL=true;
   
 }//hiLiteL
 if(highlightA){
   hiLiteA();
   bigA=true;
   
 }//hiLiteA
 
 if(highlightR){
   hiLiteR();
   bigR=true;
   
 }//hiLiteR
 
  if(highlightG){
   hiLiteG();
   bigG=true;
   
 }//hiLiteG
 
 if(highlightE){
   hiLiteE();
   bigE=true;
   
 }//hiLiteE
 
 
 
 
 }//void mouseDragged

void keyPressed(){
if(bigL && key == CODED){
   if(keyCode == 20){
   largeL();
   stopL=true;
   }
 }
 
 if(bigA && key == CODED){
   if(keyCode == 20){
   largeA();
   stopA=true;
 
 }
 }
 
 if(bigR && key == CODED){
   if(keyCode == 20){
   largeR();
   stopR=true;
   }
 
}
if(bigG && key == CODED){
   if(keyCode == 20){
   largeG();
   stopG=true;
   }
}

}

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
  fill(50,0,230);
  rect(104,280, 62, 280);
  pushMatrix();
  translate(-50,0);
  noStroke();
  fill(255,0,0);
  rect(165, 304, 40, 150);
  ellipse(185, 304, 40, 40);//top round
  ellipse(185, 454, 40, 40);//bottom round
  popMatrix();
  
}//hiLiteL

void hiLiteA(){
  noStroke();
  fill(50,0,230);
  rect(166,280,135,280);
  pushMatrix();
  translate(-50,0);
  noStroke();
  fill(255,0,0);
  ellipse(275, 412, 110, 125);
  fill(50,0,230);
  ellipse(275, 412, 50, 60);
  fill(255,0,0);
  rect(310, 360, 36, 100);
  ellipse(328, 360, 36, 36);
  ellipse(328, 460, 36, 36);
  popMatrix();

  
}//hiLiteA

void hiLiteR(){
  
  noStroke();
  fill(50,0,230);
  rect(301,280,109,280);
  
  
  pushMatrix();
  translate(-50,0);
  fill(255,0,0);
  ellipse(414, 412, 110, 125);//circle outside
  fill(50,0,230);
  ellipse(414, 412, 50, 60);//cricle inside
  fill(50,0,230);
  triangle(480,360,374,420,450,470);//block cirlcle
  rect(360,405, 120, 75);//block circle
  fill(255,0,0);
  rect(356, 360, 36, 100);//stick
  ellipse(374, 360, 36, 36);//top of stick round
  ellipse(374, 460, 36, 36);//bottom of stick round
  ellipse(441, 376, 34, 34);//circle to complete arch
  popMatrix();
  
  fill(255);
 
  rect(410,300,30,180);
  
  pushMatrix();
  translate(-50,0);
  fill(255,0,0);
  ellipse(516, 412, 110, 125);//circle outside
  fill(255);
  ellipse(516, 412, 50, 60);//circle inside
  popMatrix();
  
 

}//hiLiteR

void hiLiteG(){
  noStroke();
  fill(50,0,230);
  rect(410,280,136,280);
  
  pushMatrix();
  translate(-50,0);
  fill(255,0,0);
  ellipse(523, 490, 129, 125);//bottom cirlce outside
  fill(50,0,230);
  ellipse(523, 490, 53, 55);//bottom circle inside
  fill(255,0,0);
  rect(551, 366, 36, 140);//stick
  fill(50,0,230);
  rect(450,440, 99,56);//blocker
  fill(255,0,0);
  ellipse(516, 412, 110, 125);//circle outside
  fill(50,0,230);
  ellipse(516, 412, 50, 60);//circle inside
  fill(255,0,0);
  ellipse(569, 360, 36, 36);//round on stick
  ellipse(478, 498,38,36);//loop round
  popMatrix();

}//hiLiteG

void hiLiteE(){
  noStroke();
  fill(50,0,230);
  rect(546,280,136,280);
  
  pushMatrix();
  translate(-50,0);
  fill(255,0,0);
  ellipse(660, 412, 116, 130);//main circle outside
  fill(50,0,230);
  ellipse(660, 412, 56, 66);//main inside
  fill(255,0,0);
  rect(620, 400, 68, 26);//bar
  fill(50,0,230);
  rect(660, 426, 60,15);//blocker
  fill(255,0,0);
  ellipse(692,442, 38,18 );//round
  noFill();
  strokeWeight(8);
  stroke(50,0,230);
  arc(698, 404, 50, 50, 0, HALF_PI);//curve of top
  popMatrix();
  

}//hiLiteE

void largeL(){
  noStroke();
  fill(255);
  rect(104,280, 62, 280);
  
  pushMatrix();
  translate(-45,0);
  
  noStroke();
  fill(255,0,0);
  rect(70, 304, 40, 150);
  ellipse(90, 304, 40, 40);//top round
  rect(70, 454, 90, 40);
  ellipse(162, 474, 40, 40);
  popMatrix();
  noStroke();
  
}//largeL

void largeA(){
   noStroke();
   fill(255);
   rect(166,280,135,280);
   pushMatrix();
   translate(-16,0);
   fill(255,0,0);
   ellipse(180, 474, 35, 35);
   ellipse(280, 474, 35, 35);
   ellipse(230, 304, 35, 35);
   strokeWeight(38);
   stroke(255,0,0);
   line(230,304,180,474);
   line(230,304,280,474);
   line(200,425, 250, 425);
   popMatrix();
   
}//largeA

void largeR(){
  noStroke();
  fill(255);
  rect(301,280,109,280);
  
  fill(255,0,0);
  ellipse(310, 474, 35, 35);
  ellipse(310, 304, 35, 35);
  strokeWeight(38);
  stroke(255,0,0);
  line(310, 474, 310, 304);
  noStroke();
  fill(255,0,0);
  ellipse(348, 340, 110, 125);//circle outside
  fill(255);
  ellipse(348, 340, 40, 50);//circle inside
  fill(255,0,0);
  stroke(255,0,0);
  line(384, 474, 345, 395);
  
}//largeR

void largeG(){
  noStroke();
  fill(255);
  rect(410,280,136,280);
  fill(255,0,0);
  ellipse(475, 385, 130, 215);
  fill(255);
  ellipse(475, 385, 60, 108);
  fill(255);
  rect(490,370, 50, 30);
  fill(255,0,0);
  ellipse(518,410,68, 35);
  ellipse(522,370,35, 30);
  
}//largeG

void largeE(){
  
}