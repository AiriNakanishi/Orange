void trackOpen() {
  if (trf_rux > width/4+2.49*width/5) {
    //rightfront
    trf_rux -= 2.25;
    trf_ruy += 2.25;
    trf_rdx -= 2.25;
    trf_rdy += 2.25;

    //rightback
    trb_lux += 2.25;
    trb_luy += 0.675;
    trb_ldx += 2.25;
    trb_ldy += 0.675;

    trackopen1 = 1;
  } else if (trb_lux < width/4+3.2*width/5 && trackopen1 == 1) {
    //rightfront
    trf_rux -= 1.05;
    trf_ruy -= 0.75;
    trf_rdx -= 1.05;
    trf_rdy -= 0.75;

    //rightback
    trb_lux += 1.5;
    trb_luy -= 1.2;
    trb_ldx += 1.5;
    trb_ldy -= 1.2;

    trackopen2 = 1;
  } else if (trb_lux > width/4+2.85*width/5 && trackopen2 == 1) {
    //rightfront
    trf_rux -= 1;
    trf_ruy -= 0.8;
    trf_rdx -= 1;
    trf_rdy -= 0.8;

    //rightback
    trb_lux -= 1.5;
    trb_luy -= 0.7;
    trb_ldx -= 1.5;
    trb_ldy -= 0.7;

    trackopen1 = 2;
  } else {
    boxVisible4 = true;
    boxVisible1 = false;
  }
}

void trackClose() {
  if (trf_rux <= width/4+2.2*width/5) {
    //println(2);
    //rightfront
    trf_rux += 1;
    trf_ruy += 0.8;
    trf_rdx += 1;
    trf_rdy += 0.8;

    //rightback
    trb_lux += 1;
    trb_luy += 0.5;
    trb_ldx += 1;
    trb_ldy += 0.5;

    trackclose1=1;
  }
  /*
  else if (trf_rux <= width/4+2.49*width/5) {
   //rightfront
   trf_rux += 0.4;
   trf_ruy += 0.3;
   trf_rdx += 0.4;
   trf_rdy += 0.3;
   
   //rightback
   trb_lux -= 0.6;
   trb_luy += 0.3;
   trb_ldx -= 0.6;
   trb_ldy += 0.3;
   }
   else if (trf_rux <= width/4 + width/2 + width/20) {
   //rightfront
   trf_rux += 1;
   trf_ruy -= 1;
   trf_rdx += 1;
   trf_rdy -= 1;
   
   //rightback
   trb_lux -= 1;
   trb_luy -= 0.3;
   trb_ldx -= 1;
   trb_ldy -= 0.3;
   
   //trackopen1=1;
   } */

  else if (trackclose1 == 1) {

    leave = frameCount;
    trackclose1 = 2;
  } else if (frameCount >= leave + 10 && trackclose1 == 2) {
    if (sound == 0) {
      engine.play();
      sound = 1;
    }
    delay(1000);

    trackVisible4 = true;
    trackVisible3 = false;
    trackclose1 = 3;
  }
}
