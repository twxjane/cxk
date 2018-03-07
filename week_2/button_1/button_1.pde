int button1Color;
int button2Color;

void setup(){
size(100,100);
}
void draw(){

fill(button1Color);
  ellipse(40, 40, 20, 20);
  fill(button2Color);
  ellipse(60, 60, 20, 20);

  float distance1 = dist(40, 40, mouseX, mouseY);
  if ( distance1 < 10) { //mouse hover
    button1Color = color(255, 0, 0);
    if (mousePressed) {
      button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
  float distance2 = dist(60, 60, mouseX, mouseY);
  if ( distance2 < 10) { //mouse hover
    button2Color = color(255, 0, 0);
    if (mousePressed) {
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
}