//ArrowMove5
//4.30.13
//made levels change faster. added background color change at higher levels.
//removed player outline
// fixed color glitch
//to do: needs sound, visuals, title

int s = 30; //side length of bumpers

int rad; // ball radius
int posx; // the ball's x-postion
int posy; // the ball's y-position
int movex = 1; // the ball's speed on the x-axis
int movey = 1; // the ball's speed on the y-axis

int maxMove = 6;

int maxRad = 50;
int minRad = 15;
int move = 3;

int count = 0;
int highCount = 0;
int colorCount;
int switchSpeed = 200;
color hitColor;
color back;
color color1 = color (137, 240, 255);
color color2 = ;
color color3 = ;
color color4 = ;
color color5 = ;
color color6 = ;
color color7 = ;
color color8 = ;
color bar1, bar2, bar3, bar4, bar5, bar6, bar7, bar8, player;
color[] colors = {
  color1, color2, color3, color4, color5, color6, color7, color8
};



void setup () {
  frameRate(120);
  size (600, 600);
  //  background (137, 240, 255);
  smooth();
  noStroke();
  textMode(CENTER);
  textAlign(CENTER);
  ellipseMode(RADIUS);
  posx = int(random(2*s, width-2*s));
  posy = int(random(2*s, height-2*s));
  player = colors[int(random(4))];
  rad = s;
  makeBigger = false;
}

void draw () {
//  println(switchSpeed);
  bump();
  noStroke();
  background(back);
  //game environment
  if (frameCount%switchSpeed == 1) {
    if (count < 0) {
      back = 255;
      colorCount = 4;
      bar1 = colors[int(random(colorCount))];
      bar2 = bar1;
      bar3 = bar1;
      bar4 = bar1;
      bar5 = colors[int(random(colorCount))];
      bar6 = bar5;
      bar7 = bar5;
      bar8 = bar5;
    }
    if (count >=0 && count <= 5) {
      back = 255;
      colorCount = 4;
      bar1 = colors[int(random(colorCount))];
      bar2 = bar1;
      bar3 = colors[int(random(colorCount))];
      bar4 = bar3;
      bar5 = colors[int(random(colorCount))];
      bar6 = bar5;
      bar7 = colors[int(random(colorCount))];
      bar8 = bar7;
    }
    else if (count > 5 && count <= 10) {
      back = 255;
      colorCount = 6;
      bar1 = colors[int(random(colorCount))];
      bar2 = bar1;
      bar3 = colors[int(random(colorCount))];
      bar4 = bar3;
      bar5 = colors[int(random(colorCount))];
      bar6 = bar5;
      bar7 = colors[int(random(colorCount))];
      bar8 = bar7;
    }
    else if (count > 10 && count <= 15) {
      back = 255;
      colorCount = 8;
      bar1 = colors[int(random(colorCount))];
      bar2 = bar1;
      bar3 = colors[int(random(colorCount))];
      bar4 = bar3;
      bar5 = colors[int(random(colorCount))];
      bar6 = bar5;
      bar7 = colors[int(random(colorCount))];
      bar8 = bar7;
    }
    else if (count > 15 && count <= 20) {
      back = 255;
      colorCount = colors.length;
      bar1 = colors[int(random(colorCount))];
      bar2 = colors[int(random(colorCount))];
      bar3 = colors[int(random(colorCount))];
      bar4 = colors[int(random(colorCount))];
      bar5 = colors[int(random(colorCount))];
      bar6 = colors[int(random(colorCount))];
      bar7 = colors[int(random(colorCount))];
      bar8 = colors[int(random(colorCount))];
    }
    else if (count > 20 && count <= 25) {
      colorCount = colors.length;
      back = colors[int(random(colorCount))];
      bar1 = colors[int(random(colorCount))];
      bar2 = colors[int(random(colorCount))];
      bar3 = colors[int(random(colorCount))];
      bar4 = colors[int(random(colorCount))];
      bar5 = colors[int(random(colorCount))];
      bar6 = colors[int(random(colorCount))];
      bar7 = colors[int(random(colorCount))];
      bar8 = colors[int(random(colorCount))];
    }
    else if (count > 25) {
      switchSpeed = 200-count;
      colorCount = colors.length;
      back = colors[int(random(colorCount))];
      bar1 = colors[int(random(colorCount))];
      bar2 = colors[int(random(colorCount))];
      bar3 = colors[int(random(colorCount))];
      bar4 = colors[int(random(colorCount))];
      bar5 = colors[int(random(colorCount))];
      bar6 = colors[int(random(colorCount))];
      bar7 = colors[int(random(colorCount))];
      bar8 = colors[int(random(colorCount))];
    }
  }
  fill(player);
  textSize(100);
  text(count, width/2, height/2);
  text("Use the arrow keys to move", width/2, height/3);
  fill(bar1);
  quad (0, height/2, s, height/2, s, height-s, 0, height);
  fill(bar2);
  quad (0, 0, s, s, s, height/2, 0, height/2);
  fill(bar3);
  quad(width, height/2, width-s, height/2, width-s, height-s, width, height);
  fill(bar4);
  quad(width, 0, width-s, s, width-s, height/2, width, height/2);
  fill (bar5);
  quad(width/2, 0, width/2, s, width-s, s, width, 0);
  fill(bar6);
  quad(0, 0, s, s, width/2, s, width/2, 0);
  fill(bar7);
  quad(0, height, s, height-s, width/2, height-s, width/2, height);
  fill (bar8);
  quad(width/2, height, width/2, height-s, width-s, height-s, width, height);
  fill(player);
  ellipse(posx, posy, rad, rad);
  posx = posx + movex;
  posy = posy + movey;
  fill(0);
  textSize(20);
  text("High Score: " + highCount, width/2, height-10);
  if (count > highCount) {
    highCount = count;
  }
}

void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
      case UP :
        movey = -move;
        movex = 0;
        break;
      case DOWN :
        movey = move;
        movex = 0;
        break;
      case LEFT :
        movex = -move;
        movey = 0;
        break;
      case RIGHT :
        movex = move;
        movey = 0;
        break;
    }
  } else {
    switch(key) {
      case "p":
        movex = 0;
        movey = 0;
        break;
      case "r" :
        movex = move;
        movey = 0;
        break;
    }
  }
}

