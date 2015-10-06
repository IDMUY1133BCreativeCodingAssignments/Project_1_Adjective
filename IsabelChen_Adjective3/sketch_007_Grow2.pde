int click = 1;
int hei = 800;
float endX = 500;   // Final x-coordinate
float endY = 300;   // Final y-coordinate
color[] leafColor = new color[4];{
  leafColor[0] = color(130, 11, 36);
  leafColor[1] = color(176, 71, 51);
  leafColor[2] = color(56, 119, 223);
  leafColor[3] = color(169, 83, 186);
}

void setup(){
  
 size(600, 800);
  
} //end setup

void draw(){
  
  background(45);
  constrain(mouseX, 100, 500);
  constrain(mouseY, 100, 700);
  greenColor();
  grow();
  plant();
  leaf(mouseX, mouseY);
} //end draw


void grow(){
  if(click == 1){
    greenColor();
    hei = 800;
  }
  
  if(click == 2){
    hei = 775;
  }
  
  if(click == 3){
    hei = 750;
    branches(hei, endX, endY);
  }
  if(click == 4){
    hei = 725;
    branches(hei, endX, endY);
  }
  if(click == 5){
    hei = 700;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
  }
  if(click == 6){
    hei = 675;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
  }
  if(click == 7){
    hei = 650;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
  }
  if(click == 8){
    hei = 625;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
  }
  if(click == 9){
    hei = 600;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
  }
  if(click == 10){
    hei = 575;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
  }
  if(click == 11){
    hei = 550;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
  }
  if(click == 12){
    hei = 500;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
    branches(hei + 170, endX - 400, endY + 300);
  }
  if(click == 13){
    hei = 400;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
    branches(hei + 270, endX - 400, endY + 300);
  }
  if(click == 14){
    hei = 300;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
    branches(hei + 270, endX - 400, endY + 300);
    branches(hei + 170, endX + 200, endY + 70);
  }
  if(click == 15){
    hei = 200;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
    branches(hei + 270, endX - 400, endY + 300);
    branches(hei + 170, endX + 200, endY + 70);
  }
  if(click >= 16){
    hei = 200;
    branches(hei, endX, endY);
    branches(hei + 50, endX - 500, endY + 60);
    branches(hei + 70, endX - 100, endY + 200);
    branches(hei + 270, endX - 400, endY + 300);
    branches(hei + 170, endX + 200, endY + 70);
  }
} // end grow

void branches(int tall, float branchX, float branchY){
  
  triangle(width/2, tall+100, width/2, tall+80, branchX, branchY);
  
}

void plant(){
  triangle(width/2+40, height, width/2-40, height, width/2, hei);

} //end plant

void greenColor(){
  stroke(0, 230, 150);
  strokeWeight(4);
  fill(0, 230, 150);
} //end greenColor

void mouseMoved() {
  if((mouseX <= width/2) && (mouseX >= 50)){
    endX = endX +1;
  } else if((mouseX >= width/2) && (mouseX <= 550)){
    endX = endX - 1;
  } 
  
  if((mouseY <= height/2) && (mouseY >= 50)){
    endY = endY - 2;
  } else if((mouseY >= width/2) && (mouseY <= 750)){
    endY = endY + 2;
  }
} //end mouseMoved

void mousePressed(){
 click++;
  if (click > 20) {
    click = 1;
  } 
} //end mousePressed

void leaf(int x, int y){
  noStroke();
  if((mouseX <= width/2) && (mouseY >= height/2)){
    fill(leafColor[0]);
  } if((mouseX >= width/2) && (mouseY >= height/2)){
    fill(leafColor[1]);
  }if((mouseX <= width/2) && (mouseY <= height/2)){
    fill(leafColor[2]);
  }if((mouseX >= width/2) && (mouseY <= height/2)){
    fill(leafColor[3]);
  }
  beginShape();
    vertex(16 + x, 0 + y);
    vertex(48 + x, 21 + y);
    vertex(65 + x, 41 + y);
    vertex(69 + x, 51 + y);
    vertex(69 + x, 62 + y);
    vertex(63 + x, 73 + y);
    vertex(52 + x, 79 + y);
    vertex(28 + x, 42 + y);
    vertex(38 + x, 84 + y);
    vertex(30 + x, 87 + y);
    vertex(18 + x, 86 + y);
    vertex(7 + x, 77 + y);
    vertex(1 + x, 64 + y);
    vertex(0 + x, 53 + y);
    vertex(1 + x, 35 + y);
  endShape();
} //end leaf