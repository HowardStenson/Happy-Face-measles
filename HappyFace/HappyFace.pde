//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float FixX11, FixY11, FixX12, FixY12, FixX13, FixY13;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;
void setup() {
  size (900, 600);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
 buttonX = width*15/16;
 buttonY = height*0/14;
 buttonWidth = width*1/16;
  buttonHeight = height*1/14;
 yellow = #F3FC03;
 purple = #FC03FC;
  //
  population();
  //
  //faceDraw();
  background(0) ;
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup

void draw() {
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/-70, height*1/40);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  //triangle(FixX11, FixY11, FixX12, FixY12, FixX13, FixY13);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  if (mouseX>buttonX && mouseX<width && mouseY>0 && mouseY<buttonHeight) { //Button Hoverover
  buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  fill(buttonColour); //Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if (mouseX>buttonX && mouseX<width && mouseY>0 && mouseY<buttonHeight) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
