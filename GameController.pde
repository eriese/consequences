public class GameController {
  private int switchSpeed;
  int count = 0;
  int highCount = 0;
  int colorCount;
  boolean makeBigger = false;
  boolean makeSmaller = false;
  color player, back, hitColor;
  color[] colors = {
    color (137, 240, 255),
    color (216, 94, 0),
    color (218, 109, 214),
    color (109, 218, 152),
    color (218, 207, 109),
    color (116, 109, 218),
    color (218, 109, 120),
    color (134, 28, 161)
  }
  public GameController() {}
}
