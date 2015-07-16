void bump () {
  if (posx < rad+s) {
    posx+=5;
    movex = -movex;
    //CONDITIONS FOR BAR 1
    if (posy > height/2) {
      hitColor = bar1;
    }
    // CONDTIONS FOR BAR 2
    else if (posy < height/2) {
      hitColor = bar2;
    }
  }
  else if (posx > width-(rad+s)) {
    posx-=5;
    movex = -movex;
    // CONDITIONS FOR BAR 3
    if (posy > height/2) {
      hitColor = bar3;
    }
    //CONDITIONS FOR BAR 4
    else if (posy < height/2) {
      hitColor = bar4;
    }
  }
  else if (posy < rad+s) {
    movey = -movey;
    posy+=5;
    // CONDTIONS FOR BAR 5
    if (posx > width/2) {
      hitColor = bar5;
    } 
    //CONDITIONS FOR BAR 6
    else if (posx < width/2) {
      hitColor = bar6;
    }
  }
  else if (posy > height-(rad+s)) {
    posy-=5;
    movey = -movey;
    // CONDITIONS FOR BAR 7
    if (posx < width/2) {
      hitColor = bar7;
    }
    else if (posx > width/2) {
      // CONDITIONS FOR BAR 8
      hitColor = bar8;
    }
  }
  if (player == hitColor) {
    count++;
    player = colors[int(random(colorCount))];
    hitColor = color (0);
  }
  else {
    if (hitColor == color1 || hitColor == color2) {
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color3) {
      if(rad < maxRad){
      rad+=5;
      }
      count--;
      if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color4) {
      if(rad > minRad){
      rad-=5;
      }
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color5){
      if (s < maxS) {
      s += 5;
      }
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color6){
     if (s > minS) {
      s -= 5;
     }
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color7) {
      if (move < maxMove){
      move += 1;
      }
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
    if (hitColor == color8) {
      if (move > 1){
      move -= 1;
      }
      count--;
       if (count == 5 || count == 10 || count == 15) {
      player = colors[int(random(4))];
    }
    }
   
    hitColor = color (0);
  }
}

