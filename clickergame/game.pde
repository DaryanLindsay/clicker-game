
float x, y, d ; //target info 
float vx, vy; //velocity of target
int score;
int lives;

void game() {
  fill(0,255,0);
  background (255);
  strokeWeight(5);
  circle(x, y, d);

  //movemnt
  x= x+vx;
  y=y+vy;

  //bouncing
  if (x >=  1000 || x <= 0) {
    vx=vx * -1 ;
  }
  if(y>= 1000 || y<=0) {
   vx=vx*-1; 
  }

  if ( y>=height-d/2 || y<=0+d/2) {
    vy=vy * -1;}
    
    stroke(0);
    strokeWeight(5);
    fill(0);
    textSize(60);
    text("Score:" + score, width/ 2, 50);
    text("Lives:" +lives, width/2, 100);
    
    fill(0);
    
    //pause button
   // circle(100, 100, 100);
    
    rect(50, 50, 5, 25);
    rect(70, 50, 5, 25);
}

void gameClicks() {
  if( dist(mouseX, mouseY, x, y) <60) {
   score=score+1;
   coin.rewind();
   coin.play();
   vx=vx*1.1;
   vy=vy*1.1;
  }else if(dist(mouseX, mouseY, 80, 80) < 50) {
   mode=PAUSE;
  } else {
   lives=lives-1;
   if (lives==0) mode=GAMEOVER;
   bump.rewind();
   bump.play();
  }
}
