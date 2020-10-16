void mouseReleased(){
  if (mode == intro) {
    introclick();
  } else if (mode == game) {
    gameclick();
  } else if (mode == pause) {
    pauseclick();
  } else if (mode == gameover) {
    gameoverclick();
  } else if (mode == options) {
    optionsclick(); 
  } 
}

void mouseDragged(){
  if (mode == options) {
    optionsdrag();
  }
}
