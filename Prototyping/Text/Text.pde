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

String title = "Glen Quagmire";

// Fonts from OS

println("Start of consoles"); // Error if console memory is not enough
String[] fontList = PFont.list(); // Lists all fonts avalible on the system
printArray(fontList); // Lists all possible fonts to chose, the createFont
// Tools > Create Font > Find Font > Do NOT press ok, known conflict between loadFont() and createFont()

float fontSize = appHeight;
println(fontSize);
PFont font;
String nirmalaUIBold = "Nirmala UI Bold";
font = createFont(nirmalaUIBold, fontSize);

float fontSizeNirmalaUIBold = 30;
float divHeightNirmalaUIBold = authorDivHeight;
float nirmalaUIBoldAspectRatio = fontSizeNirmalaUIBold / divHeightNirmalaUIBold; // <1
fontSize = authorDivWidth * nirmalaUIBoldAspectRatio;
println(fontSize);

color blackInk = #000000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;

fill(blackInk);

textFont(font, fontSize);
text(title, authorDivX, authorDivY, authorDivWidth, authorDivHeight);

//Strings, Text, Literal
//
// Fonts from OS
//
// Aspect Ratio for Harrington
//
// Drawing Text
//
