println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population using unitless ratios (i.e. millimeters to pixels)
int paperWidth = 400; //Best Practice: local variables use to make DIV Variables
int paperHeight = 300; //MrM #'s, students must use their own
float stopDivX = appWidth * 100 / paperWidth;
float stopDivY = appHeight * 75 / paperHeight;
float stopDivWidth = appWidth * 200 / paperWidth;
float stopDivHeight = appHeight * 150 / paperHeight;
//
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight );
//

float stopSymbolDivX = stopDivX + stopDivWidth * 1/4;
float stopSymbolDivY = stopDivY + stopDivHeight * 1/4;
float stopSymbolDivWidth = stopDivWidth * 1/2;
float stopSymbolDivHeight = stopDivHeight * 1/2;

rect(stopSymbolDivX, stopSymbolDivY, stopSymbolDivWidth, stopSymbolDivHeight);

float playSymbolDivX1 = stopDivX + stopDivWidth * 1/4;
float playSymbolDivY1 = stopDivY + stopDivHeight * 1/4;
float playSymbolDivX2 = stopDivX + stopDivWidth * 1/4;
float playSymbolDivY2 = stopDivY + stopDivHeight * 3/4;
float playSymbolDivX3 = stopDivX + stopDivWidth * 3/4;
float playSymbolDivY3 = stopDivY + stopDivHeight * 1/2;

triangle(playSymbolDivX1, playSymbolDivY1, playSymbolDivX2, playSymbolDivY2, playSymbolDivX3, playSymbolDivY3);
