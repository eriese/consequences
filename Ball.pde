public class Ball {

    // speed constraints
    private static final int maxSpeed = 6;
    private static final int minSpeed = 1;

    // ball size constraints
    private static final int maxRad = 50;
    private static final int minRad = 15;

    private int speed;
    private int rad;
    private int moveX;
    private int moveY;
    private int posX;
    private int posY;

    private color ballColor;

    public void setColor (color newColor) {
        ballColor = newColor;
    }

    public color getColor() {
        return ballColor;
    }

    public int incSpeed(boolean incUp) {
        if (incUp && rad < maxRad) {
            rad++;
        } else if (!incUp && rad > minRad) {
            rad--;
        }

        return rad;
    }

    public int incRad(boolean incUp) {
        if (incUp && speed < maxSpeed) {
            speed++;
        } else if (!incUp && speed > minSpeed) {
            speed--;
        }

        return speed;
    }
    public void setDirect(int xMultiple, int yMultiple) {
        moveX = xMultiple * speed;
        moveY = yMultiple * speed;
    }

    public void draw() {
        fill(ballColor);
        posx = posx + movex;
        posy = posy + movey;
        ellipse(posx, posy, rad, rad);
    }
}
