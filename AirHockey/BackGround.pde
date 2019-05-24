public class BackGround{
  
  public BackGround(){
  }
  public void Table(){
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
    rect(30, 30, 740, 10);
    rect(30, 520, 740, 10);
    rect(760, 30, 10, 210);
    rect(760, 320, 10, 210);
    //middle line
    rect(395, 30, 10, 490);
  }
}
