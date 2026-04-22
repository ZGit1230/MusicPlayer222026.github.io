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
  songName[1] = "Cycles";
  songName[2] = "Start_Your_Engines";
  
  String songName1 = "Beat_Your_Competition";
  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";
  
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[currentSong] = minim.loadFile(file);
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile(file);
  
  if ( playList[currentSong] == null || soundEffects[currentSong] == null ) { // Error
    println("The Playlist or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
  } else {
    playList[currentSong].loop();
    printArray(playList);
    }
}

void draw () {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {} //End keyPressed
