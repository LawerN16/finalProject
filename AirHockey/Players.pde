public class Players{
  
  //Global variables 
  int redX = 45;
  int redY = 255;
  int blueX = 740;
  int blueY = 255;
  
  public Players(){
  }
  
  public void playerRed(){
    fill(255, 0, 0);
    rect(redX, redY, 15, 50);
  }
 
  public void playerBlue(){
    fill(0, 0, 255);
    rect(blueX, blueY, 15, 50);
  }


}
