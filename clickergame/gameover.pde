void gameover() {
 background(255, 0,0);
 fill(0);
 textSize(100);
 text("GAME OVER", 500, 300);
 fill(0, 255, 0);
 rect (300, 500, 150, 100);
 fill(0,0,255);
 rect(600, 500, 150, 100);
 fill(0);
 textSize(20);
 text("PLAY AGAIN", 375, 550);
 text("BACK TO MENU", 675, 550);
 theme.pause();
 gameover.play();
 textSize(40);
 text("HIGH SCORE:"+ highScore, 500, 450);
 if(score > highScore) {
  highScore=score;
}
}




void gameoverClicks() {
if(mouseX>300 && mouseX<450 && mouseY > 500 && mouseY < 600) {
 mode=GAME;
 lives=3;
 score=0;
 theme.rewind();
 theme.play();
  
  x= width/2;
  y=height/2;
  d=100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  textAlign( CENTER, CENTER);
  
  //initialize target
  x=width/2;
  y=height/2;
  score=0;
  lives=3;
}

if(mouseX> 600&& mouseX< 750 && mouseY > 500&& mouseY < 600) { 
 lives=3;
 score=0;
 theme.rewind();
 mode=INTRO;
 theme.play();
  
  x= width/2;
  y=height/2;
  d=100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  textAlign( CENTER, CENTER);
  
  //initialize target
  x=width/2;
  y=height/2;
  score=0;
  lives=3;
}
  
}
