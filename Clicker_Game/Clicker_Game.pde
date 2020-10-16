//Emma Dong
// October 7th, 2020
//Block 1-1B



///     Imported Music     ///
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




///     Imported Files     ///
PFont milky;
PFont stepped;
PImage pointer;
PImage snow,peace,bubble;



///     Mode Variables     ///
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;



///     Target Variables     ///
float x,y,d;
float vx,vy;
int score, lives;
boolean bubbleon = true;    //Controls which target is displayed
boolean peaceon = false;
boolean snowon = false;



///     Color Variables     ///   
color pink = #f8aec9;
color lightestblue = #92d9ff;
color lightblue = #6ecbf5;
color navy = #215a7f;
color darknavy = #174662;
color end = #ff6666;



///     Counters     ///
float titlecount;               //For introscreen title animation



///     Pointer variables     ///
float pw,ph;                    //For introscreen pointer that grows and shrinks
boolean pgrow; 



///     Sound Variables     ///
Minim minim;
AudioPlayer background;          //Background music for intro and game screen
AudioPlayer point;               //Scores a point
AudioPlayer bump;                //Loses a life
AudioPlayer finish;              //Gameover screen
AudioPlayer lose;                //Transition to gameover
AudioPlayer customizemusic;      //Customize screen music
AudioPlayer button;              //Sound when you press a button



///     Highscore Variables     ///
int hscore;



///     Slider Variables     ///
float sliderX = 175;



///     Intro Screen Effect Variables     ///
float bx,by,bby,bbx;  //bubbles
float sx,sy,ssy,ssx;  //snowy
float px,py,ppy,ppx;  //peaceful



// Setup ============================================================================
void setup(){
  size(800,800);
  textAlign(CENTER,CENTER);
  imageMode(CENTER);
  milky = createFont("MilkyNice.ttf",35);
  stepped = createFont("SteppedDemoRegular.ttf",10);
  
  mode = intro;
  
  titlecount = 0;


///     Intro Screen Pointer info     ///
  pointer = loadImage("pointer.png");
  pw = 210;
  ph = 210;
  pgrow = true;
  
  
///     Targets      ///
  x = width/2;
  y = (height-200)/2 + 200;
  d = 120;
  vx = random(-5,5);
  vy = random(-5,5);
  score = 0;
  lives = 3;
  
  bubble = loadImage("bubble.png");
  snow = loadImage("snow.png");
  peace = loadImage("peace.png");


///     Minim     ///
  minim = new Minim(this);
  background = minim.loadFile("background.mp3");
  point = minim.loadFile("coin.mp3");
  finish = minim.loadFile("gameover.mp3");
  bump = minim.loadFile("bump.mp3");
  button = minim.loadFile("button.mp3");
  lose = minim.loadFile("lose.mp3");
  customizemusic = minim.loadFile("optionsmusic.mp3");
 
  
///     Highscore     ///
  hscore = 0;
  
  
///     Music     ///
 if (mode == intro){ 
  background.loop();
 }
 if (mode == gameover){
  finish.loop();
 }
 if (mode == options){
  customizemusic.loop();
 }
 
 
///     Intro Screen Animation Variables    ///
 bx = 200;
 by = 700;
 bby = random(1,5);
 bbx = random(-5,5);
 
 sx = 400;
 sy = 900;
 ssx = random(-5,5);
 ssy = random(-5,5);
 
 px = 700;
 py = 200;
 ppy = random(-5,5);
 ppx = random(-5,5);
}



void draw(){
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options) {
    options();
  } else {
    println("Error: Mode is " + mode);
  }
}
