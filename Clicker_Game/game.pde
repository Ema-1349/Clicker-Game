void game(){
  background(pink);

  target();             //Target
 
  gamebar();            //Bar that shows score,lives,highscore,pause,resume button
  
  scoreboard();         //Score,lives,highscore
  
  cnt();                //Continue display
  
  pausebutton();        //Pause button 
  
  exittactile();        //Exit button
  exitbtn();
  
}

void gameclick(){
  if (dist(mouseX,mouseY,x,y) < d/2) {               //Target
   score = score + 1; 
   pointrst();
   vx = vx * 1.05;
   vy = vy * 1.05;
   if (score > hscore) {hscore = score;}
  } else if(mouseX > 610 && mouseX < 688 && mouseY > 40 && mouseY < 158){      //Pause Button
    buttonrst();
    mode = pause;
  } else if (mouseX > 450 && mouseX < 550 && mouseY > 45 && mouseY < 145) {    //Continue Button
    mode = game;
  } else if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 190) {       //Top game bar
    mode = game;
  } else {
   lives = lives - 1;
   bumprst();
   if (lives < 1) {mode = gameover; loserst(); }
  } 
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){             //Exit button
    exit();
  }
}



//     Target     //
void target(){
  bubbletarget();
  snowtarget();
  peacetarget();
}



//     Score & Pause Button bar     //
void gamebar(){
  fill(#fbd6e4);
  stroke(255,90);
  strokeWeight(6);
  rect(5,10,789,175,50);
}



//     Score tracker     //
void scoreboard(){
  fill(255);                                 //Behind-words
  textSize(48);
  text("Score: " + score,145,40);
  text("Lives: " + lives, 135,90);
  text("Highscore: "+ hscore,180,140);
  
  fill(darknavy);                             //Front-words
  textSize(45);
  text("Score: " + score,145,40);
  text("Lives: " + lives, 135,90);
  text("Highscore: "+ hscore,180,140);
}



//     Pause Button     //
void pausebutton(){
  pausetactile();
  fill(255);
  stroke(255);
  rect(617,47,26,106,50);
  rect(657,47,26,106,50);
  
  fill(darknavy);
  stroke(darknavy);
  rect(620,50,20,100,50);
  rect(660,50,20,100,50);
}

 
 
//     Continue Button     //
void cnt(){
  ctactile();
  fill(darknavy);
  stroke(darknavy);
  line(450,45,550,99);
  line(450,45,450,145);
  line(450,145,550,99);
}


 
