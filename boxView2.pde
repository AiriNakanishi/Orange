void boxView2() { //段ボールが開いてみかんが入ったら閉まる
  boxifSide();
  boxibSide();
  if (boxopen1 == 2) { //みかんが箱に入ったら
    
    boxClose();
  } else {
    boxOpen();
  }

  //upback
  fill(box);
  stroke(0);
  beginShape();
  vertex(bub_lux, bub_luy); //upleft
  vertex(bub_ldx, bub_ldy); //downleft
  vertex(bub_rdx, bub_rdy); //downright
  vertex(bub_rux, bub_ruy);  //upright
  endShape(CLOSE);

  if (boxopen1 == 1 || (boxopen1 == 2 && boxclose1 < 2)) {
    boxibSide();
    boxifSide();
  }

  orangeView1(); //落下するみかんの描画

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
  circle(m_x, m_y,mikanSize); //176,528
  fill(#2e8b57);
  ellipse(c_x,c_y,c_lex,c_ley);
}
