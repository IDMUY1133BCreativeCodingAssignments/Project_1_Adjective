
Eye eye1, eye2;


void setup() {
  size(700, 700);
  smooth();
  noStroke();
  eye1 = new Eye( width/2-50, height/2-50, 80);
  eye2 = new Eye( width/2+50, height/2-50, 80);
}

void draw() {
  background(100);
  if (mouseX<350 && mouseY<350){
    body(525, 525);
  } else if (mouseX<350 && mouseY>350){
    body(525, 175);
  }else if (mouseX>350 && mouseY<350){
    body(175,525);
  }else if (mouseX>350 && mouseY>350){
    body(175, 175);
  }

  eye1.update(mouseX, mouseY);
  eye2.update(mouseX, mouseY);

  eye1.display();
  eye2.display();

}

void body(int addX, int addY) {
  fill(250, 0, 60);
  ellipse(width/2+ addX, height/2+ addY, 200, 200);
  //line(width/2 - 25, height/2 +25, width/2 + 25, height/2 +25); //make rectangle with clenched teeth
}

  class Eye {

    int eyeX, eyeY;
    int size;
    float angle = 0.0;

    Eye(int x, int y, int s) {
      eyeX = x;
      eyeY = y;
      size = s;
    }

    void update(int mx, int my) {
      angle = atan2(my-eyeY, mx-eyeX);
    }

    void display() {
      pushMatrix();
      translate(eyeX, eyeY);
      fill(255);
      ellipse(0, 0, size, size);
      rotate(angle);
      fill(153);
      ellipse(size/4, 0, size/3, size/3);
      popMatrix();
    }
  }