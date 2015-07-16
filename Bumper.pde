public class Bumper {

  public static final int CHANGE_NOTHING = 0;
  public static final int CHANGE_SPEED = 1;
  public static final int CHANGE_RAD = 2;
  public static final int CHANGE_BUMP = 3;
  // bumper width constraints
  private static final int maxWidth = 60;
  private static final int minWidth = 10;

  public static int bumperWidth = 30;

  private int doesWhat;
  private boolean incUP;
  private int x1, y1, x2, y2, x3, y3, x4, y4;

  public Bumper(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int doesWhat, boolean incUP) {
    this.x1 = x1;
    this.x2 = x2;
    this.x3 = x3;
    this.x4 = x4;
    thix.y1 = y1;
    this.y2 = y2;
    this.y3 = y3;
    this.y4 = y4;
    this.doesWhat = doesWhat;
    this.incUP = incUP;
  }

  public draw(color drawColor) {
    fill(drawColor);
    quad(x1, y1, x2, y2, x3, y3, x4, y4);
  }
}
