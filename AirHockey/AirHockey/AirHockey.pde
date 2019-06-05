BackGround BG = new BackGround();
ScoreBoard SB = new ScoreBoard();
Puck p = new Puck();
Players pl = new Players();
int intRed = 0;
int intBlue = 0;
int redX = 45;
int redY = 255;
int blueX = 740;
int blueY = 255;
int speed = 6;
int x=400;
int y=250;
int move=1;
int yMove=1;
boolean redUp = false;
boolean redDown = false;
boolean redLeft = false;
boolean redRight = false;
boolean blueUp = false;
boolean blueDown = false;
boolean blueLeft = false;
boolean blueRight = false;

void setup() {
  background(0);
  size(800, 700);
}

void draw() {
  background(0);
  BG.Table();
  SB.Board();
  p.Circle();
  playerRed();
  playerBlue();
  move();
  p.BounceRed(redX, redY, 15, 50);
  p.BounceBlue(blueX, blueY, 15, 50);
  p.Move();
  p.scored();
  //ball moving
  if (move>0) {
    x+=5;
  } else {
    x-=5;
  }
  if (yMove>0) {
    // y+=5;
  } else {
    // y-=5;
  }
  if (y<=50||y>=500) {
    yMove*=-1;
  }
  if (x<=40||x>=745) {
    move*=-1;
  }
  if (x==745&&y>245&&y<325) {
  }
  
}

void keyPressed(){
  // Red movement
  if (key == 'W' || key == 'w') {
    redUp = true;
  } 
  if (key == 'A' || key == 'a') {
    redLeft = true;
  } 
  if (key == 'S' || key == 's') {
    redDown = true;
  } 
  if (key == 'D' || key == 'd') {
    redRight = true;
  }
  
  // Blue movement
  
  if (key == 'L' || key == 'l') {
    blueRight = true;
  } 
  if (key == 'J' || key == 'j') {
    blueLeft = true;
  } 
  if (key == 'I' || key == 'i') {
    blueUp = true;
  } 
  if (key == 'K' || key == 'k') {
    blueDown = true;
  }
}

void keyReleased(){
  // Red movement
  if (key == 'W' || key == 'w') {
    redUp = false;
  } 
  if (key == 'A' || key == 'a') {
    redLeft = false;
  } 
  if (key == 'S' || key == 's') {
    redDown = false;
  } 
  if (key == 'D' || key == 'd') {
    redRight = false;
  }
  
    // Blue movement
  
  if (key == 'L' || key == 'l') {
    blueRight = false;
  } 
  if (key == 'J' || key == 'j') {
    blueLeft = false;
  } 
  if (key == 'I' || key == 'i') {
    blueUp = false;
  } 
  if (key == 'K' || key == 'k') {
    blueDown = false;
  }
}

void move(){
  // Red movement
  if (redUp) {
    redY -= speed;
    bounds();
  } 
  if (redLeft) {
    redX -= speed;
    bounds();
  } 
  if (redDown) {
    redY += speed;
    bounds();
  } 
  if (redRight) {
    redX += speed;
    bounds();
  }
   
   // Blue movement
  if (blueUp) {
    blueY -= speed;
    bounds();
  } 
  if (blueLeft) {
    blueX -= speed;
    bounds();
  } 
  if (blueDown) {
    blueY += speed;
    bounds();
  } 
  if (blueRight) {
    blueX += speed;
    bounds();
  }
}

/*  Old movement code
void moveRed() {
  if (key == 'W' || key == 'w') {
    redY -= 6;
    bounds();
  } else if (key == 'A' || key == 'a') {
    redX -= 6;
    bounds();
  } else if (key == 'S' || key == 's') {
    redY += 6;
    bounds();
  } else if (key == 'D' || key == 'd') {
    redX += 6;
    bounds();
  }
}
void moveBlue() {
  if (key == 'L' || key == 'l') {
    blueX += 6;
    bounds();
  } else if (key == 'J' || key == 'j') {
    blueX += -6;
    bounds();
  } else if (key == 'I' || key == 'i') {
    blueY -= 6;
    bounds();
  } else if (key == 'K' || key == 'k') {
    blueY += 6;
    bounds();
  }
}
*/

public void bounds() {
  if (redX < 40) {
    redX = 40;
  }
  if (redX > 380) {
    redX = 380;
  }
  if (redY > 470) {
    redY = 470;
  }
  if (redY < 40) {
    redY = 40;
  }
  if (blueX > 745) {
    blueX = 745;
  }
  if (blueX < 405) {
    blueX = 405;
  }
  if (blueY > 470) {
    blueY = 470;
  }
  if (blueY < 40) {
    blueY = 40;
  }
}

public void playerRed() {
  fill(255, 0, 0);
  rect(redX, redY, 15, 50);
}
public void playerBlue() {
  fill(0, 0, 255);
  rect(blueX, blueY, 15, 50);
}
