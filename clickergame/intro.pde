void intro() {
  theme.play();

  background(255);
  fill(255,0,0);
  rect(350, 550, 300, 100);
  fill(255, 0, 0);
  textSize(100);
  fill (0,0,255);
  text("Clicker Mania", 500, 400);
  rect(350, 700, 300, 100);
  fill(43, 255, 3);
  textSize(60);
  text("START", 500, 600);
  text("OPTIONS",500, 750);
}



void introClicks() {
  if (mouseX > 350 && mouseX < 650&& mouseY > 550 && mouseY < 650) {
    mode=GAME;
  }
    if (mouseX > 350 && mouseX < 700&& mouseY > 650 && mouseY < 800) {
      mode=OPTIONS;
    }
  }
