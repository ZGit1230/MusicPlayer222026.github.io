/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 800;
int paperHeight = 1300;


//rect(DivX, DivY, DivWidth, DivHeight);
float menuDivX = appWidth * 25 / paperWidth;
float menuDivY = appHeight * 50 / paperHeight;
float menuDivWidth = appWidth * 50 / paperWidth;
float menuDivHeight = appHeight * 140 / paperHeight;
rect(menuDivX, menuDivY, menuDivWidth, menuDivHeight);

float optionsDivX = appWidth * 725 / paperWidth;
float optionsDivY = appHeight * 50 / paperHeight;
float optionsDivWidth = appWidth * 50 / paperWidth;
float optionsDivHeight = appHeight * 140 / paperHeight;
rect(optionsDivX, optionsDivY, optionsDivWidth, optionsDivHeight);

float exitDivX = appWidth * 675 / paperWidth;
float exitDivY = appHeight * 50 / paperHeight;
float exitDivWidth = appWidth * 50 / paperWidth;
float exitDivHeight = appHeight * 140 / paperHeight;
rect(exitDivX, exitDivY, exitDivWidth, exitDivHeight);

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

float logoDivX = appWidth * 300 / paperWidth;
float logoDivY = appHeight * 305 / paperHeight;
float logoDivWidth = appWidth * 200 / paperWidth;
float logoDivHeight = appHeight * 525 / paperHeight;
rect(logoDivX, logoDivY, logoDivWidth, logoDivHeight);

float progBarDivX = appWidth * 225 / paperWidth;
float progBarDivY = appHeight * 880 / paperHeight;
float progBarDivWidth = appWidth * 350 / paperWidth;
float progBarDivHeight = appHeight * 50 / paperHeight;
rect(progBarDivX, progBarDivY, progBarDivWidth, progBarDivHeight);

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

float redoDivX = appWidth * 80 / paperWidth;
float redoDivY = appHeight * 825 / paperHeight;
float redoDivWidth = appWidth * 50 / paperWidth;
float redoDivHeight = appHeight * 140 / paperHeight;
rect(redoDivX, redoDivY, redoDivWidth, redoDivHeight);

float loopDivX = appWidth * 670 / paperWidth;
float loopDivY = appHeight * 825 / paperHeight;
float loopDivWidth = appWidth * 50 / paperWidth;
float loopDivHeight = appHeight * 140 / paperHeight;
rect(loopDivX, loopDivY, loopDivWidth, loopDivHeight);

float prevDivX = appWidth * 275 / paperWidth;
float prevDivY = appHeight * 1000 / paperHeight;
float prevDivWidth = appWidth * 50 / paperWidth;
float prevDivHeight = appHeight * 140 / paperHeight;
rect(prevDivX, prevDivY, prevDivWidth, prevDivHeight);

float rewindDivX = appWidth * 325 / paperWidth;
float rewindDivY = appHeight * 1000 / paperHeight;
float rewindDivWidth = appWidth * 50 / paperWidth;
float rewindDivHeight = appHeight * 140 / paperHeight;
rect(rewindDivX, rewindDivY, rewindDivWidth, rewindDivHeight);
  float rewindSymbol1DivX1 = rewindDivX + rewindDivWidth * 3/4;
  float rewindSymbol1DivY1 = rewindDivY + rewindDivHeight * 1/4;
  float rewindSymbol1DivX2 = rewindDivX + rewindDivWidth * 3/4;
  float rewindSymbol1DivY2 = rewindDivY + rewindDivHeight * 3/4;
  float rewindSymbol1DivX3 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol1DivY3 = rewindDivY + rewindDivHeight * 1/2;
  triangle(rewindSymbol1DivX1, rewindSymbol1DivY1, rewindSymbol1DivX2, rewindSymbol1DivY2, rewindSymbol1DivX3, rewindSymbol1DivY3);
  
  float rewindSymbol2DivX1 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol2DivY1 = rewindDivY + rewindDivHeight * 1/4;
  float rewindSymbol2DivX2 = rewindDivX + rewindDivWidth * 1/2;
  float rewindSymbol2DivY2 = rewindDivY + rewindDivHeight * 3/4;
  float rewindSymbol2DivX3 = rewindDivX + rewindDivWidth * 1/4;
  float rewindSymbol2DivY3 = rewindDivY + rewindDivHeight * 1/2;
  triangle(rewindSymbol2DivX1, rewindSymbol2DivY1, rewindSymbol2DivX2, rewindSymbol2DivY2, rewindSymbol2DivX3, rewindSymbol2DivY3);

