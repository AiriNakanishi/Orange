void box1Reset() { //横置きの箱の座標を初期化
  //frontの初期値
  bf_lux = width/5;
  bf_luy = 2*height/5 + h;
  bf_lengthx = 2.5*width/5;
  bf_lengthy = 2.5*height/5;
  /*
  bf_ldx = width/5;
   bf_ldy = 2*height/5 + 2.5*height/5;
   bf_rux = width/5 + 2.5*width/5;
   bf_ruy = 2*height/5;
   bf_rdx = width/5 + 2.5*width/5;
   bf_rdy = 2*height/5 + 2.5*height/5;
   */

  //rightside
  brs_lux = 3.5*width/5;
  brs_luy = 2*height/5 + h;
  brs_ldx = width/5 + 2.5*width/5;
  brs_ldy = 2*height/5 + 2.5*height/5 + h;
  brs_rux = 3.5*width/5+width/10;
  brs_ruy = 2*height/5-height/20 + h;
  brs_rdx = 3.5*width/5+width/10;
  brs_rdy = 4.5*height/5-height/20 + h;

  //upfront
  buf_lux = width/5+width/20;
  buf_luy = 2*height/5-height/40 + h;
  buf_ldx = width/5;
  buf_ldy = 2*height/5 + h;
  buf_rux = 3.5*width/5+width/20;
  buf_ruy = 2*height/5-height/40 + h;
  buf_rdx = 3.5*width/5;
  buf_rdy = 2*height/5 + h;

  //upback
  bub_lux = width/5+width/10;
  bub_luy = 2*height/5-height/20 + h;
  bub_ldx = width/5+width/20;
  bub_ldy = 2*height/5-height/40 + h;
  bub_rux = 3.5*width/5+width/10;
  bub_ruy = 2*height/5-height/20 + h;
  bub_rdx = 3.5*width/5+width/20;
  bub_rdy = 2*height/5-height/40 + h;

  //infront
  bif_lux = width/5+width/20;
  bif_luy = 2*height/5-height/40 + h;
  bif_ldx = width/5;
  bif_ldy = 2*height/5 + h;
  bif_rux = 3.5*width/5+width/20;
  bif_ruy = 2*height/5-height/40 + h;
  bif_rdx = 3.5*width/5;
  bif_rdy = 2*height/5 + h;

  //inback
  bib_lux = width/5+width/10;
  bib_luy = 2*height/5-height/20 + h;
  bib_ldx = width/5+width/20;
  bib_ldy = 2*height/5-height/40 + h;
  bib_rux = 3.5*width/5+width/10;
  bib_ruy = 2*height/5-height/20 + h;
  bib_rdx = 3.5*width/5+width/20;
  bib_rdy = 2*height/5-height/40 + h;

  //mikan
  mikanSize = width/10;
  m_x = bf_lux + width/15;
  m_y = bf_luy + 2.5*height/5 - width/15;
  c_x = m_x;
  c_y = m_y - height/20;
  c_lex = width/80;
  c_ley = width/120;
}

void orangeReset() {
  orangeSize = width/8;
  orange_x = width/2;
  orange_y = -orangeSize;
  orangesemi = width/80;
}

