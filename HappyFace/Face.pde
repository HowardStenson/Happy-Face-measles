void faceDraw() {
  //Face Code
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  triangle(FixX11, FixY11, FixX12, FixY12, FixX13, FixY13);
  triangle(FixX21, FixY21, FixX22, FixY22, FixX23, FixY23);
  triangle(FixX31, FixY31, FixX32, FixY32, FixX33, FixY33);
  triangle(FixX41, FixY41, FixX42, FixY42, FixX43, FixY43);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
}//End faceDraw
