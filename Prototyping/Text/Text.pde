/* Aspect Ratio
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

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

String title = "This is a Label.";

// Fonts from OS

println("Start of consoles"); // Error if console memory is not enough
String[] fontList = PFont.list(); // Lists all fonts avalible on the system
printArray(fontList); // Lists all possible fonts to chose, the createFont
// Tools > Create Font > Find Font > Do NOT press ok, known conflict between loadFont() and createFont()

float fontSize1 = appHeight;
float fontSize2 = appHeight;
float fontSize3 = appHeight;
float fontSize4 = appHeight;

println(fontSize1);
PFont font;
String nirmalaUIBold = "Nirmala UI Bold";
font = createFont(nirmalaUIBold, fontSize1);

float fontSizeNirmalaUIBold = 30;
float divHeightNirmalaUIBold = authorDivHeight;
float nirmalaUIBoldAspectRatio = fontSizeNirmalaUIBold / divHeightNirmalaUIBold; // <1
float textAdjustment = 0.9;
fontSize1 = authorDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
fontSize2 = nameDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
fontSize3 = timerDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
fontSize4 = maxTimeDivHeight * nirmalaUIBoldAspectRatio * textAdjustment;
println(fontSize1);

color blackInk = #000000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;

fill(blackInk);

float constantDecrease = 0.99;
int iWhile = 0;
textAlign(CENTER, TOP);
textFont(font, fontSize1);
while (textWidth(title) > authorDivWidth) {
  //print("Hello1"); Scary Larry infinity loop oh no scary oh ow oww
  iWhile++;
  if (iWhile>1000) {
    println("Infinite WHILE loop");
    exit();
  }
  fontSize1 *= 0.99;
  textFont(font, fontSize1);
};
text(title, authorDivX, authorDivY, authorDivWidth, authorDivHeight);

textFont(font, fontSize2);
iWhile = 0;
while (textWidth(title) > nameDivWidth) {
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
text(title, nameDivX, nameDivY, nameDivWidth, nameDivHeight);

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
