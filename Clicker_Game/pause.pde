void pause(){
  background.pause();
  
  continuebtn();
  
  exittactile();
  exitbtn();
  
  pausetext();
 
}



void pauseclick(){
  if (mouseX > 440 && mouseX < 545 && mouseY > 40 && mouseY < 158){
    buttonrst();
    mode = game;
    background.play();
  }
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){
    exit();
  }
}



//     Pause Text     //
void pausetext(){
  fill(navy);
  textSize(155);
  text("PAUSED",400,400);
  
  fill(255);
  textSize(150);
  text("PAUSED",400,400);
}



//     Continue Button     //
void continuebtn(){
  ctactile();  
  fill(darknavy);
  stroke(darknavy);
  line(450,45,550,99);
  line(450,45,450,145);
  line(450,145,550,99);
}
