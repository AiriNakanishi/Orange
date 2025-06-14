void boxView5() { //縦向きの段ボールがトラックから飛び出す
    box2View();
    if(bf2_lux <= tf_lux + tf_lengthx + width/50 && boxmove1 == 2){
    //front
    bf2_lux += width/400;

    //rightfront
    brf2_lux += width/400;
    brf2_ldx += width/400;
    brf2_rux += width/400;
    brf2_rdx += width/400;

    //rightback
    brb2_x1 += width/400;
    brb2_x2 += width/400;
    brb2_x3 += width/400;

    //up
    bu2_lux += width/400;
    bu2_ldx += width/400;
    bu2_rux += width/400;
    bu2_rdx += width/400;

    //infront
    bi2_lux += width/400;
    bi2_ldx += width/400;
    bi2_rux += width/400;
    bi2_rdx += width/400;

    //mikanmoji
    m2_x += width/400;
    c2_x += width/400;
    
    }else if(bf2_luy + bf2_lengthy <= 4.5*height/5){
      //front
    bf2_luy += height/500;

    //rightfront
    brf2_luy += height/500;
    brf2_ldy += height/500;
    brf2_ruy += height/500;
    brf2_rdy += height/500;

    //rightback
    brb2_y1 += height/500;
    brb2_y2 += height/500;
    brb2_y3 += height/500;

    //up
    bu2_luy += height/500;
    bu2_ldy += height/500;
    bu2_ruy += height/500;
    bu2_rdy += height/500;

    //infront
    bi2_luy += height/500;
    bi2_ldy += height/500;
    bi2_ruy += height/500;
    bi2_rdy += height/500;
    
    //mikanmoji
    m2_y += height/500;
    c2_y += height/500;

    boxmove1 = 3;
    boxmove2 = 2;
    }else if (boxmove1 == 3) {
    if (bf2_luy > width/7) {
      boxBig();

      //front
      bf2_lux -= width/120;
      bf2_luy -= height/100;

      //rightfront
      brf2_lux -= width/120;
      brf2_luy -= height/100;
      brf2_ldx -= width/120;
      brf2_ldy -= height/100;
      brf2_rux -= width/120;
      brf2_ruy -= height/100;
      brf2_rdx -= width/120;
      brf2_rdy -= height/100;

      //rightback
      brb2_x1 -= width/120;
      brb2_y1 -= height/100;
      brb2_x2 -= width/120;
      brb2_y2 -= height/100;
      brb2_x3 -= width/120;
      brb2_y3 -= height/100;


      //up
      bu2_lux -= width/120;
      bu2_luy -= height/100;
      bu2_ldx -= width/120;
      bu2_ldy -= height/100;
      bu2_rux -= width/120;
      bu2_ruy -= height/100;
      bu2_rdx -= width/120;
      bu2_rdy -= height/100;

      //infront
      bi2_lux -= width/120;
      bi2_luy -= height/100;
      bi2_ldx -= width/120;
      bi2_ldy -= height/100;
      bi2_rux -= width/120;
      bi2_ruy -= height/100;
      bi2_rdx -= width/120;
      bi2_rdy -= height/100;

      //mikan
      m2_x -= width/120;
      m2_y -= height/100;
      c2_x -= width/120;
      c2_y -= height/100;

      boxmove2 = 3;
    } else if (boxmove1 == 3) {
      //delay(500);
      boxmove1 = 4;
      boxmove2 = 4;
    }
  }
  if (boxmove2 == 4) {
    orangeSize = width/8;
    orange_x = bf2_lux + 2*orangeSize;
    orange_y = brf2_ldy - height/20;
    orangeVisible2 = true;

    boxmove2 = 5;
  }
}
