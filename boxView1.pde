void boxView1(){//最初のサイズの段ボールを表示
  //upback
  fill(box);
  stroke(0);
  beginShape();
  vertex(bub_lux, bub_luy); //upleft
  vertex(bub_ldx, bub_ldy); //downleft
  vertex(bub_rdx, bub_rdy); //downright
  vertex(bub_rux, bub_ruy);  //upright
  endShape(CLOSE);

  //front
  fill(box);
  stroke(0);
  rect(bf_lux, bf_luy, bf_lengthx, bf_lengthy);

  //rightside
  fill(box);
  stroke(0);
  beginShape();
  vertex(brs_lux, brs_luy); //upleft
  vertex(brs_ldx, brs_ldy); //downleft
  vertex(brs_rdx, brs_rdy); //downright
  vertex(brs_rux, brs_ruy); //upright
  endShape(CLOSE);

  //upfront
  fill(box);
  stroke(0);
  beginShape();
  vertex(buf_lux, buf_luy); //upleft
  vertex(buf_ldx, buf_ldy); //downleft
  vertex(buf_rdx, buf_rdy); //downright
  vertex(buf_rux, buf_ruy);  //upright
  endShape(CLOSE);

  //箱のみかん
  fill(#FFC903);
  circle(m_x, m_y,mikanSize);
  fill(#2e8b57);
  ellipse(c_x,c_y,c_lex,c_ley);

  
}


void boxifSide() { //boxinfrontSide
  //infront
  noStroke();
  fill(#583133);
  beginShape();
  vertex(bif_lux, bif_luy); //upleft
  vertex(bif_ldx, bif_ldy); //downleft
  vertex(bif_rdx, bif_rdy); //downright
  vertex(bif_rux, bif_ruy); //upright
  endShape(CLOSE);
}

void boxibSide() { //boxinbackSide
  noStroke();
  fill(#583133);
  beginShape();
  vertex(bib_lux, bib_luy); //upleft
  vertex(bib_ldx, bib_ldy); //downleft
  vertex(bib_rdx, bib_rdy); //downright
  vertex(bib_rux, bib_ruy); //upright
  endShape(CLOSE);
}
