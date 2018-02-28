void gameMode() {
  
  image(bag,600+b,600+a);
  if(abs(600-mouseX)<30&&abs(600-mouseX)>0){
    b+=30;
  }
  if(abs(700-mouseY)<30&&abs(700-mouseY)>0){
    a+=30;
  }
  
  }
 