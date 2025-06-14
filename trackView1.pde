void trackView1() { //トラックの基本形
  backwheelView();
  cabinView();

  //front
  fill(track);
  stroke(0);
  strokeWeight(1);
  rect(tf_lux, tf_luy, tf_lengthx, tf_lengthy);
  ;

  //rightback
  fill(track);
  stroke(0);
  beginShape();
  vertex(trb_lux, trb_luy); //upleft
  vertex(trb_ldx, trb_ldy); //downleft
  vertex(trb_rdx, trb_rdy); //downright
  vertex(trb_rux, trb_ruy); //upright
  endShape(CLOSE);

  //up
  fill(track);
  stroke(0);
  beginShape();
  vertex(tu_lux, tu_luy); //upleft
  vertex(tu_ldx, tu_ldy); //downleft
  vertex(tu_rdx, tu_rdy); //downright
  vertex(tu_rux, tu_ruy);  //upright
  endShape(CLOSE);

  //rightfront
  fill(track);
  stroke(0);
  beginShape();
  vertex(trf_lux, trf_luy); //upleft
  vertex(trf_ldx, trf_ldy); //downleft
  vertex(trf_rdx, trf_rdy); //downright
  vertex(trf_rux, trf_ruy); //upright
  endShape(CLOSE);

  frontwheelView();
}

void cabinView() { //キャビンの描画
  //front
  fill(cabin);
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(cf_lux, cf_luy); //upleft
  vertex(cf_lmx, cf_lmy); //middleleft
  vertex(cf_ldx, cf_ldy); //downleft
  vertex(cf_rdx, cf_rdy); //downright
  vertex(cf_rux, cf_ruy);  //upright
  endShape(CLOSE);

  //up
  fill(cabin);
  stroke(0);
  beginShape();
  vertex(cu_lux, cu_luy); //upleft
  vertex(cu_ldx, cu_ldy); //downleft
  vertex(cu_rdx, cu_rdy); //downright
  vertex(cu_rux, cu_ruy);  //upright
  endShape(CLOSE);

  //window
  fill(window);
  stroke(0);
  beginShape();
  vertex(cw_lux, cw_luy); //upleft
  vertex(cw_ldx, cw_ldy); //downleft
  vertex(cw_rdx, cw_rdy); //downright
  vertex(cw_rux, cw_ruy);  //upright
  endShape(CLOSE);
}

void frontwheelView() { //タイヤの描画
  fill(0);
  stroke(0);
  strokeWeight(1);
  ellipse(w1_x, w1_y, w1_xlength, w1_ylength);
  fill(255);
  ellipse(w1_x, w1_y, w1_xlength-width/20, w1_ylength-width/20); //タイヤの中の白い丸

  fill(0);
  stroke(0);
  ellipse(w2_x, w2_y, w2_xlength, w2_ylength);
  fill(255);
  ellipse(w2_x, w2_y, w2_xlength-width/20, w2_ylength-width/20);
}

void backwheelView() {
  fill(0);
  stroke(0);
  strokeWeight(1);
  ellipse(w3_x, w3_y, w3_xlength, w3_ylength);
  fill(255);
  ellipse(w3_x, w3_y, w3_xlength-width/20, w3_ylength-width/20);

  fill(0);
  stroke(0);
  ellipse(w4_x, w4_y, w4_xlength, w4_ylength);
  fill(255);
  ellipse(w4_x, w4_y, w4_xlength-width/20, w4_ylength-width/20);
}

void trackinSide() { //trackinSide
  //infront
  fill(#888888);
  beginShape();
  vertex(tib_lux, tib_luy); //upleft
  vertex(tib_ldx, tib_ldy); //downleft
  vertex(tib_rdx, tib_rdy); //downright
  vertex(tib_rux, tib_ruy); //upright
  endShape(CLOSE);
}
