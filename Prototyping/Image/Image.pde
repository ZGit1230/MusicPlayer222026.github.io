/* Aspect Ratio
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArow = "..";
String dependanciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "SoccerBall";
String imageName2 = "Bike";
String imageName3 = "Orange";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//See Absolute Pathway: C:\Users\z.osman4\Documents\GitHub\MusicPlayer222026.github.io\Dependencies\Images
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArow + open + upArow + open + dependanciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExension;
String pathway2 = imageDirectory + imageName2 + fileExension;
String pathway3 = imageDirectory + imageName3 + fileExension;
//println(pathway);
//
PImage image1 = loadImage(pathway1);
int imageWidth1 = 1601;
int imageHeight1 = 1601;
PImage image2 = loadImage(pathway2);
int imageWidth2 = 860;
int imageHeight2 = 529;
PImage image3 = loadImage(pathway3);

println(float(imageWidth2)/ float(imageHeight2));

//
//Population: DIVs
int numberOfButtons = 10; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float image1DivX = beginningButtonSpace;
float image1DivY = appHeight * 10/200;
float image1DivWidth = appWidth * 1/4 - beginningButtonSpace * 0.25;
float image1DivHeight = appHeight * 1.5/5; //1+1.5=2.5, half of the total height

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
