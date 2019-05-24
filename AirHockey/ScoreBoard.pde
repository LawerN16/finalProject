public class ScoreBoard{
  public ScoreBoard(){
  }
  public void Board(){
    //red score
    fill(255, 0, 0);
    rect(10, 600, 5, 90);
    rect(10, 600, 90, 5);
    rect(100, 600, 5, 90);
    rect(10, 685, 90, 5);
    //blue score
    fill(0, 0, 255);
    rect(115, 600, 5, 90);
    rect(115, 600, 90, 5);
    rect(205, 600, 5, 90);
    rect(115, 685, 90, 5);
    //word score
    fill(255, 255, 255);
    textSize(26);
    text("SCORE", 69, 590);
  }
}
