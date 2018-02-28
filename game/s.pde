void startMode() {
  fill(255);
  text("Please grab this box!", width/3, height/3);
  rect(820,520,50,50);
    if (mousePressed & mode == 1) {
    mode = 2;
  }
}