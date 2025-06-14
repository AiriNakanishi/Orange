void boxView3(){ //蓋が閉まった後、サイズを小さくしながら右下に移動する
  boxView1();
  
  if(bf_luy < height/1.4){
  boxSmall();
  
  //front
  bf_lux += width/100;
  bf_luy += height/100;

  //rightside
  brs_lux += width/100;
  brs_luy += height/100;
  brs_ldx += width/100;
  brs_ldy += height/100;
  brs_rux += width/100;
  brs_ruy += height/100;
  brs_rdx += width/100;
  brs_rdy += height/100;
  
  //upfront
  buf_lux += width/100;
  buf_luy += height/100;
  buf_ldx += width/100;
  buf_ldy += height/100;
  buf_rux += width/100;
  buf_ruy += height/100;
  buf_rdx += width/100;
  buf_rdy += height/100;
  
  
  //upback
  bub_lux += width/100;
  bub_luy += height/100;
  bub_ldx += width/100;
  bub_ldy += height/100;
  bub_rux += width/100;
  bub_ruy += height/100;
  bub_rdx += width/100;
  bub_rdy += height/100;
  
  //infront
  bif_lux += width/100;
  bif_luy += height/100;
  bif_ldx += width/100;
  bif_ldy += height/100;
  bif_rux += width/100;
  bif_ruy += height/100;
  bif_rdx += width/100;
  bif_rdy += height/100;
  
  //mikanmoji
  m_x += width/100;
  m_y += height/100;
  c_x += width/100;
  c_y += height/100;

  
  //println(height/f_luy);
  
  }else{
   trackVisible2 = true;
   boxVisible3 = false;
   boxVisible1 = true;
  }
}
