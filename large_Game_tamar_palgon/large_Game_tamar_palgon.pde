//if 'p' is pressed, the word will print where the mouse was
//if 'h' is pressed while the mouse hovers over the word, the word will be highlighted
//if 'l' is pressed while the word is highlighted and the mouse hovers over the word, the letters will be large
//if 'p' is pressed again, a new "large" will print and the old one will disappear
//see how many points you can get in 10 seconds

PShape littleL, one, two, three;
PShape littleA, four, five, six, seven, eight;
PShape littleR, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen;
PShape littleG, seventeen, eighteen, nineteen, twenty, twentyone, twentytwo, twentythree, twentyfour;
PShape littleE, twentyfive,twentysix,twentyseven,twentyeight,twentynine,thirty;
PShape largeL,a,b,c,d;
PShape largeA,e,f,g,h,i,j;
PShape largeR,k,l,m,n,o,p;
PShape largeG,q,r,s,t,u,v;
PShape largeE,w,x,y,z, aa,bb,cc,dd;
boolean overLetter;
boolean highlight;
boolean big;
boolean reset;
PVector savedMouse;
float aaa=random(0,255);
float bbb=random(0,255);
float ccc=random(0,255);
int sec=0;
float xxx=0;



void setup(){
size(800,800);
background (255);
savedMouse = new PVector(0, 0); //Initialize the PVector
   textFont(createFont("Arial",30));
  

littleL = createShape(GROUP);
  
  noStroke();
  one=createShape(RECT,165, 304, 40, 150);
  one.setFill(color(aaa,bbb,ccc));
  two=createShape(ELLIPSE,185, 304, 40, 40);//top round
  two.setFill(color(aaa,bbb,ccc));
  three=createShape(ELLIPSE,185, 454, 40, 40);//bottom round
  three.setFill(color(aaa,bbb,ccc));
  littleL.addChild(one);
  littleL.addChild(two);
  littleL.addChild(three);
  
  littleA = createShape(GROUP);
  noStroke();
  four=createShape(ELLIPSE,275, 412, 110, 125);
   four.setFill(color(aaa,bbb,ccc));
  five=createShape(ELLIPSE,275, 412, 50, 60);
   five.setFill(color(255));
  six=createShape(RECT,310, 360, 36, 100);
  six.setFill(color(aaa,bbb,ccc));
  seven=createShape(ELLIPSE,328, 360, 36, 36);
  seven.setFill(color(aaa,bbb,ccc));
  eight=createShape(ELLIPSE,328, 460, 36, 36);
  eight.setFill(color(aaa,bbb,ccc));
  littleA.addChild(four);
  littleA.addChild(five);
  littleA.addChild(six);
  littleA.addChild(seven);
  littleA.addChild(eight);
  
   littleR = createShape(GROUP);
  nine=createShape(ELLIPSE, 414, 412, 110, 125);//circle outside
  nine.setFill(color(aaa,bbb,ccc));
  ten=createShape(ELLIPSE, 414, 412, 50, 60);//cricle inside
  ten.setFill(color(255));
  eleven=createShape(TRIANGLE,480,360,374,420,450,470);//block cirlcle
  eleven.setFill(color(255));
  twelve=createShape(RECT,360,405, 120, 75);//block circle
  twelve.setFill(color(255));
  thirteen=createShape(RECT,356, 360, 36, 100);//stick
  thirteen.setFill(color(aaa,bbb,ccc));
  fourteen=createShape(ELLIPSE,374, 360, 36, 36);//top of stick round
  fourteen.setFill(color(aaa,bbb,ccc));
  fifteen=createShape(ELLIPSE,374, 460, 36, 36);//bottom of stick round
  fifteen.setFill(color(aaa,bbb,ccc));
  sixteen=createShape(ELLIPSE,441, 376, 34, 34);//circle to complete arch
  sixteen.setFill(color(aaa,bbb,ccc));
  littleR.addChild(nine);
  littleR.addChild(ten);
  littleR.addChild(eleven);
  littleR.addChild(twelve);
  littleR.addChild(thirteen);
  littleR.addChild(fourteen);
  littleR.addChild(fifteen);
  littleR.addChild(sixteen);
  
  littleG = createShape(GROUP);
  seventeen=createShape(ELLIPSE,523, 490, 129, 125);//bottom cirlce outside
  seventeen.setFill(color(aaa,bbb,ccc));
  eighteen=createShape(ELLIPSE,523, 490, 53, 55);//bottom circle inside
  eighteen.setFill(color(255));
  twentyfour=createShape(RECT,551, 366, 36, 140);//stick
  twentyfour.setFill(color(aaa,bbb,ccc));
  nineteen=createShape(RECT,450,440, 99,56);//blocker
  nineteen.setFill(color(255));
  twenty=createShape(ELLIPSE,516, 412, 110, 125);//circle outside
  twenty.setFill(color(aaa,bbb,ccc));
  twentyone=createShape(ELLIPSE,516, 412, 50, 60);//circle inside
  twentyone.setFill(color(255));
  twentytwo=createShape(ELLIPSE,569, 360, 36, 36);//round on stick
  twentytwo.setFill(color(aaa,bbb,ccc));
  twentythree=createShape(ELLIPSE,478, 498,38,36);//loop round
  twentythree.setFill(color(aaa,bbb,ccc));
  littleG.addChild(seventeen);
  littleG.addChild(eighteen);
  littleG.addChild(twentyfour);
  littleG.addChild(nineteen);
  littleG.addChild(twenty);
  littleG.addChild(twentyone);
  littleG.addChild(twentytwo);
  littleG.addChild(twentythree);
  
  
  littleE = createShape(GROUP);
  twentyfive=createShape(ELLIPSE,660, 412, 116, 130);//main circle outside
  twentyfive.setFill(color(aaa,bbb,ccc));
  twentysix=createShape(ELLIPSE,660, 412, 56, 66);//main inside
  twentysix.setFill(color(255));
  twentyseven=createShape(RECT,620, 400, 68, 26);//bar
  twentyseven.setFill(color(aaa,bbb,ccc));
  twentyeight=createShape(RECT,660, 426, 60,15);//blocker
  twentyeight.setFill(color(255));
  twentynine=createShape(ELLIPSE,692,442, 38,18 );//round
  twentynine.setFill(color(aaa,bbb,ccc));
  noFill();
  strokeWeight(8);
  stroke(255);
  thirty=createShape(ARC,698, 404, 50, 50, 0, HALF_PI);//curve of top
  
    littleE.addChild(twentyfive);
  littleE.addChild(twentysix);
  littleE.addChild(twentyseven);
  littleE.addChild(twentyeight);
  littleE.addChild(twentynine);
  littleE.addChild(thirty);
  
  largeL = createShape(GROUP);
  fill(aaa,bbb,ccc);
  noStroke();
  a=createShape(RECT,25, 304, 40, 150);
  b=createShape(ELLIPSE,45, 304, 40, 40);//top round
  c=createShape(RECT,25, 454, 90, 40);
  d=createShape(ELLIPSE,117, 474, 40, 40);
  largeL.addChild(a);
  largeL.addChild(b);
  largeL.addChild(c);
  largeL.addChild(d);
  
  largeA = createShape(GROUP);
   fill(aaa,bbb,ccc);
   e=createShape(ELLIPSE, 164, 474, 35, 35);
   f=createShape(ELLIPSE,264, 474, 35, 35);
   g=createShape(ELLIPSE,214, 304, 35, 35);
   strokeWeight(38);
   stroke(aaa,bbb,ccc);
   h=createShape(LINE,214,304,164,474);
   i=createShape(LINE,214,304,264,474);
   j=createShape(LINE,184,425, 234, 425);
   largeA.addChild(e);
   largeA.addChild(f);
   largeA.addChild(g);
   largeA.addChild(h);
   largeA.addChild(i);
   largeA.addChild(j);
  
  largeR = createShape(GROUP);
  noStroke();
  k=createShape(ELLIPSE,310, 474, 35, 35);
  k.setFill(color(aaa,bbb,ccc));
  l=createShape(ELLIPSE,310, 304, 35, 35);
  l.setFill(color(aaa,bbb,ccc));
  strokeWeight(38);
  stroke(aaa,bbb,ccc);
  m=createShape(LINE,310, 474, 310, 304);
  noStroke();
  n=createShape(ELLIPSE,348, 340, 110, 125);//circle outside
  fill(aaa,bbb,ccc);
  o=createShape(ELLIPSE,348, 340, 40, 50);//circle inside
  o.setFill(color(255));
  stroke(aaa,bbb,ccc);
  p=createShape(LINE,384, 474, 345, 395);
  p.setFill(color(aaa,bbb,ccc));
  largeR.addChild(k);
   largeR.addChild(l);
   largeR.addChild(m);
   largeR.addChild(n);
   largeR.addChild(o);
   largeR.addChild(p);

largeG = createShape(GROUP);
  noStroke();
  
  q=createShape(RECT,410,280,136,280);
  q.setFill(color(255));
  r=createShape(ELLIPSE,475, 385, 130, 215);
  r.setFill(color(aaa,bbb,ccc));
  s=createShape(ELLIPSE,475, 385, 60, 108);
  s.setFill(color(255));
  t=createShape(RECT,490,370, 50, 30);
  t.setFill(color(255));
  u=createShape(ELLIPSE,518,410,68, 35);
  u.setFill(color(aaa,bbb,ccc));
  v=createShape(ELLIPSE,522,370,35, 30);
  v.setFill(color(aaa,bbb,ccc));
   largeG.addChild(q);
   largeG.addChild(r);
   largeG.addChild(s);
   largeG.addChild(t);
   largeG.addChild(u);
   largeG.addChild(v);
   
   largeE = createShape(GROUP);
  fill(aaa,bbb,ccc);
  noStroke();
  w=createShape(RECT,565, 304, 40, 150);
  x=createShape(ELLIPSE,585, 304, 40, 40);//top round
  y=createShape(RECT,565, 454, 90, 40);
  aa=createShape(RECT,565, 280, 90, 40);
  bb=createShape(ELLIPSE,657, 300, 40, 40);
  cc=createShape(RECT,565, 365, 90, 40);
  dd=createShape(ELLIPSE,657, 385, 40, 40);
  z=createShape(ELLIPSE,657, 474, 40, 40);
  largeE.addChild(w);
  largeE.addChild(x);
  largeE.addChild(y);
  largeE.addChild(z);
  largeE.addChild(aa);
  largeE.addChild(bb);
   largeE.addChild(cc);
  largeE.addChild(dd);

  
}


      

