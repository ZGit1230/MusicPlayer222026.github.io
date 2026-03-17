/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArow = "../../";
String dependanciesFolder = "Dependencies";
String imageFolder = "Images";
String imageName = "Orange";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//See Absolute Pathway C:\Users\z.osman4\Documents\GitHub\MusicPlayer222026.github.io\Dependencies\Images
//See Relative Pathway Dependencies\Images
String pathway = upArow + open + upArow + open + dependanciesFolder + open + imageFolder + open + imageName + fileExension;
//
print(pathway);
PImage image1 = loadImage(pathway);
//
image(image1, 0, 0);
