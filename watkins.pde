final int NUMBER_OF_BUBBLES = 50;

Bubble[] bubbles = new Bubble[NUMBER_OF_BUBBLES];

void setup() {
  size(800, 800);
  for (int i = 0; i < bubbles.length; ++i) {
    bubbles[i] = new Bubble();
  }
}

void draw() {
  background(200);
  boolean anyBubblesPaused = false;
  for (int i = 0; i < bubbles.length; ++i) {
    if (!anyBubblesPaused && bubbles[i].shouldPause(mouseX, mouseY)) {
      bubbles[i].pause();
    } else bubbles[i].unPause();
    bubbles[i].move();
    bubbles[i].draw();
    anyBubblesPaused = anyBubblesPaused || bubbles[i].isPaused();
  }
}

