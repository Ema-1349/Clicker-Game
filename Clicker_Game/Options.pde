void options(){
  backgroundstp();
  customizemusic.play();
  
  background(darknavy);
  
  customtitle();                //Title and headings
  targethead();                 
  sizehead();                   
  
  exittactile();                //Exit button
  exitbtn();
    
  bubbleselect();               //Bubble, snow, peace target selections
  peaceselect();
  snowselect();
   
  done();                       //Done button == takes you back to intro page
  
  sizeslider();                 //Slider
  
  tdisplay();                   //Target display
}

void optionsclick(){
  if (mouseX > 620 && mouseX < 740 && mouseY > 600 && mouseY < 720) {   //Done button
    mode = intro;
    backgroundrst();
    customizestp();
  } 
  if (mouseX > 725 && mouseX < 775 && mouseY > 20 && mouseY < 75){      //Exit button
    exit();
  }
  if (mouseX > 75 && mouseX < 220 && mouseY > 285 && mouseY < 430){     //Bubble target selection
    peaceon = false; snowon = false; bubbleon = true;
    buttonrst();
  }
  if (mouseX > 320 && mouseX < 465 && mouseY > 285 && mouseY < 435){    //Snow target selection
    peaceon = false; bubbleon = false; snowon = true;
    buttonrst();
  }
  if (mouseX > 575 && mouseX < 720 && mouseY > 285 && mouseY < 430){    //Peace target selection
    bubbleon = false; snowon = false; peaceon = true;
    buttonrst();
  }
  controlslider();
}



void optionsdrag(){
    controlslider();
}



///     Slider controls     ///
void controlslider(){
  if (mouseX > 75 && mouseX < 275 && mouseY > 650 && mouseY < 690){
    sliderX = mouseX;
    
    d = map(sliderX,75,275,70,170);
    
  }
}



//===============================  TITLES and HEADINGS  ===================================\\

///     Title for Customization page     ///
void customtitle(){
  fill(navy);
  stroke(navy);
  strokeWeight(5);
  rect(100,30,600,140);
  fill(darknavy);
  stroke(darknavy);
  rect(105,35,600,140);
  
  textFont(milky);
  fill(pink);
  textSize(85);
  text("customize",400,80);
  
  textFont(milky);
  fill(darknavy);
  textSize(85);
  text("customize",403,86);
  
  textFont(stepped);
  textSize(20);
  fill(navy);
  text("c      u      s      t      o      m      i      z      e",400,124);
  
  textFont(stepped);
  textSize(20);
  fill(255);
  text("c      u      s      t      o      m      i      z      e",401,125);
} 



///     Heading for Changing Size     ///
void sizehead(){
  fill(navy);
  stroke(navy);
  strokeWeight(5);
  rect(20,500,200,55);
  fill(darknavy);
  stroke(darknavy);
  rect(25,500,200,55);
  
  fill(pink);
  textFont(milky);
  textSize(30);
  text("size",75,520);
  
  fill(darknavy);
  textFont(milky);
  textSize(30);
  text("size",77,522);
  
  fill(255);
  textSize(1);
  textFont(stepped);
  text("s    i    z    e",77,538);
  
  stroke(pink);
  line(130,526,780,526);
  stroke(navy);
  line(130,530,780,530);
}



///     Heading for different targets     ///
void targethead(){
  fill(navy);
  stroke(navy);
  strokeWeight(5);
  rect(20,200,200,55);
  fill(darknavy);
  stroke(darknavy);
  rect(25,200,200,55);
  
  fill(pink);
  textFont(milky);
  textSize(30);
  text("target",90,220);
  
  fill(darknavy);
  textFont(milky);
  textSize(30);
  text("target",92,222);
  
  fill(255);
  textSize(1);
  textFont(stepped);
  text("t   a   r   g   e   t",92,240);
  
  stroke(pink);
  line(160,226,780,226);
  stroke(navy);
  line(160,230,780,230);
}//=========================================================================================



//=================================  TARGET SELECTIONS  ==================================\\

///     Bubble Target Selection     ///
void bubbleselect(){
  bubbletactile();
  fill(pink);                                          //Backdrop
  stroke(pink);
  rect(75,285,140,140,50);
  fill(255);
  stroke(255);
  rect(80,290,140,140,50); 
  
  image(bubble,150,360,100,100);
  
  fill(navy);
  textFont(milky);
  textSize(30); 
  text("Bubble",140,450);
  
  textFont(stepped);
  textSize(10);
  fill(255);
  text("B    u    b    b    l    e",140,460);
}



///     Snow Target Selection     ///
void snowselect(){
  snowtactile();
  
  fill(255);                                          //Backdrop
  stroke(255);
  rect(320,285,140,140,50);
  fill(pink);
  stroke(pink);
  rect(325,290,140,140,50); 
  
  image(snow,395,360,100,100);
  
  textSize(30);
  textFont(milky);
  fill(navy);
  text("Snow",390,450);
  
  textSize(10);
  textFont(stepped);
  fill(255);
  text("S      n      o      w",390,462);
}



///     Peace Sign Target Selection      ///
void peaceselect(){
  peacetactile();
  
  fill(pink);                                          //Backdrop
  stroke(pink);
  rect(575,285,140,140,50);
  fill(255);
  stroke(255);
  rect(580,290,140,140,50); 
  
  image(peace,650,360,100,100);
  
  textSize(30);
  textFont(milky);
  fill(navy);
  text("Peace",645,450);
  
  textSize(10);
  textFont(stepped);
  fill(255);
  text("P     e     a     c     e",645,462);
}
//=============================================================================================


///     Done Button     ///
void done(){
  donetactile();
  square(620,600,110);
  
  fill(darknavy);
  stroke(darknavy);
  square(625,605,110);
  
  textFont(milky);
  fill(pink);
  textSize(30);
  text("DONE",675,650);
  
  fill(darknavy);
  text("DONE",679,654);
  
  textFont(stepped);
  textSize(12);
  fill(255);
  text("D    O    N    E",675,669);
}



///     Slider for Size of Target     ///
void sizeslider(){
  slidertactile();
  line(75,670,275,670);
  
  fill(navy);
  strokeWeight(3);
  circle(sliderX,670,40);
}



///     Target Display     ///
void tdisplay(){
  fill(navy);
  stroke(navy);
  strokeWeight(5);
  square(350,566,200);
  
  fill(darknavy);
  stroke(255);
  square(355,571,190);
  
  if (bubbleon == true && snowon == false && peaceon == false){
    fill(255);
    noStroke();
    circle(450,666,d);
    image(bubble,450,666,d,d);
  }
 if (bubbleon == false && snowon == true && peaceon == false){
   image(snow,450,666,d,d);
 }
 if (bubbleon == false && snowon == false && peaceon == true){
   image(peace,450,666,d,d);
 }
}
