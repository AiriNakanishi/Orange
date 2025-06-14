void trackView2() { //トラックが上から降ってきてバウンドする
  if (sky == 0) {
    trackDefaulte();
    sky = 1;
    timer = 1000;
  }

  trackView1();

  if (sky == 1 && tf_luy <= width/4 + h) { //上から降ってくる
    //println("a");
    //荷台
    //front
    tf_luy += height/100;
    //upfront
    tu_luy += height/100;
    tu_ldy += height/100;
    tu_ruy += height/100;
    tu_rdy += height/100;
    //rightfront
    trf_luy += height/100;
    trf_ldy += height/100;
    trf_ruy += height/100;
    trf_rdy += height/100;
    //rightback
    trb_luy += height/100;
    trb_ldy += height/100;
    trb_ruy += height/100;
    trb_rdy += height/100;


    //キャビン
    //front
    cf_luy += height/100;
    cf_lmy += height/100;
    cf_ldy += height/100;
    cf_ruy += height/100;
    cf_rdy += height/100;
    //up
    cu_luy += height/100;
    cu_ldy += height/100;
    cu_ruy += height/100;
    cu_rdy += height/100;
    //window
    cw_luy += height/100;
    cw_ldy += height/100;
    cw_ruy += height/100;
    cw_rdy += height/100;
    //wheel
    w1_y += height/100;
    w2_y += height/100;
    w3_y += height/100;
    w4_y += height/100;

    //println(sky);
  } else if (sky == 1) {
    //println(sky);
    //println(tf_luy);
    //println(width/4);
    sky = 2;
    boyoyon.play();
  }

  //println(tf_luy);
  //println(width/4);
  //println(width/4 - width/10);

  if (sky == 2 && tf_luy >= width/4 - width/7 + h) { //上にあがる
    //荷台
    //front
    tf_luy -= height/100;
    //upfront
    tu_luy -= height/100;
    tu_ldy -= height/100;
    tu_ruy -= height/100;
    tu_rdy -= height/100;
    //rightfront
    trf_luy -= height/100;
    trf_ldy -= height/100;
    trf_ruy -= height/100;
    trf_rdy -= height/100;
    //rightback
    trb_luy -= height/100;
    trb_ldy -= height/100;
    trb_ruy -= height/100;
    trb_rdy -= height/100;


    //キャビン
    //front
    cf_luy -= height/100;
    cf_lmy -= height/100;
    cf_ldy -= height/100;
    cf_ruy -= height/100;
    cf_rdy -= height/100;
    //up
    cu_luy -= height/100;
    cu_ldy -= height/100;
    cu_ruy -= height/100;
    cu_rdy -= height/100;
    //window
    cw_luy -= height/100;
    cw_ldy -= height/100;
    cw_ruy -= height/100;
    cw_rdy -= height/100;
    //wheel
    w1_y -= height/100;
    w2_y -= height/100;
    w3_y -= height/100;
    w4_y -= height/100;
  } else if (sky == 2) {
    sky = 3;
  }

  if (sky == 3 && timer>0) {
    while (timer>0) {
      timer--;
    }
  } else if (sky == 3) {
    
    sky = 4;
    
  }else if (sky == 4 && tf_luy <= width/4 + h) { //下にさがる
    //荷台
    //front
    tf_luy += height/60;
    //upfront
    tu_luy += height/60;
    tu_ldy += height/60;
    tu_ruy += height/60;
    tu_rdy += height/60;
    //rightfront
    trf_luy += height/60;
    trf_ldy += height/60;
    trf_ruy += height/60;
    trf_rdy += height/60;
    //rightback
    trb_luy += height/60;
    trb_ldy += height/60;
    trb_ruy += height/60;
    trb_rdy += height/60;


    //キャビン
    //front
    cf_luy += height/60;
    cf_lmy += height/60;
    cf_ldy += height/60;
    cf_ruy += height/60;
    cf_rdy += height/60;
    //up
    cu_luy += height/60;
    cu_ldy += height/60;
    cu_ruy += height/60;
    cu_rdy += height/60;
    //window
    cw_luy += height/60;
    cw_ldy += height/60;
    cw_ruy += height/60;
    cw_rdy += height/60;
    //wheel
    w1_y += height/60;
    w2_y += height/60;
    w3_y += height/60;
    w4_y += height/60;
  } else if (sky == 4) {

    sky = 5;
    leave = frameCount;
    
  } else if (frameCount >= leave + 25 && sky == 5) {

    trackVisible2 = false;
    trackVisible3 = true;
    sky = 6;
    
  }
}



void trackDefaulte() { //最初にトラックを画面外に移動する
  //荷台
  //front
  tf_luy -= height;
  //upfront
  tu_luy -= height;
  tu_ldy -= height;
  tu_ruy -= height;
  tu_rdy -= height;
  //rightfront
  trf_luy -= height;
  trf_ldy -= height;
  trf_ruy -= height;
  trf_rdy -= height;
  //rightback
  trb_luy -= height;
  trb_ldy -= height;
  trb_ruy -= height;
  trb_rdy -= height;


  //キャビン
  //front
  cf_luy -= height;
  cf_lmy -= height;
  cf_ldy -= height;
  cf_ruy -= height;
  cf_rdy -= height;
  //up
  cu_luy -= height;
  cu_ldy -= height;
  cu_ruy -= height;
  cu_rdy -= height;
  //window
  cw_luy -= height;
  cw_ldy -= height;
  cw_ruy -= height;
  cw_rdy -= height;
  //wheel
  w1_y -= height;
  w2_y -= height;
  w3_y -= height;
  w4_y -= height;
}
