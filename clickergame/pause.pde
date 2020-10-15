void pause() {
  fill(0);
  triangle(50, 30, 100, 60, 50, 90);
 //music
 theme.pause();
 textSize(150);
 fill(0,0,255);
 text("PAUSE", 500, 400);
 fill(255,0,0);
 rect(350, 600, 300, 100);
 fill(0,0,255);
 textSize(40);
 text("BACK TO MENU", 500, 650);
}


void pauseClicks() {
  if(dist(mouseX, mouseY, 80, 80) < 50) {
   mode=GAME;
   theme.play();
  }
  
  if(mouseX>350 && mouseX < 650 && mouseY > 600 && mouseY < 700) {
   mode=INTRO;
  }
 
}
