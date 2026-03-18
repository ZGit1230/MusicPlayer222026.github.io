/* Aspect Ratio
 */
//
//Display
fullScreen();
//
String[] imageName = new String[2];
String upArow = "..";
String dependenciesFolder = "Dependencies";
String imageFolder = "Images";
imageName[1] = "SoccerBall";
//imageName[2] = "Bike";
//imageName[3] = "Orange";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//See Absolute Pathway C:\Users\z.osman4\Documents\GitHub\MusicPlayer222026.github.io\Dependencies\Images
//See Relative Pathway Dependencies\Images
String imageDirectory = upArow + open + upArow + open + dependenciesFolder + open + imageFolder + open;
String[] pathway = new String[2];

int imageWidth2 = 860;
int imageHeight2 = 529;

//
//Loading Images

PImage[] image = new PImage[2];
for (int i=1; i<pathway.length; i++) {
  pathway[i] = imageDirectory + imageName[i] + fileExension;
  image[i] = loadImage(pathway[i]);
}

//
//Creating Images

float image1DivX = 1050;
float image1DivY = 900;
float image1DivWidth = 500;
float image1DivHeight = 100;

for (int i=1; i<pathway.length; i++) {
  image(image[i], image1DivX, image1DivY, image1DivWidth, image1DivHeight);
}
