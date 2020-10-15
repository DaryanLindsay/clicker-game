void options() {
background(0,0,255);
fill(0,255,0);
rect(400, 650, 200, 100);
fill(255,0,0);
text("BACK", 500, 700);


 //slider
 strokeWeight(5);
  line(300, 600, 700, 600);
  ellipse(sliderX, 600, 30, 30);
  map(sliderX, 400, 550, 1, 50);

  
 
  image(target, 650,250 , 100, 100);
  circle(350, 250,100);
  
  circle(500, 450, d);
}

void optionsClicks() {
 if(mouseX>400&& mouseX<600&&mouseY>650&&mouseY<750) {
  mode=INTRO; 
 }
 
 
  if(dist(mouseX, mouseY, 650, 250) <60) {
    fill(0,250,0);
   rect(590, 190, 120, 120); 
  }
  
   if(dist(mouseX, mouseY, 350, 250) <60) {
     fill(0,250,0);
   circle(350,250, 110); 
  }
}
void controlSlider() {
  if(mouseX>300 && mouseX <700&& mouseY >550 && mouseY < 650) {
    sliderX=mouseX;
  }
  
  d=sliderX/4;
}
