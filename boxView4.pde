void boxView4() { //トラックの中に段ボールを入れる
  boxView1();

  if (bf_lux <= width/4 + 2.5*width/5 + width/20 && boxmove1 == 0) {
    //front
    bf_lux += width/300;

    //rightside
    brs_lux += width/300;
    brs_ldx += width/300;
    brs_rux += width/300;
    brs_rdx += width/300;

    //upfront
    buf_lux += width/300;
    buf_ldx += width/300;
    buf_rux += width/300;
    buf_rdx += width/300;

    //upback
    bub_lux += width/300;
    bub_ldx += width/300;
    bub_rux += width/300;
    bub_rdx += width/300;

    //infront
    bif_lux += width/300;
    bif_ldx += width/300;
    bif_rux += width/300;
    bif_rdx += width/300;

    //mikanmoji
    m_x += width/300;
    c_x += width/300;
  } else if ((bf_luy + bf_lengthy) >= 2*height/6 + 2.5*height/5 + y + h && boxmove2 == 0) {
    boxmove1 = 1;
    //println(bf_lengthy);
    //front
    bf_luy -= height/300;

    //rightside
    brs_luy -= height/300;
    brs_ldy -= height/300;
    brs_ruy -= height/300;
    brs_rdy -= height/300;

    //upfront
    buf_luy -= height/300;
    buf_ldy -= height/300;
    buf_ruy -= height/300;
    buf_rdy -= height/300;

    //upback
    bub_luy -= height/300;
    bub_ldy -= height/300;
    bub_ruy -= height/300;
    bub_rdy -= height/300;

    //infront
    bif_luy -= height/300;
    bif_ldy -= height/300;
    bif_ruy -= height/300;
    bif_rdy -= height/300;

    //mikanmoji
    m_y -= height/300;
    c_y -= height/300;
  } else if (bf_lux >= 2.5*width/5) {
    boxmove2 = 1;
    //front
    bf_lux -= width/300;

    //rightside
    brs_lux -= width/300;
    brs_ldx -= width/300;
    brs_rux -= width/300;
    brs_rdx -= width/300;

    //upfront
    buf_lux -= width/300;
    buf_ldx -= width/300;
    buf_rux -= width/300;
    buf_rdx -= width/300;

    //upback
    bub_lux -= width/300;
    bub_ldx -= width/300;
    bub_rux -= width/300;
    bub_rdx -= width/300;

    //infront
    bif_lux -= width/300;
    bif_ldx -= width/300;
    bif_rux -= width/300;
    bif_rdx -= width/300;

    //mikanmoji
    m_x -= width/300;
    c_x -= width/300;
  } else if (boxmove2 == 1) {
    boxmove1 = 2;
    boxmove2 = 2;
    boxVisible4 = false;
  }
}
