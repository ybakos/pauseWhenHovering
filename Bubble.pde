class Bubble {

  int x;
  int y;
  int diameter;
  color c;
  int xDirection;
  int yDirection;
  boolean paused;

  Bubble() {
    x = (int)random(width);
    y = (int)random(height);
    xDirection = yDirection = 1;
    diameter = 100;
    c = color(random(255));
    paused = false;
  }

  void pause() {
    paused = true;
  }

  void unPause() {
    paused = false;
  }

  boolean isPaused() {
    return paused;
  }

  void move() {
    if (paused) return;
    x += xDirection;
    y += yDirection;
    if (x >= width || x <= 0) xDirection *= -1;
    if (y >= width || y <= 0) yDirection *= -1;
  }

  void draw() {
    stroke(0);
    fill(c, 100);
    ellipse(x, y, diameter, diameter);
  }

  boolean shouldPause(int x, int y) {
    int radius = diameter / 2;
    return dist(this.x, this.y, x, y) <= radius;
  }

}