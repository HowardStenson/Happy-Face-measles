void population() {
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  //
  leftEyeX = width*3/8;
  leftEyeY = height*1/4;
  leftEyeDiameter = height/7;
  rightEyeX = width*5/8;
  rightEyeY = leftEyeY;
  rightEyeDiameter = leftEyeDiameter;
  //
  noseX1 = width/2;
  noseY1 = height*2/5;
  noseX2 = width*7/16;
  noseY2 = height*6/10;
  noseX3 = width*9/16;
  noseY3 = noseY2;
  //
  FixX11 = width*1/6 ;
  FixY11 =height*1/300;
  FixX12 = width*14/32 ;
  FixY12 = height*1/300;
  FixX13 = width*1/6 ;
  FixY13 = height*10/20 ;
  FixX21 = width*50/60 ;
  FixY21 = height*1/300 ;
  FixX22 = width*23/40;
  FixY22 = height*1/300 ;
  FixX23 = width*50/60;
  FixY23 = height*10/20;
  FixX31 = width*50/60;
  FixY31 = height*1/2; 
  FixX32 = width*23/40;
  FixY32 = height*300/300;
  FixX33 = width*50/60 ;
  FixY33 = height*20/20;
  FixX41 = width*1/6 ;
  FixY41 = height*150/300;
  FixX42 = width*14/32;
  FixY42 = height*300/300;
  FixX43 = width*1/6;
  FixY43 = height*20/20;
  //
  pupliX1 = width*3/8;
  pupliY1 = height*1/4;
  pupliDiameter1 = height/8 ;
  pupliX2 = width*5/8;
  pupliY2 = leftEyeY ;
  pupliDiameter2 = height/8 ;
  //
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 15;
  reset = 1;
  titleFont = createFont ("Harrington", 55);
  //
}//End population
