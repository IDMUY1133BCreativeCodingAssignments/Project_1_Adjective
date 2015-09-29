//ADJETIVE: FAST
/*My goal is to create a simulation where as you move the mouse higher up the
 page, you increase the speed at which you move down the highway, and vice versa.
 I also want to increase the feeling of turbulance by making the screen shake
 as you move faster. There will be more objects, moving away from a vanishing 
 point, instead of down the y axis*/



/*int y = 460;
int x = 400;
int i = 10;
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

void draw() {

  frameRate(i + mouseX);


  fill(255, 245, 57);
  quad(380, x, 420, x, 420, y, 380, y);
  y =  y + 1;
  x = x + 1; 




  if  (int x == height) {
    /*here, i'm trying to get the process to repeat once the top part of the 
     bar reaches the bottom of the page. I thought it would be as simple as 
     repeating the code*/
    //fill(255, 245, 57);
    //y =  y + 1;
    //x = x + 1;
    //quad(380, x, 420, x, 420, y, 380, y);
  //}
//}//end of draw


///////////////////////////////////////////////
//DOWN HERE!//
//Hi Katherine. So I decided to take a different approach to "FAST"
//Figured i might be better at ilustrating in the abstract
// I'm going to have the transition from very slow to fast be smoother
// the circles are also going to grow from a point into bigger circles
//as they rush towards the viewer
//I'm also going to draw the cockpit of a spaceship


int x = 50; //growing size of main circle
int y = 50; //growing size of main circle
int e = 400; //coordinate of moving smaller circle 401
int f = 400;
int i = 400; //coordinate of moving smaller circle up to left
int h = 400;//coordinate of moving smaller circle up to left 399
int q = 400;//x coordinate of moving smaller circle down to left
int w = 400;// y coordinate of moving smaller circle down to left  390 
int k = 400;//401
int l = 400;//399
int s = 400;
int d = 400; 
int c = 400;
int j = 400;
int v = 400;
int n = 400;
int m = 400;
int p = 400;
int u = 400;
int o = 400;
int aq = 400;
int aw = 400;
int ae = 400;
int ar = 400;
//float z =random (255);

void setup() {
  size (800, 800);
  // frameRate = (5);
}

void draw() {

  frameRate(mouseY+1);


  float r = random(255);
  float g = random(255);
  float b = random(255);
  float ranR = random(255);
  float ranG = random(255);
  float ranB = random(255);
  float ranT = random(255);
  float ranY = random(255);
  float ranU = random(255);
  // background(r, g, b);
  background(0);
  //MAIN CIRCLE
  fill(r, g, b);
  ellipse(400, 400, x, y);
  x = x+10;
  y = y+10;
  if (x > width+ 390) {
    fill(r, g, b);
    x = 1;
    y = 1;
  }



  //////////////////////////////////////////// 

  //fill(z, z, z);
fill(ranR, ranG, ranB);
  ellipse(e, f, 80, 80); //SOUTHEAST
  e = e++;
  f = f++;
  if (e < width && f < height) {
    
    e += 10;
    f += 10;
  } else if (e >= width || f >= height) {
    e = 400;
    f = 400;
  }

  //////////////////////////////////////////////
  ellipse(i, h, 80, 80);// NORTHWEST
  i = i--;
  h = h--;
  if (i > 0 && h > 0) {
    fill(ranR, ranG, ranB);
    i -= 10; 

    h -= 10;
  } else if (i <= 0 || h <= 0) {
    i = 399;
    h = 400;
  }

  ////////////////////////////////////////


  ellipse(q, w, 80, 80);// SOUTHWEST
  q = q--;
  w = w++;
  if (q > 0 && w > 0) {
    fill(ranR, ranG, ranB);
    q -= 10; 

    w += 10;
  } else if (q <= 0 || w <= 0) {
    q = 401;
    w = 402;
  }
  ////////////////////////////////////////////////
  ellipse(k, l, 80, 80);// NORTHEAST
  k = k++;
  l = l--;
  if (k > 0 && l > 0) {
    fill(ranR, ranG, ranB);
    k += 10; 

    l -= 10;
  } else if (k <= 0 || l <= 0) {
    k = 401;
    l = 401;
  }
  ////////////////////////////////////////////
  ellipse(s, d, 40, 40);// NORTH by NORTHEAST
  s = s++;
  d = d--;
  if (s > 0 && d > 0) {
    fill(ranR, ranG, ranB);
    s += 7; 

    d -= 15;
  } else if (s <= 0 || d <= 0) {
    s = 401;
    d = 401;
  }
  /////////////////////////////////////////////
  ellipse(c, j, 40, 40);// NORTH by NORTWEST
  c = c--;
  j = j++;
  if (c > 0 && j > 0) {
    fill(ranR, ranG, ranB);
    c -= 17; 

    j -= 5;
  } else if (c <= 0 || j <= 0) {
    c = 401;
    j = 401;
  }
  //////////////////////////////////////////////
  ellipse(n, v, 40, 40);// SOUTH by SOUTHWEST
  n = n++;
  v = v++;
  if (n > 0 && v > 0) {
    fill(ranR, ranG, ranB);
    n -= 5; 

    v += 12;
  } else if (n <= 0 || v <= 0) {
    n = 401;
    v = 401;
  }
  ///////////////////////////////////////////////
  ellipse(m, p, 42, 42);// SOUTH by SOUTHEast/souther
  m = m--;
  p = p--;
  if (m > 0 && p > 0) {
    fill(ranT, ranY, ranU);
    m += 8; 

    p -= 2;
  } else if (m <= 0 || p <= 0) {
    m = 401;
    p = 401;
  }
  ///////////////////////////////////////////
  ellipse(u, o, 38, 38);// SOUTH by SOUTHEast
  u = u--;
  o = o++;
  if (u > 0 && o > 0) {
    fill(ranT, ranY, ranU);
    u += 3; 

    o += 5;
  } else if (u <= 0 || o <= 0) {
    u = 401;
    o = 401;
  }
  //////////////////////////////////////////////
   ellipse(aq, aw, 38, 38);// SOUTH by SOUTHEast
  aq = aq--;
  aw = aw++;
  if (aq > 0 && aw > 0) {
    fill(ranT, ranY, ranU);
    aq -= 8; 

    aw += 3;
  } else if (aq <= 0 || aw <= 0) {
    aq = 401;
    aw = 401;
  }
  /////////////////////////////////////////////////////
  ellipse(ae, ar, 38, 38);// SOUTH by SOUTHEast
  ae = ar++;
  ae = ar++;
  if (ae > 0 && ar > 0) {
    fill(ranT, ranY, ranU);
    ae += 8; 

    ar += 5;
  } else if (ae <= 0 || ar <= 0) {
    ae = 401;
    ar = 401;
  }
}  