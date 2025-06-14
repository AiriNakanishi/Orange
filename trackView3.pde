void trackView3() { //トラックのドアを開けて段ボールを入れて閉める
  trackinSide();
  
  if (boxmove2 == 0) {
    trackOpen();
  }
  trackView1();
  if (trackopen1 == 2) {
    trackinSide();
  }
  if (boxmove2 == 2) {
    trackClose();
  }
}
