/* Music App, Final Project
 */
//

//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
/* Global Variables
 - Possible DIV-vars needed in draw(), etc.
 - MUST: Music Button-vars, possibly associated DIV-vars
 */
//

Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffect = 2;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffect];
int currentSong = numberOfSongs - numberOfSongs;

float nameDivX, nameDivY, nameDivWidth, nameDivHeight;
float playPauseDivX, playPauseDivY, playPauseDivWidth, playPauseDivHeight;
float redoDivX, redoDivY, redoDivWidth, redoDivHeight;
float loopDivX, loopDivY, loopDivWidth, loopDivHeight;
float rewindDivX, rewindDivY, rewindDivWidth, rewindDivHeight;
float fastFowardDivX, fastFowardDivY, fastFowardDivWidth, fastFowardDivHeight;
color blackInk, resetInk;
float constantDecrease;
int iWhile;
float fontSize1, fontSize2, fontSize3, fontSize4;
PFont font;

Boolean playButton = false;

void setup() { // Start Setup

  //Display
  //fullScreen();

  size(700, 500);
  int appWidth = width;
  int appHeight = height;

  //
  //DIVs Population using unitless ratios (i.e. millimeters to pixels)
  //See Case Study

  // DIVs and Symbols

  int paperWidth = 800;
  int paperHeight = 1300;

  float menuDivX = appWidth * 25 / paperWidth;
  float menuDivY = appHeight * 50 / paperHeight;
  float menuDivWidth = appWidth * 50 / paperWidth;
  float menuDivHeight = appHeight * 140 / paperHeight;

  float menuSymbol1DivX = menuDivX + menuDivWidth * 1/4;
  float menuSymbol1DivY = menuDivY + menuDivHeight * 1.5/8;
  float menuSymbol1DivWidth = menuDivWidth * 1/2;
  float menuSymbol1DivHeight = menuDivHeight * 1/8;


  float menuSymbol2DivX = menuDivX + menuDivWidth * 1/4;
  float menuSymbol2DivY = menuDivY + menuDivHeight * 3.5/8;
  float menuSymbol2DivWidth = menuDivWidth * 1/2;
  float menuSymbol2DivHeight = menuDivHeight * 1/8;


  float menuSymbol3DivX = menuDivX + menuDivWidth * 1/4;
  float menuSymbol3DivY = menuDivY + menuDivHeight * 5.5/8;
  float menuSymbol3DivWidth = menuDivWidth * 1/2;
  float menuSymbol3DivHeight = menuDivHeight * 1/8;


  float optionsDivX = appWidth * 725 / paperWidth;
  float optionsDivY = appHeight * 50 / paperHeight;
  float optionsDivWidth = appWidth * 50 / paperWidth;
  float optionsDivHeight = appHeight * 140 / paperHeight;

  float optionsSymbol1DivX = optionsDivX + optionsDivWidth * 1/2;
  float optionsSymbol1DivY = optionsDivY + optionsDivHeight * 1/4;
  float optionsSymbolDivSize = (optionsDivWidth * optionsDivHeight) / 210;

  float optionsSymbol2DivX = optionsDivX + optionsDivWidth * 1/2;
  float optionsSymbol2DivY = optionsDivY + optionsDivHeight * 1/2;

  float optionsSymbol3DivX = optionsDivX + optionsDivWidth * 1/2;
  float optionsSymbol3DivY = optionsDivY + optionsDivHeight * 3/4;


  float exitDivX = appWidth * 675 / paperWidth;
  float exitDivY = appHeight * 50 / paperHeight;
  float exitDivWidth = appWidth * 50 / paperWidth;
  float exitDivHeight = appHeight * 140 / paperHeight;

  float exitSymbol1DivX1 = exitDivX + exitDivWidth * 1/4;
  float exitSymbol1DivY1 = exitDivY + exitDivHeight * 1/4;
  float exitSymbol1DivX2 = exitDivX + exitDivWidth * 3/4;
  float exitSymbol1DivY2 = exitDivY + exitDivHeight * 3/4;

  float exitSymbol2DivX1 = exitDivX + exitDivWidth * 3/4;
  float exitSymbol2DivY1 = exitDivY + exitDivHeight * 1/4;
  float exitSymbol2DivX2 = exitDivX + exitDivWidth * 1/4;
  float exitSymbol2DivY2 = exitDivY + exitDivHeight * 3/4;

  float authorDivX = appWidth * 350 / paperWidth;
  float authorDivY = appHeight * 186 / paperHeight;
  float authorDivWidth = appWidth * 100 / paperWidth;
  float authorDivHeight = appHeight * 50 / paperHeight;

  nameDivX = appWidth * 335 / paperWidth;
  nameDivY = appHeight * 235 / paperHeight;
  nameDivWidth = appWidth * 130 / paperWidth;
  nameDivHeight = appHeight * 70 / paperHeight;

  float logoDivX = appWidth * 300 / paperWidth;
  float logoDivY = appHeight * 305 / paperHeight;
  float logoDivWidth = appWidth * 200 / paperWidth;
  float logoDivHeight = appHeight * 525 / paperHeight;

  float progBarDivX = appWidth * 225 / paperWidth;
  float progBarDivY = appHeight * 880 / paperHeight;
  float progBarDivWidth = appWidth * 350 / paperWidth;
  float progBarDivHeight = appHeight * 50 / paperHeight;

  float timerDivX = appWidth * 150 / paperWidth;
  float timerDivY = appHeight * 880 / paperHeight;
  float timerDivWidth = appWidth * 75 / paperWidth;
  float timerDivHeight = appHeight * 50 / paperHeight;

  float maxTimeDivX = appWidth * 575 / paperWidth;
  float maxTimeDivY = appHeight * 880 / paperHeight;
  float maxTimeDivWidth = appWidth * 75 / paperWidth;
  float maxTimeDivHeight = appHeight * 50 / paperHeight;

  redoDivX = appWidth * 80 / paperWidth;
  redoDivY = appHeight * 825 / paperHeight;
  redoDivWidth = appWidth * 50 / paperWidth;
  redoDivHeight = appHeight * 140 / paperHeight;

  float redoSymbol1DivX1 = redoDivX + redoDivWidth * 1/4;
  float redoSymbol1DivY1 = redoDivY + redoDivHeight * 3/4;
  float redoSymbol1DivX2 = redoDivX + redoDivWidth * 1/4;
  float redoSymbol1DivY2 = redoDivY + redoDivHeight * 1/4;

  float redoSymbol2DivX1 = redoDivX + redoDivWidth * 1/4;
  float redoSymbol2DivY1 = redoDivY + redoDivHeight * 1/4;
  float redoSymbol2DivX2 = redoDivX + redoDivWidth * 3/4;
  float redoSymbol2DivY2 = redoDivY + redoDivHeight * 1/4;

  float redoSymbol3DivX1 = redoDivX + redoDivWidth * 1/4;
  float redoSymbol3DivY1 = redoDivY + redoDivHeight * 3/4;
  float redoSymbol3DivX2 = redoDivX + redoDivWidth * 3/4;
  float redoSymbol3DivY2 = redoDivY + redoDivHeight * 3/4;

  float redoSymbol4DivX1 = redoDivX + redoDivWidth * 3/4;
  float redoSymbol4DivY1 = redoDivY + redoDivHeight * 1/4;
  float redoSymbol4DivX2 = redoDivX + redoDivWidth * 3/4;
  float redoSymbol4DivY2 = redoDivY + redoDivHeight * 1/2;

  float redoSymbol5DivX1 = redoDivX + redoDivWidth * 11/16;
  float redoSymbol5DivY1 = redoDivY + redoDivHeight * 1/2;
  float redoSymbol5DivX2 = redoDivX + redoDivWidth * 13/16;
  float redoSymbol5DivY2 = redoDivY + redoDivHeight * 1/2;
  float redoSymbol5DivX3 = redoDivX + redoDivWidth * 3/4;
  float redoSymbol5DivY3 = redoDivY + redoDivHeight * 5/8;


  loopDivX = appWidth * 670 / paperWidth;
  loopDivY = appHeight * 825 / paperHeight;
  loopDivWidth = appWidth * 50 / paperWidth;
  loopDivHeight = appHeight * 140 / paperHeight;

  float loopSymbol1DivX1 = loopDivX + loopDivWidth * 1/4;
  float loopSymbol1DivY1 = loopDivY + loopDivHeight * 3/4;
  float loopSymbol1DivX2 = loopDivX + loopDivWidth * 1/4;
  float loopSymbol1DivY2 = loopDivY + loopDivHeight * 1/2;

  float loopSymbol2DivX1 = loopDivX + loopDivWidth * 1/4;
  float loopSymbol2DivY1 = loopDivY + loopDivHeight * 1/4;
  float loopSymbol2DivX2 = loopDivX + loopDivWidth * 3/4;
  float loopSymbol2DivY2 = loopDivY + loopDivHeight * 1/4;

  float loopSymbol3DivX1 = loopDivX + loopDivWidth * 3/4;
  float loopSymbol3DivY1 = loopDivY + loopDivHeight * 1/4;
  float loopSymbol3DivX2 = loopDivX + loopDivWidth * 3/4;
  float loopSymbol3DivY2 = loopDivY + loopDivHeight * 1/2;

  float loopSymbol4DivX1 = loopDivX + loopDivWidth * 3/4;
  float loopSymbol4DivY1 = loopDivY + loopDivHeight * 3/4;
  float loopSymbol4DivX2 = loopDivX + loopDivWidth * 1/4;
  float loopSymbol4DivY2 = loopDivY + loopDivHeight * 3/4;

  float loopSymbol5DivX1 = loopDivX + loopDivWidth * 3/16;
  float loopSymbol5DivY1 = loopDivY + loopDivHeight * 1/2;
  float loopSymbol5DivX2 = loopDivX + loopDivWidth * 5.25/16;
  float loopSymbol5DivY2 = loopDivY + loopDivHeight * 1/2;
  float loopSymbol5DivX3 = loopDivX + loopDivWidth * 1/4;
  float loopSymbol5DivY3 = loopDivY + loopDivHeight * 3/8;

  float loopSymbol6DivX1 = loopDivX + loopDivWidth * 11/16;
  float loopSymbol6DivY1 = loopDivY + loopDivHeight * 1/2;
  float loopSymbol6DivX2 = loopDivX + loopDivWidth * 13/16;
  float loopSymbol6DivY2 = loopDivY + loopDivHeight * 1/2;
  float loopSymbol6DivX3 = loopDivX + loopDivWidth * 3/4;
  float loopSymbol6DivY3 = loopDivY + loopDivHeight * 5/8;

  float prevDivX = appWidth * 275 / paperWidth;
  float prevDivY = appHeight * 1000 / paperHeight;
  float prevDivWidth = appWidth * 50 / paperWidth;
  float prevDivHeight = appHeight * 140 / paperHeight;

  float prevSymbol1DivX1 = prevDivX + prevDivWidth * 3/4;
  float prevSymbol1DivY1 = prevDivY + prevDivHeight * 1/4;
  float prevSymbol1DivX2 = prevDivX + prevDivWidth * 3/4;
  float prevSymbol1DivY2 = prevDivY + prevDivHeight * 3/4;
  float prevSymbol1DivX3 = prevDivX + prevDivWidth * 1/2;
  float prevSymbol1DivY3 = prevDivY + prevDivHeight * 1/2;

  float prevSymbol2DivX = prevDivX + prevDivWidth * 3/8;
  float prevSymbol2DivY = prevDivY + prevDivHeight * 1/4;
  float prevSymbol2DivWidth = prevDivWidth * 1/8;
  float prevSymbol2DivHeight = prevDivHeight * 1/2;

  rewindDivX = appWidth * 325 / paperWidth;
  rewindDivY = appHeight * 1000 / paperHeight;
  rewindDivWidth = appWidth * 50 / paperWidth;
  rewindDivHeight = appHeight * 140 / paperHeight;

  float rewindSymbol1DivX1 = rewindDivX + rewindDivWidth * 3/4;
  float rewindSymbol1DivY1 = rewindDivY + rewindDivHeight * 1/4;
  float rewindSymbol1DivX2 = rewindDivX + rewindDivWidth * 3/4;
  float rewindSymbol1DivY2 = rewindDivY + rewindDivHeight * 3/4;
  float rewindSymbol1DivX3 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol1DivY3 = rewindDivY + rewindDivHeight * 1/2;

  float rewindSymbol2DivX1 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol2DivY1 = rewindDivY + rewindDivHeight * 1/4;
  float rewindSymbol2DivX2 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol2DivY2 = rewindDivY + rewindDivHeight * 3/4;
  float rewindSymbol2DivX3 = rewindDivX + rewindDivWidth * 1/4;
  float rewindSymbol2DivY3 = rewindDivY + rewindDivHeight * 1/2;


  playPauseDivX = appWidth * 375 / paperWidth;
  playPauseDivY = appHeight * 1000 / paperHeight;
  playPauseDivWidth = appWidth * 50 / paperWidth;
  playPauseDivHeight = appHeight * 140 / paperHeight;

  float playSymbolDivX1 = playPauseDivX + playPauseDivWidth * 1/4;
  float playSymbolDivY1 = playPauseDivY + playPauseDivHeight * 1/4;
  float playSymbolDivX2 = playPauseDivX + playPauseDivWidth * 1/4;
  float playSymbolDivY2 = playPauseDivY + playPauseDivHeight * 3/4;
  float playSymbolDivX3 = playPauseDivX + playPauseDivWidth * 3/4;
  float playSymbolDivY3 = playPauseDivY + playPauseDivHeight * 1/2;

  fastFowardDivX = appWidth * 425 / paperWidth;
  fastFowardDivY = appHeight * 1000 / paperHeight;
  fastFowardDivWidth = appWidth * 50 / paperWidth;
  fastFowardDivHeight = appHeight * 140 / paperHeight;

  float ffSymbol1DivX1 = fastFowardDivX + fastFowardDivWidth * 1/4;
  float ffSymbol1DivY1 = fastFowardDivY + fastFowardDivHeight * 1/4;
  float ffSymbol1DivX2 = fastFowardDivX + fastFowardDivWidth * 1/4;
  float ffSymbol1DivY2 = fastFowardDivY + fastFowardDivHeight * 3/4;
  float ffSymbol1DivX3 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol1DivY3 = fastFowardDivY + fastFowardDivHeight * 1/2;

  float ffSymbol2DivX1 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol2DivY1 = fastFowardDivY + fastFowardDivHeight * 1/4;
  float ffSymbol2DivX2 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol2DivY2 = fastFowardDivY + fastFowardDivHeight * 3/4;
  float ffSymbol2DivX3 = fastFowardDivX + fastFowardDivWidth * 3/4;
  float ffSymbol2DivY3 = fastFowardDivY + fastFowardDivHeight * 1/2;

  float nextDivX = appWidth * 475 / paperWidth;
  float nextDivY = appHeight * 1000 / paperHeight;
  float nextDivWidth = appWidth * 50 / paperWidth;
  float nextDivHeight = appHeight * 140 / paperHeight;

  float nextSymbol1DivX1 = nextDivX + nextDivWidth * 1/4;
  float nextSymbol1DivY1 = nextDivY + nextDivHeight * 1/4;
  float nextSymbol1DivX2 = nextDivX + nextDivWidth * 1/4;
  float nextSymbol1DivY2 = nextDivY + nextDivHeight * 3/4;
  float nextSymbol1DivX3 = nextDivX + nextDivWidth * 1/2;
  float nextSymbol1DivY3 = nextDivY + nextDivHeight * 1/2;

  float nextSymbol2DivX = nextDivX + nextDivWidth * 1/2;
  float nextSymbol2DivY = nextDivY + nextDivHeight * 1/4;
  float nextSymbol2DivWidth = nextDivWidth * 1/8;
  float nextSymbol2DivHeight = nextDivHeight * 1/2;

  rect(menuDivX, menuDivY, menuDivWidth, menuDivHeight);
  rect(menuSymbol1DivX, menuSymbol1DivY, menuSymbol1DivWidth, menuSymbol1DivHeight);
  rect(menuSymbol2DivX, menuSymbol2DivY, menuSymbol2DivWidth, menuSymbol2DivHeight);
  rect(menuSymbol3DivX, menuSymbol3DivY, menuSymbol3DivWidth, menuSymbol3DivHeight);

  rect(optionsDivX, optionsDivY, optionsDivWidth, optionsDivHeight);
  circle(optionsSymbol1DivX, optionsSymbol1DivY, optionsSymbolDivSize);
  circle(optionsSymbol2DivX, optionsSymbol2DivY, optionsSymbolDivSize);
  circle(optionsSymbol3DivX, optionsSymbol3DivY, optionsSymbolDivSize);

  rect(exitDivX, exitDivY, exitDivWidth, exitDivHeight);
  line(exitSymbol1DivX1, exitSymbol1DivY1, exitSymbol1DivX2, exitSymbol1DivY2);
  line(exitSymbol2DivX1, exitSymbol2DivY1, exitSymbol2DivX2, exitSymbol2DivY2);

  rect(authorDivX, authorDivY, authorDivWidth, authorDivHeight);

  rect(nameDivX, nameDivY, nameDivWidth, nameDivHeight);

  rect(logoDivX, logoDivY, logoDivWidth, logoDivHeight);

  rect(progBarDivX, progBarDivY, progBarDivWidth, progBarDivHeight);

  rect(timerDivX, timerDivY, timerDivWidth, timerDivHeight);

  rect(maxTimeDivX, maxTimeDivY, maxTimeDivWidth, maxTimeDivHeight);

  rect(redoDivX, redoDivY, redoDivWidth, redoDivHeight);

  line(redoSymbol1DivX1, redoSymbol1DivY1, redoSymbol1DivX2, redoSymbol1DivY2);
  line(redoSymbol2DivX1, redoSymbol2DivY1, redoSymbol2DivX2, redoSymbol2DivY2);
  line(redoSymbol3DivX1, redoSymbol3DivY1, redoSymbol3DivX2, redoSymbol3DivY2);
  line(redoSymbol4DivX1, redoSymbol4DivY1, redoSymbol4DivX2, redoSymbol4DivY2);
  triangle(redoSymbol5DivX1, redoSymbol5DivY1, redoSymbol5DivX2, redoSymbol5DivY2, redoSymbol5DivX3, redoSymbol5DivY3);

  rect(loopDivX, loopDivY, loopDivWidth, loopDivHeight);
  line(loopSymbol1DivX1, loopSymbol1DivY1, loopSymbol1DivX2, loopSymbol1DivY2);
  line(loopSymbol2DivX1, loopSymbol2DivY1, loopSymbol2DivX2, loopSymbol2DivY2);
  line(loopSymbol3DivX1, loopSymbol3DivY1, loopSymbol3DivX2, loopSymbol3DivY2);
  line(loopSymbol4DivX1, loopSymbol4DivY1, loopSymbol4DivX2, loopSymbol4DivY2);
  triangle(loopSymbol5DivX1, loopSymbol5DivY1, loopSymbol5DivX2, loopSymbol5DivY2, loopSymbol5DivX3, loopSymbol5DivY3);
  triangle(loopSymbol6DivX1, loopSymbol6DivY1, loopSymbol6DivX2, loopSymbol6DivY2, loopSymbol6DivX3, loopSymbol6DivY3);

  rect(prevDivX, prevDivY, prevDivWidth, prevDivHeight);
  triangle(prevSymbol1DivX1, prevSymbol1DivY1, prevSymbol1DivX2, prevSymbol1DivY2, prevSymbol1DivX3, prevSymbol1DivY3);
  rect(prevSymbol2DivX, prevSymbol2DivY, prevSymbol2DivWidth, prevSymbol2DivHeight);

  rect(rewindDivX, rewindDivY, rewindDivWidth, rewindDivHeight);
  triangle(rewindSymbol1DivX1, rewindSymbol1DivY1, rewindSymbol1DivX2, rewindSymbol1DivY2, rewindSymbol1DivX3, rewindSymbol1DivY3);
  triangle(rewindSymbol2DivX1, rewindSymbol2DivY1, rewindSymbol2DivX2, rewindSymbol2DivY2, rewindSymbol2DivX3, rewindSymbol2DivY3);

  rect(playPauseDivX, playPauseDivY, playPauseDivWidth, playPauseDivHeight);
  triangle(playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);

  rect(fastFowardDivX, fastFowardDivY, fastFowardDivWidth, fastFowardDivHeight);
  triangle(ffSymbol1DivX1, ffSymbol1DivY1, ffSymbol1DivX2, ffSymbol1DivY2, ffSymbol1DivX3, ffSymbol1DivY3);
  triangle(ffSymbol2DivX1, ffSymbol2DivY1, ffSymbol2DivX2, ffSymbol2DivY2, ffSymbol2DivX3, ffSymbol2DivY3);

  rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
  triangle(nextSymbol1DivX1, nextSymbol1DivY1, nextSymbol1DivX2, nextSymbol1DivY2, nextSymbol1DivX3, nextSymbol1DivY3);
  rect(nextSymbol2DivX, nextSymbol2DivY, nextSymbol2DivWidth, nextSymbol2DivHeight);

  // Images

  String upArow = "..";
  String dependanciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName1 = "SoccerBall";
  String imageName2 = "Bike";
  String imageName3 = "Orange";
  String fileExension = ".jpg";
  String open = "/";

  //Concatenation
  //See Absolute Pathway: C:\Users\z.osman4\Documents\GitHub\MusicPlayer222026.github.io\Dependencies\Images
  //See Relative Pathway: Dependencies\Images
  String imageDirectory = upArow + open + dependanciesFolder + open + imagesFolder + open;
  String pathway1 = imageDirectory + imageName1 + fileExension;
  String pathway2 = imageDirectory + imageName2 + fileExension;
  String pathway3 = imageDirectory + imageName3 + fileExension;

  PImage image1 = loadImage(pathway1);
  int imageWidth1 = appWidth * 200 / paperWidth;
  int imageHeight1 = appHeight * 525 / paperHeight;
  PImage image2 = loadImage(pathway2);
  int imageWidth2 = 860;
  int imageHeight2 = 529;
  //PImage image3 = loadImage(pathway3);

  println(float(imageWidth2)/ float(imageHeight2));

  //
  //Population: DIVs
  float image1DivX = appWidth * 300 / paperWidth;
  float image1DivY = appHeight * 305 / paperHeight;
  float image1DivWidth = imageWidth1;
  float image1DivHeight = imageHeight1; //1+1.5=2.5, half of the total height

  //Image: Aspect Ratio Algorithm
  //Ternary Operator for Aspect Ratio

  float image1AspectRation_GreatOne = (imageWidth1 > imageHeight1) ? float(imageWidth1) / float(imageHeight1): float(imageHeight1) / float(imageWidth1);
  float imageWidthAdjusted1 = image1DivWidth;

  float imageHeightAdjusted1;

  if ( imageWidth2 > image1DivWidth) {
    imageHeightAdjusted1 = imageWidthAdjusted1 / image1AspectRation_GreatOne;

    while (imageWidthAdjusted1 > image1DivWidth) {
      imageWidthAdjusted1 *= 0.99 ;
      imageHeightAdjusted1 = imageWidthAdjusted1 / image1AspectRation_GreatOne;
    };
  } else {
    imageHeightAdjusted1 = imageWidthAdjusted1 * image1AspectRation_GreatOne;

    while (imageWidthAdjusted1 > image1DivWidth) {
      imageWidthAdjusted1 *= 0.99 ;
      imageHeightAdjusted1 = imageWidthAdjusted1 * image1AspectRation_GreatOne;
    };
  };

  println(image1AspectRation_GreatOne);

  rect(image1DivX, image1DivY, image1DivWidth, image1DivHeight);

  //DIV: Image
  //
  image(image1, image1DivX, image1DivY, imageWidthAdjusted1, imageHeightAdjusted1);
  //image(image2, image1DivX, image1DivY);
  //image(image3, 0, 0);


  // Text

  String title = "X";

  String[] fontList = PFont.list();

  fontSize1 = appHeight;
  fontSize2 = appHeight;
  fontSize3 = appHeight;
  fontSize4 = appHeight;

  println(fontSize1);

  String nirmalaUIBold = "Nirmala UI Bold";
  font = createFont(nirmalaUIBold, fontSize1);

  float fontSizeNirmalaUIBold = 15;
  float divHeightNirmalaUIBold = authorDivHeight;
  float nirmalaUIBoldAspectRatio = fontSizeNirmalaUIBold / divHeightNirmalaUIBold; // <1
  float textAdjustment = 0.9;
  fontSize1 = nameDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
  fontSize2 = authorDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
  fontSize3 = timerDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
  fontSize4 = maxTimeDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
  println(fontSize1);

  color blackInk = #000000;
  color whiteInk = #FFFFFF;
  resetInk = whiteInk;

  fill(blackInk);

  constantDecrease = 0.99;
  iWhile = 0;
  textAlign(CENTER, TOP);
  textFont(font, fontSize1);

  textFont(font, fontSize2);
  iWhile = 0;
  while (textWidth(title) > authorDivWidth) {
    //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
    iWhile++;
    if (iWhile>1000) {
      println("Infinite WHILE loop");
      exit();
    }
    fontSize2 *= 0.99;
    textFont(font, fontSize2);
  };
  //while (textWidth(title) > authorDivWidth) (print("Hello2");
  text(title, authorDivX, authorDivY, authorDivWidth, authorDivHeight);

  textFont(font, fontSize3);
  iWhile = 0;
  while (textWidth(title) > timerDivWidth) {
    //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
    iWhile++;
    if (iWhile>1000) {
      println("Infinite WHILE loop");
      exit();
    }
    fontSize3 *= 0.99;
    textFont(font, fontSize3);
  };
  //while (textWidth(title) > authorDivWidth) (print("Hello3");
  text(title, timerDivX, timerDivY, timerDivWidth, timerDivHeight);

  textFont(font, fontSize4);
  iWhile = 0;
  while (textWidth(title) > maxTimeDivWidth) {
    //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
    iWhile++;
    if (iWhile>1000) {
      println("Infinite WHILE loop");
      exit();
    }
    fontSize4 *= 0.99;
    textFont(font, fontSize4);
  };
  //while (textWidth(title) > authorDivWidth) (print("Hello4");
  text(title, maxTimeDivX, maxTimeDivY, maxTimeDivWidth, maxTimeDivHeight);

  fill(resetInk);

  //Strings, Text, Literal
  //
  // Fonts from OS
  //
  // Aspect Ratio for Harrington
  //
  // Drawing Text
  //


  // Music

  minim = new Minim(this);
  String upArrow = "..";
  open = "/";
  String musicFolder = "MusicSongs";
  String soundEffectsFolder = "SoundEffects";
  dependanciesFolder = "Dependencies";

  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Beat_Your_Competition";
  currentSong++;
  songName[currentSong] = "Cycles";
  currentSong++;
  songName[currentSong] = "Start_Your_Engines";
  currentSong = 0;

  String soundEffect1 = "The_Simplest_Sting";
  String fileExtension_mp3 = ".mp3";

  String musicDirectory = upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String pathway;

  for (int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3;
    println("Insdei FOR, pathway:", pathway);
    playList[i] = minim.loadFile(pathway);
    playListMetaData[i] = playList[i].getMetaData();
  }

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

  while (textWidth(playListMetaData[currentSong].title()) > nameDivWidth) {
    //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
    iWhile++;
    if (iWhile>1000) {
      println("Infinite WHILE loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text(playListMetaData[currentSong].title(), nameDivX, nameDivY, nameDivWidth, nameDivHeight );
  fill(resetInk);
} // End Setup

void draw() {
  //
  fontSize1 = nameDivHeight;
  constantDecrease = 0.99;
  iWhile=0;
  textFont(font, fontSize1);
  while (textWidth(playListMetaData[currentSong].title()) > nameDivWidth ) {

    iWhile++;
    if ( iWhile>10000 ) {
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  fill(resetInk);
  rect(nameDivX, nameDivY, nameDivWidth, nameDivHeight);
  fill(blackInk);
  text(playListMetaData[currentSong].title(), nameDivX, nameDivY, nameDivWidth, nameDivHeight );
  fill(resetInk);

  if ( mouseX>playPauseDivX && mouseX<playPauseDivX+playPauseDivWidth && mouseY>playPauseDivY && mouseY<playPauseDivY+playPauseDivHeight ) {
    //colour change
  } else {
    //colour change
  }//End Introduction of DRAW()
  //
  //Button HoverOver
  //
} // End Draw

void mousePressed() {
  //2D Music Symbol Changes: sending Boolean to draw()

  //Music Play Functions
  
  //Play/Pause
  if ( mouseX>playPauseDivX && mouseX<playPauseDivX+playPauseDivWidth && mouseY>playPauseDivY && mouseY<playPauseDivY+playPauseDivHeight ) {
    if (playList[currentSong].isPlaying() == true) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  
  //Redo
  if ( mouseX>redoDivX && mouseX<redoDivX+redoDivWidth && mouseY>redoDivY && mouseY<redoDivY+redoDivHeight ) {
      playList[currentSong].rewind();
  }
  
  //Loop
  if ( mouseX>loopDivX && mouseX<loopDivX+loopDivWidth && mouseY>loopDivY && mouseY<loopDivY+loopDivHeight ) {
      playList[currentSong].loop();
  }
  
  
  //Rewind
  if ( mouseX>rewindDivX && mouseX<rewindDivX+rewindDivWidth && mouseY>rewindDivY && mouseY<rewindDivY+rewindDivHeight ) {
      playList[currentSong].skip(-10000);
  }
  
  //Fast Foward
  if ( mouseX>fastFowardDivX && mouseX<fastFowardDivX+fastFowardDivWidth && mouseY>fastFowardDivY && mouseY<fastFowardDivY+fastFowardDivHeight ) {
      playList[currentSong].skip(10000);
  }
} // End MousePressed

void keyPressed() {
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
}

// End Main Program
