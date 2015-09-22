
void setup () {

  size (500, 700); 
  background(255);
}

void draw () { 
  // Motion keys to move Spaceship
  if (keyPressed) { 
    if (key == 'a' || key == 'A') {
    }
    if (key == 'd' || key == 'D') {
    }
    if (key == 'w' || key == 'W') {
    }
    if (key == 's' || key == 'S') {
    }
    if (key == 32) {
    }
  }
}


// Custom Function, will contain all
// the ship's shapes and colors
// For now a triangle will do
void Spaceship() {

  fill(186, 99, 99);
  triangle(250, 650, 230, 700, 270, 700);
}


// This is the ammo, when spacebarkey is pressed (32), ammo will appear
void Ammo() {

  fill(2, 99, 99);
  ellipse(250, 700, 15, 40); 

}