final int NUMBER_OF_BUBBLES = 10;

Bubble[] bubbles = new Bubble[NUMBER_OF_BUBBLES];

boolean currentlyPausing = false;

void setup() {
  size(800, 800);
  for (int i = 0; i < bubbles.length; ++i) {
    bubbles[i] = new Bubble(i);
  }
}

void draw() {
  background(200);
  boolean anyBubblesPaused = false;
  for (int i = 0; i < bubbles.length; ++i) {
    if (!currentlyPausing && bubbles[i].shouldPause(mouseX, mouseY)) {
      bubbles[i].pause();
      currentlyPausing = true;
    }
    if (!bubbles[i].shouldPause(mouseX, mouseY)) bubbles[i].unPause();
    bubbles[i].move();
    bubbles[i].draw();
    anyBubblesPaused = anyBubblesPaused || bubbles[i].isPaused();
  }
  currentlyPausing = anyBubblesPaused;
}

