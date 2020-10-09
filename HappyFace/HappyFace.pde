//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float FixX11, FixY11, FixX12, FixY12, FixX13, FixY13;
float FixX21, FixY21, FixX22, FixY22, FixX23, FixY23;
float FixX31, FixY31, FixX32, FixY32, FixX33, FixY33;
float FixX41, FixY41, FixX42, FixY42, FixX43, FixY43; 
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color black = #030303;
color measlesColors = red;
color triagles = black ;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
float measlesX2, measlesY2, measlesDiameter2;
int buttonX, buttonY, buttonWidth, buttonHeight ;
color buttonColour, yellow, purple;
String quit = "X"; 
PFont titleFont;
color quitButtonpurple = #2C08FF ;
color quitButtonColor = quitButtonpurple ;
float pupliX1, pupliY1, pupliDiameter1 ;
float pupliX2, pupliY2, pupliDiameter2 ;

void setup() {
  size (900, 600);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
 String[] fontList = PFont.list(); //To list fonts available on OS
println("Start of Console");
printArray(fontList); 
 buttonX = width*15/16;
 buttonY = height*0/14;
 buttonWidth = width*1/16;
  buttonHeight = height*1/14;
 yellow = #F3FC03;
 purple = #FC03FC;
  //
  population();
  //
  background(0) ;
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup
void draw() {
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/-70, height*1/40);
  measlesX2 = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY2 = random(height);
  measlesDiameter2 = random(height*1/-70, height*1/40);
  fill(measlesColors);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter) ;
  ellipse(measlesX2, measlesY2, measlesDiameter2, measlesDiameter2) ;
  fill(colorReset);
  //ellipse(pupliX1, pupliY1, pupliDiameter1);
  //ellipse(pupliX2, pupliY2, pupliDiameter2);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
 triangles();
  //
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
    fill(0);
  textAlign(CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 50) ;
  text(quit, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset
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
