void intro(){
  background.play();
  
  background(pink);                            //Background
  
  bubbles();
  snowy();
  peaceful();
  
  startbutton();                               //Startbutton
  
  introhighscore();
  
  customize();                                 //Customize button
  
  exitbtn();                                   //Exit button
  
  pointer();                                   //Cursor
   
  titlecount = titlecount + 1;                 //Title animation
  if (titlecount < 40) {title1();}
  if (titlecount > 40) {title2();}
  if (titlecount > 80) {titlecount = 0;}
  
 
}



void introclick(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 510 && mouseY < 590) {
    buttonrst();
    reset();
  }
  if (mouseX > 250 && mouseX < 600 && mouseY > 640 && mouseY < 720){
    mode = options;
    buttonrst();
  }
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){
    exit();
  }
}



///     Pointer Image     ///
void pointer(){
  rotate(radians(-20));
  image(pointer,320,750,pw,ph);
  if (pgrow == true) {                   //Growth
    pw = pw + .5;
    ph = ph + .5;
  } 
  if (pgrow == false) {                  //Shrink
    pw = pw - .5;
    ph = ph - .5; 
  }
  if (pw > 220 && ph > 220) {pgrow = false;} //Restrictions
  if (pw < 195 && ph < 195) {pgrow = true;}
}



///     Title Animation     ///
void title1(){
  rotate(radians(16));
  textSize(94);
  fill(navy);
  text("Clicker Game",398,240);
  
  textSize(90);
  fill(255);
  text("Clicker Game",398,240); 
}
void title2(){
  rotate(radians(24));
  textSize(94);
  fill(navy);
  text("Clicker Game",422,200);
  
  textSize(90);
  fill(255);
  text("Clicker Game",422,200); 
}



///     Start Button     ///
void startbutton(){
  starttactile();
  stroke(255);    
  rect(300,510,200,80,5);
  
  fill(255);
  textSize(35);
  textFont(milky);
  text("S T A R T",400,546);
}



//     Intro screen high score     //
void introhighscore(){
  rotate(radians(0));
  fill(255);
  textSize(60);
  text("Highscore: " + hscore, 400,400);
}



///     Button to go to Options Menu     ///
void customize(){
  customizetactile();
  stroke(255);
  rect(250,640,300,80,5);
  
  fill(255);
  textSize(33);
  text("C U S T O M I Z E",400,675);
}



void exitbtn(){
  exittactile();
  fill(navy);
  stroke(navy);
  rect(730,20,50,50);
  
  fill(255);
  stroke(255);
  rect(725,25,50,50);
  
  fill(darknavy);
  stroke(darknavy);
  line(730,33,770,70);
  line(730,70,770,33);
}
