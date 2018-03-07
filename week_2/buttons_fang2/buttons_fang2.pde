int button1Color;
int button2Color;
float ax,ay,d,g;
float bx,by,w,h;

void setup(){
size(100,100);
  ax = 10;
  ay = 10;
  d = 20;
  g = 20;
  bx = 40;
  by = 40;
  w = 20;
  h = 20;
  
}
void draw(){

  fill(button1Color);
  rect(ax, ay, d,g);
  fill(button2Color);
  rect(bx, by, w, h);

  if (mouseX > ax && mouseX < ax+d &&
    mouseY > ay && mouseY < ay+g) {
    button1Color = color(255, 0, 0);
  } else {
    button1Color = color(100);
  }
  if (mouseX > ax && mouseX < ax+d &&
    mouseY > ay && mouseY < ay+g) {//hover
    button1Color = color(255, 0, 0);
    if(mousePressed){//click
         button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
  
  
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {
    button2Color = color(255, 0, 0);
  } else {
    button2Color = color(100);
  }
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    button2Color = color(255, 0, 0);
    if(mousePressed){//click
         button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
}