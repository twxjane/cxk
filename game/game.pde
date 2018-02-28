int mode = 0;
int loadP = 0;
int a =0;
int b=0;
PImage bag;
import processing.sound.*;
SoundFile someMusicFile;//(Walk off the Earth - Summer Vibe.mp3)

void setup() {
  fullScreen();
  textAlign(CENTER);
  textSize(50);

  bag = loadImage("1.png");
  
  someMusicFile = new SoundFile(this,"Walk off the Earth - Summer Vibe.mp3");
  someMusicFile.play();
}
void draw() {
  background(#75876B); 
  switch (mode) {
  case 0: // if(mode == 0){ do this!}
    loadMode();
    break;
  case 1: //if(mode == 1){ do that!}
    startMode();
    break;
  case 2:
    gameMode();
    break;

  case 3:
    endMode();
    break;
  
  }
}