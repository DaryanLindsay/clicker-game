import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode; 
final int INTRO= 0;
final int GAME= 2;
final int PAUSE =3;
final int GAMEOVER=4;
final int OPTIONS=5;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//slider variable
float sliderX;

int highScore;

PImage target;
 

void setup() {
  mode=INTRO;
  size(1000, 1000);
  x= width/2;
  y=height/2;
  d=sliderX;
  vx=random(-5, 5);
  vy=random(-5, 5);
  textAlign( CENTER, CENTER);
  
  //initialize target
  x=width/2;
  y=height/2;
  score=0;
  lives=3;
  
  
 //minim
 minim= new Minim(this);
 theme = minim.loadFile("mario bros theme.mp3");
 coin=minim.loadFile("coin.wav");
 bump=minim.loadFile("bump.wav");
 gameover=minim.loadFile("gameover.wav");
 
 sliderX=500;
 
 highScore=0;
 
 target= loadImage("target.png");
 
 imageMode(CENTER);
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) { 
    gameover();
  } 
    else if (mode==OPTIONS) {
      options();
    }else { 
    println("Error: Mode=" +mode);
  }
}
