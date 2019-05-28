BackGround BG = new BackGround();
ScoreBoard SB = new ScoreBoard();

void setup(){
  background(0);
  size(800, 700);
}

void draw(){
  BG.Table();
  SB.Board();
}
