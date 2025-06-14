void box2View() {
  
  //infront
  fill(#583133);
  beginShape();
  vertex(bi2_lux, bi2_luy); //upleft
  vertex(bi2_ldx, bi2_ldy); //downleft
  vertex(bi2_rdx, bi2_rdy); //downright
  vertex(bi2_rux, bi2_ruy); //upright
  endShape(CLOSE);

  orangeView2();

  //front
  fill(box);
  stroke(0);
  strokeWeight(1);
  rect(bf2_lux, bf2_luy, bf2_lengthx, bf2_lengthy);

  //rightback
  fill(box);
  stroke(0);
  triangle(brb2_x1, brb2_y1, brb2_x2, brb2_y2, brb2_x3, brb2_y3);

  //up
  fill(box);
  stroke(0);
  beginShape();
  vertex(bu2_lux, bu2_luy); //upleft
  vertex(bu2_ldx, bu2_ldy); //downleft
  vertex(bu2_rdx, bu2_rdy); //downright
  vertex(bu2_rux, bu2_ruy);  //upright
  endShape(CLOSE);

  //rightfront
  fill(box);
  stroke(0);
  beginShape();
  vertex(brf2_lux, brf2_luy); //upleft
  vertex(brf2_ldx, brf2_ldy); //downleft
  vertex(brf2_rdx, brf2_rdy); //downright
  vertex(brf2_rux, brf2_ruy); //upright
  endShape(CLOSE);


  //箱のみかん
  //rotate(radians(90));
  fill(#FFC903);
  circle(m2_x, m2_y,mikanSize2);
  fill(#2e8b57);
  ellipse(c2_x,c2_y,c2_lex,c2_ley);
  
  
  trackfrontView();
}
