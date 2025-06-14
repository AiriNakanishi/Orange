void orangeView1() {
  stroke(0);
  strokeWeight(1);
  if (orangeVisible1) {
    fill(orange);
    ellipse(orange_x, orange_y, orangeSize, orangeSize);
    orange_x = width/2;
    orange_y += 8;
    
    if (orange_y > 2*height/5 + height/5) {
      orangeVisible1 = false;
      delay(1000);
      boxopen1 = 2;
      boxopen2 = 2;
    }
  }
}

void orangeView2() {
  stroke(0);
  strokeWeight(1);
  if (orangeVisible2) {
    if(sound == 1){
       boyoyon2.play();
       sound = 2;
    }

    fill(orange);
    ellipse(orange_x, orange_y, orangeSize, orangeSize);
    orange_x += width/300;
    
    orange_y -= orangesemi;
    orangesemi -= orangesemi/40;
    
    if (orange_x >= width - 200) {
      //orangeVisible2 = false;
      moveServo2();
      boyoyon2.close();
      
    }
  }
}
