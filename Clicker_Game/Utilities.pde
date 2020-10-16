



//===================================  RESET BUTTONS  ====================================\\


///     New Game Reset Button     ///
void reset(){
  mode = game;
    lives = 3;
    score = 0;
    vx = random(-5,5);
    vy = random(-5,5);
    x = 400;
    y = (height-200)/2 + 200;
}


///     Button Press Sound Reset     ///
void buttonrst(){
    button.rewind();
    button.play();
}


///     Point Press Sound Reset     ///
void pointrst(){
    point.rewind();
    point.play();
}


///     Bump/Lose Life Sound Reset     ///
void bumprst(){
    bump.rewind();
    bump.play();
}


///     Losing Sound Reset     ///
void loserst(){
    lose.play(); 
    lose.rewind();
}


///     Background Sound Reset/Stop     ///
void backgroundrst(){
    background.rewind();
    background.play(); 
}
void backgroundstp(){
    background.pause();
    background.rewind();
}


///     Gameover Sound Reset     ///
void finishrst(){
    finish.pause();
    finish.rewind(); 
}


///     Options Music Reset     ///
void optionsrst(){
     customizemusic.rewind();
     customizemusic.play();
}
void customizestp(){
     customizemusic.pause();
     customizemusic.rewind();
}

//=======================================TACTILE=========================================\\


//  Intro Tactile  ==========================
///     Tactile for Start Button     ///
void starttactile(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 510 && mouseY < 590){
  strokeWeight(15); fill(lightblue);
  } else {strokeWeight(10); fill(lightestblue);}
}


///     Options Button Tactile     ///
void customizetactile(){
  if (mouseX > 250 && mouseX < 600 && mouseY > 640 && mouseY < 720){
    fill(lightblue);
    strokeWeight(15);
  } else{
    fill(lightestblue);
    strokeWeight(10);
  }
}


///     Exit Button Tactile     ///
void exittactile(){
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){
    strokeWeight(8); textFont(milky); textSize(20); text("exit",750,90);
  } else strokeWeight(5);
}


//   Game tactile  ==========================
///     Tactile for Pause Button     ///
void pausetactile(){
  if (mouseX > 610 && mouseX < 688 && mouseY > 40 && mouseY < 158) {
    strokeWeight(10);
  } else strokeWeight(5);
}


//   Pause tactile  ==========================
///     Tactile for Continue     ///
void ctactile(){
  if (mouseX > 440 && mouseX < 545 && mouseY > 40 && mouseY < 158) {
    strokeWeight(10);
  } else strokeWeight(5);
}


