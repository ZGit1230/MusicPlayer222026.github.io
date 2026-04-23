import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffect = 2;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
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
  
  String[] songName = new String[numberOfSongs];
  songName[0] = "Beat_Your_Competition";
  currentSong++;
  songName[1] = "Cycles";
  currentSong++;
  songName[2] = "Start_Your_Engines";
  currentSong = 0;
  
  //String songName1 = "Beat_Your_Competition";
  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";
  
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String pathway;
  
  for (int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3;
    playList[currentSong] = minim.loadFile(pathway);
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
}

void draw () {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {} //End keyPressed
