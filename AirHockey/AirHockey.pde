BackGround BG = new BackGround();
ScoreBoard SB = new ScoreBoard();
Puck p = new Puck();
Players pl = new Players();
int redX = 45;
int redY = 255;
int blueX = 740;
int blueY = 255;

void setup(){
  background(0);
  size(800, 700);
}

void draw(){
  background(0);
  BG.Table();
  SB.Board();
  p.Circle();
  playerRed();
  pl.playerBlue();
  
  
}

void keyPressed(){
   if (key == 'W' || key == 'w') {
      redY -= 8;
     // bounds();
    } else if (key == 'A' || key == 'a') {
      redX -= 8;
      //bounds();
    } else if (key == 'S' || key == 's') {
      redY += 8;
      //bounds();
    } else if (key == 'D' || key == 'd') {
      redX += 8;
      //bounds();
    }
  if(key == CODED) {
    if (keyCode == RIGHT) {
      blueX += 8;
      //bounds();
    }
    else if(keyCode == LEFT) {
      blueX += -8;
      //bounds();
    }
    else if(keyCode == UP) {
      blueY -= 8;
      //bounds();
    }
    else if(keyCode == DOWN){
      blueY += 8;
      //bounds();
    }
  }
  
  }
  public void playerRed(){
    fill(255, 0, 0);
    rect(redX, redY, 15, 50);
  }
  public void playerBlue(){
    fill(0, 0, 255);
    rect(blueX, blueY, 15, 50);
  }