//   Gameover tactile  ========================
///     Restart Button Tactile     ///
void retactile(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    fill(#ffcccc); stroke(#FF9999); strokeWeight(10);
  } else {
    fill(#FF9999); stroke(#ffcccc); strokeWeight(5);
  }
}


//   Options/Customize tactile  ===============
///     Tactile for Bubble Target Selection    ///
void bubbletactile(){
  if (mouseX > 75 && mouseX < 220 && mouseY > 285 && mouseY < 430){
    strokeWeight(10); 
    fill(255);
    textFont(milky);
    textSize(30); 
    text("Bubble",140,450);
  } else {
    strokeWeight(5);
  }
}


///     Tactile for Snow Target Selection    ///
void snowtactile(){
  if (mouseX > 320 && mouseX < 465 && mouseY > 285 && mouseY < 435){
    strokeWeight(10); 
    fill(255);
    textFont(milky);
    textSize(35); 
    text("Snow",390,450);
  } else {
     strokeWeight(5);
  }
}


///     Tactile for Peace Target Selection    ///
void peacetactile(){
  if (mouseX > 575 && mouseX < 720 && mouseY > 285 && mouseY < 435){
    strokeWeight(10); 
    fill(255);
    textFont(milky);
    textSize(35); 
    text("Peace",645,450);
  } else {
    strokeWeight(5); 
  }
}


///     Tactile for Done Button     ///
void donetactile(){
  if (mouseX > 620 && mouseX < 740 && mouseY > 600 && mouseY < 720){
    strokeWeight(10);
    stroke(pink);
  } else {
    strokeWeight(5);
    stroke(navy);
  }
}


///     Tactile for Slider     ///
void slidertactile(){
  if (mouseX > 75 && mouseX < 275 && mouseY > 650 && mouseY < 690){
    strokeWeight(8);
    stroke(255);
  } else {strokeWeight(5); stroke(pink);}
}


//=======================================TARGETS=========================================\\ 


/// Bubble target == default target     ///
void bubbletarget(){
  if (bubbleon == true && peaceon == false && snowon == false){
  fill(255);
  noStroke();
  circle(x,y,d);
  image(bubble,x,y,d,d);
  
  x = x + vx;                                           //Target Movement  
  y = y + vy;
  if (y < 185+d/2 || y > height-d/2) {vy = vy*-1;}      //Target Restrictions
  if (x < 0+d/2 || x > width-d/2) {vx = vx*-1;}
  }
}


///     Snowball target     ///
void snowtarget(){
  if (snowon == true && peaceon == false && bubbleon == false) {
    image(snow,x,y,d,d);
    
    x = x + vx;                                           //Target Movement  
    y = y + vy;
    if (y < 185+d/2 || y > height-d/2) {vy = vy*-1;}      //Target Restrictions
    if (x < 0+d/2 || x > width-d/2) {vx = vx*-1;}
  }
}


///     Peace sign target     ///
void peacetarget(){
  if (snowon == false && bubbleon == false && peaceon == true) {
    image(peace,x,y,d,d);
    
    x = x + vx;                                           //Target Movement  
    y = y + vy;
    if (y < 185+d/2 || y > height-d/2) {vy = vy*-1;}      //Target Restrictions
    if (x < 0+d/2 || x > width-d/2) {vx = vx*-1;}
  }
}


//==========================================OTHER===========================================\\


//intro screen bubbles
void bubbles(){
  if (bubbleon == true && snowon == false && peaceon == false){
    image(bubble,bx,by,30,30);
    image(bubble,bx+100,by-200,15,15);
    image(bubble,bx-50,by+300,30,30);
    image(bubble,bx+400,by+400,40,40);
    image(bubble,bx-150,by+600,30,30);
    image(bubble,bx-300,by-600,20,20);
    image(bubble,x+bx+500,by+200,30,30);
    image(bubble,x-50,by-80,40,40);
    
   by = by - bby;
   bx = bx + bbx;
   if (by < -15) {
    by = random(100,900); 
   }
   if (bx > 815 || bx < -15){
    bx = random(-15,815);
   }
  }
}


//intro screen snow
void snowy(){
  if (bubbleon == false && snowon == true && peaceon == false){
    image(snow,sx,by,30,30);
    image(snow,sx+100,sy-200,15,15);
    image(snow,sx-50,sy+300,30,30);
    image(snow,sx+400,sy+400,40,40);
    image(snow,sx-150,sy+600,30,30);
    image(snow,sx-300,sy-600,20,20);
    image(snow,x+sx+500,sy+200,30,30);
    image(snow,x-50,sy-80,40,40);
    
   sy = sy - ssy;
   sx = sx + ssx;
   if (sy < -15 || sy > 910) {
    sy = random(100,900); 
   }
   if (sx > 815 || sx < -15){
    sx = random(-15,815);
   }
  }
}


//intro screen peace
void peaceful(){
  if (bubbleon == false && snowon == false && peaceon == true){
    image(peace,px,py,30,30);
    image(peace,px+100,py-200,15,15);
    image(peace,px-50,py+300,30,30);
    image(peace,px+400,py+400,40,40);
    image(peace,px-150,py+600,30,30);
    image(peace,px-300,py-600,20,20);
    image(peace,x+px+500,py+200,30,30);
    image(peace,x-50,py-80,40,40);
    
   py = py - ssy;
   px = px + ssx;
   if (py < -15 || py > 910) {
    py = random(100,900); 
   }
   if (px > 815 || px < -15){
    px = random(-15,815);
   }
  }
}
