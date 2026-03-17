/* Aspect Ratio
 */
//
//Display
fullScreen();
//
String upArow = "..";
String dependenciesFolder = "Dependencies";
String imageFolder = "Images";
String imageName1 = "SoccerBall";
String imageName2 = "Bike";
String imageName3 = "Orange";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//See Absolute Pathway C:\Users\z.osman4\Documents\GitHub\MusicPlayer222026.github.io\Dependencies\Images
//See Relative Pathway Dependencies\Images
String imageDirectory = upArow + open + upArow + open + dependenciesFolder + open + imageFolder + open;
String pathway1, pathway2, pathway3;
PImage image1, image2, image3;
for (int i=0; i<=2; i++) {
  pathway[i] = imageDirectory + imageName[i] + fileExension;
  image[i] = loadImage(pathway[i]);
}
//String pathway1 = imageDirectory + imageName1 + fileExension;
//String pathway2 = imageDirectory + imageName2 + fileExension;
//String pathway3 = imageDirectory + imageName3 + fileExension;
//
//image1 = loadImage(pathway1);
//image2 = loadImage(pathway2);
//image3 = loadImage(pathway3);
//
for (int i=1; i<=3; i++) {
  image(image1, 0, 0);
  image(image2, 0, 0);
  image(image3, 0, 0);
}
