void trackView4() { //トラックが扉を開けたままちょっと右に行ってから左に行く
  
  
  trackView1();
  trackinSide();


  if (ground == 0 && tf_lux <= width/4 + width/20) { //右に行く
    //荷台
    //front
    tf_lux += width/500;
    //upfront
    tu_lux += width/500;
    tu_ldx += width/500;
    tu_rux += width/500;
    tu_rdx += width/500;
    //rightfront
    trf_lux += width/500;
    trf_ldx += width/500;
    trf_rux += width/500;
    trf_rdx += width/500;
    //rightback
    trb_lux += width/500;
    trb_ldx += width/500;
    trb_rux += width/500;
    trb_rdx += width/500;


    //キャビン
    //front
    cf_lux += width/500;
    cf_lmx += width/500;
    cf_ldx += width/500;
    cf_rux += width/500;
    cf_rdx += width/500;
    //up
    cu_lux += width/500;
    cu_ldx += width/500;
    cu_rux += width/500;
    cu_rdx += width/500;


    //window
    cw_lux += width/500;
    cw_ldx += width/500;
    cw_rux += width/500;
    cw_rdx += width/500;
    //wheel
    w1_x += width/500;
    w2_x += width/500;
    w3_x += width/500;
    w4_x += width/500;
    //inSide
    tib_lux += width/500;
    tib_ldx += width/500;
    tib_rux += width/500;
    tib_rdx += width/500;

    leave = frameCount;
  } else if (ground == 0) {
    delay(1000);
    ground = 1;
    box2Reset();
  } else if (ground == 1 && tf_lux >= -width) { //左に行く

    boxVisible5 = true;

    //荷台
    //front
    tf_lux -= width/100;
    //upfront
    tu_lux -= width/100;
    tu_ldx -= width/100;
    tu_rux -= width/100;
    tu_rdx -= width/100;
    //rightfront
    trf_lux -= width/100;
    trf_ldx -= width/100;
    trf_rux -= width/100;
    trf_rdx -= width/100;
    //rightback
    trb_lux -= width/100;
    trb_ldx -= width/100;
    trb_rux -= width/100;
    trb_rdx -= width/100;


    //キャビン
    //front
    cf_lux -= width/100;
    cf_lmx -= width/100;
    cf_ldx -= width/100;
    cf_rux -= width/100;
    cf_rdx -= width/100;
    //up
    cu_lux -= width/100;
    cu_ldx -= width/100;
    cu_rux -= width/100;
    cu_rdx -= width/100;


    //window
    cw_lux -= width/100;
    cw_ldx -= width/100;
    cw_rux -= width/100;
    cw_rdx -= width/100;
    //wheel
    w1_x -= width/100;
    w2_x -= width/100;
    w3_x -= width/100;
    w4_x -= width/100;
    //inSide
    tib_lux -= width/100;
    tib_ldx -= width/100;
    tib_rux -= width/100;
    tib_rdx -= width/100;
    
    
    
  } else if (ground == 1) {
    //println(mikanSize);
    engine.close();
    
    ground = 2;
  }
}
