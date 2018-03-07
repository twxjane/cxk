int ax= 10;
int ay= 10;
int d= 40;
int g= 40;
class Button {

  float ax, ay, d, g;
  int result;
  color buttonColor = color(100);
  Button(float _ax, float _ay, float _d, float _g) {
    ax = _ax;
    ay = _ay;
    d = _d;
    g = _g;
  }
 void run(){
    checkstates();
    updateColor();
    display();
  }

  void checkstates() {
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
  }

  void updateColor() {

    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    rect(ax, ay, d, g);
  }
}



Button button1, button2;

void setup() {
  size(400, 400);
  noStroke();
  //init
  button1 = new Button(ax, ay, d, g);
  button2 = new Button(ax*2, ay*2, d*2, g*2);
}

void draw() {
  background(0);
  //run btn1
  //button1.checkstates();
  //button1.updateColor();
  //button1.display();
  //run btn2
  //button2.checkstates();
  //button2.updateColor();
  //button2.display();
  button1.run();
  button2.run();
}