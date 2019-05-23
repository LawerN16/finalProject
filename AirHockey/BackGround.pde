public class BackGround{
  
  public BackGround(){
  }
  public void Board(){
    //outside box
    fill(255, 255, 255);
    noStroke();
    rect(10, 10, 10, 540);
    rect(10, 10, 780, 10);
    rect(10, 540, 780, 10);
    rect(780, 10, 10, 540);
    //inside box
    rect(30, 30, 10, 210);
    rect(30, 320, 10, 210);
    //rect(30, 30, 760, 
  }
}