void draw(){
  
fill(255);
noStroke();
rect(40,75, 50, 50);
//http://www.openprocessing.org/sketch/25849
sec=second();
  for(int lop=0;lop<5555;lop++){
    if(sec>10)sec=second()-(10*lop);
  } 
  if(sec==1){
  textFont(createFont("Arial",30));
  fill(0);
  text("1",50,100);
   reset=false;
}
  if(sec==2){
  textFont(createFont("Arial",30));
  fill(0);
  text("2",50,100);
   reset=false;
}
  
  if(sec==3){
  textFont(createFont("Arial",30));
  fill(0);
  text("3",50,100);
   reset=false;
}
  if(sec==4){
  textFont(createFont("Arial",30));
  fill(0);
  text("4",50,100);
   reset=false;
}
  if(sec==5){
  textFont(createFont("Arial",30));
  fill(0);
  text("5",50,100);
   reset=false;
}

if(sec==6){
  textFont(createFont("Arial",30));
  fill(0);
  text("6",50,100);
   reset=false;
}

if(sec==7){
  textFont(createFont("Arial",30));
  fill(0);
  text("7",50,100);
   reset=false;
}

if(sec==8){
  textFont(createFont("Arial",30));
  fill(0);
  text("8",50,100);
   reset=false;
}

if(sec==9){
  textFont(createFont("Arial",30));
  fill(0);
  text("9",50,100);
  reset=false;
}

if(sec==10){
  textFont(createFont("Arial",30));
  fill(0);
  text("10",50,100);
  reset=true;
}
 
     
 if(keyPressed==true){
   if(key=='p'){
      fill(255);
      rect(savedMouse.x-15, savedMouse.y-10, 670, 300);
      shape(littleL, mouseX-170,mouseY-285);
      shape(littleA, mouseX-170,mouseY-285);
      shape(littleR, mouseX-170,mouseY-285);
      shape(littleG, mouseX-170,mouseY-285);
      shape(littleE, mouseX-170,mouseY-285);
      savedMouse.x=mouseX;
      savedMouse.y=mouseY;
      println("Current saved mouse position: " + savedMouse.x + ", " + savedMouse.y);
   }
 }
       
       if(mouseX<savedMouse.x+570 && mouseX>savedMouse.x-10 && mouseY>savedMouse.y-2 && mouseY<savedMouse.y+200){
        
         overLetter=true;
         
       }
       
       else{
         overLetter=false; 
       }
         
       if(overLetter){
         if(keyPressed==true){
           if(key=='h'){
             fill(50,0,255,10);
             noStroke();
             rect(savedMouse.x-15, savedMouse.y-10, 580, 300);
             highlight=true;
             println("true");  
             
           }
         } 
       }//overLetter
       else{
         highlight=false;
       }
       
       
       if(overLetter==false){
         if(keyPressed==true){
           if(key=='h'){
             highlight=false;
             println("FALSE");    
           }
         }
       }//overLetter
       

       if(highlight==true){
         if(keyPressed==true){
         if(key=='l'){
         fill(255);
         rect(savedMouse.x-15, savedMouse.y-10, 670, 300);
         shape(largeL, savedMouse.x-28, savedMouse.y-278);
         shape(largeA, savedMouse.x-28, savedMouse.y-278);
         shape(largeR, savedMouse.x-28, savedMouse.y-278);
         shape(largeG, savedMouse.x-28, savedMouse.y-278);
         shape(largeE, savedMouse.x-28, savedMouse.y-278);
         big=true;
         
         
           }
         }
         }
         else{
           big=false;
         }  
         if(reset==true){
              xxx=0;
              noStroke();
              fill(255);
              rect(280,75, 450, 50);
         
         textFont(createFont("Arial",30));
         fill(0);
         text("Points:"+xxx, 300,100);

         }
         }
         
         void keyReleased(){
            
          if(big && key=='l'){ 
            
            if(reset==false){
          xxx++;
          //xxx-=0.5;
         noStroke();
         fill(255);
         rect(280,75, 450, 50);
         
         textFont(createFont("Arial",30));
         fill(0);
         text("Points:"+xxx, 300,100);
             }
           }
             }
             
            

         

         
       
     