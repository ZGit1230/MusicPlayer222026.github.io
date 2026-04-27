import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int paperWidth = 800;
int paperHeight = 1300;
//

// DIV: Image

Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffect = 2;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffect];
int currentSong = numberOfSongs - numberOfSongs;
//

void setup() {
  size( 700, 500 );
  int appWidth = width; 
  int appHeight = height;
  
  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "SoundEffects";
  String dependanciesFolder = "Dependencies";
  
  int paperWidth = 800;
  int paperHeight = 1300;
  //
  
  // DIV: Image
  
  float authorDivX = appWidth * 350 / paperWidth;
  float authorDivY = appHeight * 186 / paperHeight;
  float authorDivWidth = appWidth * 100 / paperWidth;
  float authorDivHeight = appHeight * 50 / paperHeight;
  rect(authorDivX, authorDivY, authorDivWidth, authorDivHeight);
  
  float nameDivX = appWidth * 335 / paperWidth;
  float nameDivY = appHeight * 235 / paperHeight;
  float nameDivWidth = appWidth * 130 / paperWidth;
  float nameDivHeight = appHeight * 70 / paperHeight;
  rect(nameDivX, nameDivY, nameDivWidth, nameDivHeight);
  
  float timerDivX = appWidth * 150 / paperWidth;
  float timerDivY = appHeight * 880 / paperHeight;
  float timerDivWidth = appWidth * 75 / paperWidth;
  float timerDivHeight = appHeight * 50 / paperHeight;
  rect(timerDivX, timerDivY, timerDivWidth, timerDivHeight);
  
  float maxTimeDivX = appWidth * 575 / paperWidth;
  float maxTimeDivY = appHeight * 880 / paperHeight;
  float maxTimeDivWidth = appWidth * 75 / paperWidth;
  float maxTimeDivHeight = appHeight * 50 / paperHeight;
  rect(maxTimeDivX, maxTimeDivY, maxTimeDivWidth, maxTimeDivHeight);
  
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Beat_Your_Competition";
  currentSong++;
  songName[currentSong] = "Cycles";
  currentSong++;
  songName[currentSong] = "Start_Your_Engines";
  currentSong = 0;
  
  //String songName1 = "Beat_Your_Competition";
  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";
  
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String pathway;
  
  for (int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3;
    println("Insdei FOR, pathway:", pathway);
    playList[i] = minim.loadFile(pathway);
    playListMetaData[i] = playList[i].getMetaData();
  };
  
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile(pathway);
  
  for (int i=0; i<numberOfSongs; i++) {
    if ( playList[i] == null || soundEffects[currentSong] == null ) { // Error
    println("The Playlist did not load properly");
    printArray(playList);
    exit();
}
  };
  
if ( playList[currentSong] == null || soundEffects[currentSong] == null ) { // Error
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
}

String title = "X";

float fontSize1 = nameDivHeight;
float fontSize2 = appHeight;
float fontSize3 = appHeight;
float fontSize4 = appHeight;

println(fontSize1);
PFont font;
String nirmalaUIBold = "Nirmala UI Bold";
font = createFont(nirmalaUIBold, fontSize1);

color blackInk = #000000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;

fill(blackInk);

float constantDecrease = 0.99;
int iWhile=0;
textAlign(CENTER, TOP);
textFont(font, fontSize1);
while (textWidth(playListMetaData[currentSong].title()) > authorDivWidth) {
  //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
  iWhile++;
  if (iWhile>1000) {
    println("Infinite WHILE loop");
    exit();
  }
  fontSize1 *= 0.99;
  textFont(font, fontSize1);
};
text(playListMetaData[currentSong].title(), nameDivX, nameDivY, nameDivWidth, nameDivHeight);

}

void draw () {}//End Draw

void mousePressed() {
/* Simple Play
   playList[currentSong].play();
   currentSong++;
   */
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
}//End mousePressed

void keyPressed() {} //End keyPressed
