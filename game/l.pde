void loadMode() {
  fill(255);
  noStroke();
  text("Welcome to the game world...", width/2, height/2);
  text(loadP + "%", width/2, height/2 + 60);
  if (loadP < 100) {
    loadP ++;
  }
  if (loadP == 100) mode = 1;
  }