float playPauseDivX = appWidth * 375 / paperWidth;
float playPauseDivY = appHeight * 1000 / paperHeight;
float playPauseDivWidth = appWidth * 50 / paperWidth;
float playPauseDivHeight = appHeight * 140 / paperHeight;
rect(playPauseDivX, playPauseDivY, playPauseDivWidth, playPauseDivHeight);
  float playSymbolDivX1 = playPauseDivX + playPauseDivWidth * 1/4;
  float playSymbolDivY1 = playPauseDivY + playPauseDivHeight * 1/4;
  float playSymbolDivX2 = playPauseDivX + playPauseDivWidth * 1/4;
  float playSymbolDivY2 = playPauseDivY + playPauseDivHeight * 3/4;
  float playSymbolDivX3 = playPauseDivX + playPauseDivWidth * 3/4;
  float playSymbolDivY3 = playPauseDivY + playPauseDivHeight * 1/2;
  triangle(playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);
  

float fastFowardDivX = appWidth * 425 / paperWidth;
float fastFowardDivY = appHeight * 1000 / paperHeight;
float fastFowardDivWidth = appWidth * 50 / paperWidth;
float fastFowardDivHeight = appHeight * 140 / paperHeight;
rect(fastFowardDivX, fastFowardDivY, fastFowardDivWidth, fastFowardDivHeight);
  float ffSymbol1DivX1 = fastFowardDivX + fastFowardDivWidth * 1/4;
  float ffSymbol1DivY1 = fastFowardDivY + fastFowardDivHeight * 1/4;
  float ffSymbol1DivX2 = fastFowardDivX + fastFowardDivWidth * 1/4;
  float ffSymbol1DivY2 = fastFowardDivY + fastFowardDivHeight * 3/4;
  float ffSymbol1DivX3 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol1DivY3 = fastFowardDivY + fastFowardDivHeight * 1/2;
  triangle(ffSymbol1DivX1, ffSymbol1DivY1, ffSymbol1DivX2, ffSymbol1DivY2, ffSymbol1DivX3, ffSymbol1DivY3);
  
  float ffSymbol2DivX1 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol2DivY1 = fastFowardDivY + fastFowardDivHeight * 1/4;
  float ffSymbol2DivX2 = fastFowardDivX + fastFowardDivWidth * 1/2;
  float ffSymbol2DivY2 = fastFowardDivY + fastFowardDivHeight * 3/4;
  float ffSymbol2DivX3 = fastFowardDivX + fastFowardDivWidth * 3/4;
  float ffSymbol2DivY3 = fastFowardDivY + fastFowardDivHeight * 1/2;
  triangle(ffSymbol2DivX1, ffSymbol2DivY1, ffSymbol2DivX2, ffSymbol2DivY2, ffSymbol2DivX3, ffSymbol2DivY3);

float nextDivX = appWidth * 475 / paperWidth;
float nextDivY = appHeight * 1000 / paperHeight;
float nextDivWidth = appWidth * 50 / paperWidth;
float nextDivHeight = appHeight * 140 / paperHeight;
rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
  float nextSymbol1DivX1 = nextDivX + nextDivWidth * 1/4;
  float nextSymbol1DivY1 = nextDivY + nextDivHeight * 1/4;
  float nextSymbol1DivX2 = nextDivX + nextDivWidth * 1/4;
  float nextSymbol1DivY2 = nextDivY + nextDivHeight * 3/4;
  float nextSymbol1DivX3 = nextDivX + nextDivWidth * 1/2;
  float nextSymbol1DivY3 = nextDivY + nextDivHeight * 1/2;
  triangle(nextSymbol1DivX1, nextSymbol1DivY1, nextSymbol1DivX2, nextSymbol1DivY2, nextSymbol1DivX3, nextSymbol1DivY3);
  
  float nextSymbol2DivX = nextDivX + nextDivWidth * 1/2;
  float nextSymbol2DivY = nextDivY + nextDivHeight * 1/4;
  float nextSymbol2DivWidth = nextDivWidth * 1/8;
  float nextSymbol2DivHeight = nextDivHeight * 1/2;
  rect(nextSymbol2DivX, nextSymbol2DivY, nextSymbol2DivWidth, nextSymbol2DivHeight);
