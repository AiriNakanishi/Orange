void boxOpen() {
  if (buf_lux >= width/5 && boxopen1 == 0) {
    //println(1);
    //upfront 1
    buf_lux -= 3;
    buf_rux -= 3;
    buf_luy -= 4.5;
    buf_ruy -= 4.5;

    //upback 2
    bub_ldx += 3;
    bub_rdx += 3;
    bub_ldy -= 4.5;
    bub_rdy -= 4.5;
  } else if (buf_lux >= width/5-width/10 && boxopen2 == 0) {
    //println(2);
    boxopen1 = 1;
    //upfront 3
    buf_lux -= 3;
    buf_rux -= 3;
    buf_luy += 3;
    buf_ruy += 3;

    //upback 4
    bub_ldx += 0.9;
    bub_rdx += 0.9;
    bub_ldy += 0.9;
    bub_rdy += 0.9;
  } else if (buf_lux <= width/5-width/20) {
    //println(3);
    boxopen2 = 1;
    //upfront 5
    buf_lux += 3;
    buf_rux += 3;
    buf_luy += 3;
    buf_ruy += 3;
   
    //upback 6
    bub_ldx += 1.2;
    bub_rdx += 1.2;
    bub_ldy += 3;
    bub_rdy += 3;
  } 
}


void boxClose(){
  if (buf_lux >= width/5-width/10 && boxclose1 == 0) {
    //println(4);
    //upfront 5
    buf_lux -= 3;
    buf_rux -= 3;
    buf_luy -= 3;
    buf_ruy -= 3;
    
    //upback 6
    bub_ldx -= 1.2;
    bub_rdx -= 1.2;
    bub_ldy -= 3;
    bub_rdy -= 3;
  } else if (buf_lux <= width/5 && boxclose2 == 0) {
    //println(5);
    boxclose1 = 1;
    //upfront 3
    buf_lux += 3;
    buf_rux += 3;
    buf_luy -= 3;
    buf_ruy -= 3;

    //upback 4
    bub_ldx -= 0.9;
    bub_rdx -= 0.9;
    bub_ldy -= 0.9;
    bub_rdy -= 0.9;
  } else if (buf_lux <= width/5+width/20) {
    //println(6);
    boxclose1 = 2;
    boxclose2 = 1;
    //upfront 1
    buf_lux += 3;
    buf_rux += 3.45;
    buf_luy += 4.5;
    buf_ruy += 4.5;

    //upback 2
    bub_ldx -= 3.3;
    bub_rdx -= 3;
    bub_ldy += 4.5;
    bub_rdy += 4.5;
  }else {
   boxVisible2 = false; 
   boxVisible3 = true;
  }
}
