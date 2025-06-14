void allboxView() { //段ボールの描画
  strokeWeight(1);
  if (boxVisible1) {
    boxView1();
  }
  if (boxVisible2) {
    boxView2();
  }
  if (boxVisible3) {
    boxView3();
  }
  if (boxVisible4) {
    boxView4();
  }
  if(boxVisible5){
   boxView5(); 
  }
}

void alltrackView() {
  strokeWeight(1);
  if (trackVisible2) {
    trackView2();
  }
  if (trackVisible3) {
    trackView3();
  }
  if(trackVisible4){
   trackView4(); 
  }
}


void trackfrontView() { //箱をトラックに入れるときに箱の前にトラックのfront部分を描画する
  if (boxmove2 >= 1 || boxVisible5) {
    //println("trackfrontView");
    //front
    fill(track);
    stroke(0);
    strokeWeight(1);
    rect(tf_lux, tf_luy, tf_lengthx, tf_lengthy);

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
}
