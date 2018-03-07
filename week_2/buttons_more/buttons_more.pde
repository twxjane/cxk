int checkstates(float ax, float ay, float d, float g ) {
  int result;
  if (mouseX > ax && mouseX < ax+d &&
    mouseY > ay && mouseY < ay+g) {
    //button1Color = color(255, 0, 0);
    result = 1;

    if (mousePressed) {
      result = 2;
    }
  } else {
    result = 0;
  } 
  return result ;
}







color butColor = color(255);
float ax, ay, d, g;
void setup() {
  size(600, 600);

  d = 50;
  g = 50;
}

void draw() {
  for (int ax = 0; ax < height; ax += 2*d) {
    for (int ay = 0; ay < width; ay += 2*g) {



      int state = checkstates(ax, ay, d, g);
      switch(state) {
      case 0:
        butColor = color(100);
        break;
      case 1:
        butColor = color(255, 0, 0);
        break;
      case 2:
        butColor = color(random(255), random(255), random(255));
        break;
      }

      fill(butColor);
      rect(ax, ay, d, g);
    }
  }
}