void trackReset() {
  sky=0;

  //荷台の初期値
  //frontの初期値
  tf_lux = width/4;
  tf_luy = 2*height/6 + h;
  tf_lengthx = 2.5*width/5;
  tf_lengthy = 2.5*height/5;
  /*
  tf_ldx = width/4;
   tf_ldy = 2*height/6 + 2.5*height/5;
   tf_rux = width/4 + 2.5*width/5;
   tf_ruy = 2*height/6;
   tf_rdx = width/4 + 2.5*width/5;
   tf_rdy = 2*height/6 + 2.5*height/5;
   */

  //upfront
  tu_lux = width/4+width/10;
  tu_luy = 2*height/6-height/20 + h;
  tu_ldx = width/4;
  tu_ldy = 2*height/6 + h;
  tu_rux = width/4+2.5*width/5+width/10;
  tu_ruy = 2*height/6-height/20 + h;
  tu_rdx = width/4+2.5*width/5;
  tu_rdy = 2*height/6 + h;

  //rightfront
  trf_lux = width/4+2.5*width/5;
  trf_luy = 2*height/6 + h; //
  trf_ldx = width/4 + 2.5*width/5;
  trf_ldy = 2*height/6 + 2.5*height/5 + h;
  trf_rux = width/4 + width/2 + width/20;
  trf_ruy = 2*height/6-height/40 + h;
  trf_rdx = width/4 + 2.5*width/5 + width/20;
  trf_rdy = 2.25*height/6+2.25*height/5-height/40 + h;

  //rightback
  trb_lux = width/4 + width/2 + width/20;
  trb_luy = 2*height/6-height/40 + h;
  trb_ldx = width/4 + 2.5*width/5 + width/20;
  trb_ldy = 2.25*height/6+2.25*height/5-height/40 + h;
  trb_rux = width/4+2.5*width/5+width/10;
  trb_ruy = 2*height/6-height/20 + h; //
  trb_rdx = width/4+2.5*width/5+width/10;
  trb_rdy = 2.5*height/6 + 2*height/5 - height/20 + h;

  //in トラックの中の黒
  tib_lux = width/4+2.5*width/5;
  tib_luy = 2*height/6+height/50+y + h;
  tib_ldx = width/4 + 2.5*width/5;
  tib_ldy = 2*height/6 + 2.5*height/5+height/50+y + h;
  tib_rux = width/4+2.5*width/5+width/10;
  tib_ruy = 2*height/6-height/20+height/50+y + h;
  tib_rdx = width/4+2.5*width/5+width/10;
  tib_rdy = 2.5*height/6 + 2*height/5 - height/20+height/50+y + h;

  //キャビンの初期値
  //front
  cf_lux = width/10+width/30;
  cf_luy = 2*height/6 + height/7 + h;
  cf_lmx = width/13;
  cf_lmy = 2*height/6 + 3*height/11 + h;
  cf_ldx = width/13;
  cf_ldy = 2*height/6 + 2.5*height/5 + h;
  cf_rux = width/4;
  cf_ruy = 2*height/6 + height/7 + h;
  cf_rdx = width/4;
  cf_rdy = 2*height/6 + 2.5*height/5 + h;

  //up
  cu_lux = width/10+width/30+width/10;
  cu_luy = 2*height/6 + height/7 - height/20 + h;
  cu_ldx = width/10+width/30;
  cu_ldy = 2*height/6 + height/7 + h;
  cu_rux = width/4;
  cu_ruy = 2*height/6 + height/7 - height/20 + h;
  cu_rdx = width/4;
  cu_rdy = 2*height/6 + height/7 + h;

  //window
  cw_lux = cf_lux + width/80;
  cw_luy = cf_luy + height/50 ;
  cw_ldx = cf_lmx + width/40;
  cw_ldy = cf_lmy - height/80 ;
  cw_rux = cf_rux - width/80;
  cw_ruy = cf_ruy + height/50 ;
  cw_rdx = cf_rux - width/80;
  cw_rdy = cf_lmy - height/80;

  //wheel
  w1_x = width/4;
  w1_y = 2*height/6 + 2.5*height/5 + h;
  w1_xlength = width/9;
  w1_ylength =  width/9;
  w2_x = 3*width/5 - width/21;
  w2_y = 2*height/6 + 2.5*height/5 + h;
  w2_xlength = width/9;
  w2_ylength = width/9;
  w3_x = width/4 + width/8;
  w3_y = 2*height/6 + 2.5*height/5 - height/100 + h;
  w3_xlength = width/13;
  w3_ylength = width/13;
  w4_x = 3*width/5 - width/21 + width/8;
  w4_y = 2*height/6 + 2.5*height/5 - height/100 + h;
  w4_xlength = width/13;
  w4_ylength = width/13;
}


void box2Reset() { //縦置きの箱の座標を初期化
  //frontの初期値
  bf2_lux = bf_lux;
  bf2_luy = bf_luy + bf_lengthy - bf_lengthx;
  bf2_lengthx = bf_lengthy;
  bf2_lengthy = bf_lengthx; //ok

  //rightfront
  brf2_lux = bf2_lux + bf2_lengthx - width/25;
  brf2_luy = bf2_luy - width/60;
  brf2_ldx = bf2_lux + bf2_lengthx - width/25;
  brf2_ldy = bf2_luy + bf2_lengthy - width/60;
  brf2_rux = bf2_lux + bf2_lengthx;
  brf2_ruy = bf2_luy;
  brf2_rdx = bf2_lux + bf2_lengthx;
  brf2_rdy = bf2_luy + bf2_lengthy;

  //up
  bu2_lux = bub_lux;
  bu2_luy = bub_luy + bf_lengthy - 5*bf_lengthx/3 + bf_lengthy;
  bu2_ldx = bf2_lux;
  bu2_ldy = bf2_luy;
  bu2_rux = bu2_lux + bf_lengthy;
  bu2_ruy = bu2_luy;
  bu2_rdx = bu2_ldx + bf_lengthy;
  bu2_rdy = bf2_luy;

  //in
  bi2_lux = bu2_rdx;
  bi2_luy = bu2_rdy;
  bi2_ldx = bu2_rdx;
  bi2_ldy = bu2_rdy + bf2_lengthy;
  bi2_rux = bu2_rux;
  bi2_ruy = bu2_ruy;
  bi2_rdx = bu2_rux;
  bi2_rdy = bi2_ruy + bf_lengthx;

  //rightback
  brb2_x1 = bu2_rux - width/800; //右下
  brb2_y1 = bu2_ruy - width/900;
  brb2_x2 = brb2_x1 - width/40;
  brb2_y2 = brb2_y1 - width/60;
  brb2_x3 = brb2_x1 - width/40;
  brb2_y3 = bu2_ruy;

  //mikanmoji
  mikanSize2 = width/30; //20
  m2_x = bf2_lux + width/40;
  m2_y = bf2_luy + width/40;
  c2_x = bf2_lux + width/40 + width/100;
  c2_y = bf2_luy + width/40;
  c2_lex = width/300;
  c2_ley = width/180;
  
  
}
