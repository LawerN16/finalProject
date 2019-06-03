public class BackGround{
  
  public BackGround(){
  }
  
  public void Table(){
    //Outside box 
    fill(255, 255, 255);
    noStroke();
    rect(10, 10, 10, 540);
    rect(10, 10, 780, 10);
    rect(10, 540, 780, 10);
    rect(780, 10, 10, 540);
    
    //Inside box
    rect(30, 30, 10, 210);
    rect(30, 320, 10, 210);
    rect(30, 30, 740, 10);
    rect(30, 520, 740, 10);
    rect(760, 30, 10, 210);
    rect(760, 320, 10, 210);
    
    //Middle line
    rect(395, 30, 10, 490);
    
    //Text instructions
    fill(255, 255, 255);
    textSize(20);
    text("Red player keys: WASD", 550, 590);
    text("Blue player keys: IJKL", 550, 620);
    
  }
}
