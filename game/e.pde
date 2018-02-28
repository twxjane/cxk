
 void endMode(){
  text("Is it boring?",width/2, height/2 );
   text("Yes", 600, 600);
   text("No", 800, 600);
  
}

  void keyPressed(){
    //if(key==' ');
   // mode=3;
  if(key=='y'||key=='Y');
      mode=2;
   if(key=='n'||key=='N');
      mode=3;
   someMusicFile.play();
   
 }
 