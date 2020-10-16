void gameover(){
  background(end);
  
  background.pause();
  finish.play();
  
  gameovertext();         //Game over text
  
  restart();              //Restart button
  
  highscore();            //Highscore display
  
  exittactile();          //Exit button
  exitbtn();
}



void gameoverclick(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650){
    buttonrst();
    mode = intro;
    backgroundrst();
    finishrst();
  } else { mode = gameover; }
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){
    exit();
  }
}



//     Game Over text     //
void gameovertext(){
  fill(#800000);              //Behind text
  textSize(135);
  text("Game",400,150);
  text("Over",400,280);
  
  fill(255);                  //Front text
  textSize(130);
  text("Game",400,150);
  text("Over",400,280);
}



//     Restart Button     //
void restart(){
  retactile();
  rect(300,550,200,100,5);      //Button
  
  fill(255);                    //Text
  textSize(40);
  text("restart",400,590);
  text("._.",400,610);
}



void highscore(){
  textSize(52);
  fill(#800000);
  text("Highscore: "+ hscore,400,450);
  
  textSize(50);
  fill(255);
  text("Highscore: "+ hscore,400,450);
}
