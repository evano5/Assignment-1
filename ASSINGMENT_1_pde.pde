
int wt = 80;
int w = 100;
int l = 30;
int lp = 25;
int rad = 150;  
int ydirection = -1;  
int xdirection = 1;
float ypos, xpos;       
float yspeed = 15;
float xspeed = 3;  

void setup(){
  size(800, 800);
  noStroke();
  frameRate(50);
  
  ypos = -50;
  xpos = 0;
  
}

void draw(){
   
  background(255);
   
//FACE CIRCLE
  fill(255, 200, 61);
      circle(375, 350, 500);
  
//MOUTH DARK
  fill(212, 140, 0);
      ellipse(375, 390, 300, 150);

//Mouth Light
  fill(255, 200, 61);
      ellipse(375, 375, 330, 100);
      rect(225, 260, 300, 100);
  
//EYES DARK
  fill(212, 140, 0);
      ellipse(285, 300, 100, 150);
      ellipse(465, 300, 100, 150);

//EYES LIGHT
  fill(255, 200, 61);
      circle(285,340,80);
      circle(465, 340, 80);
  
//BLUSH
  fill(255, 98, 55, 95);
      circle(190, 357, 95);
      circle(560, 357, 95);
      
  ypos = ypos + ( yspeed * ydirection );
  xpos = xpos + ( xspeed * xdirection );
  
  if (ypos > 25|| ypos < -75) {
    ydirection *= -1;
  }
  if (xpos > 50 || xpos < 0) {
    xdirection *= -1;
  }
  
//RIGHT HAND
  fill(212, 140, 0);
  circle(-xpos+245, ypos+600, rad);
  rect(-xpos+245, ypos+515, -wt, l);
  rect(-xpos+215, ypos+550, -w, l);
  rect(-xpos+205, ypos+585, -w, l);
  rect(-xpos+215, ypos+620, -w, l);
  rect(-xpos+235, ypos+652, -w, lp);

//LEFT HAND 
  circle(xpos+505, ypos+600, rad);
  rect(xpos+500, ypos+515, wt, l);
  rect(xpos+530, ypos+550, w, l);
  rect(xpos+540, ypos+585, w, l);
  rect(xpos+530, ypos+620, w, l);
  rect(xpos+495, ypos+652, w, lp);
}
