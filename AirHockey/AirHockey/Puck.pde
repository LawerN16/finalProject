public class Puck{
  float x = 300;
  float y = 300;
  int xspeed = 6;
  float yspeed = 2.75;
  int w = 25;
  int h = 25;
  int redScore = 0;
  int blueScore = 0;
    
  public Puck(){
  }
  
  //Draws in puck 
  public void Circle(){
    fill(142, 142, 142);
    ellipse(x, y, w, h);
  }
  
  public void Move(){
    x += xspeed;
    y += yspeed;
    bounds();
    reset();
  }
  
  public void BounceRed(int rX, int rY, int rW, int rH){
    if (((x - w/2 > rX && x - w/2 < rX + rW) || (x + w/2 > rX && x + w/2 < rX + rW)) && (y > rY && y < rY + rH)) {
      xspeed *= -1;
    }
  }
  
  public void BounceBlue(int bX, int bY, int bW, int bH){
    
    if (((x + w/2 > bX && x + w/2 < bX + bW) || (x - w/2 > bX && x - w/2 < bX + bW)) && (y > bY && y < bY + bH)) {
      xspeed *= -1;
    }
    
  }
  
  void bounds(){
    if (y > 500){
      yspeed *= -1;
    }
    
    if (y < 50) {
      yspeed *= -1;
    }
    
    if (x > 745 && (y < 210 || ( y > 320 + w/2 && y < 530))) {
      xspeed *= -1;
      yspeed *= -1;
    }
    
    if (x < 40 + w/2 && (y < 210 || ( y > 320 + w/2 && y < 530))) {
      xspeed *= -1;
      yspeed *= -1;
    }
  }
  
  void reset(){
    // Blue scored
    if (x > 770){
      x = width/2;
      y = height/2;
      blueScore += 1;
    } 
    // Red scored
    else if (x < 30){
      x = width/2;
      y = height/2;
      redScore += 1;
    } 
    
  }
  void scored(){
    // Red score
    fill(255, 0, 0);
    textSize(72);
    text(blueScore, 32, 670);
    
    // Blue score
    fill(0, 0, 255);
    textSize(72);
    text(redScore, 140, 670);
  }
}
